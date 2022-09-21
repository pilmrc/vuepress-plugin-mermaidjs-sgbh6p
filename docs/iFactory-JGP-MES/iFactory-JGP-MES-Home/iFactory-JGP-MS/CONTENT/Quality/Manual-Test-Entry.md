# Introduction

Manual Test Entry allows the user to inspect the board manually, when a board fails a test Failure Label must be entered in the test record. There are 2 options, adding Failure records:

- Select Failure Label from the list (Pre-configure Failure Label Maintenance by Customer)

- Create Failure Label (new)
In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area. 
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:

- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step


### **How to get there?** 




Method 1: Using Generic Workstation
1. Generic Workstation



2. Scan Resource Name


3. Scan Serial Number that is enqueued at Manual Test Entry step
![](/.attachments/29919803.png)


**Method 2: Using Stations Login** 
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Manual Test Entry icon

![](/.attachments/29919802.png)




#### Screen Activity



Manual Test Entry station enables user to perform the following activity:

Note: The availability of these functions are based on the route step's route step type configuration. 

- Manually Pass or FAIL a WIP after the testing individual

- Adding a Failure Data Label. (assigned WIP with failure at the specific steps)


#### Pre Condition



The following data needs to be pre-configured (if used)

- Failure Label needs to be configured to display the list of failure labels for user selection when adding a failure

- Route Step's
Route Step Typeneeds to be properly configured to control specific action allowable at the inspection and rework step 
Screen Dependency

The following screen(s) has direct dependency with Manual Test Entry
- *Failure Label Maintenance*

- *Route Step Type*

- *Part Allocation for Material Consumption*



#### Manual Test Entry Interface


If one of the customers that the user has permission for has the “Enforce assembly selection at station” set to ON, Batch Entry Mode toggle is visible.
![image2019-4-19_8-53-24.png](/.attachments/45974932.png)


Screen will show Batch Pass and Batch Failure mode when user turn on the "Batch Entry Mode". 
![image2019-4-19_8-50-5.png](/.attachments/45974931.png)




#### Assembly Progression


When the step is to be completed with PASS (applicable only for repetitive Route step station having no open defects), assembly progression happens. It is applicable both for single entry and batch entry mode. If there are multiple configuration against same occurrence step, system populates window providing option to select one progression option to proceed with station operation completion. If user opts for document printing after assembly Progression (or at the same station of assembly progression configured), user has to assign the Document as per progressed assembly. Also system has feasibility to print both Original and Current assembly after progression. Once progression completes, WIP gets en-queued in following way:

- If there is only default configuration, WIP follows Default PASS rule of that step

- If there is only cross route configuration available, WIP follows only the assembly progression destination step(s)

- If both default and cross route configuration available, WIP follows both Default PASS destination step(s) and Progression cross route step(s) available in progression configuration
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th></tr><tr><td class="confluenceTd">Scan WIP</td><td class="confluenceTd">Scan a WIP to begin the transaction in Manual Test Entry Station</td></tr><tr><td class="confluenceTd">Batch Pass</td><td class="confluenceTd">Access to batch processing mode to complete Manual Test Entry Station with PASS Result</td></tr><tr><td class="confluenceTd">Batch Failure</td><td class="confluenceTd">Access to batch processing mode to complete Manual Test Entry Station with FAIL Result</td></tr></tbody></table>


When the user is in Batch Pass Mode, user is able to continuously scan Serial Number and the system will associate a pass result to the WIP scanned by user. This will behave like the "Complete" function in MTE station without defect associated so that it can decrease the operation time. The user has the ability to return to Normal mode. 
Process Step History will be recorded in WIP View.When Batch Pass button is clicked, the color is changed from Green to Orange and Batch Pass mode is enabled. Scan a valid WIP number and a Pass result will be associated to the WIP. User will remain on the same screen until the Batch Pass button is clicked again exit Batch Pass mode.
![image2019-4-19_9-10-12.png](/.attachments/45974933.png)


If attribute assignment is configured, once the user enters “Batch Pass” mode, the Attribute Assignment window will pop up. After the attribute value is saved, it will be shown on screen. If data collection is configured, it is shown on screen.
![image2019-4-19_9-20-54.png](/.attachments/45974934.png)


![image2019-4-19_9-21-18.png](/.attachments/45974935.png)



