# Introduction


WIP Hold is used to temporarily halt WIP / Panel processing. There could be various reasons (quality issues, customer request, etc) to place WIP on hold. User can either place WIP / whole Panel on immediate or future hold. 
If an immediate hold is placed, as soon as the operator scans in the Serial Number, system will block the operator from processing the WIP / Panel. If a future hold is placed, the WIP can still be processed along the route. System will only block WIP processing when it reaches the configured future hold step. 




### How to get there?




::: mermaid
graph LR
A("QUALITY")-->0("WIP HOLD")

:::

Precondition
[WIP Hold](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold.md)
needs to be configured before user can place WIP / Panel on hold

#### Permission


WIP Hold Group (can perform WIP Hold and WIP Release using following permission without checked on WIP Release permission items)

1) Can Access NG - Hold Reason Code (iFactory) - Can Access Hold Reason Code 

2) Can Access NG - WIP Hold (iFactory) - Can Access WIP Hold (iFactory) 
3) Can Access NG - WIP Hold (iFactory) - Can Modify WIP Hold (iFactory) 
4) Can Access NG - WIP Hold (iFactory) - Can Modify WIP Hold of Others (iFactory)

#### Screen Activity


WIP Hold Maintenance enables user to perform the following activity. User can either use a criteria search or file upload method to perform a single or multiple WIPs or Panel on hold/release hold.

- Place immediate WIP Hold

- Place future WIP Hold

- Release immediate WIP Hold

- Delete future WIP Hold


To improve the warehouse and full receiving performance, there is a change on hold checking where system will only validate at container level (Removed WIP level hold validation). Therefore, to block a container to process at container operation due by WIP hold; there is a new enhancement on hold/release WIP will also auto hold/release a container as per below behavior:

- Auto Hold Container.

- Auto hold container when any of the contain WIP is trigger WIP hold.

- In Container View Item tab, for each WIP’s “Is On Hold” (New column) show as true if that particular WIP is on hold. So that user can identify which WIP inside this container is in hold status.

- Auto hold pallet when any of the contain WIP is trigger WIP hold.

- For pallet, in Container View Items tab, “Is On Hold” show as true if there is "OnHold" WIP in the container.

- In Container History tab captured an event with Hold comment: Auto Hold by WIP Hold

- Auto Release Container from Hold.

- A container will be auto release when there is last WIP in the container trigger release WIP from hold and the container was on hold due to the hold comment: "Auto Hold by WIP Hold". If the Container is not hold by this hold comment, auto release container should not perform and user is require to perform release at Packout station in order to release this container.

- In Container View Item tab, for each released on hold WIP’s “Is On Hold” show as false .

- In Container History tab, if the container is auto release successfully, an event will captured with Release comment: Container is auto release by last WIP release from hold.
(Note: As per current behavior, if the WIP last scanned route step is at WIP Packout, then container can release hold and all the WIP’s hold item will be release. However, if the WIP last scanned route step is not Packout then error will prompt accordingly to avoid container release at non packout step.)
For Future Hold, all unit board of the selected Panel records should be on hold according to the selected Reason Code at Future Hold Route and Future Hold Route Step. 
If any unit board of Panel has been breakout before the configured Future Hold Route Step:

- Only unit board of the Panel scanned to the configured Future Route Step should be on hold but not the unit board has been breakout before the route step.

- Breakout unit board should put on hold when the unit is started on the Future Route Step.
Future Hold for Breakout Panel is only applicable to the following Station:

- Manual Operation Entry

- Manual Inspection Entry

- Manual Test Entry

- Inspection and Rework

- Manual Assemble Station

- WIP Packout


#### Screen Dependency


Every operator screen that require scanning of Serial Number will be impacted by the hold activities configured here. 



#### Fields



