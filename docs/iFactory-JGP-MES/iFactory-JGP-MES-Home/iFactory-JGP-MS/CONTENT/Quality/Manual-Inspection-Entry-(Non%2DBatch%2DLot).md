# Introduction

The Manual Inspection Entry station (MIE)
permits end users to inspect an WIP and place a defect if it is nonconforming. The examination of the root cause regarding the non-conformance is the analysis process. In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area. 
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step

- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:
If the toggle called "
Allow Retest On Failure and Defect
" is turned "ON" in MIE station:1. Batch Entry Mode - Batch Pass scan the wip again

- System will Auto closed the defect with "False Call" which create in MIE

- History show the status with Pass

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code
2. Batch Entry Mode - Batch Fail scan the wip again

- System will Auto close the defect with "False Call" which create in MIE

- Add new defect with open

- History show the status with Fail

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code
3. Single Entry Mode - Scan wip again
3.1 System will Auto close the defect with "False Call" which create in MIE when scan wip in the same MIE station

- Complete Pass in MIE

- History show the status with Pass

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code

- Complete Fail in MIE

- Add new defect with open

- History show the status with Fail

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code
3.2 
if click "Abort" or "Clear", system will rollback the operation
- The auto closed defect will change to "Open"


### How to get there?


**Method 1: Using Generic Workstation** 
1. Generic Workstation



2. Scan Resource Name


3. Scan Serial Number that is enqueued at an Manual Inspection Entry step


**Method 2: Using Stations Login** 
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Manual Inspection Entry icon






#### Permission


MIE Single Entry (Configured with DC, Batch Tag and External API pre-start rule) 
1) Can Access NG - Manual Inspection Entry 

2) Material Configuration - Can Access Assembly Configuration

#### Screen Activity


Manual Inspection Entry enables the user to perform the following activity:

- Select the Resource, Route, Route Step that the User is performing their activities

- Abort the activity

- Complete the activity

