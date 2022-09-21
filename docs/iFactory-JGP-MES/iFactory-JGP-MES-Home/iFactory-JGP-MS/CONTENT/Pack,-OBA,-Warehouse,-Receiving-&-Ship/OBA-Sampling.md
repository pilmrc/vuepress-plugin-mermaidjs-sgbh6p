# Introduction

The OBA Sampling station is for user to perform Sampling on box(es) based on configured Sample Plan. This station is 
permitting end users to inspect the WIP based on the quantity defined in the Sample plan after final Packout and just before shipping. If user has no defect or defect within the Acceptance limit then can system passes OBA Sampling. System will release the entire batch from Sampling hold and in queue the entire batch to next route step with a flag OBA passed (user can see it in Sampling Event View screen).

**How to get there?** 
1. Stations



2. Select Resource


3. Scan WIP/Container 


4. Select Route & Route Step
(Sampling Type)


### Screen Activity


OBA Sampling station enables user to perform the following activity:

- Once in Sampling station, user need to provide Batch Tag Name (Optional) and scan Serial Number/Sampling Batch Tag Number to lookup for configured Sample Plan. User may proceed with scanning Batch-tag number/WIP SN if the Batch-tag name belongs to 'OBA' type.

- If any conflict happens with batch-tag name, show a pop-up asking user to enter batch-tag name


- Abort the operation (aborting when a WIP already started, will result WIP abort as well)

- Complete the OBA sampling (with or without AQL process) with PASS / FAILED status

- Add/Remove Defects


#### Precondition



The following data needs to be configured before a user is able to start the Sampling station

- [Batch Tag Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Batch-Tagging/Batch-Tag-Maintenance.md)

- [Attribute Assignment ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Attribute-Assignment.md)
(Limited to Container Type option)
- [Sampling Hold](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling/Sampling-Hold.md)

- A
[Route Step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)configured with “Sampling” station type and configured the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material.
( Note : For Route Step Type configuration,only "Optional CRD" option has been explicitly implemented for the Sampling station type. No other Route Step Type feature has been explicitly implemented for OBA Sampling station type.)
- CRD field to be a text field with max 18 character allowed. It is also possible for user to see existing available CRDs (both from BOM and assembled CRDs)

- If entered CRD value matches with BOM CRD / Assembled CRD against WIP, the CRD value to be accepted and populated in Defect block.

- If the CRD value does not match with BOM CRD / Assembled CRD, system will attach the defect against WIP top level material.

- [Sampling](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/OBA-Sampling.md)
configuration (with / without AQL process) in Sampling route step in the route.
- Customer
,Enforce Assembly Selection at Station  is set to ON/OFF.
- [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
, define which defect type is enable for auto close defect. If this defect was selected in Sampling, the defect should auto close when WIP completed. This auto close defect will not cause the WIP status FAIL upon select.

#### Screen Dependency




- None specifically, once the WIP/Assembly is started the system will record the occurrence of the activity and this can be seen via the WIP View History Tab.

- Validation of the Routing Rules - If the WIP/Assembly is not allowed to start, system will show an appropriate toast message.


#### Process


In order to start a sampling , user need to provide Batch Tag Name (Optional) and/or scan Serial Number/Sampling Batch Tag Number to lookup for configured Sample Plan.
![image2020-8-3_7-54-8.png](/.attachments/75596399.png)


**Scan by Serial Number** 
The Sample Plan is displayed based on the selected Batch Tag name and the scanned Serial  Number (With AQL)
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/741fe323-c9b5-4934-bd6b-6f934774e94a?fileName=image.png)


The Sample Plan is displayed based on the selected Batch Tag name and the scanned Serial  Number (
**Without AQL** )![image2020-11-4_7-12-16.png](/.attachments/81200316.png)



If the scanned WIP has more than one batch-tag name assigned, system shows pop-up for confirming Batch-tag name
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/18193a01-7451-4852-a04e-fe1b35fc4bfb?fileName=image.png)


**Scan by Batch Tag Number** 
The Sample Plan is displayed based on the selected Batch Tag name and the scanned Batch Tag Number.
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/d6e6b6e7-959b-4eec-baff-f4808a151f9f?fileName=image.png)




