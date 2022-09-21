# Introduction

WIP Packout station enables user to pack WIP items or Panels or Containers (overpack) into Containers. In WIP Packout station, user can pack WIP Items which do not have Planned Order or with Planned Order. By configuring the Station Type at Route Step Type Maintenance. (refer: 
[WIP Packout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/WIP-Packout.md))Considering extra effort to do manual close on each dispatched Reverse Logistic (RMA) return item, new logic implemented to auto close those dispatch RMA unit upon packed on same WIP serial number and material. This feature is only applicable for Repetitive WIP.

How to get there?
**Method 1: Using Generic Workstation** 
1. Generic Workstation



2. Scan Resource Name


3. Scan Serial Number that is enqueued at Packout step
![image.png](/.attachments/29919004.png)


**Method 2: Using Stations Login** 
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Packout icon
![image.png](/.attachments/29919003.png)



<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>CONTAINER or WIP</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Scan in either Container No# or WIP# to pack the WIP into container.
          WIP# can be panelized or non-panelized.
        </p>
      </td>
    </tr>
  </tbody>
</table>




### Precondition



The following items need to be pre-configured to login WIP Packout

- Resource Type

- Resources

- Route

- Container Type

- Container Rules


#### Permission


1) Can Access NG - Allow Generate Document 

2) Can Access NG - Can Access WIP View 
3) Can Access NG - Can Configure WIP 
4) Can Access NG - Can Packout 
5) Document (iFactory) - Can Access Document 
6) Document Assignment (iFactory) - Can Access Document Assignment 
7) Material Configuration - Assembly Configuration - Can Access Assembly Configuration 
8) Packout - WIP Packout Station (Can Packout)To be able to open a closed container (Add below permission):
1) Packout - Container - Open Container
Allows the user to close container even the container is not a full capacity (Add below permission):
1) Packout - WIP Packout Station - Can Close Partial Container
If required API: 

\*Add additional API permission below 1) Can Access NG - Can Access From External Client Gateway 

2) Can Access API Wrapper - Can Access WIP controller in API Wrapper


#### Certification