- Add/Remove Defects



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Inspection Entry 

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [M](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)
[aterials](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[, ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[BOM's](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[/](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[Assemblies](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[, ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[/](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[set-up sheets](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)(as applicable) if the operation is to Start
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)
User must identify the Resource they are using before performing the Operation activities  
- [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
, define which defect type is enable for auto close defect. If this defect was selected in MIE, the defect should auto close when WIP completed. This auto close defect will not cause the WIP status FAIL upon select.
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
, by configure the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material.


#### Screen Dependency


Manual Inspection Entry 

- None specifically, once the WIP/Assembly is Started the system will record the occurrence of the activity and this can be seen via the WIP View History Tab.

- Validation of the Routing Rules - If the WIP/Assembly is not allowed to start, system will show an appropriate toastr message.



#### Process


When the user has selected a resource through the 
[Generic Workstation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)(shown below on the left) or [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)(shown below on the right) the application will open the configured operation activity screen, in this example MIE. The MIE screen allows the user to view previously added open defects, Enter new defects for the items, remove defects (current operation only), Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Serial Number to start the operation activities. The user has also pressed the Station Details Control to optionally view what has been selected as Route and Route Step context.![](/.attachments/29919770.png)


![](/.attachments/29919761.png)


Once a valid Serial Number has been scanned, the WIP is started automatically at the selected MIE station. The screen is presented to the user and since this example is for a new WIP (first time inspection/no recorded defects), the inspection is in a PASS state by default and no defects are listed.
![](/.attachments/35357277.png)


Following the happy path, if the user has inspected the WIP and found no defects, they simply select the "Complete" button, which completes the inspection with a status of PASS, can trigger a label print (if required/configured) and routes the WIP to the default pass step defined in the routing rules. The user will receive the appropriate information in the toaster messages and the "Scan WIP" entry is presented to the user allowing them to scan the next WIP using the resource/route selected previously (NOTE - User can return to Manual Station Login/Generic Workstation to select a different resource). 
![](/.attachments/35357278.png)


![](/.attachments/29919752.png)


The happy path also applies to the scenario that there is a fail history at previous steps without any open defect，only failure labels. In addition to the above operations, a defect with no analysis code is added and auto closed against the failure label for the MIE step 

in the "non-happy path" scenario, where there are open defects from a previously completed inspection, the default status is shown as FAIL and the defects are displayed without the "trash can" delete icon as shown below (
**image on the left** ).  The absence of the "trash can" icon means the user does not have the ability to delete the defect, since the MIE operation during which it was added, has already been completed.  If a defect was entered, and the WIP is aborted instead of completed, when it is re-scanned into the MIE screen the defect is still present and can can be deleted (**image on the right** ).  The user can add additional defects and can Abort or Complete the operation. When the user aborts or completes the insertion, the system recorded the operation activity and the screen will be cleared and the cycle starts all over again.![](/.attachments/35357280.png)


![](/.attachments/35357281.png)



Here are two ways to add defect for WIP as below:
![image2021-11-25_16-29-8.png](/.attachments/103252534.png)



- Add defect by CRD(default)


- Add defect by Material.  For some special case, user need to add defect to part without CRD, in this case user can use this way to add defect to a material without CRD. If user want to use this feature, there is a toggle in Route Step Type screen called 'Allow Add Defect By Material' should be turn on.

**Add defect by Material** 
After user choose 'Material', system allow user to add defect by Material.
![image2021-11-25_16-35-57.png](/.attachments/103252539.png)


The user has to select the associated material from the drop down list. When the "Get BOM Item" check box is NOT enable, the system will return any material loaded via an associated setup sheet. If there is no active associated setup sheet either, then the user would see a "No Matches Found" message in the material drop down. "Get BOM Item" is not select and no active setup sheet installed to show as the image on below left whereas "Get BOM Item" is not select but active setup sheet exists, list of material to show according to the setup sheet(s) on the image on below right. System could load any level child material for user selecting.

If the "Get BOM Item" checkbox is enabled the material contained within the BOM, material drop down will be available for selection. As shown below images on the left with "Get BOM Item" is selected and show the list of material drop down on the right image below. System could load any level child material for user selecting.
![image2021-11-25_16-42-39.png](/.attachments/103252540.png)


![image2021-11-25_16-43-2.png](/.attachments/103252542.png)



**Add defect by CRD** 
To add a defect, the user is required to select the defect type from the dropdown list.
![image2021-11-25_16-43-49.png](/.attachments/103252543.png)


The user has to select the associated CRD from the drop down list. When the "Get BOM Item" check box is NOT enable, the system will return any CRD's loaded via an associated setup sheet. If there is no active associated setup sheet either, then the user would see a "No Matches Found" message in the CRD drop down. "Get BOM Item" is not select and no active setup sheet installed to show as the image on below left whereas "Get BOM Item" is not select but active setup sheet exists, list of CRD to show according to the setup sheet(s) on the image on below right.
System could load any level child CRD for user selecting. 
![image2021-11-25_16-43-49.png](/.attachments/35357282.png)


![image2021-11-25_16-43-49.png](/.attachments/35357283.png)


If the "Get BOM Item" checkbox is enabled the CRD's contained within the BOM, CRD drop down will be available for selection. As shown below images on the left with "Get BOM Item" is selected and show the list of CRD drop down on the right image below. System could load any level child CRD for user selecting.
![image2021-11-25_16-31-39.png](/.attachments/103252536.png)


![image2021-11-25_16-31-39.png](/.attachments/35357285.png)


Once the user has provided details of a new defect and selects the CRD, there are 2 paths - The first case is when the selected defect is NOT assigned to the defect category "Termination" - When this type of defect is being added, as soon as the user selects a CRD the new defect is automatically added to the the "Defects" section of the screen. The trash can is available allowing the defect to be removed, The status changes from PASS to FAIL and the defect/CRD section clears, ready for the user to add another defect if required.
Note:

- If the selected defect is configured as auto close defect in defect Type screen, then the status will remain as PASS. Status will only change to FAIL if there is any normal defect added or fail on data collection validation mask or limit exceed.

- If the current MIE step’s route step type is configure the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material.
![image2021-11-25_16-31-39.png](/.attachments/35357286.png)


However, the second path is when the user selects a defect belonging to the defect category "Termination". In this case the defect is not automatically populated to the defect section, since the user is required to add the number of affected terminations (the default being the minimum permitted value of 1, but the user can enter a value "1 to represent the actual "pin count" of affected terminations). In this case the user would enter the appropriate value and select the "Add defect" button to add the defect.
![image2021-11-25_16-31-39.png](/.attachments/35357287.png)


If user decided to abort, the system will complete with status abort and the WIP will be re-enqueued back to the MIE station.
![image2021-11-25_16-31-39.png](/.attachments/35357288.png)


If the user decided to complete with a defect, the system will complete with status of fail, the defect(s) will be recorded and the WIP will route to the default fail step defined in the route step.
![image2021-11-25_16-31-39.png](/.attachments/35357289.png)


If the failed unit is ORT sampled unit, system triggers automated mail to users based on defect category (Safety category email recipients are different than other defect category recipients)
Mail Details when defect added in same step:
![image2020-5-26_9-5-51.png](/.attachments/71369541.png)



Mail Details when defect added in different step, but MIE station is getting failed due to available open defects:
![image2020-5-26_9-7-0.png](/.attachments/71369542.png)



**Allow user to select the impacted area for defect** 

- Below behaviors should apply for Single Entry Mode and Batch Failure Mode.

- By default system should load material current setup sheet.

- if user selected 'Get BOM Items' check box, system should load material from BOM.

- if the 'Allow Add Defect By Material' is turn on in 'Route Step Type', system should add one more item called 'Material' with CRD. User can add defect by CRD or Material. When user selected 'Material system should:

![image2021-10-25_17-22-48.png](/.attachments/102039581.png)





- If the related material of current defect already got 'Define Splitting Area' in 'Material Maintenance' screen, system should:
![image2021-10-25_17-4-8.png](/.attachments/102039575.png)



- Present a popup window for user selecting areas.


![image2021-10-25_17-5-37.png](/.attachments/102039576.png)


b. Allow to select multiple areas and the selected areas should be red.

![image2021-10-25_17-24-5.png](/.attachments/102039582.png)


c. Select Material with material CM_SUBT02 is configured with Splitting Area

![image2021-10-25_17-18-46.png](/.attachments/102039578.png)



example: 
Selected “Material” with and without has configured Splitting Area
![image2021-10-25_17-20-37.png](/.attachments/102039579.png)


**Data Collection upload in MIE station (If configured DC available against WIP material)** 
Data collection entry can be done in two ways against single entry mode.

- Through excel upload (available only in single entry mode)

- Through system pop-up (available only in single entry mode)
When Data collection is configured, system to show a Data collection entry section over station screen.
![image2020-5-26_9-14-48.png](/.attachments/71369544.png)


User can find the below options for "Batch Upload of Data collection" section in the screen:

- Upload Answers

- Clear Current upload

- Download DC questions

- Delete Partial/Full upload
Through this option, User is able to perform partial data entry at one go. After the partial data entry, user is not able to complete the operation if PASS. Although if a defect is attached, user is able to proceed with completing the operation. This feature is available only for excel upload of DC. When user uses this function for measurement data upload and finds some error, they can put it in DC answer, add the relative defect and complete the operation as FAIL (they don't have to wait until entire test is completed). Although for a PASS operation, if user wants partial DC upload, they can. Instead of completing, they can do a Pause which will result uploading the available data without completing the operation. The WIP will still be against same MIE station and on next scan, the WIP to be resumed from when user paused it. All the data during Pause to be available with user. However, uploading same DC question answers again will result a overwrite on the existing upload.
User can also download all configured DC questions in excel format on clicking 'Download Questions' option - The downloaded file gets saved in a format of ""DC Name_DownloadDate(MM-DD-YYYY)"".
When user opens the file, it shows all the questions maintaining sequence having DC Answers column as blank for user entry and while uploading system validates the DC answers as per configuration made:
![image2020-5-26_9-24-41.png](/.attachments/71369545.png)







**Batch Entry mode** 
User will only be able to see the batch entry mode toggle when one of the customers that the user has permission for has the “Enforce assembly selection at station” set to ON. User have the option to turn on or off to Batch entry mode. Switching between options will clear and refresh the screen.
![image2020-5-26_9-24-41.png](/.attachments/35357001.png)


Batch Pass and Batch Failure buttons are visible if the Batch Entry mode is turned on. Panel is not supported in Batch Entry mode.
**Batch Failure** 
There is also a "Batch Failure" button on the MIE screen, the purpose of which is to allow the user to enter details of a defect once and scan multiple affected WIP's, reducing the need to open each WIP add the defect details and complete each one individually as FAIL.
![image2020-5-26_9-24-41.png](/.attachments/35357027.png)


Once selected the Batch button changes colour and a "Clear" button appears. "Clear" button is to refresh/clear the entire page.
Once assembly selected (either manually selection by operator or auto select by system) and if user is choosing for Batch Failure, screen to show Defect Entry (as below), at least one defect to log before WIP can be scanned. CRD is referring to the BOM setup and installed Setup Sheet if "Get BOM CRD" is checked/enabled. Otherwise, the CRD is only show according to the 
installed 
Setup Sheet setting. Also, CRD is filtered by selected assembly, route, route step and resource.![image2020-5-26_9-24-41.png](/.attachments/35357029.png)


After user filled up the Defect and CRD, click the "+" button to insert the defect into grid table. 
Note:

- If the selected defect is configuring as auto close defect in defect Type screen, then the status will remain as PASS. Status will only change to FAIL if there is any normal defect added or fail on data collection validation mask or limit exceed.

- If the current MIE step’s route step type is configuring the “Optional CRD” to ON, system will allow CRD as optional when assign defect, which means user allow to enter the CRD with "blank" value for defect assign to a WIP. This blank value should default the added defect refers to TOP material.


![image2020-5-26_9-24-41.png](/.attachments/35357038.png)


Click the field title to perform sorting by ascending or descending order. "Recycle bin" image under the Actions field is to delete the defect.
![image2020-5-26_9-24-41.png](/.attachments/35357039.png)


If Data Collection is configured, Data collection item should be showed under the Defect Entry.
![image2020-5-26_9-24-41.png](/.attachments/35357273.png)


Data collection item will show in the next page if data collection configured more than 3 items. Each page is showing up to 3 items only. Click the left/right button to go to previous/next page or first/last page.
![image2020-5-26_9-24-41.png](/.attachments/35357274.png)


At least one defect need to log in the Defect Entry. Data label will be captured as Failure label. All of the data collection item failed will log under the same defect(s).
![image2020-5-26_9-24-41.png](/.attachments/35357275.png)



"WIP Count" counter is set to "0" as default which to indicate the number of WIP scanned. Click
![image2020-5-26_9-24-41.png](/.attachments/35357065.png)


to reset the counter.
Using Keyboard "Tab" to move from one field to the other. Backward move is using key "Shift"+"Tab". As below sequence:
Batch Entry Mode option → Batch Pass/ Failure → Assembly selection → Defect → CRD → Get BOM CRD → "+" button → Defect record Actions (if any) → Data Collection Items (Retained Value) (if any) → Data Collection Item (Non-Retained Value) (if any) → Scan WIP → "Scan" button
Shortcut key for each of the feature on the screen:
"Alt"+"D": Defect Entry Section
"Alt"+"R": Retained Data Collection Section
"Alt"+"N": Non Retained Data Collection Section
"Alt"+"S": "Scan" button
Once the defect details are filled up, the user can begin scanning the relevant WIP's - Each time a WIP is scanned, it is automatically started, defect added and it is completed with a status as FAIL.
![image2020-5-26_9-24-41.png](/.attachments/35357051.png)


To clear the defect and material details the user can select the "Clear" button and start a new Batch Failure by scanning a new WIP.
**Batch Pass** 
There is a "Batch Pass" button on the MIE screen, the purpose of this is to allow the user to 
continuously scan Serial Number and the system will associate a WIP movement result to the WIP scanned by user. This will behave like the "Complete" function in MIE station so that it can decrease the operation time. The user has the ability to return to Normal mode. 
Process Step History will be recorded in WIP View.
![image2020-5-26_9-24-41.png](/.attachments/35357068.png)


Once click the Batch Pass button, the colour is changed from Green to Orange  and Batch Pass mode is enabled. "PASS" state will change to "FAIL" as long as any of data collection item (if any configured) is failed and defect is logged under Defect Entry.
![image2020-5-26_9-24-41.png](/.attachments/35357069.png)


Enter a valid WIP number and scan it. Pass result should be associated to the WIP scanned by user. There's no defects associated by default and user will still remain on the same screen.
**Normal mode** 
User can switch back to normal mode by clicking the Batch Pass or Batch Failure button.
![image2020-5-26_9-24-41.png](/.attachments/35357072.png)




#### Assembly Progression


When the step is to be completed with PASS (applicable only for repetitive Route step station having no open defects), assembly progression happens. It is applicable both for single entry and batch entry mode. If there are multiple configuration against same occurrence step, system populates window providing option to select one progression option to proceed with station operation completion. Once progression completes, WIP gets en-queued in following way:

- If there is only default configuration, WIP follows Default PASS rule of that step

- If there is only cross route configuration available, WIP follows only the assembly progression destination step(s)

- If both default and cross route configuration available, WIP follows both Default PASS destination step(s) and Progression cross route step(s) available in progression configuration
Note: If user opts for document printing after assembly Progression (or at the same station of assembly progression configured), user has to assign the Document as per progressed assembly. Also system has feasibility to print both Original and Current assembly after progression.


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan serial number</p></td><td class="confluenceTd"><p>This field may be partially completed for a "begins with" search or exactly entered for a full match. The field should normally be scanned from the WIP serial label in production.</p></td></tr><tr><td colspan="1" class="confluenceTd">WIP</td><td colspan="1" class="confluenceTd">Displays the scanned serial number of the WIP.</td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Material for the WIP that is being processed. Alias Assembly' Material to show if the blank CRD is selected and the WIP is converted to other Alias Assembly.</p></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Will display as pending PASS until a defect is entered, at which time is will display as pending FAIL</td></tr><tr><td colspan="1" class="confluenceTd"><p>Defect</p></td><td colspan="1" class="confluenceTd">Drop down selection for defect type.</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>Drop down selection for Component Reference Designator (CRD) which represents the location of the failure on the WIP.</p></td></tr><tr><td colspan="1" class="confluenceTd">Get BOM CRD checkbox</td><td colspan="1" class="confluenceTd">This allows the user to populate the CRD dropdown with the CRD's as listed on the Bill of Material (BOM) instead of from the setup sheet.</td></tr><tr><td colspan="1" class="confluenceTd">Clear selections</td><td colspan="1" class="confluenceTd">Allows values to be cleared before adding defect</td></tr><tr><td colspan="1" class="confluenceTd">Add Defect</td><td colspan="1" class="confluenceTd">Promotes the entered values for Defect/CRD to the defects section and clears from entry section, ready for next entry.</td></tr></tbody></table>

<table class="relative-table wrapped confluenceTable" style="width: 61.9857%;"><colgroup><col style="width: 8.32595%;" /><col style="width: 91.674%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualInspectionEntry(NonBatch/Lot)-DefectsSection"><strong>Defects Section</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Defect type</p></td><td class="confluenceTd"><p>Shows defect type attributed to entered defect</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>Displays CRD's entered as defective</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Displays material associated to the entered CRD. Alias Assembly' Material to show if the blank CRD is selected and the WIP is converted to other Alias Assembly.</td></tr><tr><td colspan="1" class="confluenceTd">Termination</td><td colspan="1" class="confluenceTd">Displays termination value.</td></tr></tbody></table>



#### Auto Release WIP


User will be able to see the “Auto Release WIP” toggle when the MIE route step is an initial route step and one of the customers that the user has permission for has the “Enforce assembly selection at station” set to ON.
![image2019-6-4_14-56-23.png](/.attachments/50954336.png)


If the assembly is for material with release type of "Assigned Serial Number", when the “Auto Release WIP” toggle is turned On, the Batch Mode and Batch Number fields will be visible. 
User is require to scan a Serial Number that matches the validation mask configured for the assembly or material. If Assembly Validation Mask configured, then prior to match with it’s pattern. If Assembly Validation Mask not configured, then match with material validation mask pattern. This validation mask logic is applicable for both single and batch entry mode screen with Material release type of “Assigned Serial Number”
![image2019-6-4_14-58-30.png](/.attachments/50954337.png)


MIE single entry mode:

- WIP is released and started after scanning serial number that does not exist in the system for material with release type of "Assigned Serial Number". If the serial number already exists, error is shown.


- WIP is released and started after scanning serial number with status of "New" (generated but not yet released) for material with release type of "Generate Serial Number". If the serial number scanned does not exist or is already released, error will be shown.


- "Auto Release WIP" and "Batch Entry Mode" toggle is disabled after WIP has started. It is enabled after the operation is completed or aborted.

MIE Batch Pass:

- WIP is released, started and completed after scanning a serial number that does not exist in the system for material with release type of "Assigned Serial Number". If the serial number already exists, error is shown.


- If the assembly is for material with release type of "Generate Serial Number" and the serial number scanned has the status of "New", WIP is released, started and completed. If the serial number scanned does not exist or is already released, error will be shown.

MIE Batch Failure:

- If the assembly is for material with release type of "Generate Serial Number" and the serial number scanned has the status of "New", WIP is released, started and completed. If
the serial number scanned does not exist or is already released, error will be shown.
- WIP is released, started and completed after scanning a serial number that does not exist in the system for material with release type of "Assigned Serial Number". If the serial number already exists, error is shown.

WIP attribute that is configured for WIP Release will be shown together with the WIP attribute configured for the route step. This is applicable to single entry mode and batch pass mode.
![image2019-6-4_15-16-4.png](/.attachments/50954341.png)


![image2019-6-4_15-16-16.png](/.attachments/50954342.png)


For single entry mode (Fail) and batch failure mode, only the WIP Release attribute will be shown.
![image2019-6-4_15-18-28.png](/.attachments/50954343.png)


![image2019-6-4_15-18-49.png](/.attachments/50954344.png)


![image2019-6-4_15-19-0.png](/.attachments/50954345.png)


The Batch Mode and Batch Number fields’ values are retained (not cleared) after completing the WIP. Values will be reset when “Auto Release WIP” or "Batch Entry Mode" is turned Off or "Clear" button in Batch Failure is clicked.

- When complete attribute entry (without DC configured) and closed the pop up dialog, the cursor will focus back to Scan WIP field in the operation screen

- When complete attribute entry with DC configured and closed the pop up dialog, the cursor will focus back to DC field in the operation screen
"Auto Release WIP" can work for panel if Panelization is done first. This is only supported in single entry mode.  For panel, Batch Mode and Batch Number fields will not be shown.
Assembly with "Unserialized to Serialized" or Deviation configuration is not supported for Auto Release WIP at station. "
On Release API Call" configuration (in [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)screen) for WIP Release screen is also not supported in Auto Release WIP at station.
**Link 'Manual Sampling' type batch tag number as attribute value for WIP** 
![image2022-2-7_14-20-50.png](/.attachments/106464795.png)


As above attribute assignment configuration, user already configured the CM Inspection 1 station need to link a batch tag number with 'Manual Sampling' type. During the runtime of CM Inspection 1 station system will generate different batch tag number for WIP base on different time range configured in sample plan. The behavior only support Pass scenario in MIE station.
For example:

**Sample Plan Configuration:** 
- Batch Tag Name: CM_SZHL8PhaseIIBT01

- Evaluation Route Step: CM Inspection 1

- Range Type: By Customized Time

- Time Range:

- 00:00 -- 04:00

- 04:00 -- 08:00

- 08:00 -- 12:00

- 14:00 -- 18:00

- 18:00 -- 00:00
**RunTime in**  
CM Inspection 1(Current Date: 2021/12/16)
All the WIP go through the CM Inspection 1 step from 2021/12/16 00:00(include) --- 2021/12/16 04:00(not include) will be linked a batch tag number: CM_BT202112160001
All the WIP go through the CM Inspection 1 step from 2021/12/16 04:00(include)--- 2021/12/16 08:00(not include) will be linked a batch tag number: CM_BT202112160002
All the WIP go through the CM Inspection 1 step from 2021/12/16 08:00(include)--- 2021/12/16 12:00(not include) will be linked a batch tag number: CM_BT202112160003
All the WIP go through the CM Inspection 1 stepfrom 2021/12/16 12:00(include)--- 2021/12/16 14:00(not include) will be linked nothing.
All the WIP go through the CM Inspection 1 step from 2021/12/16 14:00(include) --- 2021/12/16 18:00(not include) will be linked a batch tag number: CM_BT202112160004
All the WIP go through the CM Inspection 1 step from 2021/12/16 18:00(include) --- 2021/12/16 00:00(not include) will be linked a batch tag number: CM_BT202112160005If the WIP went through the CM Inspection 1 multiple times, the batch tag number will be updated by the last time value(if any).

For Batch Entry Mode(Pass), system will generate batch tag number for each time range of one day(24 hours) at a time once user click save button as below. The reason to do like this is to avoid generate different batch tag number for same time range in fast scan scenario.
![image2022-3-22_13-31-48.png](/.attachments/110919969.png)




#### Material Consumption


When
"
Material quantity Consumption"
is turned on in [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)screen, there will be a 'Material In Use' icon that user is able to view the remaining quantity available to be used for all the material that have been setup at part allocation. System will display the following information:
- Setup Sheet

- Material (all materials setup for the resource at part allocation)

- GRN

- Remaining Quantity

- Deviation Number
If "Enforce assembly selection at station" (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) is turned on, user is able to view the “Material In Use” icon when they first access the screen for batch/non-batch mode.![image2022-3-22_13-31-48.png](/.attachments/34087917.png)


![image2022-3-22_13-31-48.png](/.attachments/34087918.png)



![image2022-3-22_13-31-48.png](/.attachments/34087919.png)



If "Enforce assembly selection at station" is NOT turned on, user will only be able to view the “Material In Use” icon after the WIP has started for non-batch mode.
![image2022-3-22_13-31-48.png](/.attachments/34087921.png)




GRN quantity will be deducted upon WIP completion. 
If the GRN quantity is not sufficient to be used by the WIP, system will return a toaster message and will not allow the WIP to start:![image2022-3-22_13-31-48.png](/.attachments/32997515.png)




If a CRD has material consumed at other route step before, material is not consumed again.

When WIP returns to the same route step but with a different setup sheet, only material at additional CRD is consumed.

Sample scenario:
WIP: SM0004
1. Route Step: Manual Inspection, Setup Sheet: 3111, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441114, CRD: 1234
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357459.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-17-6.png?version=1&modificationDate=1538446626957&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357460.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-17-18.png?version=1&modificationDate=1538446639433&api=v2" /></span></p></div></td></tr></tbody></table>


2. Route Step: MIE2, Setup Sheet: 3126, Part Number: SM-REP-SERIALIZED, GRN: 1234512345123456, CRD: 4; Part Number: SM-LOT-SUB-MAT, GRN: 1234512345123457, CRD: 5
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><span>Before start</span></th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357461.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-19-6.png?version=1&modificationDate=1538446747253&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh"><span>After complete</span></th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357462.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-19-15.png?version=1&modificationDate=1538446756320&api=v2" /></span></p></div></td></tr></tbody></table>


3. Route Step: Manual Inspection, Setup Sheet: 3131, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441114, CRD: 124; Part Number: SM-LOT-SUB-MAT, GRN: 1234512345123458, CRD: 6
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><span>Before start</span></th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357463.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-20-39.png?version=1&modificationDate=1538446840373&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh"><span>After complete</span></th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357464.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919731/image2018-10-2-10-20-49.png?version=1&modificationDate=1538446849727&api=v2" /></span></p></div></td></tr></tbody></table>



#### Start WIP/Panel by UPD


System allow to start WIP by UPD when:
a: WIP has linked UPD.
b: UPD is used for looking up parent WIP.

1.Single Entry Mode
a: Start WIP, user can scan UPD and then system will automated look up parent WIP and start it.
b: Start Panel, user can scan UPD and then system will automated look up panel and start it.
2.Batch Entry Mode
a: Start WIP, user can scan UPD and then system will automated complete it.
b: Start Panel, not support system will give an error msg said 'Panels are not currently supported for batch mode'.


#### Supports retrieving unit WIP on the panel by location information


If processing a panel board at the MIE station, the panel grid system is able to display the location information at the beginning of each WIP serial number, the location according to the configuration of the panel type
For example, panel 
OLCTop220726001belongs to assembly OLC-Top002![image2022-7-27_15-6-18.png](/.attachments/122749891.png)


Refer to the panel configuration, the mapping is like below
![image2022-7-27_15-4-47.png](/.attachments/122749888.png)


The location info will display with the unit WIP serial number together on the panel grid when processing at MIE
![image2022-7-27_15-4-14.png](/.attachments/122749887.png)


Meanwhile, system supports retrieving unit WIP by location at the search field
Input location "4" plus "/" and enter, system will retrieve & display proper unit WIP for the following operation
![image2022-7-27_15-5-36.png](/.attachments/122749889.png)


![image2022-7-27_15-5-55.png](/.attachments/122749890.png)





#### Attachments

[image2018-1-19 11:22:12.png](/.attachments/29919732.png)
[image2018-1-19 11:21:10.png](/.attachments/29919733.png)
[image2018-1-19 11:19:20.png](/.attachments/29919734.png)
[image2018-1-19 11:13:51.png](/.attachments/29919735.png)
[image2018-1-19 11:12:53.png](/.attachments/29919736.png)
[image2018-1-19 11:12:14.png](/.attachments/29919737.png)
[image2018-1-19 11:9:32.png](/.attachments/29919738.png)
[image2018-1-19 11:8:21.png](/.attachments/29919739.png)
[image2018-1-19 11:5:58.png](/.attachments/29919740.png)
[image2018-1-19 11:3:11.png](/.attachments/29919741.png)
[image2018-1-18 15:37:42.png](/.attachments/29919742.png)
[image2018-1-18 15:10:11.png](/.attachments/29919743.png)
[image2018-1-18 14:43:7.png](/.attachments/29919744.png)
[image2018-1-18 14:21:8.png](/.attachments/29919745.png)
[image2018-1-18 12:53:5.png](/.attachments/29919746.png)
[image2018-1-18 12:46:43.png](/.attachments/29919747.png)
[image2018-1-18 12:40:55.png](/.attachments/29919748.png)
[image2018-1-18 12:35:40.png](/.attachments/29919749.png)
[image2018-1-18 12:33:45.png](/.attachments/29919750.png)
[image2018-1-18 12:33:6.png](/.attachments/29919751.png)
[image2018-1-18 12:26:46.png](/.attachments/29919752.png)
[image2018-1-18 12:8:18.png](/.attachments/29919753.png)
[image2018-1-18 12:7:27.png](/.attachments/29919754.png)
[image2018-1-18 11:54:4.png](/.attachments/29919755.png)
[image2018-1-18 11:52:34.png](/.attachments/29919756.png)
[image2018-1-17 11:52:53.png](/.attachments/29919757.png)
[image2018-1-17 11:46:51.png](/.attachments/29919758.png)
[image2018-1-17 11:44:22.png](/.attachments/29919759.png)
[image2018-1-17 11:38:54.png](/.attachments/29919760.png)
[image2018-1-17 11:8:3.png](/.attachments/29919761.png)
[image2018-1-16 11:15:45.png](/.attachments/29919762.png)
[image2018-1-16 11:12:9.png](/.attachments/29919763.png)
[image2018-1-16 10:42:15.png](/.attachments/29919764.png)
[image2018-1-16 10:37:8.png](/.attachments/29919765.png)
[image2018-1-16 10:36:28.png](/.attachments/29919766.png)
[image2018-1-16 10:34:35.png](/.attachments/29919767.png)
[image2018-1-16 10:25:26.png](/.attachments/29919768.png)
[image2018-1-12 15:53:25.png](/.attachments/29919769.png)
[image2018-1-12 15:45:15.png](/.attachments/29919770.png)
[image2016-12-8 16:21:0.png](/.attachments/29919771.png)
[image2016-12-8 16:29:54.png](/.attachments/29919772.png)
[image2017-7-19 11:8:1.png](/.attachments/29919773.png)
[image2017-10-10 10:38:16.png](/.attachments/29919774.png)
[image2018-7-11_16-48-11.png](/.attachments/31391906.png)
[image2018-7-12_9-33-4.png](/.attachments/31391973.png)
[image2018-7-12_9-43-36.png](/.attachments/31391976.png)
[image2018-7-12_9-45-2.png](/.attachments/31391977.png)
[image2018-7-12_10-52-30.png](/.attachments/31391984.png)
[image2018-7-12_11-0-5.png](/.attachments/31391985.png)
[image2018-7-12_11-6-19.png](/.attachments/31391986.png)
[image2018-7-12_11-16-14.png](/.attachments/31391988.png)
[image2018-8-15_14-37-31.png](/.attachments/32997509.png)
[image2018-8-15_14-42-48.png](/.attachments/32997510.png)
[image2018-8-15_14-56-11.png](/.attachments/32997511.png)
[image2018-8-15_15-30-29.png](/.attachments/32997513.png)
[image2018-8-15_15-31-56.png](/.attachments/32997514.png)
[image2018-8-15_15-33-59.png](/.attachments/32997515.png)
[image2018-9-3_13-43-54.png](/.attachments/34087917.png)
[image2018-9-3_13-46-15.png](/.attachments/34087918.png)
[image2018-9-3_13-48-16.png](/.attachments/34087919.png)
[image2018-9-3_13-58-27.png](/.attachments/34087921.png)
[image2018-9-26_16-49-50.png](/.attachments/35357001.png)
[image2018-9-26_16-56-12.png](/.attachments/35357002.png)
[image2018-9-27_13-33-43.png](/.attachments/35357026.png)
[image2018-9-27_13-42-49.png](/.attachments/35357027.png)
[image2018-9-27_13-43-31.png](/.attachments/35357028.png)
[image2018-9-27_13-54-53.png](/.attachments/35357029.png)
[image2018-9-27_14-11-22.png](/.attachments/35357038.png)
[image2018-9-27_14-15-8.png](/.attachments/35357039.png)
[image2018-9-27_14-53-24.png](/.attachments/35357051.png)
[image2018-9-27_17-0-42.png](/.attachments/35357065.png)
[image2018-9-27_17-26-34.png](/.attachments/35357067.png)
[image2018-9-27_17-28-12.png](/.attachments/35357068.png)
[image2018-9-27_17-29-9.png](/.attachments/35357069.png)
[image2018-9-27_17-29-44.png](/.attachments/35357070.png)
[image2018-9-27_17-30-18.png](/.attachments/35357071.png)
[image2018-9-27_17-30-58.png](/.attachments/35357072.png)
[image2018-10-1_14-48-19.png](/.attachments/35357273.png)
[image2018-10-1_15-2-44.png](/.attachments/35357274.png)
[image2018-10-1_15-14-31.png](/.attachments/35357275.png)
[image2018-10-1_15-34-46.png](/.attachments/35357276.png)
[image2018-10-1_15-36-14.png](/.attachments/35357277.png)
[image2018-10-1_15-36-56.png](/.attachments/35357278.png)
[image2018-10-1_15-38-45.png](/.attachments/35357279.png)
[image2018-10-1_15-48-36.png](/.attachments/35357280.png)
[image2018-10-1_15-51-1.png](/.attachments/35357281.png)
[image2018-10-1_16-0-12.png](/.attachments/35357282.png)
[image2018-10-1_16-0-39.png](/.attachments/35357283.png)
[image2018-10-1_16-17-52.png](/.attachments/35357284.png)
[image2018-10-1_16-18-15.png](/.attachments/35357285.png)
[image2018-10-1_16-21-20.png](/.attachments/35357286.png)
[image2018-10-1_16-21-54.png](/.attachments/35357287.png)
[image2018-10-1_16-26-36.png](/.attachments/35357288.png)
[image2018-10-1_16-28-18.png](/.attachments/35357289.png)
[image2018-10-2_10-17-6.png](/.attachments/35357459.png)
[image2018-10-2_10-17-18.png](/.attachments/35357460.png)
[image2018-10-2_10-19-6.png](/.attachments/35357461.png)
[image2018-10-2_10-19-15.png](/.attachments/35357462.png)
[image2018-10-2_10-20-39.png](/.attachments/35357463.png)
[image2018-10-2_10-20-49.png](/.attachments/35357464.png)
[image2019-6-4_14-56-23.png](/.attachments/50954336.png)
[image2019-6-4_14-58-30.png](/.attachments/50954337.png)
[image2019-6-4_15-7-32.png](/.attachments/50954338.png)
[image2019-6-4_15-11-33.png](/.attachments/50954339.png)
[image2019-6-4_15-11-56.png](/.attachments/50954340.png)
[image2019-6-4_15-16-4.png](/.attachments/50954341.png)
[image2019-6-4_15-16-16.png](/.attachments/50954342.png)
[image2019-6-4_15-18-28.png](/.attachments/50954343.png)
[image2019-6-4_15-18-49.png](/.attachments/50954344.png)
[image2019-6-4_15-19-0.png](/.attachments/50954345.png)
[image2020-5-26_9-5-51.png](/.attachments/71369541.png)
[image2020-5-26_9-7-0.png](/.attachments/71369542.png)
[image2020-5-26_9-14-48.png](/.attachments/71369544.png)
[image2020-5-26_9-24-41.png](/.attachments/71369545.png)
[image2021-10-25_17-2-7.png](/.attachments/102039573.png)
[image2021-10-25_17-3-50.png](/.attachments/102039574.png)
[image2021-10-25_17-4-8.png](/.attachments/102039575.png)
[image2021-10-25_17-5-37.png](/.attachments/102039576.png)
[image2021-10-25_17-18-46.png](/.attachments/102039578.png)
[image2021-10-25_17-20-37.png](/.attachments/102039579.png)
[image2021-10-25_17-22-48.png](/.attachments/102039581.png)
[image2021-10-25_17-24-5.png](/.attachments/102039582.png)
[image2021-11-25_16-29-8.png](/.attachments/103252534.png)
[image2021-11-25_16-31-39.png](/.attachments/103252536.png)
[image2021-11-25_16-33-0.png](/.attachments/103252538.png)
[image2021-11-25_16-35-57.png](/.attachments/103252539.png)
[image2021-11-25_16-42-39.png](/.attachments/103252540.png)
[image2021-11-25_16-42-56.png](/.attachments/103252541.png)
[image2021-11-25_16-43-2.png](/.attachments/103252542.png)
[image2021-11-25_16-43-49.png](/.attachments/103252543.png)
[image2022-2-7_14-8-16.png](/.attachments/106464793.png)
[image2022-2-7_14-20-43.png](/.attachments/106464794.png)
[image2022-2-7_14-20-50.png](/.attachments/106464795.png)
[image2022-3-22_13-31-48.png](/.attachments/110919969.png)
[image2022-7-27_15-4-14.png](/.attachments/122749887.png)
[image2022-7-27_15-4-47.png](/.attachments/122749888.png)
[image2022-7-27_15-5-36.png](/.attachments/122749889.png)
[image2022-7-27_15-5-55.png](/.attachments/122749890.png)
[image2022-7-27_15-6-18.png](/.attachments/122749891.png)