<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "left" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "left" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Batch Tag Name</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          This field is optional for OBA station. It is to allow operator to
          select batch tag name .Batch Tag Name is to retrieve the Sample plan
          for OBA Sampling.
        </p>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            If&nbsp;Enforce Assembly Selection at Station is ON,
          </span>
        </p>
        <ul>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              For only one Assembly configured for Sample plan , system will
              auto assign the Batch Tag Name
            </span>
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              For multiple Sample Plan with the same Assembly , then user have
              to select the Batch Tag Name.&nbsp;
            </span>
          </li>
        </ul>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            If&nbsp;Enforce Assembly Selection at Station is OFF,
          </span>
        </p>
        <ul>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              User may search Batch Tag Name .
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span>Serial Number/ Batch Tag Number</span>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          <span>
            T
            <span style={{ color: "rgb(0,0,0)" }}>
              o allow operator to scan serial number/ Batch Tag number.
            </span>
          </span>
        </p>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            This will trigger the checking such as
          </span>
        </p>
        <ul>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              Container (against which OBA attribute tagged WIP(s) are
              packed)&nbsp; is on OBA Sampling Hold ( System Hold)
            </span>
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              WIP is passed the packout station
            </span>
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              Sampling Batch Tag number status is Completed
            </span>
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              Serial number is belong to the Batch Tag number
            </span>
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              Sample plan is associated with the batch tag Name
            </span>
          </li>
        </ul>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            Note :The serial number will lookup to the Batch Tag number for
            quantity.
          </span>
          <br />
          <span style={{ color: "rgb(0,0,0)" }}>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The station is working ONLY on
            one Batch sampling a time.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Clear Button
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Allow user to clear entire screen at any time before start sampling
          with "X" button.
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Start Button
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Allow user to start OBA Sampling.
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Abort Button
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            Allow user to abort Sampling after started the Sampling.
          </span>
        </p>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            -Abort without changing Sampling Plan and Sampling Batch Tag number
            then the counter need to be resumed from where the Sample Size ,
            Major and Minor FAIL counter stop.
          </span>
          <br />
          <span style={{ color: "rgb(0,0,0)" }}>
            -Abort with changing Sampling Plan and Sampling Batch Tag number
            then the counter need to be reset.
          </span>
        </p>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            (Note: In this case it is required a manual removal of the batch tag
            and from the Sampling Hold if user doesn't want to continue
            Sampling.)
          </span>
        </p>
      </td>
    </tr>
  </tbody>
</table>




- #### After starting the Sampling (With AQL)

![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/c9be554c-bc21-493b-83e7-b14aa21eea05?fileName=image.png)




#### After starting the Sampling (Without AQL)


![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/aa79566a-c252-445d-bb17-8b4c7afa1d32?fileName=image.png)




