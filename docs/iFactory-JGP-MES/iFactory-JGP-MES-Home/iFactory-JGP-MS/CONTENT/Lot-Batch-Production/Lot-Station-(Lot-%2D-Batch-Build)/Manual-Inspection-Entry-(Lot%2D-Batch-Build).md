# Introduction

The Manual Inspection Entry (MIE)
permits end users to inspect an ***ITEM***  and place a defect if the identified material is nonconforming. The examination of the original cause regarding the non-conformance is the analysis process. User also has the option to auto release failed units at the same workstation so that they can keep track of the total material consumed at the resource.



### How to get there?


**Method 1: Using Generic Workstation** 
1. Generic Workstation



2. Scan Resource Name


3. Scan Serial Number that is enqueued at an Manual Inspection Entry step


**Method 2: Using Manual Station Login** 
1. Lot Station



2. Select Customer, Resource,
Route, Route Step
& Assembly (if "Enforce assembly selection at station" is turned on)![](/.attachments/41058523.png)





#### Permission


MIE Batch Mode: 
1. Manual Station Login - Allows the user to manually log into a station associated with a route, step, and resource 

2. Add Lot Defects - Allows the user to manually add defects to a lot at inspection MIE Single Entry Mode: 
1. Manual Station Login - Allows the user to manually log into a station associated with a route, step, and resource 

2. Add Lot Defects - Allows the user to manually add defects to a lot at inspection 
3. View Lot Details - Allows the user to view detailed lot information (operation history, attributes, etc.) 
4. Add Lot Hold -Allows the user to put a lot on hold 
5. Release Lot Hold - Allows the user to release an existing hold on a lot Auto Release Failed Units: 
1. Manual Station Login - Allows the user to manually log into a station associated with a route, step, and resource 

2. Add Lot Defects - Allows the user to manually add defects to a lot at inspection 
3. View Lot Details - Allows the user to view detailed lot information (operation history, attributes, etc.) 
4. Add Lot Hold - Allows the user to put a lot on hold 
5. Release Lot Hold - Allows the user to release an existing hold on a lot 
6. Release Lot - Allows the user to release new lots 
7. Create Carrier - Allows the user to create new carriers for transporting materialsAdditional Permissions for Online Material Loading:
1. Can Access NG - Can Access Part Allocation -  Can Access Customer Configuration

2. Can Access NG - Can Access Part Allocation -  Can Access Equipment Part Allocation
3. Can Access NG - Can Access Part Allocation -  Can Access Manual Station Part Allocation
4. Can Access NG - Can Access Setup Sheet -  Can Access Manual Station Setup Sheet

#### Screen Activity


Manual Inspection Entry enables the user to perform the following activity:

- Abort the activity

- Complete the activity

- Add/Remove Defects

- Turn on "Auto Release Failed Units" screen



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Inspection Entry 

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)
User must identify the Resource they are using before performing the Operation activities  


#### Screen Dependency


Manual Inspection Entry 

- None specifically, once the Lot is Started the system will record the occurrence of the activity and can be seen via the
[Lot View](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)History Tab. 
- The system will show a message if the lot is not allowed to start based on the validation of the Routing Rules.



#### Process


When the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)the application will open the configured operation activity screen, in this example MIE. The MIE screen allows the user to view previously added open defects, Enter new defects for the items, remove defects (current operation only), Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Carrier to start the operation activities. The user has also pressed the Station Details Control to optionally view what has been selected as Route and Route Step context.![image2019-4-23_10-0-16.png](/.attachments/48169024.png)


MIE screen will show how many units Completed/Started at current session. (\*Note: This feature is in dev environment and not visible in the system) 

- Reenter to the station or Refresh button will reset the Counter to Zero

- Abort Operation will not increase the Counter
![image2019-4-23_10-0-16.png](/.attachments/29917863.png)



Once a valid Carrier Serial Number has been scanned, the Lot Number is looked up, and the Lot is Started automatically. The screen is presented to the user and, in the case where there are open defects from a previous inspection, these shall be displayed, including populating the fail and pass qty previously entered. Otherwise allows user to Enter Fail Quantity, Pass Quantity, Details for the Fail Quantity in case of " 1 (Defect, Quantity of Items, Material/CRD  and comments) Abort or Complete the operation. When the User presses one of the buttons the systems records the operation activity, the screen should be cleared and the cycle starts all over again.
If 
Assembly is created for the Lot material and 
Manual Station Part Allocation is setup and installed for the Resource, u
ser is able to assign defects to CRD which are configured in the setup sheet installed.
![image2019-4-23_10-0-16.png](/.attachments/42106881.png)