<table className="wrapped confluenceTable" style={{ width: "1093.0px" }}>
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "88.0px" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "1005.0px" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <p>Activity</p>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <p>
          User is required to select the desired activity from the drop down
          list
        </p>
        <ul>
          <li>Add New Hold</li>
          <li>Add New Future Hold</li>
          <li>Release Hold</li>
          <li>Delete Future Hold</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "center", width: "1093.0px" }}
        colSpan={2}
        data-highlight-colour="grey"
      >
        <span>
          Search Filters Manual Entry Tab
          <br />
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Enable Wildcard Search
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <p>
          If Enabled - Able to search multiple WIP using wildcard search. *This
          option allow selection of multiple WIP to on hold/release hold.
        </p>
        <p>
          <strong>Acceptable Wildcard Characters</strong>
        </p>
        <ul>
          <li>% - Percent sign represents zero, one or multiple characters</li>
          <li>- - Underscore represents single character</li>
          <li>[charlist] - Define sets and ranges of characters to match</li>
          <li>
            [^charlist] / [!charlist] - Define sets and ranges of characters NOT
            to match
          </li>
        </ul>
        <p>If Disabled - Able to search for single WIP</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Search By Container
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This option is available only if the option selected as 'Release
          Hold'. If user wants to release the WIP(s) inside a container, system
          allows user to search by Container serial number and on releasing
          hold, it will release all the WIPs which were on hold inside the
          searched Container.
        </p>
        <p>
          If Enabled - Panel search option to be disabled as OFF and User can
          search only by Container SN
        </p>
        <p>
          If Disabled - User can search by WIP / Panel. If scanned a container
          SN with full search, system to automatically toggle on the 'Search By
          Container' option and respective Container will be searched. This
          happens only on full search of Container and when search by Panel
          toggle is OFF.
        </p>
        <p>
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Search By Panel
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          If Enabled - Container search option to be disabled as OFF and able to
          search only Panel Serial Number. If the Panel belongs to Unique
          bar-code type, system will allow only Panel SN and if the Panel
          belongs to 'No Bar-code' type, Serial number field searches by 1st
          Panelized WIP SN.
        </p>
        <p>
          If Disabled - Able to search for single WIP. If you puts Panelized SN,
          system auto-enable this toggle to show its under a Panel.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Serial Number</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Use this filter to search for a multiple / single WIP / Panel SN
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Material</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Use this filter to search for all Serial Numbers with the same
          Material(No limit Material Type). User can select multiple Serial
          Numbers to place hold or release hold
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Birth Start</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>Search for WIPs that were released after this date</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Birth End</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>Search for WIPs that were released before this date</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Reason Code</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          This filter is only visible for "Release Hold" or "Delete Future
          Hold". Use this filter to search for WIPs that were placed on a
          particular hold reason code
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Route
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <p>
          This filter is only visible for “Delete Future Hold”. Use this filter
          to search for WIPs that will be trigger a future hold at a particular
          route.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Route Step
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        This filter is only visible for “Delete Future Hold”. Use this filter to
        search for WIPs that will be trigger a future hold at a particular route
        step. Route step selection value will depending on the selected route if
        provided.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Additional Filters
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <p className="auto-cursor-target">
            Allow user to search by other additional filters. System will
            display more filters once user turn on this toggle.
          </p>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <td className="confluenceTd">Assembly</td>
                  <td className="confluenceTd">
                    Filter by Material, allow user to select a assembly
                  </td>
                </tr>
                <tr>
                  <td className="confluenceTd">Evaluation Route/Version</td>
                  <td className="confluenceTd">
                    Allow user to select a repetitive route
                  </td>
                </tr>
                <tr>
                  <td className="confluenceTd">Evaluation Route Step</td>
                  <td className="confluenceTd">
                    Filter by Evaluation Route, Allow user to select a route
                    step
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Evaluation Route Step Resource
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Filter by Evaluation Route Step, allow user to select
                    multiple resource
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Evaluation Route Step Status
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    All/Pass/Fail, allow user to select a status
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Start Date
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to set a start date
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Start Time
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to set a time for start date.
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    End Date
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to set a end date.
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    End Time
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to set a time for end time.
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Last Scanned Route Step
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to select a route step which is used for identify
                    current station of WIP
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Attribute
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to add multiple attribute info for WIP
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    Data Collection
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    Allow user to add multiple Data Collection info for WIP
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <p className="auto-cursor-target">
            The Additional filter can work with original filters.
          </p>
          <p style={{ textAlign: "left" }}>
            <span style={{ color: "rgb(0,0,0)" }}>
              For example, if there is a configuration as below:
            </span>
          </p>
          <ul>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Assembly: CM-Assembly01
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Evaluation Route/Verstion: CM-JPIWIP01
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Evaluation Route Step: CM-Inspection 1
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Evaluation Route Resource: CM-MIE
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Evaluation Route Step Status: All
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Start Date:&nbsp;<span>2021-04-28</span>
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  Start Time:<span>09:44</span>
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  End Date:&nbsp;<span>2021-04-28&nbsp;</span>
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  End Time:&nbsp;<span>10:04</span>
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>
                  <span>Last Scanned Route Step: CM-Packout</span>
                </span>
              </strong>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>Attribute Info:</span>
              </strong>
              <ul>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>Name: Color</span>
                  </strong>
                </li>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>Value: Red</span>
                  </strong>
                </li>
              </ul>
            </li>
            <li>
              <strong>
                <span style={{ color: "rgb(0,0,0)" }}>Data Collection:</span>
              </strong>
              <ul>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>
                      Route Step: CM-MOE
                    </span>
                  </strong>
                </li>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>
                      Data Type: String
                    </span>
                  </strong>
                </li>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>Name: Batch001</span>
                  </strong>
                </li>
                <li>
                  <strong>
                    <span style={{ color: "rgb(0,0,0)" }}>Value: 0001</span>
                  </strong>
                </li>
              </ul>
            </li>
          </ul>
          <p>
            <br />
          </p>
          <p style={{ textAlign: "left" }}>
            <span style={{ color: "rgb(0,0,0)" }}>
              It means from&nbsp;
              <span>2021-04-28 09:44</span>
              <span>&nbsp;</span>to
              <span>&nbsp;</span>
              <span>2021-04-28 10:04</span>, all the WIP went through the
              evaluation route step(CM-JPIWIP01/CM Inspection 1) and meet below
              conditions should be returned:
            </span>
          </p>
          <ol>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                Assembly should be: CM-Assembly01
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                The Resource of 'CM Inspection 1' is 'CM-MIE'
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                The current step is 'CM-Packout'
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                Got attribute 'Color' and value is 'Red'.
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                Got string data collection 'Batch001' and value is '0001' at
                step 'CM-MOE'
              </span>
            </li>
          </ol>
        </div>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "1093.0px", textAlign: "center" }}
        title="Background colour : Grey"
        colSpan={2}
        data-highlight-colour="grey"
      >
        Search Filters File Upload Tab
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>
          Material
          <br />
        </span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          A material(No limit Material Type) that require to select in order to
          ensure the upload csv file contain the WIP with correct material to
          upload into WIP Hold grid for processing.
          <br />
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        File Upload
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            User has option to perform file upload on the WIPs that need to
            perform the following activities:
          </p>
          <ul>
            <li>Add New Hold</li>
            <li>Add New Future Hold</li>
            <li>Release Hold</li>
            <li>Delete Future Hold</li>
          </ul>
          <p>
            <br />
          </p>
          <p>
            A csv file need to select in order to perform File Upload. Upon
            upload, system will validate each row of the serial number must
            match with selected material and exist in the system.
          </p>
          <p>
            Reason Code will only validate for Release Hold and Delete Future
            Hold activity.&nbsp;
          </p>
          <p>
            Route and Route Step will only validate for Delete Future Hold
            activity.
          </p>
          <p>
            <br />
          </p>
          <ol>
            <li>
              Instead of grid, the system will only show:
              <ul>
                <li>
                  Total WIP Uploaded :- Indicating the total WIP that pass the
                  validation
                </li>
                <li>
                  Total WIP Fail :- Indicating the total WIP that fail the
                  validation
                </li>
              </ul>
            </li>
            <li>
              Toaster warning message will show if the uploaded WIPs consist of
              any fail records in the csv file
            </li>
            <li>
              Duplicated csv file will be named with -your Csv file.out.csv- at
              browser. This output file has additional column for “Upload
              Result” to indicate only the
              <u>
                <strong>FAIL WIP</strong>
              </u>
              and the fail reason.
            </li>
          </ol>
          <p>
            <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              ![image.png](/.attachments/image-e1e9f761-8407-4192-bfe0-627020b93a5b.png)
            </span>
          </p>
          <p>
            <br />
          </p>
          <p>
            Using File Upload, user will not be able to select specific WIPs to
            do the Add / Release Hold. System will perform the selected Activity
            to all the PASS WIP.
          </p>
          <p>
            The reason gird was removed when doing file upload is due to
            performance issue when loading the WIPs. For example, if 9000
            records uploaded in the csv file, it will have issue loading into
            the grid for dispaly.&nbsp;
          </p>
          <p>
            If user would to select specific WIPs, it is advisable to user the
            Manual Entry way instead of File Upload.
          </p>
          <p>
            <br />
          </p>
          <p>
            Click her to download
            <a
              href="attachments/29918495/39649504.csv"
              data-linked-resource-id={39649504}
              data-linked-resource-version={2}
              data-linked-resource-type="attachment"
              data-linked-resource-default-alias="Sample WIP Hold by file upload.CSV"
              data-linked-resource-content-type="text/csv"
              data-linked-resource-container-id={29918495}
              data-linked-resource-container-version={27}
            >
              Sample
            </a>
            &nbsp;csv file.
          </p>
          <p>NOTE: Maximum 9000 records is advisable for processing.&nbsp;</p>
        </div>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "center", width: "1093.0px" }}
        colSpan={2}
        data-highlight-colour="grey"
      >
        <span>Activity Grid</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Reason Code</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <p>
          <span>
            Every immediate or future hold requires a hold reason code. Hold
            reason codes are pre-configured in
          </span>
          <a href="WIP-Hold-29918495.html">Hold Reason Code Maintenance</a>
          <span>&nbsp;</span>
        </p>
        <p>
          <span>
            Drop-down list will only be showing top 50 records. User will have
            to search if the Hold Reason Code maintained more than 50.&nbsp;
          </span>
        </p>
        <p>
          <span>
            At the Reason Code field, type in the Reason Code to search and
            press Enter. Select the Reason Code accordingly.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Future Hold Route</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only activated if "Add New Future Hold" activity is selected. For
          future hold, the future hold route and route step is required.
          <br />
          This means, when the WIP/Panel reaches the route / route step, system
          will block the WIP/Panel from futher processing
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Future Hold Route Step</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only activated if "Add New Future Hold" activity is selected.
        </span>
        <span>See Future Hold Route above</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Comment</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          User needs to specify details of placing WIP on hold and releasing it
          from hold. This field will not be activated if "Delete Future Hold"
          activity is selected.
        </span>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "center", width: "1093.0px" }}
        colSpan={2}
        data-highlight-colour="grey"
      >
        <span>WIP Hold Grid</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>WIP Details</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>Displays WIP / Panel hold details in a separate screen</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Serial Number</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>Displays the WIP/Panel dashboard</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Reason Code
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        A reason code chose during add new hold or add new future hold. This
        column only show at release hold and delete future hold activities.
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Customer</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        WIP's customer
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Material</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        WIP's material
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>BOM</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Add New Hold" or "Add New Future Hold" activity is
          selected.
        </span>
        WIP's BOM
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Hold Count</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Add New Hold" or "Add New Future Hold" activity is
          selected.
        </span>
        A WIP can be placed in multiple holds. This field displays the number of
        holds for the WIP / Panel
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Future Hold Count</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Add New Hold" or "Add New Future Hold" activity is
          selected.
        </span>
        <br />
        Similar to immediate hold, a WIP/Panel can be placed on multiple future
        holds.
        <span>
          This field displays the number of future holds for the WIP/Panel
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Current Route Step</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Add New Hold" or "Add New Future Hold" activity is
          selected.
        </span>
        The current route step for the WIP/Panel now
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Order</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        The Order where the WIP belongs
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        <span>Batch</span>
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>The Batch where the WIP belongs</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Hold ID
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Release Hold" activity is selected. Displays the
          unique ID created for the WIP/PAnel Hold
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Hold Route Step
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Release Hold" activity is selected. Displays the step
          where the WIP/Panel was placed on hold
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Held By
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Release Hold" activity is selected.
          <span>Displays the user that places the WIP/Panel on hold</span>
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Hold Date Time
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Release Hold" activity is selected.
          <span>Displays the date/time that places the WIP/Panel on hold</span>
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Comments
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Release Hold" activity is selected.
          <span>
            Displays the user comments when they place the WIP/Panel on hold
          </span>
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Future Hold ID
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        Only visible if "Delete Future Hold" activity is selected.
        <span>
          Displays the unique ID created for the WIP/Panel Future Hold
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Trigger Route Step
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <span>
          Only visible if "Delete Future Hold" activity is selected. Displays
          the future hold route step
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "88.0px" }} className="confluenceTd">
        Created By
      </td>
      <td style={{ width: "1005.0px" }} className="confluenceTd">
        <ul>
          <li>
            <span>
              Only visible if "Delete Future Hold" activity is selected.
              Displays<span>the user that created the future hold</span>
            </span>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