<table class="relative-table wrapped confluenceTable" style="width: 83.2523%;"><colgroup><col style="width: 13.3668%;" /><col style="width: 86.5497%;" /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th></tr><tr><td class="confluenceTd">Scan WIP</td><td class="confluenceTd">Scan a WIP to begin the transaction in Manual Test Entry Station</td></tr><tr><td class="confluenceTd">Batch Pass</td><td class="confluenceTd">Display the button as Orange color when in Batch Pass Mode.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Count</td><td colspan="1" class="confluenceTd">The number of WIP completed as PASS at current session. <span>Restart a new session or Refresh button (Alt + Q) will restart the counter. </span></td></tr><tr><td colspan="1" class="confluenceTd">WIP Status Box</td><td colspan="1" class="confluenceTd"><span>Provides the inspection status of the WIP. In Batch Pass Mode, the result will show as PASS. </span></td></tr><tr><td colspan="1" class="confluenceTd">Attribute</td><td colspan="1" class="confluenceTd">The attribute value(s) entered by user will be retained on screen.</td></tr><tr><td colspan="1" class="confluenceTd">Data Collection Items (Non-Retained Value)</td><td colspan="1" class="confluenceTd">Field(s) for user to enter data collection values configured for the route step. After completing a WIP, the value will be cleared and user will need to provide a new value before scanning another WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Data Collection Items (Retained Value)</td><td colspan="1" class="confluenceTd">Field(s) for user to enter data collection values configured for the route step. This value is not cleared after scanning a WIP.</td></tr></tbody></table>




#### Batch Failure Mode


When the user is in Batch Failure Mode, user is able to continuously scan Serial Number and the system will associate a fail result to the WIP scanned by user. This will behave like the "Complete" function in MTE station with failure associated so that it can decrease the operation time. The user has the ability to return to Normal mode. 
Process Step History will be recorded in WIP View.When Batch Failure button is clicked, the color is changed from Green to Orange and Batch Failure mode is enabled. Scan a valid WIP number after adding a failure and a FAIL result will be associated to the WIP. User will remain on the same screen until the Batch Failure button is clicked again to exit Batch Failure mode. If data collection is configured, it is shown on screen.

![image2019-4-19_10-7-27.png](/.attachments/45974937.png)




<table class="relative-table wrapped confluenceTable" style="width: 65.9486%;"><colgroup><col style="width: 17.4684%;" /><col style="width: 82.4473%;" /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th></tr><tr><td class="confluenceTd">Scan WIP</td><td class="confluenceTd">Scan a WIP to begin the transaction in Manual Test Entry Station</td></tr><tr><td colspan="1" class="confluenceTd">Batch Failure</td><td colspan="1" class="confluenceTd">Display the button as Orange color when in Batch Failure Mode</td></tr><tr><td colspan="1" class="confluenceTd">Clear</td><td colspan="1" class="confluenceTd">This button will clear all the failure added and data collection values entered by user at current session. WIP Count is not cleared.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Status Box</td><td colspan="1" class="confluenceTd"><span>Provides the inspection status of the WIP. In Batch Failure Mode, the result will show as FAIL. </span></td></tr><tr><td colspan="1" class="confluenceTd">'+' button</td><td colspan="1" class="confluenceTd"><span>Allows user to add failures by either creating new Failure info or select from Failure Label configured in Failure Label Maintenance</span></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection Items (Non-Retained Value)</td><td colspan="1" class="confluenceTd">Field(s) for user to enter data collection values configured for the route step. After completing a WIP, the value will be cleared and user will need to provide a new value before scanning another WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Data Collection Items (Retained Value)</td><td colspan="1" class="confluenceTd">Field(s) for user to enter data collection values configured for the route step. This value is not cleared after scanning a WIP.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Count</td><td colspan="1" class="confluenceTd"><span>The number of WIP completed as FAIL at current session. </span><span>Restart a new session or Refresh button (Alt +Q) will restart the counter. </span></td></tr></tbody></table>


**Single/Normal Mode** 
Screen will show how many units Completed at current session.

- Re-entering the station or selecting the Refresh button will reset the Counter to Zero

- Abort Operation will not increase the Counte
r
![image2019-4-19_10-14-51.png](/.attachments/45974938.png)