For the material list:

- If Lot has assembly, then the material will be from setup sheet + top level material

- If Lot does not have assembly, then the material will be from BOM
![image2019-4-23_10-11-47.png](/.attachments/48169025.png)



If the User decides to Abort the operation, all defects added in the current operation will be removed and will not be recorded in the system (Note any defects from a previous operation remain, in other words it reverts to the original condition).
If there is open defects upon completion, 
user has the option to split the defective lots to a new carrier (unassigned carrier) or an assigned carrier. If user scans an unassigned carrier, the carrier size must be equal or more than the failed quantity being transferred. If an assigned defect carrier is scanned, it must fulfill the following conditions:

- Carrier has Inspection History

- Carrier cannot be on hold (Individual, planned order or FAI)

- Carrier cannot be scrapped

- Carrier is not packed in a container

- Carrier available quantity must be more than or equal to the failed quantity being transferred

- Carrier must belong to the same material


- Carrier belongs to the same planned order if 'Restrict To Same Planned Orders' (
[Container Type - Packout Configurations](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)) is turned ON
- Carrier with different attribute values is not allowed to merge when "Allow multiple value" is configured as "NO" in
[Manual Inspection Entry (Lot/ Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build).md)Screen.
- Carrier must have the same assembly as the carrier being inspected

- Carrier must have the same assembled material at the same CRD as the carrier being inspected

- Carrier must have the same open defect type as the carrier being inspected (different material/CRD are allowed)

System will auto split the failed items to the Defect Carrier and complete the operation by routing the pass and fail carriers accordingly to the configured routing rules. 
User can continue to process the carrier as one without splitting the pass and failed items by clicking on "No Split" button.![image2019-4-23_10-11-47.png](/.attachments/29917858.png)





#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan a carrier serial number</p></td><td class="confluenceTd"><p>This field may be empty for a full wild card search, partially completed for a partial match, exactly entered for a full match. The field should normally be scanned from the Carrier label in production</p></td></tr><tr><td colspan="1" class="confluenceTd">Carrier Count</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The number of Carriers completed successfully at current session.<span> </span></span><span style="color: rgb(23,43,77);">Restart a new session, switching between single and batch mode or Refresh button (Alt + Q) will reset the counter.</span></td></tr><tr><td colspan="1" class="confluenceTd">Completed/Started</td><td colspan="1" class="confluenceTd">The number of started and completed lot for the current session. Restart a new session or Refresh button will restart the counter.</td></tr><tr><td class="confluenceTd"><p>Lot Number</p></td><td class="confluenceTd"><p>The Number of the Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Lot Quantity</p></td><td class="confluenceTd"><p>The Number of items for the Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Order Number</p></td><td class="confluenceTd"><p>The Planned Order this lot is fulfilling. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Material that is being processed on this Lot. (Read only)</p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Size Quantity</td><td colspan="1" class="confluenceTd">This is the Quantity that the user needs to inspect in order to be able to complete the operation</td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail Quantity</p></td><td colspan="1" class="confluenceTd">The user can determinate the quantity to Fail if there > 1 the user needs to fill the Defects Section</td></tr><tr><td colspan="1" class="confluenceTd">Pass Quanitty</td><td colspan="1" class="confluenceTd"><p>The user can determinate the quantity to Pass</p><p>The total Fail + Pass Quantity must be equal to the Lot Quantity or Sample Size Quantity</p></td></tr><tr><td colspan="1" class="confluenceTd">Pass All</td><td colspan="1" class="confluenceTd">This option allow to pass all the items on the lot</td></tr></tbody></table>

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualInspectionEntry(Lot/BatchBuild)-DefectsSection"><strong>Defects Section</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Defect</p></td><td class="confluenceTd"><p>From a Global Defect List the user can select the Defect that are affecting the item(s)</p></td></tr><tr><td colspan="1" class="confluenceTd">Affected Item Quantity</td><td colspan="1" class="confluenceTd"><p>The user can enter the quantity of affected items for a specific Defect. The Affected Item Quantity following the next rules:</p><ol><li><p><span>Maximum items affected by a Defect and Material must be equal or less than the Total Item Failure Qty </span></p></li><li><p><span>The Total Defect items must be equal or greater than the Fail Quantity </span></p></li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Materials</td><td colspan="1" class="confluenceTd"><p>By default the top level material will be selected. The user will have the possibility to choose which material is affected by the defect.</p><ul><li>If Lot has assembly, then the material will be from setup sheet + top level material</li><li>If Lot does not have assembly, then the material will be from BOM</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">The user can enter a free comment (200 max characters)</td></tr><tr><td colspan="1" class="confluenceTd">Add Defect Button</td><td colspan="1" class="confluenceTd"><p>Once the fields are populated the user can Add the Defect</p><p>They will be grouping by Defect, Material, and comments</p></td></tr><tr><td colspan="1" class="confluenceTd">Delete Image</td><td colspan="1" class="confluenceTd">Remove Defects that is added from current operation</td></tr></tbody></table>