<table className="wrapped confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">Assembly</td>
      <td className="confluenceTd">
        Filter by Material, allow user to select a assembly
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Evaluation Route/Version</td>
      <td className="confluenceTd">Allow user to select a repetitive route</td>
    </tr>
    <tr>
      <td className="confluenceTd">Evaluation Route Step</td>
      <td className="confluenceTd">
        Filter by Evaluation Route, Allow user to select a route step
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Evaluation Route Step Resource
      </td>
      <td colSpan={1} className="confluenceTd">
        Filter by Evaluation Route Step, allow user to select multiple resource
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Evaluation Route Step Status
      </td>
      <td colSpan={1} className="confluenceTd">
        All/Pass/Fail, allow user to select a status
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Start Date
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to set a start date
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Start Time
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to set a time for start date.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        End Date
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to set a end date.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        End Time
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to set a time for end time.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Last Scanned Route Step
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to select a route step which is used for identify current
        station of WIP
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Attribute
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to add multiple attribute info for WIP
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Data Collection
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to add multiple Data Collection info for WIP
      </td>
    </tr>
  </tbody>
</table>

<table
  className="relative-table confluenceTable"
  style={{ width: "91.7258%" }}
>
  <colgroup>
    <col style={{ width: "9.20034%" }} />
    <col style={{ width: "90.7997%" }} />
  </colgroup>
  <tbody>
    <tr>
      <th style={{ textAlign: "center" }} colSpan={2} className="confluenceTh">
        Add running job in the backend and send email(Manual Entry)
      </th>
    </tr>
    <tr>
      <td className="confluenceTd">Run job&nbsp; in backend</td>
      <td className="confluenceTd">
        If "Add New Hold/Add New Future Hold/Release Hold/Delete Future Hold"
        submited total qty more than limitation qty(it can be
        configuration),then system will run a job in backend,user can't process
        at "wip hold" until the job completed.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Send email
      </td>
      <td colSpan={1} className="confluenceTd">
        After submit "Add New Hold/Add New Future Hold/Release Hold/Delete
        Future Hold" ,system will send email to use,email content include filter
        conditions and releated wip list.
      </td>
    </tr>
  </tbody>