<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 11.4997%;" /><col style="width: 88.5003%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p style="text-align: left;">WIP Serial Number</p></td><td colspan="1" class="confluenceTd">Displays the WIP Serial Number being inspected. Clicking on the Serial Number brings up the WIP View window that provide details of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Displays the material of the WIP being inspected</td></tr><tr><td class="confluenceTd"><p>Complete Button</p></td><td class="confluenceTd"><p>Complete button - Completes the WIP in the route step </p></td></tr><tr><td colspan="1" class="confluenceTd">Abort Button</td><td colspan="1" class="confluenceTd">Abort - Abort the current operation. <br />Note on Abort: If a failure or defect was added and user aborts the operation in FRU QC, when the WIP is restarted in FRU QC, the open failure/defect will be auto closed by the system. This is because system treats the abort as an incomplete action and restarting of the WIP signals a brand new inspection session. However, if the WIP is brought to a different inspection and rework other than FRU QC, the open failure/defect will not be auto-closed by the system. System will only auto-close failure/defect if the WIP was aborted and restarted at the <u>same</u> route step.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Status box</td><td colspan="1" class="confluenceTd"><p>Provides the inspection status of the WIP. <br />These are the following statuses displayed:</p><ul><li>Pass (When the WIP contains no open failure or defect. Completing the inspection when this result is displayed will give the WIP a Pass status)</li><li>Fail (When the WIP contains an open failure or defect. Completing the inspection when this result is displayed will give the WIP a Fail status).</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Add Failure</td><td colspan="1" class="confluenceTd">Allows user to add failures by either creating new Failure info or select from Failure Label configured in Failure Label Maintenance</td></tr><tr><td colspan="1" class="confluenceTd"><span>Cross icon</span></td><td colspan="1" class="confluenceTd"><span>Abort the current operation</span></td></tr><tr><td colspan="1" class="confluenceTd">WIP Count</td><td colspan="1" class="confluenceTd">The number of completed units for the current session. Restart a new session or Refresh button (Alt + Q) will restart the counter. </td></tr></tbody></table>





- #### Adding a Failure Label


- Select the 'Add Failure' to add a failure label

- A screen shall prompt out, 2 ways to adding failure (either Select Failure Label or Create Failure Label)
Add Failure by Select Failure Label

- Select the 'Select Failure Label' option

- Select the Failure Label listed in combo box, the Failure Message shall auto populate

- Click on Confirm to add in failure label to the selected WIP
![image2019-4-19_10-14-51.png](/.attachments/29919798.png)



Add Failure by Create Failure Label

- Select the 'Create Failure Label' option

- Fill in the Failure Label and Failure Message

- Click on Confirm to add in failure label to the selected WIP
![image2019-4-19_10-14-51.png](/.attachments/29919796.png)





#### Fail a WIP in Manual Test Entry by Adding a Failure Label



- Scan WIP Serial Number, WIP# and Material shall display


- Add Failure label, and the WIP status box will display a RED 'FAIL' result


- Click on the Complete button, then the WIP will complete at this Step with a Fail result

Note: A Failure Label is added, The 'Trash' icon next to the Failure allow uses to delete/clear it within the current session. 
![image2019-4-19_10-14-51.png](/.attachments/29919794.png)




*Display Material Consumption* 
When
"
Material quantity Consumption"
is turned on in [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)/ [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)screen, there will be a 'Material In Use' icon that user is able to view the remaining quantity available to be used for all the material that have been setup at part allocation. System will display the following information:
- Setup Sheet

- Material (all materials setup for the resource at part allocation)

- GRN

- Remaining Quantity

- Deviation Number
If "Enforce assembly selection at station" (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) is turned on, user is able to view the “Material In Use” icon when they first access the screen for batch/non-batch mode.![image2019-4-19_10-14-51.png](/.attachments/34087924.png)


![image2019-4-19_10-14-51.png](/.attachments/34087925.png)



![image2019-4-19_10-14-51.png](/.attachments/34087926.png)



If "Enforce assembly selection at station" is NOT turned on, user will only be able to view the “Material In Use” icon after the WIP has started for non-batch mode.

![image2019-4-19_10-14-51.png](/.attachments/34087923.png)



GRN quantity will be deducted upon WIP completion. 
If the GRN quantity is not sufficient to be used by the WIP, system will return a toastr message and will not allow the WIP to start:![image2019-4-19_10-14-51.png](/.attachments/32997507.png)



If a CRD has material consumed at other route step before, material is not consumed again.

When WIP returns to the same route step but with a different setup sheet, only material at additional CRD is consumed.

Sample scenario:
WIP: SM0006
1. Route Step: Manual Operation, Setup Sheet: 3133, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441115, CRD: 124; Part Number: SM-LOT-SUB-MAT, GRN: 1234512345123459, CRD: 6
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357509.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-13-39-21.png?version=1&modificationDate=1538458762707&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357510.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-13-40-20.png?version=1&modificationDate=1538458821340&api=v2" /></span></p></div></td></tr></tbody></table>