#### Fields


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <thead>
    <tr>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>Field</p>
      </th>
      <th style={{ textAlign: "left" }} className="confluenceTh">
        <p>Description</p>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Scan serial number</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          This field need to be exactly entered for a full match. The field
          should normally be scanned from the WIP serial label in production.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          <span>&nbsp;</span>"X" button
        </span>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          <span>&nbsp;</span>Allow user to abort started serial number.
          <span>&nbsp;</span>
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Complete OBA
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This button appears after the PASS limit is reached and the toggle: '
          <span>Allow completing OBA on PASS limit reached</span>' in 'Sample
          Plan' screen is ON. On completion, OBA Lot to be shown as PASSED.
        </p>
        <p>
          This button is applicable only when the Sample Plan configuration is
          without AQL
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Lot Size
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          The field value is&nbsp;applicable only when the Sample Plan
          configuration is without AQL
        </p>
        <p>
          Auto-populated from Sample Plan configuration which indicates total
          Lot size against OBA batch-tag number.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Sample Size
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          The field value is&nbsp;applicable only when the Sample Plan
          configuration is without AQL
        </p>
        <p>
          Auto-populated from Sample Plan configuration which indicates total
          Sample size against OBA batch-tag number.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Min Pass Criteria
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          The field value is&nbsp;applicable only when the Sample Plan
          configuration is without AQL
        </p>
        <p>
          Auto-populated from Sample Plan configuration which indicates minimum
          Pass criteria to show the lot sampling status.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Rejection Criteria
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          The field value is&nbsp;applicable only when the Sample Plan
          configuration is without AQL
        </p>
        <p>
          Auto-populated from Sample Plan configuration which indicates max Fail
          limit to show the lot sampling status. If this limit reaches early,
          system will automatically complete the OBA sampling with status FAIL.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Sample Size Counter
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        This is an indicator to show how many units need to perform sampling.
        This counter will keep reducing based on how many WIPs has passed or
        failed.
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Major Fail
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          Major fail counter will increase if user has assigned major defect and
          failed the scanned WIP (applicable only with batch-tag number with AQL
          sample plan).
        </p>
        <ul>
          <li>
            If a WIP has multiple major defects then only one major defect will
            be contribute to the Major fail counter.
          </li>
          <li>
            <span style={{ color: "rgb(0,0,0)" }}>
              If a WIP has mixed of major and minor defects then only one major
              defect will be contribute to the Major fail counter.&nbsp;
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Minor Fail
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          Minor fail counter will increase if user has assigned minor defect and
          failed the scanned WIP (applicable only with batch-tag number with AQL
          sample plan).
        </p>
        <ul>
          <li>
            &nbsp;If a WIP has multiple minor defects then only one minor defect
            will be contribute to the Minor fail counter.
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        WIP
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Displays the scanned serial number of the WIP.
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Material</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>The Material for the WIP that is being processed.</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        PASS/FAIL
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Will display as pending PASS until a defect is entered, at which time is
        will display as pending FAIL
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Comment
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Allow user to insert comment for both pass and fail event. Inserted
        comment will be able to view at Sampling Operation's View.
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Failure / Defect</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <ol>
            <li>
              User can be able to add Failure / Defect. If the selected defect
              has any Failure associated (in configuration screen), screen
              should display value with failure and without failure
              <ol>
                <li>Failure A / Defect1 (DefectID1)</li>
                <li>Failure B / Defect1 (DefectID1)</li>
                <li>Defect 1 / Defect1 (DefectID1)</li>
              </ol>
            </li>
            <ol>
              <li>
                For example: Defect 1 is associated to Failure A and Failure B.
                The 'Failure / Defect' dropdown to show 3 rows for same
                defect:&nbsp;
              </li>
              <li>User is able to partially search by defectID</li>
              <li>
                <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                  <img
                    className="confluence-embedded-image confluence-thumbnail"
                    height={250}
                    src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/75596402.png&$format=octetStream"
                    data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/75596402.png&$format=octetStream"
                    data-unresolved-comment-count={0}
                    data-linked-resource-id={75596402}
                    data-linked-resource-version={1}
                    data-linked-resource-type="attachment"
                    data-linked-resource-default-alias="image2020-8-3-8-18-41.png"
                    data-base-url="http://usplnd0wiki01:8090"
                    data-linked-resource-content-type="image/png"
                    data-linked-resource-container-id={75596383}
                    data-linked-resource-container-version={11}
                  />
                </span>
              </li>
            </ol>
            <li>
              User should have a checkbox (Default value unselected) called 'Get
              Customer Defect'. So by default system should show 'Failure /
              Defect' as: "
              <failure>
                {" "}
                /{" "}
                <jabil defect="">
                  {" "}
                  (
                  <defectid>
                    )". But if user selects the checkbox, the value to be shown:
                    "
                    <failure>
                      {" "}
                      /{" "}
                      <customer defect="">
                        {" "}
                        (<defectid>)"</defectid>
                      </customer>
                    </failure>
                  </defectid>
                </jabil>
              </failure>
            </li>
          </ol>
          <p>.</p>
        </div>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        CRD
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          CRD field can be manually entered and if left blank, should default
          the added defect refers to TOP material.&nbsp;
        </p>
        <ol>
          <ol>
            <li>
              CRD field is dropdownlist. It is also possible for user to see
              existing available CRDs (both from BOM and assembled CRDs)
            </li>
            <ol>
              <li>
                If entered CRD value matches with BOM CRD / Assembled CRD
                against WIP, the CRD value to be accepted and populated in
                Defect block.
              </li>
              <li>
                If the CRD value does not match with BOM CRD / Assembled CRD,
                system will attach the defect against WIP top level
                material.(had deleted the feature)
              </li>
            </ol>
          </ol>
        </ol>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Get BOM CRD checkbox
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            This allows the user can see with the CRD's as listed on the Bill of
            Material (BOM) instead of from the setup sheet.&nbsp;
          </p>
          <p>
            <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img
                className="confluence-embedded-image confluence-thumbnail"
                height={250}
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770545.png&$format=octetStream"
                data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770545.png&$format=octetStream"
                data-unresolved-comment-count={0}
                data-linked-resource-id={113770545}
                data-linked-resource-version={1}
                data-linked-resource-type="attachment"
                data-linked-resource-default-alias="image2022-4-12-10-38-30.png"
                data-base-url="http://usplnd0wiki01:8090"
                data-linked-resource-content-type="image/png"
                data-linked-resource-container-id={75596383}
                data-linked-resource-container-version={11}
              />
            </span>
          </p>
        </div>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Clear selections
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Allows values to be cleared before adding defect
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Add Failure / Defect
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        Promotes the entered values for Failure/Defect/CRD to the defects
        section and clears from entry section, ready for next entry.
      </td>
    </tr>
  </tbody>