- Note: If same Defect and same Material has been selected to add defect, the system will it as individual row.

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualInspectionEntry(Lot/BatchBuild)-SplitToDefectCarrier"><strong>Split To Defect Carrier</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Defect Carrier</p></td><td class="confluenceTd">To scan the carrier number that all the open defects will split to</td></tr><tr><td colspan="1" class="confluenceTd">No Split button</td><td colspan="1" class="confluenceTd">The carrier will continue to process as one with the pass and failed quantity</td></tr></tbody></table>



#### Batch Entry Mode


If the customer has the “Enforce assembly selection at station” 
(
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) 
set to ON, "Batch Entry Mode" toggle will be visible.![image2019-6-17_16-13-46.png](/.attachments/51871888.png)





#### Batch Pass


![image2019-6-17_16-14-19.png](/.attachments/51871889.png)


If the "Batch Entry Mode" is turned On, "Batch Pass" button will be visible. User can continuously assign Pass result to the already inspected carrier so that it can decrease the operation time if "Batch Pass" is On. System shall associate Pass result to the carrier# scanned by user. This will behave like the “Pass All” function and C
arrier Count will reflect the number of carriers completed successfully. 
Process Step History is recorded in Lot View.If attribute is configured, the lot attributes window will pop up once Batch Pass mode is turned On. The value saved will be shown and retained on screen. 
The Attribute button will show the number of attributes to fill up. If all attributes have value entered, the Attribute button will not show the number. If Lot Attributes values have not been saved, "Scan Carrier" text box is disabled.![image2019-6-17_16-28-0.png](/.attachments/51871900.png)


![image2019-6-17_16-25-58.png](/.attachments/51871898.png)


![image2019-6-17_16-26-57.png](/.attachments/51871899.png)


![image2019-6-17_16-26-57.png](/.attachments/35356823.png)





#### Batch Failure (Auto Release Failed Units)


![image2019-6-17_16-32-32.png](/.attachments/51871901.png)


The Batch Failure button is visible when:

- “Auto Release Lot” is turned ON and


- "Batch Entry Mode" is turned ON and


- The
inspection step is set as an initial route step and 

- "Allow Auto Release Failed Units" in

[Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Route-Step-Reporting-Name.md)is checkedThe Inspection as well as Batch Failure (Auto Release Failed Units) screens are from the same route step and using the same resource. Part allocation installed for this route step and resource will work for both screens. If “Material quantity consumption” in setup sheet is turned ON, the GRN quantity is deducted accordingly.
When the “Batch Failure” is turned On, user will be shown the "
[Auto Release Failed Units](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Inspection-Entry-(Lot%2D-Batch-Build)/Auto-Release-Failed-Unit-at-Inspection.md)" screen.![image2019-6-17_16-40-31.png](/.attachments/51871903.png)





#### Auto Release Lot


If the customer has the “Enforce assembly selection at station” set to ON, user will be able to see the “Auto Release Lot” toggle when the MIE route step is an initial route step.
![image2019-6-17_16-46-55.png](/.attachments/51871906.png)