2. Route Step: Manual Test, Setup Sheet: 3113, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441116, CRD: 1234
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357511.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-13-58-20.png?version=1&modificationDate=1538459901167&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357512.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-13-58-40.png?version=1&modificationDate=1538459921597&api=v2" /></span></p></div></td></tr></tbody></table>


3. Route Step: Manual Test, Setup Sheet: 3134, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441116, CRD: 12
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357513.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-14-1-6.png?version=1&modificationDate=1538460066977&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357514.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919790/image2018-10-2-14-2-0.png?version=1&modificationDate=1538460121977&api=v2" /></span></p></div></td></tr></tbody></table>



#### Attachments

[image2017-7-27 15:54:14.png](/.attachments/29919791.png)
[image2017-7-27 15:49:14.png](/.attachments/29919792.png)
[image2017-7-27 15:46:56.png](/.attachments/29919793.png)
[image2016-7-5 12:23:36.png](/.attachments/29919794.png)
[image2016-7-5 12:20:20.png](/.attachments/29919795.png)
[image2016-7-5 12:18:22.png](/.attachments/29919796.png)
[image2016-7-5 12:17:0.png](/.attachments/29919797.png)
[image2016-7-5 12:14:2.png](/.attachments/29919798.png)
[image2016-7-5 12:7:36.png](/.attachments/29919799.png)
[image2016-7-5 11:58:56.png](/.attachments/29919800.png)
[image2016-7-4 16:19:45.png](/.attachments/29919801.png)
[image2016-7-4 15:45:20.png](/.attachments/29919802.png)
[image2016-7-4 15:44:6.png](/.attachments/29919803.png)
[MTE batch pass.jpg](/.attachments/32997503.jpg)
[image2018-8-15_14-37-31.png](/.attachments/32997505.png)
[image2018-8-15_14-42-48.png](/.attachments/32997506.png)
[image2018-8-15_14-56-11.png](/.attachments/32997507.png)
[image2018-9-3_14-9-12.png](/.attachments/34087923.png)
[image2018-9-3_14-21-1.png](/.attachments/34087924.png)
[image2018-9-3_14-23-23.png](/.attachments/34087925.png)
[image2018-9-3_14-24-31.png](/.attachments/34087926.png)
[image2018-10-2_10-36-22.png](/.attachments/35357502.png)
[image2018-10-2_10-36-35.png](/.attachments/35357503.png)
[image2018-10-2_10-38-9.png](/.attachments/35357504.png)
[image2018-10-2_10-38-22.png](/.attachments/35357505.png)
[image2018-10-2_10-39-31.png](/.attachments/35357506.png)
[image2018-10-2_10-39-41.png](/.attachments/35357507.png)
[image2018-8-23_10-43-21.png](/.attachments/35357508.png)
[image2018-10-2_13-39-21.png](/.attachments/35357509.png)
[image2018-10-2_13-40-20.png](/.attachments/35357510.png)
[image2018-10-2_13-58-20.png](/.attachments/35357511.png)
[image2018-10-2_13-58-40.png](/.attachments/35357512.png)
[image2018-10-2_14-1-6.png](/.attachments/35357513.png)
[image2018-10-2_14-2-0.png](/.attachments/35357514.png)
[image2018-10-8_14-18-43.png](/.attachments/35357695.png)
[image2018-10-8_14-23-14.png](/.attachments/35357696.png)
[image2018-10-8_14-51-40.png](/.attachments/35357697.png)
[image2018-10-8_14-51-56.png](/.attachments/35357698.png)
[image2018-10-8_14-52-23.png](/.attachments/35357699.png)
[image2018-10-8_16-18-9.png](/.attachments/35357700.png)
[image2019-4-19_8-50-5.png](/.attachments/45974931.png)
[image2019-4-19_8-53-24.png](/.attachments/45974932.png)
[image2019-4-19_9-10-12.png](/.attachments/45974933.png)
[image2019-4-19_9-20-54.png](/.attachments/45974934.png)
[image2019-4-19_9-21-18.png](/.attachments/45974935.png)
[image2019-4-19_9-51-19.png](/.attachments/45974936.png)
[image2019-4-19_10-7-27.png](/.attachments/45974937.png)
[image2019-4-19_10-14-51.png](/.attachments/45974938.png)