</table>


- In the "non-happy path" scenario, once a defect is added ,the button will be auto changed to Fail .

If a defect was entered, and the WIP is aborted instead of completed, system will reconfirm saying if user really wants to abort because it will impact the started WIP (the WIP will also get aborted at the time of operation abort although it will not impact the already completed WIPs).
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/97baf36b-ff33-47e9-9a59-4238802e8711?fileName=image.png)


![image2020-8-3_8-35-37.png](/.attachments/75596404.png)




#### **Sampling Run Time** 


For determination of sampling size quantity,  system always go for the highest among the 
Major sample size, Minor sample sizeand Total AQLsample size.
![image2020-8-3_8-37-51.png](/.attachments/75596405.png)



**OBA Pass scenario (With AQL):** 
If there is no defect or the defect rejection rate is within Acceptance rate , system will allow user to complete the OBA Sampling if the Sample size is fulfilled .
A toast message will show" This batch has passed the Sampling test" 
System will release the entire batch from Sampling Hold to continue next route step.Those WIP(s) that’s failed during the sampling event (even when the sampling event has passed) would be in queued to default failed route step. All other WIP(s) (the one that’s passed during sampling & the ones remaining in the batch)  would be in queued to default pass route step. Passed batch can be scanned in any operation where Container can be processed, except WIP Packout station.![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/3722b292-38ec-434f-8de3-58ba49b14f0d?fileName=image.png)


**OBA PASS scenario (Without AQL):** 
OBA process passes with below two scenario when Sample Plan is associated without AQL process

- If the toggle: '
Allow completing OBA on PASS limit reached' is ON in 'Sample Plan' screen, show a button "Complete OBA" after the PASS limit is reached. User may/may not want to proceed with further OBA process. On completion, OBA Lot to be shown as PASSED
- If the toggle: 'Allow completing OBA on PASS limit reached' is OFF in 'Sample Plan' screen, system will force user to complete Sample size until FAIL limit is not matching

**OBA Failed scenario (With AQL):** 
Rejection rule will take Major rejection rate as the precedence over the Minor Rejection and Total AQL Rejection rate. When there is no Major defect , system will take Minor Rejection rate as the precedence over Total AQL Rejection rate. S
ystem will check if the “Stop on Sampling Fail “is set to OFF/ ON for the
[Sample Plan](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build)/Create-Sample-Plan-Assignment.md)if one of the Rejection rate is met.A toast message will show" This batch has failed the Sampling test" if one of the Rejection Rate is met.
System will remove the batch tag number from the entire batch and release the entire batch from Sampling hold .
The entire batch will be in queue to default failed route step .
Irrespective of whether any number of WIP(s) that’s passed before the sampling fail event, all the WIP(s) would be in queued to default failed route step. All the WIP(s) will be reshuffled with others WIP in full inspection . For those WIP(s) have passed full inspection will be assigned Sampling Batch Tag Number and put on Sampling Hold then go through Sampling station.

If "Stop on Sampling Fail" option is OFF, system met the rejection Criteria, it warns user to continue with sampling although the batch has failed.![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/3a1be99d-70ce-492f-adee-3fd6e305d681?fileName=image.png)


If "Stop on Sampling Fail" option is ON, system met the rejection Criteria, it makes the whole sampling as done with batch fail status.
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/2280a7ee-9665-49ff-8037-f4b117f8b3cc?fileName=image.png)




### **WIP status after gone through Sampling Station** 