This station is supporting
certificationcontrol (Resource Type Maintenance ( only support user required certification) , Resource Maintenance ( only support user required certification ), Route Step Type Maintenance (certification) and Route Step (certification).

Screen Activity
WIP Packout enables user to perform the following activity:

- Create, Open, Close, Hold and Scrap containers

- Pack and Unpack WIP Items into a container

- Pack and Unpack Containers into Containers

- Pack and Unpack Panels into container

- Complete packout



#### Initialization


During initialization, when user scan in WIP or Container the system shall:

- Scanning container in closed status: showing the provided container as well as the open containers list. The container type is defaulted to the scanned container's type.

- Scanning container in opened status: showing only the container selected (not showing any other container). The container will be the active one.
The container type is defaulted to the scanned container's type.
- Scanning WIP associated to a closed container: showing the container as well as the open non-paneled containers list.
The container type is defaulted to the associated container's type.
- Scanning WIP associated to an open container: showing only the container associated to the WIP (not showing any other container), and this will become the active one.
The container type is defaulted to the associated non-Paneled container's type.
- Scanning WIP not associated to any container: showing the list of open containers which are of non-Panel type.

- Scanning Panel not associated to any Container: showing the list of open containers (both Panel and non-panel type)

![image.png](/.attachments/39649486.png)






#### Create a new Container


![image.png](/.attachments/39649475.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          If the provided value is a container, the Container type will show the
          same container type and the list of possible container overpack
          available to be used.
        </p>
        <p>
          If the provided value is a single WIP item, the Container type will
          show the possible non-paneled container types for the associated
          material and filtered by the WIP status and verify if any open defect
          associated. E.g. If the provided WIP's status is "InProcess" and has
          one open defect, the container type will filter only to show container
          type configured with "Allow In Process WIP only" and Container Defect
          Type configured with "Same Open Defect"/"Any Open Defect". This is not
          applicable for WIP with Planned order in BTO/CTO Route.
        </p>
        <p>
          If the provided value is a panelized WIP item, the Container type will
          show the possible paneled and non-paneled container types for the
          associated material and filtered by the WIP status and verify if any
          open defect associated. If user selects a non-Paneled Container,
          system will auto-break-out the WIP from panel and pack it into that
          non-paneled container. In case user selects paneled container, the
          system will pack the whole panel against which the scanned WIP is
          associated to.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>To create the new container, click on the 'Create' button</p>
        <p>
          A new container will be created with Unique Container Number assigned
          and auto pack the WIP into the container.
        </p>
      </td>
    </tr>
  </tbody>
</table>

**The system has a new validation check when generating the container number to prevent have the duplicate container number between WIP container and Lot container. The duplicate container number will happen if there is the same segment in the different Next Number Configuration for the type "Container ID" which is applied to Lot container type and WIP container type. This is applicable to the Overpack as well.** 
**Next Number for the WIP Container Container type** 
![image2019-12-26_13-53-23.png](/.attachments/62423221.png)


**Next Number for the Lot Container Container type** 
![image2019-12-26_13-54-18.png](/.attachments/62423222.png)


**Next Number for the WIP Pallet Container type** 
![image2019-12-26_14-13-21.png](/.attachments/62423226.png)


**Next Number for the Lot Pallet Container type** 
![image2019-12-26_14-14-26.png](/.attachments/62423228.png)


During WIP Packout or Overpack, the system will trigger the validation when they click on the Create button and the system will prompt the error message "New container number generated already exists. Please check the container next number configuration for duplication." to prevent have the duplicate container number generated between WIP container and Lot container.
![image2019-12-26_13-56-41.png](/.attachments/62423224.png)


![image2019-12-26_13-57-28.png](/.attachments/62423225.png)



![image2019-11-26_9-14-29.png](/.attachments/61079708.png)


![image2019-11-26_9-14-46.png](/.attachments/61079709.png)


<table
  className="relative-table wrapped confluenceTable"
  style={{ width: "85.6287%" }}
>
  <colgroup>
    <col style={{ width: "4.12131%" }} />
    <col style={{ width: "95.8787%" }} />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          When the container Max Allowed is fulfilled, the container will auto
          close.&nbsp;
        </p>
        <p>
          The “Create” button is kept enabled and the Scan WIP field also
          enabled and cursor focuses there.
        </p>
        <p>
          Once the user scans the WIP serial number in the "Scan WIP" field, the
          system only automatically creates the container number and performs
          pack action.
        </p>
        <p>
          This is applicable to the Overpack.&nbsp;This is not applicable for
          WIP with Planned order in BTO/CTO Route.
        </p>
      </td>
    </tr>
  </tbody>
</table>



#### **Pack WIP or Container into Container** 


![image.png](/.attachments/39649477.png)


![image2019-7-12_11-24-35.png](/.attachments/51872228.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Create or Select opened 'Container'. System will automatically pack
          the scanned WIP/Panel/container into the container if it passes all
          validations. Cursor will then focus on “Scan WIP/Container” field to
          enable user to continue scanning the next WIP/container to pack.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Scan in WIP (or container to overpack)</p>
        <ul>
          <li>
            <span>
              Displays the WIP Serial Number (or container) ready to be pack.
              <br />
            </span>
          </li>
          <li>
            <span>
              The list of the Container Type should show all the compatible
              Container Type (even though no route step type configured) upon
              the WIP scanned.
            </span>
          </li>
          <li>
            <span>
              <span>Scanned box&nbsp;</span>
              <span>
                container type is configured with Route step Type which is
                <span>&nbsp;</span>
                <strong>
                  NOT<span>&nbsp;</span>
                </strong>
                the Packout and Overpackout station configured, system behave as
                below:
              </span>
            </span>
          </li>
          <ol style={{ marginLeft: "0.375in" }}>
            <li>
              <span>No Information Box should be showed</span>
            </li>
            <li>
              <span>
                Container Type list will show the Container Type associated with
                the Route Step Type&nbsp;and the compatible container type
              </span>
            </li>
            <li>
              <span>"Scan WIP" textbox is disabled</span>
            </li>
            <li>
              <span>Pack and Switch buttons are disabled</span>
            </li>
            <li>
              <span>
                Warning toastr message "Container Type '
                <container type="" name="">
                  ' is not configured with the Route Step Type '
                  <route step="" type="" name="">
                    '".
                  </route>
                </container>
              </span>
            </li>
          </ol>
          <li>
            <span>If WIP in WIP Overpack Station</span>
            <span>
              , the list of the Container Type should only show the Container
              Type defined with Route Step Types upon the WIP scanned.
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        3.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Pack</p>
        <ul>
          <li>
            Pack the scanned WIP (or container or Panel) into selected container
          </li>
          <li>
            WIP/Panel is allowed to pack according to the Container Type
            configured for Container WIP Constraint and Container Defect Type
          </li>
          <li>Total quantity shows as sum of values in Quantity column</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        4.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Success Message:</p>
        <p>
          (Packed 'AR0014' into container 'BOX-045') shall trigger and show in
          the screen
        </p>
      </td>
    </tr>
  </tbody>
</table>



- #### **Send Order Confirmation (Order Activity) to SAP When Close Container**


- To send Order Confirmation to SAP, we will need to create Document that will trigger the external API. Currently the API is created in iFactory API (9000).


The **Document Processor**  must select "ExternalAPICall"
![image2022-8-10_10-13-31.png](/.attachments/122750710.png)




- Assign the document in Document Assignment, normally SAP will request us to perform this when we close the container.


![image2022-8-10_10-15-41.png](/.attachments/122750711.png)




- When we perform the packout (lot/repetitive), after we close the box. The external API will be triggered and send the Order Confirmation.


![image2022-8-10_10-16-53.png](/.attachments/122750712.png)




- For the successful sending of Order Confirmation, we can find the xml file in PQM History folder as below


![image2022-8-10_10-18-8.png](/.attachments/122750713.png)




- The content of the new Order Confirmation xml is include the batch information and the quantity consumed as in Genealogy


![image2022-8-10_10-19-14.png](/.attachments/122750714.png)






#### Unpack WIP (or Container or Panel) from Container



![image.png](/.attachments/39649480.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">1.</td>
      <td className="confluenceTd">
        <p>Select 'Container'</p>
        <ul>
          <li>
            User must select an 'Opened' container or open the container that is
            selected
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>2.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <div>'Switch' Button</div>
        <div>
          <ul>
            <li>
              <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
                Switch to the Unpack feature
              </span>
            </li>
          </ul>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        3.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Scan WIP (or Panel SN or Container)</p>
        <ul>
          <li>Display the WIP/Serial Number ready to be unpack</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        4.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Unpack</p>
        <ul>
          <li>
            Unpack the scanned WIP (or Panel or container) from the container
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        5.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Success Message:</p>
        <p>
          (Unpacked 'AR0014' from container 'BOX-045') shall trigger and show in
          the screen
        </p>
      </td>
    </tr>
  </tbody>
</table>



- #### Unpack All WIP (or Container) from Container

![image.png](/.attachments/39649501.png)



<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <strong>Field</strong>
        <p>
          <br />
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Unpack All' button</p>
        <ul>
          <li>
            If user has permission for "Can Unpack", an open container with at
            least 1 item packed will show "Unpack All" button
          </li>
          <li>
            <span>A promp</span>
            <span>t </span>
            <span>
              out message shall trigger to confirm the activity (Are you sure
              you want to unpack all items in{" "}
            </span>
            <span>
              this container?). Click 'Okay' to continue unpack the container,
              click 'Cancel' to cancel the process
            </span>
          </li>
          <li>
            All WIPs (or Panel or containers) are unpacked from the container.
          </li>
          <li>WIPs remain enqueued at current route step.</li>
          <li>
            The unpacked (lower level) containers remain in current status.
          </li>
          <li>
            The container status is unchanged and remains in Opened status.
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Success Message:</p>
        <p>
          Container <container number=""> has been unpacked</container>
        </p>
      </td>
    </tr>
  </tbody>
</table>




- #### Hold the Container


![image.png](/.attachments/39649481.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <strong>Field</strong>
        <p>
          <br />
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Hold' button</p>
        <ul>
          <li>The container is put on hold.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          <span>Success Message:</span>
        </p>
        <p>
          The Container 'BOX-045' has been placed on hold and any WIP inside
          Container has been placed on hold
        </p>
      </td>
    </tr>
  </tbody>
</table>




- #### Release the Container from Hold


![image.png](/.attachments/39649482.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <strong>Field</strong>
        <p>
          <br />
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Release' button</p>
        <ul>
          <li>
            To Release the container together with the WIP packed in the
            container from HOLD
          </li>
          <li>
            Once released, WIP shall be allowed to pack into other container
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Success Message:</p>
        <p>
          The container 'BOX-045' has been released and any WIP inside Container
          has been released
        </p>
      </td>
    </tr>
  </tbody>
</table>




- #### Pack partial - Close the Container


![image.png](/.attachments/39649483.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Close' button</p>
        <ul>
          <li>
            Partially pack the container without fulfilling the container max
            quantity
          </li>
          <li>
            Container status shall be updated to 'Closed' and configured labels
            printed
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              System shall show the list of all the open containers of the
              selected container type and the container information box will be
              hidden
            </span>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>



- #### Open Closed Container


![image.png](/.attachments/39649484.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Open' button</p>
        <ul>
          <li>Shown only if user has "Open Container" permission</li>
          <li>Open the container with 'Closed' status</li>
          <li>Container status shall update to 'Opened'</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>



- #### **Scrap the 'Opened' or 'Closed' Container**


![image.png](/.attachments/39649485.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>1.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>'Scrap' button</p>
        <ul>
          <li>
            Scrap the 'Opened' or 'Closed' contain
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>e</span>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>r</span>
          </li>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              A promp
            </span>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>t </span>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              out message shall trigger to confirm the activity (Are you sure
              you want to{" "}
            </span>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              scra
            </span>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              p this container?). Click 'Okay' to continue scrap the container,
              click 'Cancel' to cancel the process
            </span>
          </li>
          <li>
            The scrapped container shall not display in the WIP Packout screen
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        2.
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Success Message:</p>
        <p>Scrapped Container</p>
      </td>
    </tr>
  </tbody>
</table>


- #### **Panel Pack-out:**


- To perform Panel packout, user must have atleast one Paneled Container type associated with same material and defect condition as of Panelized WIP(s)


- If a Panel/WIP of a Panel is scanned, Container Type should be filtered with all the containerType List (Both Paneled and non-Paneled).


- The screen which defines the Container whether paneled type or non-paneled type is being decided against field Panel in screen: Container Type → Packout Configurations → Panel toggle

![image2020-5-8_6-23-36.png](/.attachments/69632861.png)



- If a container with the "Panel" option turned to "Yes" is scanned, system shows only the Container Type the container is created and Green Box with information. User can create the Container too through clicking 'Create' button beside the container field


- User can scan the Panel SN or WIP SN of a Panel, system could pack all WIP of the Panel to the Container. E.g. Panel with 4 WIPs and user scanned the Panel SN to pack all 4 WIP to the container.


- Only WIP with "Is In Panel" set as "Yes" can be packed into the container with "Panel" option turned to "Yes".


- Packout validation (such as: Pre-start rule fail for time interval, WIP on hold, Invalid WIP, packed to other container, maximum quantity reached etc.) remains same for Panel packout too


- User can unpack whole panel through scanning a single WIP of that Panel (switching to unpack option)


- If user selects a non-paneled Container Type, system does not allow to enter Panel SN for packout. Although user can enter the Panelized WIP, but system will auto-breakout the WIP from associated Panel and packout into the container. Once packed, user can not revert the action.


- If the user selects Container with “No Open Defect”:




- If Panel or WIP SN (board) to pack into a container type has “Panel” option to “Yes”, all boards packed should have no open defect.


- If Panel SN to pack into a container type has “Panel” option to “No”, all break out boards should have no open defect.


- If Panel WIP SN (board) to pack into a container type has “Panel” option to “No”, board packed should have no open defect.


- Overpack is not allowed for Panel though



#### Enable Assembly Conversion:


To perform the Assembly Conversion, container must meet the following criteria:

- Selected Container type should be with either "Is restricted to same Assembly Revision" or "Is Restricted to Same Alias Assembly" packout Rules

- Base Assembly of the WIP need to be packed should be configured to associate with at lease one Alias Assembly at WIP Packout Station (Alias Maintenance Screen)
Station Login is only show the list of Base Assembly even though the WIP has been converted or turn OFF "Enforce Assembly selection at Station" at Customer Maintenance screen. System will refer to the first WIP of container to collect the Base Assembly.
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn On, Station Login only show the list of Base Assembly. System will verify the Base Assembly of the WIP scanned in the station.
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn Off, System will refer to the Base Assembly of the WIP scanned.
If the above criteria are met, user will be showed with Assembly Conversion selection according to the WIP's base Assembly scanned and list is according to the Alias Assembly configured. 
Expired and inactive Assembly will not be showed on the selection.![image2019-8-15_11-22-53.png](/.attachments/55410923.png)



- Assembly Conversion selected value will be retained for the sub-sequence WIP to pack.


- If ALIAS Assembly selected, the WIP in the containers will be sharing the same ALIAS regardless of the WIP with or without ALIAS.

- The sub-sequence WIP will be sharing the same ALIAS regardless of the WIP with or without ALIAS except there is a change of ALIAS assembly.

- User is able to change the Alias Assembly by the "Assembly Conversion" selection drop down.

- If "No Conversion" is selected, WIP with or without ALIAS will be remained unchanged.

- Green Box shall display the ALIAS Material and ALIAS Assembly if the WIP packed is converted to ALIAS Assembly
![image2019-8-15_14-6-29.png](/.attachments/55410925.png)



- To pack WIP into an Create/ Open Container


- Container Type is applied Packout Rules with "Is Restrict to Same Alias Assembly", system will verify if Assembly Conversion selected is either

- Same Alias Assembly AND same Base Assembly with the WIP in the Open Container. OR

- Same Base Assembly with the WIP in the Open Container (if the 1
stWIP scan packed is yet convert to alias)
- Same Alias Assembly with the WIP in the Open Container (if the 1
stWIP scan packed is convert to alias)
- Container Type is applied Packout Rules with "Is Restrict to Same Assembly Revision", system will verify WIP scanned is from same Base Assembly with the WIP in the Open Container.

- System will disable Container Type, Create button and Assembly Conversion (if assembly conversion is enable at this packout step).

- Partially Packed Container to continue packing on other WIP, existing screen behavior will show packed info in green area portion. System will disable Container Type, Create button and Assembly Conversion (if assembly conversion is enable at this packout step). The Assembly Conversion value should select as the 1st packed WIP assembly

Once the container closed, these fields will enable back for user to click.
- The disable will only happen if the scan box is in open status and with WIP packed. So that, if user scan an hold/scrap/closed container, he still able to click on create container to open new box and perform packing action.

- Alias Assembly is able to print by the document configured and assignment

- After Packing the WIP, Manual Close the Container.

- Container Type, Create Button and Assembly Conversion Is Enabled.

- Assembly Conversion value is cleared.
![image2020-3-13_17-3-49.png](/.attachments/67568163.png)



- After Packing the WIP, Auto Close the Container


- Container Type, Create Button and Assembly Conversion Is Enabled.

- Assembly Conversion value is retained.
![image2020-3-13_17-4-17.png](/.attachments/67568164.png)




#### Auto Update Reverse Logistic (RMA) WIP serial number from Dispatch to when the same WIP is packed at iFactory:


Pre-Condition:

- The packed WIP has same serial number and material in Reverse Logistic (RMA) and is in Dispatched status.
During runtime, upon this returned RMA WIP is packing into a container (pack event created). iFactory will check this same serial number and material is exit in RMA with Dispatched status, then system will auto update it’s status to Closed.
![image2019-9-25_13-29-23.png](/.attachments/57639396.png)





#### Preventing units to be pack if under sampling:


**Pre-conditions:** 
Active batch tag name is assigned to WIP attribute
System has already decided the sampled units against the route step where 'Route By Sampling' rule is configured
Associated Container Type has the option '
Validate Sampling for Batch Tag
' enabled and added with same Batch-tag NameNote: 
For 'Generic' batch tag, Sample completed is decided by the below conditions:

- Are inspected all units selected with result of PASS - Considered as Sample PASS

- At least one, of the unit selected, has the result of FAIL - Considered as Sample FAIL
For 'Manual Sampling' batch tag, Sample completed is decided by the below conditions:

- The last manual sampling of same time range is completed with Pass status.

**Pack-out Station validations:** 
For 'Generic' batch tag:
If the sample is passed, then only system allows pack-out of any unit having WIP attribute with batch-tag name, otherwise restricts with below error messages:

- If the unit has batch tag still under sampling, the validation don’t allow to continue with the message


“Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”
- If the unit has batch tag sampling fail, the validation don’t allow to continue with the message


“Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ FAILED sampling.”
- If the container contains units with batch tag still under sampling, the validation doesn’t allow to continue with the message


“At least one unit with Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”
- If the container contains units with batch tag sampling Fail, the validation doesn’t allow to continue with the message


“At least one unit with Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ FAILED sampling.”For 'Manual Sampling' batch tag:

- If "Batch tag name" is added and units with the attribute value(s) and batch tag name:

- If the batch tag number is 'Active' status,  it means the unit still under sampling, the validation don't allow to continue with the message:  “Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”.

- If the batch tag number is 'Completed' status, it means the unit has completed sampling, system should further check the sampling result:

- If the last sampling result of the time range is 'Pass', system will allow to pack.

- if the last sampling result of the time range is 'InProgress'/'Fail', system will not allow to pack.

- If "Batch tag name" is added and units doesn't have associated attribute value(s) and batch tag name, the validation allow to continue.
Note: 
If user opts for document printing after assembly Progression, user has to assign the Document as per progressed assembly against Pack-out station. Also system has feasibility to print both Original and Current assembly after progression.



#### Assign units to be under OBA Sampling and container to be on Hold:


**Pre-conditions:** 
Active OBA type batch tag name is assigned to the container to be used in Packout station
![image2022-9-5_15-50-3.png](/.attachments/125993957.png)


**Action in Pack-out Station:** 

- Once WIP is packed to a container,

user is able to unpack the units until the Container is closed

- System auto-assigns the batch-tag number to all WIP packed on container closure against same container type where Attribute is assigned as per the pre-condition mentioned.


- Once Sampling Batch Tag number is assigned to the WIPs, put on OBA Sampling hold upon box closure (on container level and not per WIP)


- When the container is closed, if the wip associated batch tag number status is "Active":


- system could open the container again


- once open the container, system will disassociate the wip with batch tag number


- "Is Marked for OBA" "Is on hold" of container will be "No"


- System will add audit log for each wip


- If batch tag number status is "Complete", user is not able to unpack /open the box OR scan any other station than OBA sampling


- If batch tag number status is "active", user is able to unpack/open the box scan in "packout" or "Receiving" station


- In packout station, s

ystem could search attribute name which match the ManufacturingArea of current packout station with one of the ManufacturingArea of Attribute Configuration, if no, then system will search attribute name which ManufacturingArea is blank![image2020-7-6_6-4-36.png](/.attachments/73236864.png)





#### Start WIP/Panel by UPD


System allow to pack WIP by scan UPD when:
a: WIP has linked UPD.
b: UPD is used for looking up parent WIP.
![image2020-11-12_15-49-13.png](/.attachments/82903222.png)


1: Start WIP, user can scan UPD and then system will automated look up parent WIP and pack it into container.
2: Start WIP in Panel, user can scan any of UPD of WIP in Panel and then system will automated look up panel and pack all of the WIPs in panel at a time.


#### Default Pass Routing Rule available for Overpack


WIP will en-queue to the next route step as per default pass route step configured when overpack completed
![image2021-4-14_10-4-13.png](/.attachments/91127834.png)


![image2021-4-14_10-5-1.png](/.attachments/91127835.png)


![image2021-4-14_10-5-47.png](/.attachments/91127836.png)




#### Mixed Route\RouteStep Overpack


System allows packing multiple boxes that came from different route\routestep into one pallet. This feature is only applicable for Repetitive WIP.
**Pre-Condition:** 

- The toggle "Allow Pull Container" is turn on

![image2021-5-28_10-22-34.png](/.attachments/92734024.png)



- For Box container, the value of Requires Over Pack set as Pallet, and associate with upper-level container type which one want to pack in


![image2021-5-27_13-25-11.png](/.attachments/92733954.png)



![image2021-5-27_13-28-11.png](/.attachments/92733955.png)



- All box

container content rules must be equal\lower than the pallet container content rule

![image2021-5-27_13-47-27.png](/.attachments/92733958.png)



![image2021-5-27_13-46-7.png](/.attachments/92733957.png)


During runtime, for example, WIP “OLC-0009” already packed into box “LB21180005” at route “OLCREPRoute03/1”, Customer is “OLC-Customer”, Assembly is “OLC-Top003/1/1”
![image2021-5-27_13-56-48.png](/.attachments/92733962.png)


Container “LB21180005” belong to Container Type “OLC-WIPContainer02”
![image2021-5-27_13-59-48.png](/.attachments/92733964.png)


For WIP “OLCTop211800015”, packed into box “OLCLC211800013” at route “OLCREPRoute02/1”, Customer is “OLC-Customer”, Assembly is “OLC-Top002/1/1”
![image2021-5-27_14-2-46.png](/.attachments/92733965.png)


Container “OLCLC211800013” belong to Container Type “OLC-WIPContainer01”
![image2021-5-27_14-7-37.png](/.attachments/92733966.png)


Container type “OLC-WIPContainer01” & “OLC-WIPContainer02” already associated with pallet container type "OLC-UpperWIPContainer01"
![image2021-5-27_14-10-54.png](/.attachments/92733968.png)


Scan the boxes at Mixed Overpack station, two boxes packed into the pallet successfully
![image2021-5-27_14-30-42.png](/.attachments/92733970.png)


![image2021-5-27_14-41-27.png](/.attachments/92733975.png)


If unpack the pallet WIPs will return back to the original route\routestep before Overpack


#### To show number of boxes closed in previous hour and current hour in the workstation.


![image2021-10-21_9-35-36.png](/.attachments/100893393.png)




- To show number of boxes closed current hour in the workstation -  (changing after each packout and the previous

hour (that of course will be fixed)
- Box closed count will not consider boxes eventually unpacked.

- Example:

Indication shall be like (if current time is between 9 and 10 am)
08:00 – 09:00     150 boxes
09:00- 10:00       12 boxes  (increasing every time a box is packed

#### Attachments

[image2016-7-5 11:44:40.png](/.attachments/29919003.png)
[image2016-7-5 11:42:59.png](/.attachments/29919004.png)
[image2016-7-4 14:48:33.png](/.attachments/29919005.png)
[image2016-7-4 14:38:47.png](/.attachments/29919006.png)
[image2016-7-4 14:37:44.png](/.attachments/29919007.png)
[image2016-7-4 14:19:16.png](/.attachments/29919008.png)
[image2016-7-4 14:11:47.png](/.attachments/29919009.png)
[image2016-7-4 14:9:23.png](/.attachments/29919010.png)
[image2016-7-4 14:2:1.png](/.attachments/29919011.png)
[image2016-7-4 13:56:21.png](/.attachments/29919012.png)
[image2016-7-4 13:47:4.png](/.attachments/29919013.png)
[image2016-7-4 13:45:23.png](/.attachments/29919014.png)
[image2016-7-4 13:44:27.png](/.attachments/29919015.png)
[image2016-7-4 11:16:7.png](/.attachments/29919016.png)
[image2018-12-20_13-57-15.png](/.attachments/39649475.png)
[image2018-12-20_14-18-40.png](/.attachments/39649476.png)
[image2018-12-20_14-22-25.png](/.attachments/39649477.png)
[image2018-12-20_14-27-7.png](/.attachments/39649478.png)
[image2018-12-20_15-25-35.png](/.attachments/39649479.png)
[image2018-12-20_15-36-47.png](/.attachments/39649480.png)
[image2018-12-20_15-48-13.png](/.attachments/39649481.png)
[image2018-12-20_15-56-53.png](/.attachments/39649482.png)
[image2018-12-20_16-1-38.png](/.attachments/39649483.png)
[image2018-12-20_16-8-6.png](/.attachments/39649484.png)
[image2018-12-20_16-13-0.png](/.attachments/39649485.png)
[image2018-12-20_16-43-1.png](/.attachments/39649486.png)
[image2018-12-21_10-42-54.png](/.attachments/39649501.png)
[image2019-7-12_11-24-35.png](/.attachments/51872228.png)
[image2019-8-15_11-19-42.png](/.attachments/55410922.png)
[image2019-8-15_11-22-53.png](/.attachments/55410923.png)
[image2019-8-15_14-6-29.png](/.attachments/55410925.png)
[image2019-9-25_13-29-23.png](/.attachments/57639396.png)
[image2019-11-26_9-2-23.png](/.attachments/61079704.png)
[image2019-11-26_9-2-32.png](/.attachments/61079705.png)
[image2019-11-26_9-12-21.png](/.attachments/61079706.png)
[image2019-11-26_9-12-49.png](/.attachments/61079707.png)
[image2019-11-26_9-14-29.png](/.attachments/61079708.png)
[image2019-11-26_9-14-46.png](/.attachments/61079709.png)
[image2019-12-26_13-53-23.png](/.attachments/62423221.png)
[image2019-12-26_13-54-18.png](/.attachments/62423222.png)
[image2019-12-26_13-55-18.png](/.attachments/62423223.png)
[image2019-12-26_13-56-41.png](/.attachments/62423224.png)
[image2019-12-26_13-57-28.png](/.attachments/62423225.png)
[image2019-12-26_14-13-21.png](/.attachments/62423226.png)
[image2019-12-26_14-14-5.png](/.attachments/62423227.png)
[image2019-12-26_14-14-26.png](/.attachments/62423228.png)
[image2020-3-13_17-3-49.png](/.attachments/67568163.png)
[image2020-3-13_17-4-17.png](/.attachments/67568164.png)
[image2020-5-8_6-23-36.png](/.attachments/69632861.png)
[image2020-7-6_6-4-36.png](/.attachments/73236864.png)
[image2020-11-12_15-49-13.png](/.attachments/82903222.png)
[image2021-4-14_10-4-13.png](/.attachments/91127834.png)
[image2021-4-14_10-5-1.png](/.attachments/91127835.png)
[image2021-4-14_10-5-47.png](/.attachments/91127836.png)
[image2021-5-27_13-25-11.png](/.attachments/92733954.png)
[image2021-5-27_13-28-11.png](/.attachments/92733955.png)
[image2021-5-27_13-45-28.png](/.attachments/92733956.png)
[image2021-5-27_13-46-7.png](/.attachments/92733957.png)
[image2021-5-27_13-47-27.png](/.attachments/92733958.png)
[image2021-5-27_13-56-48.png](/.attachments/92733962.png)
[image2021-5-27_13-59-48.png](/.attachments/92733964.png)
[image2021-5-27_14-2-46.png](/.attachments/92733965.png)
[image2021-5-27_14-7-37.png](/.attachments/92733966.png)
[image2021-5-27_14-10-54.png](/.attachments/92733968.png)
[image2021-5-27_14-24-38.png](/.attachments/92733969.png)
[image2021-5-27_14-30-42.png](/.attachments/92733970.png)
[image2021-5-27_14-41-27.png](/.attachments/92733975.png)
[image2021-5-28_10-22-34.png](/.attachments/92734024.png)
[image2021-10-21_9-35-36.png](/.attachments/100893393.png)
[image2022-8-10_10-13-31.png](/.attachments/122750710.png)
[image2022-8-10_10-15-41.png](/.attachments/122750711.png)
[image2022-8-10_10-16-53.png](/.attachments/122750712.png)
[image2022-8-10_10-18-8.png](/.attachments/122750713.png)
[image2022-8-10_10-19-14.png](/.attachments/122750714.png)
[image2022-9-5_15-50-3.png](/.attachments/125993957.png)