If “Auto Release Lot” is OFF and "Batch Pass" is turned ON, screen will behave as per normal batch pass mode. When “Auto Release Lot” is turned ON, "Batch Entry Mode" will be automatically turned ON (Auto Release Lot is only applicable to Batch Entry Mode). 
When “Auto Release Lot” is ON and "Batch Pass" is turned ON, “Auto Release Lot” toggle will be disabled. Attribute(s) that is configured for Lot Release will be shown together with the lot attribute configured for the route step. 
User will need to search for the “Planned Order”. The planned orders returned by the search are filtered by route and material. “Quantity Released”, “Quantity Remaining”, “Template”, “Carrier Capacity” and “Release Quantity” fields will be visible after Planned Order is entered.
![image2019-6-17_17-13-21.png](/.attachments/51871918.png)


![image2019-6-17_17-12-37.png](/.attachments/51871917.png)


Template list will only display carrier templates with validation mask configuration. 
“Carrier capacity” is a read-only field and value will be populated based on the “Template” selected. 
The “Release Quantity” is auto populated with the value of carrier capacity. The value is editable but it must be more than 0 and cannot be more than “Carrier Capacity”.
If “Template” is selected, the carrier number scanned should not exist in the system. 
If "Template" is selected and "On Carrier Create" is configured in document assignment then “Printer” option is displayed and label will be printed when lot completes. If only 1 printer is configured, it will be selected by default.![image2019-6-17_17-15-48.png](/.attachments/51871919.png)


If “Template” is not selected, the carrier number scanned should exist in the system with status of “Unassigned”. If carrier scanned is valid, "Carrier Capacity" will be populated and "Release Quantity" will be populated with the "Carrier Capacity" value.
![image2019-6-17_17-17-2.png](/.attachments/51871920.png)


When the Complete event is triggered with “Auto Release Lot” turned On:

- Carrier will be created if it does not exist. A lot number will be assigned to the carrier scanned.

- If successful, lot will in queue at the next route step.
After completing the lot, values for “Planned Order”, “Template”, “Carrier capacity”, “Release Quantity” and “Printer” fields are not cleared. “Quantity Released” and “Quantity Remaining” will be updated accordingly. Carrier number is cleared so that user is able to continue scanning.
Link With Previous Process Material (Unserialized to Unserialized process) is not supported in Auto Release Lot.
For Auto Release Lot at stations, if document is assigned for "On Carrier Create" print trigger, user is able to print all the values under “ASSEMBLYREVISION PROPERTIES”.
![image2019-12-18_9-1-32.png](/.attachments/62423134.png)


![image2019-12-18_9-2-1.png](/.attachments/62423135.png)





#### Online Material Loading


If the installed setup sheet has part number(s) with “Online Material Loading” turned ON at 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md), the Online Material Loading window will pop up.![image2019-6-4_8-25-2.png](/.attachments/50954316.png)


![image2019-6-17_16-0-59.png](/.attachments/51871884.png)


For single entry mode, the window will pop up after user scans carrier. 
For Batch Pass mode, it will pop up once user turn on Batch Pass mode. 
For Batch Failure mode (Auto Release Failed Units), it will pop up after selecting the Planned Order. 
When the window opens, system will select the first row by default and focus the cursor at GRN field. If there is already a GRN value, it is highlighted so that user can scan a new GRN if needed.If the Part Number’s GRN Validation Mask is configured, user will need to enter the Non-Unique Identifier GRN in the GRN field. After pressing on Enter key, cursor will focus on Quantity field. System will auto populate the editable Quantity field with the available GRN quantity. User needs to manually create the GRN first before being able to use it for online material loading.
If no GRN Validation Mask is configured and material is non lot batch, user will need to enter the 16 char GRN. After pressing on Enter key, cursor will focus on Quantity field. System will auto populate the editable Quantity field with the available GRN quantity. User needs to manually create the GRN first before being able to use it for online material loading.
If no GRN Validation Mask is configured and material is lot batch, user will scan a previous carrier number in the GRN field. The previous carrier number scanned need not exist in GRN table.

- The material of the “Previous Carrier” scanned must be the same as the part number required.

- The “Previous Carrier” scanned must be in completed status.

- The previous carrier should not be packed.

- The previous carrier scanned cannot be On Hold.