**A)When Sampling station is a completion step:-** 
***Sampling Pass Scenario***  
<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>WIP fail or Pass the Sampling?</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>Current Status</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>New Status</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Completed</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
  </tbody>
</table>


***Sampling Fail Scenario***  
<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>WIP fail or Pass the Sampling?</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>Current Status</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>New Status</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
  </tbody>
</table>


**B)When sampling station is not completion step.** 
***Sampling Pass Scenario***  
<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>WIP fail or Pass the Sampling?</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>Current Status</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>New Status</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
  </tbody>
</table>

***Sampling Fail Scenario***  
<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>WIP fail or Pass the Sampling?</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>Current Status</strong>
        </p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <strong>New Status</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Pass</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Fail</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Completed</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>IN Process</p>
      </td>
    </tr>
  </tbody>
</table>

**WIP View & Operation View** 
Only scanned WIP has gone through Sampling operation will be logged in WIP view 's history and Operation view's Sampling Event.
Sampled Pass
![image2020-8-3_8-46-59.png](/.attachments/75596407.png)


Sampling Failed - Shows with Failure and Defect associated
![image2020-8-3_8-48-1.png](/.attachments/75596408.png)


![image2020-8-3_8-48-24.png](/.attachments/75596409.png)


**Additional Information** 




















































<table className="wrapped confluenceTable">
  <colgroup>
    <col style={{ width: "127.0px" }} />
    <col style={{ width: "142.0px" }} />
  </colgroup>
  <tbody>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "left" }}
        data-highlight-colour="grey"
      >
        <strong title="">Priority&nbsp;</strong>
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ textAlign: "left" }}
        data-highlight-colour="grey"
      >
        <strong title="">Defect Classification&nbsp;</strong>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        1
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Major
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        2
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Minor
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        3
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Total AQL
      </td>
    </tr>
  </tbody>
</table>

**OBA Failed scenario (Without AQL):** 
Fail Process is same for without AQL process as well. But here is an extra feature which we do not have it with AQL process:

- If Rejection Criteria reaches early, system will auto-complete the OBA process with FAIL status

- If the toggle 'Hold Lot on OBA Fail' is ON in Sample Limit Maintenance screen, Filing OBA will result each unit on hold

- If the toggle 'Hold Lot on OBA Fail' is OFF in Sample Limit Maintenance screen, Failing OBA will not put hold to units under the lot. Although WIP View will show the status as happened during OBA
**OBA Record relationship to history:** 
When OBA  batch tag number pass or fail, system will record the relationship for wip and batch tag number to history in database.



#### Attachments

[image2019-3-4_15-8-7.png](/.attachments/75596385.png)
[image2019-4-19_10-48-22.png](/.attachments/75596386.png)
[image2019-4-19_10-47-26.png](/.attachments/75596387.png)
[image2019-4-19_10-49-51.png](/.attachments/75596388.png)
[image2019-4-19_11-21-42.png](/.attachments/75596389.png)
[image2019-3-29_16-44-33.png](/.attachments/75596390.png)
[image2019-4-26_14-42-53.png](/.attachments/75596391.png)
[image2019-4-26_15-44-37.png](/.attachments/75596392.png)
[image2019-4-26_15-33-56.png](/.attachments/75596393.png)
[image2019-4-19_11-23-41.png](/.attachments/75596394.png)
[image2019-4-19_11-26-37.png](/.attachments/75596395.png)
[image2019-4-19_11-27-29.png](/.attachments/75596396.png)
[image2020-8-3_7-54-8.png](/.attachments/75596399.png)
[image2020-8-3_8-18-41.png](/.attachments/75596402.png)
[image2020-8-3_8-21-46.png](/.attachments/75596403.png)
[image2020-8-3_8-35-37.png](/.attachments/75596404.png)
[image2020-8-3_8-37-51.png](/.attachments/75596405.png)
[image2020-8-3_8-46-14.png](/.attachments/75596406.png)
[image2020-8-3_8-46-59.png](/.attachments/75596407.png)
[image2020-8-3_8-48-1.png](/.attachments/75596408.png)
[image2020-8-3_8-48-24.png](/.attachments/75596409.png)
[image2020-11-4_7-12-16.png](/.attachments/81200316.png)
[image2022-4-12_10-38-30.png](/.attachments/113770545.png)
