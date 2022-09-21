# Introduction

The Sampling station is for user to perform Sampling based on configured Sample Plan. This station is 
permitting end users to inspect the WIP based on the quantity defined in the Sample plan and place a defect if it is nonconforming. 
If user has fulfilled the Acceptance quantity then can pass Sampling. System will release the entire batch from Sampling hold and in queue the entire batch to next route step.

**How to get there?** 
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Sampling icon



### Screen Activity


Sampling station enables user to perform the following activity:

- Search for Batch Tag name which will retrieve the Sample plan.

- Scan the Serial number / Batch Tag number to get the Sample Size.

- Abort the activity

- Complete the activity

- Add/Remove Defects


#### Precondition



The following data needs to be configured before a user is able to start the Sampling station

- [Batch Tag Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Batch-Tagging/Batch-Tag-Maintenance.md)

- [Attribute Assignment ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Attribute-Assignment.md)
For 'Manual Sampling', no need to configure the 'Attribute Assignment'.
- [Sampling Hold](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling/Sampling-Hold.md)

- A
[Route Step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)configured with “Sampling” station type and configured the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material. 
( Note : For Route Step Type configuration,only "Optional CRD" option has been explicitly implemented for the Sampling station type. No other Route Step Type feature has been explicitly implemented for Sampling station type.)
- [Sampling](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
configure Sampling route step in the route.
- [Customer ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)
,Enforce Assembly Selection at Station  is set to ON/OFF.
- [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
, define which defect type is enable for auto close defect. If this defect was selected in Sampling, the defect should auto close when WIP completed. This auto close defect will not cause the WIP status FAIL upon select.

#### Screen Dependency




- None specifically, once the WIP/Assembly is started the system will record the occurrence of the activity and this can be seen via the WIP View History Tab.

- Validation of the Routing Rules - If the WIP/Assembly is not allowed to start, system will show an appropriate toast message.


#### Process(Normal Sampling or OBA Sampling)


In order to start a sampling(Normal sampling or OBA sampling) , user need to turn off 'Is Manual Sampling' toggle and provide Batch Tag Name and scan Serial Number/Sampling Batch Tag Number to lookup for configured Sample Plan.
![image2021-4-8_15-45-12.png](/.attachments/89588284.png)



**Scan by Serial Number** 
The Sample Plan is displayed based on the selected Batch Tag name and the scanned Serial  Number.
System could lookup WIP by associated UPD value, 'Is Lookup' configuration in UPD maintenance screen should be turned on, after lookup successfully system could perform normal operations as normally. the lookup function apply for both normal sampling and manual sampling.
![image2019-4-19_10-48-22.png](/.attachments/45974942.png)


**Scan by Batch Tag Number** 
The Sample Plan is displayed based on the selected Batch Tag name and the scanned Batch Tag Number.
![image2019-4-19_10-47-26.png](/.attachments/45974941.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Batch Tag Name</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>To allow operator to select batch tag name .Batch Tag Name is to retrieve the Sample plan for Sampling.</p><p><span style="color: rgb(0,0,0);">If Enforce Assembly Selection at Station is ON,</span></p><ul><li><span style="color: rgb(0,0,0);">For only one Assembly configured for Sample plan , system will auto assign the Batch Tag Name </span></li><li><span style="color: rgb(0,0,0);">For multiple Sample Plan with the same Assembly , then user have to select the Batch Tag Name. </span></li></ul><p><span style="color: rgb(0,0,0);">If Enforce Assembly Selection at Station is OFF, </span></p><ul><li><span style="color: rgb(0,0,0);">User need to search Batch Tag Name .</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Serial Number/ Batch Tag Number</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>T<span style="color: rgb(0,0,0);">o allow operator to scan serial number/ Batch Tag number.</span></span></p><p><span style="color: rgb(0,0,0);">This will trigger the checking such as</span></p><ul><li><span style="color: rgb(0,0,0);">WIP is on Sampling Hold ( System Hold)</span></li><li><span style="color: rgb(0,0,0);">WIP is passed the previous station</span></li><li><span style="color: rgb(0,0,0);">Sampling Batch Tag number status is Completed</span></li><li><span style="color: rgb(0,0,0);">Serial number is belong to the Batch Tag number</span></li></ul><p><span style="color: rgb(0,0,0);">Note :The serial number will lookup to the Batch Tag number for quantity.</span><br /><span style="color: rgb(0,0,0);">          The station is working ONLY on one Batch sampling a time. </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allow user to clear entire screen at any time before start sampling with "X" button.</span></td></tr><tr><td colspan="1" class="confluenceTd">Start Button</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allow user to start Sampling.</span></td></tr><tr><td colspan="1" class="confluenceTd">Abort Button</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow user to abort Sampling after started the Sampling.</span></p><p><span style="color: rgb(0,0,0);">-Abort without changing Sampling Plan and Sampling Batch Tag number then the counter need to be resumed from where the Sample Size , Major and Minor FAIL counter stop.</span><br /><span style="color: rgb(0,0,0);">-Abort with changing Sampling Plan and Sampling Batch Tag number then the counter need to be reset.</span></p><p><span style="color: rgb(0,0,0);">(Note: In this case it is required a manual removal of the batch tag and from the Sampling Hold if user doesn't want to continue Sampling.)</span></p></td></tr></tbody></table>




- #### After starting the Sampling

![image2019-4-19_10-49-51.png](/.attachments/45974943.png)




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>Scan serial number</p></td><td style="text-align: left;" class="confluenceTd"><p>This field need to be exactly entered for a full match. The field should normally be scanned from the WIP serial label in production.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span> </span>"X" button</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span> </span>Allow user to clear started serial number.<span> </span></span></td></tr><tr><td colspan="1" class="confluenceTd">Sample Size Counter</td><td colspan="1" class="confluenceTd">This is an indicator to show how many units need to perform sampling. This counter will keep reducing based on how many WIPs has passed or failed.</td></tr><tr><td colspan="1" class="confluenceTd">Major Fail</td><td colspan="1" class="confluenceTd"><p>Major fail counter will increase if user has assigned major defect and failed the scanned WIP.</p><ul><li>If a WIP has multiple major defects then only one major defect will be contribute to the Major fail counter.</li><li><span style="color: rgb(0,0,0);">If a WIP has mixed of major and minor defects then only one major defect will be contribute to the Major fail counter. </span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Minor Fail</td><td colspan="1" class="confluenceTd"><p>Minor fail counter will increase if user has assigned minor defect and failed the scanned WIP.</p><ul><li> If a WIP has multiple minor defects then only one minor defect will be contribute to the Minor fail counter.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">WIP</td><td style="text-align: left;" colspan="1" class="confluenceTd">Displays the scanned serial number of the WIP.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Material</p></td><td style="text-align: left;" class="confluenceTd"><p>The Material for the WIP that is being processed.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">PASS/FAIL</td><td style="text-align: left;" colspan="1" class="confluenceTd">Will display as pending PASS until a defect is entered, at which time is will display as pending FAIL</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Allow user to insert comment for both pass and fail event. Inserted comment will be able to view at Sampling Operation's View.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Defect</p></td><td style="text-align: left;" colspan="1" class="confluenceTd">Drop down selection for defect type.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">CRD</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Drop down selection for Component Reference Designator (CRD) which represents the location of the failure on the WIP.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Get BOM CRD checkbox</td><td style="text-align: left;" colspan="1" class="confluenceTd">This allows the user to populate the CRD dropdown with the CRD's as listed on the Bill of Material (BOM) instead of from the setup sheet.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Clear selections</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allows values to be cleared before adding defect</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Add Defect</td><td style="text-align: left;" colspan="1" class="confluenceTd">Promotes the entered values for Defect/CRD to the defects section and clears from entry section, ready for next entry.</td></tr></tbody></table>


- In the "non-happy path" scenario, once a defect is added ,the button will be auto changed to Fail .

If a defect was entered, and the WIP is aborted instead of completed, when it is re-scanned into the Sampling screen the defect is still present and trash can can be deleted .
The user can add additional defects and can Abort or Complete the operation. When the user aborts or completes the insertion, the system recorded the operation activity and the screen will be cleared and the cycle starts all over again.
![image2019-4-19_11-21-42.png](/.attachments/45974944.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="SamplingStation(Repetitive)-DefectsSection"><strong>Defects Section</strong></h5></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Defect type</p></td><td style="text-align: left;" class="confluenceTd"><p>Shows defect type attributed to entered defect</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">CRD</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Displays CRD's entered as defective</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd">Displays material associated to the entered CRD.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Termination</td><td style="text-align: left;" colspan="1" class="confluenceTd">Displays termination value.</td></tr><tr><td colspan="1" class="confluenceTd">Defect Classification  </td><td colspan="1" class="confluenceTd">Displays the Major or Minor defect.</td></tr></tbody></table>

To add a defect, the user is required to select the defect type from the dropdown list.
![image2019-4-19_11-21-42.png](/.attachments/35357279.png)


The user has to select the associated CRD from the drop down list. When the "Get BOM CRD's" check box is NOT enable, the system will return any CRD's loaded via an associated setup sheet. If there is no active associated setup sheet either, then the user would see a "No Matches Found" message in the CRD drop down. "Get BOM CRD" is not select and no active setup sheet installed to show as the image on below left whereas "Get BOM CRD" is not select but active setup sheet exists, list of CRD to show according to the setup sheet(s) on the image on below right.
![image2019-4-19_11-21-42.png](/.attachments/35357282.png)


![image2019-4-19_11-21-42.png](/.attachments/35357283.png)


If the "Get BOM CRD's" checkbox is enabled the CRD's contained within the BOM, CRD drop down will be available for selection. As shown below images on the left with "Get BOM CRD" is selected and show the list of CRD drop down on the right image below.
![image2019-4-19_11-21-42.png](/.attachments/35357284.png)


![image2019-4-19_11-21-42.png](/.attachments/35357285.png)


Once the user has provided details of a new defect and selects the CRD, the new defect is automatically added to the the "Defects" section of the screen. The trash can is available allowing the defect to be removed, The button changes from PASS to FAIL and the defect/CRD section clears, ready for the user to add another defect if required.
![image2019-3-29_16-44-33.png](/.attachments/45974051.png)


Note:

- If the selected defect is configured as auto close defect in defect Type screen, then the status will remain as PASS. Auto close defect will not contribute to Major/Minor Fail counter. Status will only change to FAIL if there is any normal defect added or fail on data collection validation mask or limit exceed.

- If the current Sampling step’s route step type is configure the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material.


#### **Sampling Run Time** 


For determination of sampling size quantity,  system always go for the highest among the 
Major sample size, Minor sample sizeand Total AQLsample size.
![image2019-4-26_14-42-53.png](/.attachments/48169309.png)



**Sampling Pass scenario:** 
If there is no defect or the defect rejection rate is within Acceptance rate , system will allow user to complete the Sampling if the Sample size is fulfilled . 
A toast message will show" This batch has passed the Sampling test"
System will release the entire batch from Sampling Hold to continue next route step.Those WIP(s) that’s failed during the sampling event (even when the sampling event has passed) would be in queued to default failed route step. All other WIP(s) (the one that’s passed during sampling & the ones remaining in the batch)  would be in queued to default pass route step.![image2019-4-26_15-44-37.png](/.attachments/48169314.png)


**Sampling Failed scenario:** 
Rejection rule will take Major rejection rate as the precedence over the Minor Rejection and Total AQL Rejection rate. When there is no Major defect , system will take Minor Rejection rate as the precedence over Total AQL Rejection rate. S
ystem will check if the “Stop on Sampling Fail “is set to OFF/ ON for the 
[Sample Plan](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build)/Create-Sample-Plan-Assignment.md)if one of the Rejection rate is met.A toast message will show" This batch has failed the Sampling test" if one of the Rejection Rate is met.
System will remove the batch tag number from the entire batch and release the entire batch from Sampling hold .
The entire batch will be in queue to default failed route step .
Irrespective of whether any number of WIP(s) that’s passed before the sampling fail event, all the WIP(s) would be in queued to default failed route step. All the WIP(s) will be reshuffled with others WIP in full inspection . For those WIP(s) have passed full inspection will be assigned Sampling Batch Tag Number and put on Sampling Hold then go through Sampling station.
![image2019-4-26_15-33-56.png](/.attachments/48169313.png)




### **WIP status after gone through Sampling Station** 


**A)When Sampling station is a completion step:-** 
***Sampling Pass Scenario***  
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>WIP fail or Pass the Sampling?</strong></p></td><td class="confluenceTd"><p><strong>Current Status</strong></p></td><td class="confluenceTd"><p><strong>New Status</strong></p></td></tr><tr><td class="confluenceTd"><p>Pass</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>Completed</p></td></tr><tr><td class="confluenceTd"><p>Fail</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Pass</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr></tbody></table>


***Sampling Fail Scenario***  
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>WIP fail or Pass the Sampling?</strong></p></td><td class="confluenceTd"><p><strong>Current Status</strong></p></td><td class="confluenceTd"><p><strong>New Status</strong></p></td></tr><tr><td class="confluenceTd"><p>Pass</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td class="confluenceTd"><p>Fail</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Pass</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr></tbody></table>


**B)When sampling station is not completion step.** 
***Sampling Pass Scenario***  
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>WIP fail or Pass the Sampling?</strong></p></td><td class="confluenceTd"><p><strong>Current Status</strong></p></td><td class="confluenceTd"><p><strong>New Status</strong></p></td></tr><tr><td class="confluenceTd"><p>Pass</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td class="confluenceTd"><p>Fail</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Pass</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr></tbody></table>

***Sampling Fail Scenario***  
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>WIP fail or Pass the Sampling?</strong></p></td><td class="confluenceTd"><p><strong>Current Status</strong></p></td><td class="confluenceTd"><p><strong>New Status</strong></p></td></tr><tr><td class="confluenceTd"><p>Pass</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td class="confluenceTd"><p>Fail</p></td><td class="confluenceTd"><p>IN Process</p></td><td class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Pass</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail</p></td><td colspan="1" class="confluenceTd"><p>Completed</p></td><td colspan="1" class="confluenceTd"><p>IN Process</p></td></tr></tbody></table>

**WIP View & Operation View** 
Only scanned WIP has gone through Sampling operation will be logged in WIP view 's history and Operation view's Sampling Event.
![image2019-4-19_11-23-41.png](/.attachments/45974945.png)


![image2019-4-19_11-26-37.png](/.attachments/45974947.png)


![image2019-4-19_11-27-29.png](/.attachments/45974948.png)


**Additional Information** 



















































<table class="wrapped confluenceTable"><colgroup><col style="width: 127.0px;" /><col style="width: 142.0px;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><strong title="">Priority </strong></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><strong title="">Defect Classification </strong></td></tr><tr><td class="confluenceTd">1</td><td class="confluenceTd">Major</td></tr><tr><td class="confluenceTd">2</td><td class="confluenceTd">Minor</td></tr><tr><td class="confluenceTd">3</td><td class="confluenceTd">Total AQL</td></tr></tbody></table>



#### **Process(Manual Sampling)** 


After user configured a sample plan for batch tag name, system allow user login configured sampling step by batch tag name.
In order to start a manual sampling, user need to turn on 'Is Manual Sampling' toggle. Here are four sampling mode as below:

- New Sampling(Default Value)

- Resume Sampling

- Retest Sampled WIP

- Retest Affected WIP
![image2021-6-2_13-45-55.png](/.attachments/92734227.png)



**New Sampling** 
New Sampling mode allow user to start a new manual sampling process. It need user to provide the batch tag name which configured a valid sample plan to start a new manual sampling process. After user provide a valid batch tag name system will automated load and display the sample plan information. 
![image2021-6-2_13-49-15.png](/.attachments/92734228.png)



<table class="relative-table wrapped confluenceTable" style="width: 65.661%;"><colgroup><col style="width: 17.4059%;" /><col style="width: 82.5941%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">The customer configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The Material configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The Assembly configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Fail Criterial</td><td class="confluenceTd">The Fail Criterial configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Fail Quantity Limit</td><td class="confluenceTd">The Fail Quantity Limit configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Sampling Date</td><td class="confluenceTd"><p>Sampling Date is blank at the initial time of new sampling, it will be updated when user scan first sampled WIP. It will display the shift date which the first sampled WIP went through at evaluation route step.</p><p>Notes: The sampling date is calculated base on shift date instead of calendar day.</p></td></tr><tr><td class="confluenceTd">Batch Tag Number</td><td class="confluenceTd">Batch Tag Number is blank at the initial time of new sampling, it will be updated when user click the 'Start' button, after that system will generate a new batch tag number and display.</td></tr><tr><td class="confluenceTd">Pass Qty</td><td class="confluenceTd">Display current sample passed WIP quantity.</td></tr><tr><td class="confluenceTd">Fail Qty</td><td class="confluenceTd">Display current sample failed WIP quantity.</td></tr><tr><td class="confluenceTd">Batch Tag Name</td><td class="confluenceTd">Display the batch tag name current involved.</td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd">The evaluation route step configured in sample plan base on current selected batch tag name.</td></tr><tr><td class="confluenceTd">Resource</td><td class="confluenceTd"><p>Resource displaying will base on the 'Hold Same Resource WIP' in sample plan.</p><p>if 'Hold Same Resource WIP' turn off, the resource will display NA.</p><p>if 'Hold Same Resource WIP' turn on, the resource will display base on the resource of evaluation route step of first sampled WIP. In this case, here are two ways to use the resource:</p><ol><li>After get the resource from first sampled WIP, system will check the subsequence sample WIPs whether got same resource for evaluation route step, if yes, allow scan. else block it.</li><li>System will trigger the WIP block and release block base on getting same resource when user complete the sampling.</li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Time Range</td><td colspan="1" class="confluenceTd"><p>It's from sample plan, system will display the time range configured in sample for user selecting.</p><p>It's only for Time Range = 'By Customized Time' in sample plan.</p></td></tr><tr><td class="confluenceTd">Attribute Name</td><td class="confluenceTd">Display the attribute name configured in sample plan base on current selected batch tag name.</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd"><p>Display the attribute name configured in sample plan base on current selected batch tag name. If the attribute value is blank in sample plan, it will get value from the first sampled WIP.</p></td></tr></tbody></table>


- The Batch tag number is blank at beginning, system will generate and display a new batch tag number after user click the 'Start' button. And will display a text box allow user to scan the sampled WIP.

![image2021-6-2_14-56-55.png](/.attachments/92734230.png)


After that user can scan the sample WIP one by one. Same with other sapling(OBA, Sampling), manual sampling also allow user scan Fail or Pass for each sample WIP.
Here are some validations for sampled WIP:

- 1:

matched with sampleplan generic configuration (customer, material, assembly).
- 2: matched with sample plan WIP Hold configuration, as below:


- the last record of Evaluation Route Step of WIP should be Pass status

- the WIP should have same attribute with configuration.

- 2: No open defect

- 3: Not Scrapped

- 4: Not in container

- 5: Not in panel

- 6: Only in-process status

- 7: Not be on hold

- 8: Not assembled by other WIP

- 9: No sampled records for current batch tag name
If add any defect, the Pass button will switch to Fail button. else it will keep Pass button. 
![image2021-6-2_15-12-43.png](/.attachments/92734232.png)


After Passed/Failed the first sampled WIP, system will update below fields:

- Sampling Date: system will validate subsequence sample WIP whether got same date for evaluation station end time

- Resource: system will validate subsequence sample WIP whether got same resource for evaluation station resource. Pre-condition is 'Hold Same Resource WIP' is turn on in sample plan.

- Attribute Value: system will validate subsequence sample WIP whether include same attribute name and value.
![image2021-6-2_15-11-33.png](/.attachments/92734231.png)


For the manual sampling, there is no fixed sample size, it means system allow user scan as many WIPs as they want till the manual click the Complete button.  
After user scan all the sampled WIP, system allow user to click the complete button, after that will give an pop up for some comment(Optional).
![image2021-6-3_15-3-12.png](/.attachments/92734275.png)


After user complete the manual sampling process, system will send a job for backend performing. Backend will perform the job every 5 mins.
System will calculate the sampling result base on 'Fail Criteria' configured in Sample plan. Here are two types of Fail Criteria:

- By Fail Quantity, in this case system will calculate the result as Fail if the failed Qty " 'Sample Fail Quantity Limit' configured in sample plan.

- By Fail Rate, in this case system will calculate the result as Fail if the failed Qty / Total Qty " 'Sample Fail Rate Limit' configured in sample plan.
If the sample result is Fail, system will trigger WIP Future Hold base on sample plan to block the affected WIP. Here ate the logics of calculating affected WIP:
**If the Range Type in sample plan is 'By Sample Failed WIP Time':** 

- Calculate affected WIP only for failed sampling result.

- System will base on each failed sampled WIP to calculate affected WIP.

- In same batch tag number, a WIP can only be calculated as affected WIP onetime even if it been cover by multiple failed sampled WIP.

- System will base on below sample plan configurations to calculate the affected WIP：

- Evaluation Route Step:
system will base on the endtime of  'Evaluation Route Step' of each failed Sampled WIP to calculate the affected WIP. 

- Time Selection:  Here are two items for selection: First Time and Final Time.
If First Time, system will get the first passed evaluation route step history of failed sampled WIP.
If Final Time, system will get the final passed evaluation route step history of failed sampled WIP.

- Range Type:  The type of how to define the date range of affected WIP.
After choose the 'By Sample Failed WIP Time' system will display the 'Before Minutes' & 'After Minutes' fields.

- Hold Same Resource WIP:
If turn on, system just block the WIPs which got same resource of evaluation route step with failed sampled WIP.

- Attribute info: if configured, system just block the WIPs which got same attribute info with configured attribute info.


For example, if there is a manual sampling got the fail result. and some of the configuration as below:

- **Evaluation Route Step: CM_Inspection 1**


- **Time Selection: First Time**


- **Range Type: By Sample Failed WIP Time**


- **Before Minutes: 10**


- **After Minutes: 20**


- **Hold Same Resource WIP: On**


- **Attribute Info:**


- **Name: Color**


- **Value: Red**

The first record of valuation route step(CM_Inspection 1) for a failed sampled WIP as below:
End Time: 
2021-04-28 09:54Resource: CM_MIE
![image2021-6-3_17-9-13.png](/.attachments/92734284.png)


System should calculate the TimeRange as below:
FromDateTime: 2021-04-28 09:54 - 10 = 2021-04-28 09:44
ToDateTime: 2021-04-28 09:54 + 20 = 2021-04-28 10:04
It means from 
2021-04-28 09:44to 2021-04-28 10:04, all the WIP went through the evaluation route step(CM Inspection 1) and meet below conditions should be block:
- The Resouece of 'CM Inspection 1' is 'CM_MIE'


- Got attribute 'Color' and value is 'Red'.


**If the Range Type in sample plan is 'By Customized Time':** 

- System will base on the time range user selected to calculate affected WIP.
![image2021-12-23_13-47-45.png](/.attachments/104923805.png)


For example, here are some information from sampling:

- **Evaluation Route Step: CM_Inspection 1**


- **Range Type: By Customized Time**


- **Time Range: 10:00 - 11:00**


- **Sample Date: 12/22/2021**

It means from 
2021-12-22 10:00to 2021-12-22 11:00, all the WIP went through the evaluation route step(CM Inspection 1) should be block.Regarding the Date(2021-12-22) and time range(10:00 - 11:00), if there is a batch tag number associated at evaluation route step system should update it as 'Completed' as well, so that the Packout station can block the WIP to be packed if the batch is not completed 'Manual Sampling' process.

**If the Range Type in sample plan is 'By Manual Input':** 
System will allow user to provide a time range(Start Date/Time and End Date/Time) before complete the sampling.
There is a permission(Can Change Manual Sampling DateTime): 
If user has this permission, system will allow user to manual input the time range.
![image2022-3-7_14-7-12.png](/.attachments/109674541.png)


If user doesn't have this permission, system will not allow user to manual input the time range. The fields(Start Date/Time and End Date/Time) will be disabled. The End Date/Time will auto fill out base on current system date time. The Start Date/Time will be automated fill out as the value which is End Date/Time of last sampling of this batch tag. If this is the first sampling for the batch tag, the Start Date/Time will be enable for user input value since there is no last sampling can be auto fill out.
![image2022-3-7_14-19-40.png](/.attachments/109674542.png)



System will use the time range user provided to calculate the affected WIP.

System will send out a notification email for operator once the job completed. the format of notification email as below:
![image2021-12-23_13-55-41.png](/.attachments/104923807.png)


<table class="relative-table wrapped confluenceTable" style="width: 65.661%;"><colgroup><col style="width: 17.4059%;" /><col style="width: 82.5941%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Batch Tag Name</td><td class="confluenceTd">Display the batch tag name current involved.</td></tr><tr><td class="confluenceTd">Batch Tag Number</td><td class="confluenceTd">Display the batch tag number current involved.</td></tr><tr><td colspan="1" class="confluenceTd">Sampling Date</td><td colspan="1" class="confluenceTd">Display the Sampling date of current batch tag number.</td></tr><tr><td colspan="1" class="confluenceTd">Time Range</td><td colspan="1" class="confluenceTd">Display the time range user selected during sampling.</td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The Assembly configured in sample plan base on current batch tag name.</td></tr><tr><td class="confluenceTd">Fail Criteria</td><td class="confluenceTd">The Fail Criterial configured in sample plan base on current batch tag name.</td></tr><tr><td class="confluenceTd">Sample Fail Quantity Limit</td><td class="confluenceTd">The Fail Quantity Limit configured in sample plan base on current batch tag name. If the Fail Criteria is SampleFailQuantityLimit it will be displayed.</td></tr><tr><td colspan="1" class="confluenceTd">Sample Fail Rate Limit</td><td colspan="1" class="confluenceTd">The Fail Rate Limit configured in sample plan base on current batch tag name. If the Fail Criteria is SampleFailRateLimit it will be displayed.</td></tr><tr><td colspan="1" class="confluenceTd">Total Qty</td><td colspan="1" class="confluenceTd">The total sampled WIP quantity of current batch tag number. Total Qty = Pass Qty + Fail Qty</td></tr><tr><td class="confluenceTd">Pass Qty</td><td class="confluenceTd">The sample passed WIP quantity of current batch tag number.</td></tr><tr><td class="confluenceTd">Fail Qty</td><td class="confluenceTd">The sample failed WIP quantity of current batch tag number.</td></tr><tr><td colspan="1" class="confluenceTd">Total Affected WIP Qty</td><td colspan="1" class="confluenceTd">The Total Affected WIP quantity of current batch tag number. </td></tr><tr><td colspan="1" class="confluenceTd">Release WIP Qty</td><td colspan="1" class="confluenceTd">The Release WIP Qty of current job. the scope is only for current executed job.</td></tr><tr><td colspan="1" class="confluenceTd">Block WIP Qty</td><td colspan="1" class="confluenceTd">The Block WIP Qty of current job. the scope is only for current executed job.</td></tr></tbody></table>

**Resume Sampling** 
In the 'New Sampling' mode, if user abort the sampling or close the brower, but user want to continue the sampling process previously. In this case user use the resume sampling mode to resume the sampling process broken in new sampling.
In 'Resume Sampling' mode, user need provide the Sampled WIP or Batch tag number generated in new sampling to look up the sampling process. After that user can continue the sampling process same with new sampling.
![image2021-6-7_15-47-4.png](/.attachments/92734383.png)


**Retest Sampled WIP** 
In the 'Retest Sampled WIP' mode, it allow user to retest the sampling which previous completed. After user choose the 'Retest Sampled WIP' model, System will ask user provide WIP sn or Batch tag number. The limit of SN as below:

- If the SN is batch tag number, it can only be manual sampling type, and Complete status.

- If the SN is sampled WIP SN, system will use it for looking up the batch tag number. if there are multiple batch tag numbers system should allow user to choose one them.
![image2021-6-7_15-49-31.png](/.attachments/92734384.png)


System could automated load the sample result previously after user provide the SN. And then user can click the start button to proceed the retest case.
![image2021-6-7_16-14-40.png](/.attachments/92734386.png)


After user start the retest sampled WIP process, system will ask user scan the WIP which should meet below conditions:

- 1: got same batch tag number with current loaded.

- 2: No open defect

- 3: Not Scrapped

- 4: Not in BOX

- 5: Not in panel

- 6: Only inprocess status

- 7: Not assembled by other WIP

- 8: Must be the sampled WIP in current batch tag number.
System could count the number of Pass/Fail as below blue.
![image2021-6-7_16-18-23.png](/.attachments/92734389.png)


After retest all the WIP, system allow user to click the complete button to complete the retest process. and then system will re-calculate the sampling result base on the sample plan and current Fail Qty. the logic is same with new sampling. A job will be sent to backend to perform, and a notification email will send to operator after the job complete.
![image2021-6-7_17-28-2.png](/.attachments/92734403.png)


**Retest Affected WIP** 
In the 'Retest Affected WIP' mode, it allow user to retest the affected WIP. After user choose the 'Retest Affected WIP' model, System will ask user provide WIP sn or Batch tag number. The limit of SN as below:

- If the SN is batch tag number, it can only be manual sampling type, and Complete status.

- If the SN is sampled Sampled WIP SN or Affected WIP SN, system will use it for looking up the batch tag number. if there are multiple batch tag numbers system should allow user to choose one them.
![image2021-6-7_17-16-42.png](/.attachments/92734398.png)


System could automated load the sample result previously after user provide the SN. And then user can click the start button to proceed the retest case.
![image2021-6-7_17-17-54.png](/.attachments/92734399.png)


After user start the retest affected WIP process, system will ask user scan the WIP which should meet below conditions:

- 1: got same batch tag number with current loaded.

- 2: No open defect

- 3: Not Scrapped

- 4: Not in BOX

- 5: Not in panel

- 6: Only inprocess status

- 7: Not assembled by other WIP


- 8: Is on block status by manual sampling fail of current batch tag number.

- 9: Must be the affected WIP in current batch tag number.
System could count the number of Pass/Fail as below blue.
![image2021-6-7_17-21-9.png](/.attachments/92734401.png)


After retest all the WIP, system allow user to click the complete button to complete the retest process.  If the Retest Total Qty = Retest Pass Qty, system will display one more button 'Release All', else it will be hidden.
![image2021-6-7_17-22-51.png](/.attachments/92734402.png)


Complete: If user click this button, system will only release the retested Passed affected WIP.
Release All: If user click this button, system will release all the affected WIP of current batch tag number.
Cancel: If user click this button, system will back to the retest affected WIP screen so that user can continue the retest affected process.
Notes: for the retested Failed affected WIP, it will keep on hold status after user click the complete button.

Same with other mode, a job will be sent to backend to perform, and a notification email will send to operator after the job complete.
![image2021-6-7_17-28-34.png](/.attachments/92734404.png)



Data Collection for Manual Sampling
Manual Sampling all models are supporting to data collection as long as user configured any data collection need to be collected at here.
![image2021-12-7_15-54-51.png](/.attachments/103253328.png)







#### Attachments

[image2019-3-4_15-7-48.png](/.attachments/44761581.png)
[image2019-3-4_15-8-7.png](/.attachments/44761582.png)
[image2019-3-4_15-8-18.png](/.attachments/44761583.png)
[image2019-3-4_15-8-36.png](/.attachments/44761584.png)
[image2019-3-4_15-8-54.png](/.attachments/44761585.png)
[image2019-3-4_15-30-57.png](/.attachments/44761586.png)
[image2019-3-4_15-31-34.png](/.attachments/44761588.png)
[image2019-3-29_15-50-11.png](/.attachments/45974040.png)
[image2019-3-29_16-17-1.png](/.attachments/45974041.png)
[image2019-3-29_16-17-29.png](/.attachments/45974042.png)
[image2019-3-29_16-18-1.png](/.attachments/45974043.png)
[image2019-3-29_16-19-2.png](/.attachments/45974044.png)
[image2019-3-29_16-21-44.png](/.attachments/45974045.png)
[image2019-3-29_16-22-8.png](/.attachments/45974046.png)
[image2019-3-29_16-28-54.png](/.attachments/45974049.png)
[image2019-3-29_16-36-34.png](/.attachments/45974050.png)
[image2019-3-29_16-44-33.png](/.attachments/45974051.png)
[image2019-4-19_10-47-26.png](/.attachments/45974941.png)
[image2019-4-19_10-48-22.png](/.attachments/45974942.png)
[image2019-4-19_10-49-51.png](/.attachments/45974943.png)
[image2019-4-19_11-21-42.png](/.attachments/45974944.png)
[image2019-4-19_11-23-41.png](/.attachments/45974945.png)
[image2019-4-19_11-24-42.png](/.attachments/45974946.png)
[image2019-4-19_11-26-37.png](/.attachments/45974947.png)
[image2019-4-19_11-27-29.png](/.attachments/45974948.png)
[image2019-4-26_14-42-53.png](/.attachments/48169309.png)
[image2019-4-26_15-33-56.png](/.attachments/48169313.png)
[image2019-4-26_15-44-37.png](/.attachments/48169314.png)
[image2021-4-8_15-45-12.png](/.attachments/89588284.png)
[image2021-6-2_13-36-17.png](/.attachments/92734226.png)
[image2021-6-2_13-45-55.png](/.attachments/92734227.png)
[image2021-6-2_13-49-15.png](/.attachments/92734228.png)
[image2021-6-2_14-56-55.png](/.attachments/92734230.png)
[image2021-6-2_15-11-33.png](/.attachments/92734231.png)
[image2021-6-2_15-12-43.png](/.attachments/92734232.png)
[image2021-6-3_15-3-12.png](/.attachments/92734275.png)
[image2021-6-3_15-7-16.png](/.attachments/92734276.png)
[image2021-6-3_17-9-13.png](/.attachments/92734284.png)
[image2021-6-7_15-46-27.png](/.attachments/92734382.png)
[image2021-6-7_15-47-4.png](/.attachments/92734383.png)
[image2021-6-7_15-49-31.png](/.attachments/92734384.png)
[image2021-6-7_16-14-40.png](/.attachments/92734386.png)
[image2021-6-7_16-16-48.png](/.attachments/92734387.png)
[image2021-6-7_16-18-6.png](/.attachments/92734388.png)
[image2021-6-7_16-18-23.png](/.attachments/92734389.png)
[image2021-6-7_17-16-11.png](/.attachments/92734397.png)
[image2021-6-7_17-16-42.png](/.attachments/92734398.png)
[image2021-6-7_17-17-54.png](/.attachments/92734399.png)
[image2021-6-7_17-21-9.png](/.attachments/92734401.png)
[image2021-6-7_17-22-51.png](/.attachments/92734402.png)
[image2021-6-7_17-28-2.png](/.attachments/92734403.png)
[image2021-6-7_17-28-34.png](/.attachments/92734404.png)
[image2021-12-7_15-54-51.png](/.attachments/103253328.png)
[image2021-12-23_13-47-45.png](/.attachments/104923805.png)
[image2021-12-23_13-55-41.png](/.attachments/104923807.png)
[image2022-3-7_14-7-12.png](/.attachments/109674541.png)
[image2022-3-7_14-19-40.png](/.attachments/109674542.png)