- The previous carrier scanned cannot be Scrapped.
If the previous carrier scanned passes the validations above, the previous carrier's lot quantity will be displayed in the editable Quantity field. 
The “Previous Carrier” value will be saved into the GRN table with Quantity as the GRN quantity. If the carrier number already exists in the GRN table, GRN creation is skipped. When the lot completes the operation, the status of “Previous Carrier” scanned will be changed to “Consumed”. This carrier will not be allowed to use for Unserialized To Serialized feature.![image2019-6-4_8-37-31.png](/.attachments/50954319.png)


![image2019-6-4_8-37-22.png](/.attachments/50954318.png)


Once the last record has GRN and quantity added, the Online Material Loading window will automatically close.
If the Online Material Loading window is closed before all part numbers have a valid GRN entered:

- Lot MIE single entry mode: the Pass All & Complete buttons will remain disabled.


- Lot MIE batch pass mode: the Scan Carrier field will remain disabled.


- Lot MIE batch failure mode (Auto Release Failed Units): the Submit button will remain disabled


Once all online materials have been added, the button will not show a number: 
![image2019-6-4_8-53-37.png](/.attachments/50954321.png)


If the GRN quantity is not sufficient for current lot operation, error message is returned and the Online Material Loading window will pop-up so that user can scan another GRN to complete the lot:
![image2019-6-17_15-58-38.png](/.attachments/51871883.png)


The GRN added in Online Material Loading will be shown in Lot View – Genealogy tab under the Identifier column regardless the setup sheet has Material Quantity Consumption turned On or Off.
![image2019-6-4_9-19-0.png](/.attachments/50954323.png)


For Lot MIE Batch Pass mode, the Online Material Loading window will not pop up after lot is released. The window will only pop up when GRN quantity is not sufficient for current lot consumption. For Batch Failure mode (Auto Release Failed Units), the Online Material Loading window will pop up after lot is released. 
The GRN value in Online Material Loading window is retained until operator scans a new GRN or setup is cleared at Manual Station Part Allocation.


#### Material Consumption


Pre-requisite:

- Assembly is created for the Lot material.


- Manual Station Part Allocation is setup for the Resource. T

he part number must be of Unserialized or Lot/Batch Material

- The Material/setup sheet has "Material Quantity Consumption" turned on


When
"
Material quantity Consumption"
is turned on in [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)screen, the GRN Quantity will be deducted upon lot/batch completion at Lot Station MIE. The quantity deducted = Number of CRD X Lot Quantity. If the CRD has material consumed before, material will not be consumed again for that CRD. 
If the material part number was removed at rework station before returning to the same route step, the material will need to be consumed again if the installed setup sheet has that material configured.
If the lot returns to the same route step but with a different setup sheet/setup sheet version, if there are additional CRD configured, the material(s) at the new CRD will be consumed. When the GRN quantity is not sufficient to use, system will not allow the lot/batch to start.If "Enforce assembly selection at station" (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) is turned on, user is able to view the “Material In Use” icon when they first access the screen (before starting the lot) for batch/non-batch mode
.![image2019-6-17_15-44-32.png](/.attachments/51871881.png)


![image2019-6-17_15-42-41.png](/.attachments/51871880.png)


If "Enforce assembly selection at station" is NOT turned on, user will only be able to view the “Material In Use” icon after the lot has started.
![image2019-4-23_10-47-12.png](/.attachments/48169027.png)



If the toggle called "
Allow Retest On Failure and Defect
" is turned "ON" in MIE station:1. Batch Entry Mode - Batch Pass scan the Carrier again

- System will Auto closed the defect with "False Call" which create in MIE

- History show the status with Pass

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code
2. Batch Entry Mode - Batch Fail scan the Carrier again

- System will Auto close the defect with "False Call" which create in MIE

- Add new defect with open

- History show the status with Fail

- For Auto closed defect record, system could add Rework Events with "False Call" and comment column will display “system auto Closed defect” + Defect code
3. Single Entry Mode - Scan Carrier again
3.1 System will Auto close the defect with "False Call" which create in MIE when scan Carrier in the same MIE station

- Complete Pass in MIE

- History show the status with Pass

- Complete Fail in MIE

- Add new defect with open