</table>

<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="WIPHold-ConditionsLimit">
          <strong>Conditions Limit</strong>
        </h5>
      </td>
    </tr>
    <tr>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        Fields
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        Description
      </th>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Material
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Allow&nbsp;<span style={{ color: "rgb(45,46,47)" }}>Release Type</span>
        <span style={{ color: "rgb(45,46,47)" }}>
          &nbsp;"Assigned Material Type"
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Validation Mask
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Which ones need to be blacklisted
        <br />
        Example:&nbsp;
        <br />
        Validation Mask = A[0][0][1-3]
        <br />
        A001-A003 will be the black list
      </td>
    </tr>
  </tbody>
</table>





<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
    <col />
    <col />
    <col />
  </colgroup>
  <thead>
    <tr>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>
          <strong>
            <u>Scenario</u>
          </strong>
        </p>
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>File Upload/Generate Serial&nbsp;</p>
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>File Upload/Assign Serial&nbsp;</p>
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>Conditions Limit/Generate Serial&nbsp;</p>
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>Conditions Limit/Assign Serial&nbsp;</p>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span>
          WIP ready to assemble
          <br />(
          <span style={{ color: "rgb(45,46,47)" }}>
            Assemble Actions : "Scan Existing And Auto Birth"
          </span>
          )
        </span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span>WIP ready to assemble</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span>WIP &nbsp;not birth</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O (will auto generate and hold)
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span>WIP &nbsp;birthed</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span>WIP &nbsp;assembled</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X(Will pop remind message)
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X(Will pop remind message)
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Add/Delete black list
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        X
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        O
      </td>
    </tr>
  </tbody>
</table>




#### Attachments

[Sample WIP Hold by file upload.CSV](/.attachments/49643575.csv)

[Sample.CSV](/.attachments/49643574.csv)

[Sample WIP Hold by file upload.CSV](/.attachments/39649504.csv)

[image2021-6-3_17-9-13.png](/.attachments/100893294.png)