- History show the status with Fail
3.2 
if click "Abort" or "Clear", system will rollback the operation
- The auto closed defect will change to "Open"



#### Attachments

[image2017-10-10 10:38:16.png](/.attachments/29917858.png)
[image2017-7-19 11:8:1.png](/.attachments/29917859.png)
[image2016-12-8 16:29:54.png](/.attachments/29917860.png)
[image2016-12-8 16:21:0.png](/.attachments/29917861.png)
[image2018-9-18_15-19-15.png](/.attachments/35356822.png)
[image2018-9-18_15-22-28.png](/.attachments/35356823.png)
[image2019-1-9_16-56-28.png](/.attachments/39649666.png)
[image2019-1-9_17-21-0.png](/.attachments/39649667.png)
[image2019-1-9_17-21-36.png](/.attachments/39649668.png)
[image2019-1-23_16-38-24.png](/.attachments/41058523.png)
[image2019-1-24_16-2-55.png](/.attachments/41058552.png)
[image2019-1-25_10-52-33.png](/.attachments/42106881.png)
[image2019-3-27_8-42-47.png](/.attachments/45973911.png)
[image2019-3-27_8-46-36.png](/.attachments/45973912.png)
[image2019-3-27_8-47-10.png](/.attachments/45973913.png)
[image2019-4-23_8-43-9.png](/.attachments/48169015.png)
[image2019-4-23_8-44-48.png](/.attachments/48169016.png)
[image2019-4-23_8-45-30.png](/.attachments/48169017.png)
[image2019-4-23_9-19-33.png](/.attachments/48169019.png)
[image2019-4-23_9-22-8.png](/.attachments/48169020.png)
[image2019-4-23_9-23-18.png](/.attachments/48169021.png)
[image2019-4-23_10-0-16.png](/.attachments/48169024.png)
[image2019-4-23_10-11-47.png](/.attachments/48169025.png)
[image2019-4-23_10-45-29.png](/.attachments/48169026.png)
[image2019-4-23_10-47-12.png](/.attachments/48169027.png)
[image2019-6-4_8-25-2.png](/.attachments/50954316.png)
[image2019-6-4_8-25-30.png](/.attachments/50954317.png)
[image2019-6-4_8-37-22.png](/.attachments/50954318.png)
[image2019-6-4_8-37-31.png](/.attachments/50954319.png)
[image2019-6-4_8-52-20.png](/.attachments/50954320.png)
[image2019-6-4_8-53-37.png](/.attachments/50954321.png)
[image2019-6-4_8-54-35.png](/.attachments/50954322.png)
[image2019-6-4_9-19-0.png](/.attachments/50954323.png)
[image2019-6-17_15-42-41.png](/.attachments/51871880.png)
[image2019-6-17_15-44-32.png](/.attachments/51871881.png)
[image2019-6-17_15-56-34.png](/.attachments/51871882.png)
[image2019-6-17_15-58-38.png](/.attachments/51871883.png)
[image2019-6-17_16-0-59.png](/.attachments/51871884.png)
[image2019-6-17_16-9-22.png](/.attachments/51871885.png)
[image2019-6-17_16-10-53.png](/.attachments/51871887.png)
[image2019-6-17_16-13-46.png](/.attachments/51871888.png)
[image2019-6-17_16-14-19.png](/.attachments/51871889.png)
[image2019-6-17_16-25-58.png](/.attachments/51871898.png)
[image2019-6-17_16-26-57.png](/.attachments/51871899.png)
[image2019-6-17_16-28-0.png](/.attachments/51871900.png)
[image2019-6-17_16-32-32.png](/.attachments/51871901.png)
[image2019-6-17_16-40-31.png](/.attachments/51871903.png)
[image2019-6-17_16-46-55.png](/.attachments/51871906.png)
[image2019-6-17_17-9-51.png](/.attachments/51871916.png)
[image2019-6-17_17-12-37.png](/.attachments/51871917.png)
[image2019-6-17_17-13-21.png](/.attachments/51871918.png)
[image2019-6-17_17-15-48.png](/.attachments/51871919.png)
[image2019-6-17_17-17-2.png](/.attachments/51871920.png)
[image2019-12-18_9-1-32.png](/.attachments/62423134.png)
[image2019-12-18_9-2-1.png](/.attachments/62423135.png)
