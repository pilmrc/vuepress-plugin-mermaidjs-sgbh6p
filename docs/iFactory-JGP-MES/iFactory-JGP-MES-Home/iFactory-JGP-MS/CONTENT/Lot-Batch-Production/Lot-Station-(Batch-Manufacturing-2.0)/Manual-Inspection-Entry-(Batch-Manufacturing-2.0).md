# Introduction

The Manual Inspection Entry (MIE)
permits end users to inspect an ***ITEM***  and place a defect if the identified material is nonconforming. The examination of the original cause regarding the non-conformance is the analysis process. User is also able to release Pass or Fail lots at the initial route step when completing the operation. The total material consumed at the resource can be tracked.



### How to get there?



::: mermaid
graph LR
A("LOT STATION")
:::
Select Resource, Carrier (optional for initial route steps),
Route Step
& Assembly (if "Enforce Assembly Selection at Station" is turned On)![image2020-11-2_16-16-43.png](/.attachments/81200214.png)





#### Permission


To access the screen and all functionalities in the station (except those specifically requested by user to control by permission):
To access the screen:

1) Lot Manual Inspection Entry - Allow the user to access the Manual Inspection Entry
To perform Manual Inspection Entry operation:
1) Add Manual Lot Inspection
- Allows the user to manually create an inspection record for a lot at a route, step, resource
2) Add Lot Defects - Allows the user to manual add the defects



#### Screen Activity


Manual Inspection Entry enables the user to perform the following activity:

- Abort the activity

- Complete the activity

- Add/Remove Defects

- Release lot

- Single Entry Mode or Batch Pass Mode



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Inspection Entry 

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
, all supporting Route Steps and Resources configured for the Route Steps 
- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
Release Type is configured for the lot batch material type
- Create a
[Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Inspection-Entry-(Batch-Manufacturing-2.0).md)and assign to Route
- Release a
[Super Lot](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-Release-(Batch-Manufacturing-2.0).md)(if "Auto Release Super Lot" is turned Off for the material) if it is an initial route step and there is no lot released yet
- Manual Station Login - User must identify the Resource they are using before performing the Operation activities



#### Screen Dependency



- None specifically. Once the Lot is Started the system will record the occurrence of the activity and can be seen via the Lot View - History Tab.

- The system will show a message if the lot is not allowed to start based on the validation of the Planned Order hold status, Pre-Start Rules and Routing Rules.



#### Process


***Release Lot***  
User can release lot at Manual Inspection Entry station if it's an initial route step. User is able to login to an initial route step without scanning any carrier if the "Enforce Assembly Selection at Station" is turned On. At an initial route step, there is a "Release Lot" toggle on screen with default value of "On". 
The lot is released with lot quantity the value of Release Quantity provided. The Internal Batch Number of a lot will be saved as system assigned Lot Attribute with the name "Internal Batch Number" which cannot be modified by the user. Carrier labels are printed if the print trigger "On Lot Complete" is configured and resource is assigned to a printer. All the carrier labels will be printed in 1 PAS file (1 lot 1 file). There is no Merge or Split and Pre-Start Rule is not triggered when "Release Lot" is turned ON.
When the first lot is released for the Super Lot, Super Lot status shall change from "New" to "In Progress". If the Route Step is a Completion Step, lot status will be "Complete". System will validate if the Super Lot has been fully released and whether all the lots assigned to it are completed. If yes, then the Super Lot status will be changed to "Complete".

*Single Entry Mode* 
User is required to scan or search for a Super Lot. The Super Lot search results will only return super lots that:

- Are released to that route

- Have the same assembly as the assembly selected during station login

- Have remaining quantity to release
If the Planned Order or Super Lot is on hold, system will prompt warning message and user will need to select another Super Lot which is valid.
![image2020-11-3_10-21-33.png](/.attachments/81200274.png)


The Template list displays all the active carrier templates for the selected data partition. After a valid "Release Quantity" is entered, system automatically populates the "Pass Quantity" field with the Release Quantity value and "Fail Quantity" field remains as 0. Cursor will focus at "Fail Quantity" field. Total of pass and fail quantity must equal to the release quantity. Any changes in Pass Quantity will automatically change the Fail Quantity and vice versa.
If value of "Fail Quantity" is more than 0, the Defects section will be displayed and user is required to add defect(s).
![image2020-11-3_10-29-30.png](/.attachments/81200276.png)


If the material Release Type = "Generate Batch Number", system will generate the Internal Batch Number following the Next Number configuration when lot is released. If the material Release Type = "Assigned Batch Number", user will need to scan an Internal Batch Number that fulfils the validation mask and does not exists for that material. Internal Batch Number is unique by material.
![image2020-11-3_10-56-31.png](/.attachments/81200277.png)


If the "Template" selected is with Next Number configuration, carriers are generated when lot is released. The number of carriers generated for the lot depends on carrier capacity and release quantity. If the "Template" selected is with Validation Mask configuration, user is required to scan carrier numbers that does not exist in the system which follows the validation mask. Once the number of carriers scanned have enough capacity for the release quantity, the "Scan Carrier" field will be disabled and "Complete" button is enabled. Changing Release Quantity or Template will clear the Unloaded Carriers list. 
The template used to create the carrier will be saved and will display in Carrier View page.
![image2020-11-3_11-4-5.png](/.attachments/81200278.png)


Data collection will prompt after clicking on "Complete" button if it is configured. If value of "Fail Quantity" is more than 0, only attributes configured for Lot Release will be shown in the Lot Attributes dialog box (after data collection). If there is 0 Fail Quantity, all the attributes configured for that material/assembly and route step will be shown in the Lot Attributes dialog.  
Data collection, attributes and defects will be shown in Lot View. When the lot has Fail Quantity, the operation status shows as "Fail". If no fail quantity, operation status will show as "Pass". The Unload event will be shown in the Lot View -" Operation View. In Lot View - General tab, Pass Quantity and Fail Quantity fields are updated.

*Batch Pass Mode* 
There is a "Batch Pass Mode" toggle on screen with default value Off if "Enforce Assembly Selection at Station" is turned On. When "Batch Pass Mode" toggle is turned On, the Lot Attributes dialog box is shown if attribute is configured. Attribute(s) that is configured for Lot Release will be shown together with the lot attribute configured for the route step if "Release Lot" toggle is On. The value saved will be shown and retained on screen. The Attribute button will show the number of attributes to fill up. If all attributes' values are saved, the Attribute button will not show the number. If Lot Attributes values have not been saved, Super Lot text box is disabled.
![image2020-11-11_12-55-21.png](/.attachments/82903133.png)


User is required to scan or search for a Super Lot. The Super Lot search results will only return super lots that:

- Are released to that route

- Have the same assembly as the assembly selected during station login

- Have remaining quantity to release
If the Planned Order or Super Lot is on hold, system will prompt warning message and user will need to select another Super Lot which is valid.
![image2020-11-11_12-57-22.png](/.attachments/82903134.png)


The Template list displays all the active carrier templates for the selected data partition. User is required to select a Template and provide a valid Release Quantity. 
The template used to create the carrier will be saved and will display in Carrier View page.
If the material Release Type = "Generate Batch Number", system will generate the Internal Batch Number following the Next Number configuration when lot is released. 

- If the "Template" selected is with Next Number configuration, system will automatically complete the operation and release the lot (number of carriers generated for the lot depends on carrier capacity and release quantity) when user press Enter after inputting a valid release quantity. After lot is released, the "Release Quantity" field is cleared and cursor will focus back at the Release Quantity field.

![image2020-11-11_13-23-7.png](/.attachments/82903135.png)



- If the "Template" selected is with Validation Mask configuration, user will need to scan carrier numbers that does not exist in the system which follows the validation mask. Once the number of carriers scanned have enough capacity for the release quantity, system will automatically complete the operation and release the lot. After lot is released, the carriers scanned are cleared and cursor will focus at the "Scan Carrier" field.


![image2020-11-11_13-25-17.png](/.attachments/82903136.png)


If the material release type = "Assigned Batch Number", user will need to scan an Internal Batch Number that fulfils the validation mask and does not exists for that material. Internal Batch Number will be unique by material.

- If the "Template" selected is with Next Number configuration, system will automatically complete the operation and release the lot (number of carriers generated for the lot depends on carrier capacity and release quantity) after user scans a valid Internal Batch Number. After lot is released, the "Scan Internal Batch Number" field is cleared and cursor will focus at the "Scan Internal Batch Number" field.


![image2020-11-11_13-30-34.png](/.attachments/82903137.png)



- If the "Template" selected is with Validation Mask configuration, user will need to scan carrier numbers following the validation mask that does not exist in the system. Once the number of carriers scanned have enough capacity for the release quantity, system will automatically complete the operation and release the lot. After lot is released, the "Scan Internal Batch Number" field and carriers scanned are cleared and cursor will focus at the "Scan Internal Batch Number" field.


![image2020-11-11_13-32-19.png](/.attachments/82903138.png)


Changing Release Quantity or Template will clear the Unloaded Carriers list. Data collection is not supported in Batch Pass Mode. The operation status will show as "Pass" and the Unload event will be shown in the Lot View -" Operation View. In Lot View - General tab, Pass Quantity is updated with the Lot Quantity and Fail Quantity is updated as 0.

*Auto Release Super Lot* 
User is able to configure the system to automatically release a Super Lot when a Lot is released, so that user does not need to use 
[Super Lot Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-Release-(Batch-Manufacturing-2.0).md)screen for products that do not need Super Lot grouping. This is applicable in Single Mode as well as Batch Pass Mode. If "Auto Release Super Lot" (at 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)) and "Release Lot" toggles are turned On, user is required to select a Planned Order instead of a Super Lot. Planned Order search results will only return the Orders that:
- have Ready and In Progress status


- are assigned to the current route and assembly selected during station login ("Enforce Assembly Selection At Station" must be turned On in order to be able to release lot)


- have remaining quantity to release


- are not on hold

Single Mode:
![image2020-11-27_12-8-29.png](/.attachments/82903600.png)


Batch Pass Mode:
![image2020-11-27_12-8-55.png](/.attachments/82903601.png)


Clicking on 'X' button to clear the Planned Order will clear the screen, ready to scan another Planned Order. For Batch Pass Mode, the saved attribute values are retained on screen.
![image2020-11-27_12-26-11.png](/.attachments/82903602.png)


The Release Quantity value must be more than 0 but cannot be more than the selected carrier template capacity (if "Auto Release Super Lot" is turned On, it is assumed that 1 lot will only have 1 carrier associated). The rest of the fields behave as per Release Lot functionality. When the operation is completed, a new Super Lot with the same quantity as the Lot quantity will be automatically released with the Super Lot number = [Planned Order]-[5 digit sequence number]. 
The Lot that is released will be associated to the Super Lot released.



#### Fields


<table class="wrapped relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 9.29068%;" /><col style="width: 90.6815%;" /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Batch Pass Mode</td><td colspan="1" class="confluenceTd">This toggle controls whether the operation is in Single Mode or Batch Pass Mode behaviour. If toggle if Off, screen is in Single Mode. Default value for the toggle is Off.</td></tr><tr><td colspan="1" class="confluenceTd">Release Lot</td><td colspan="1" class="confluenceTd">This toggle controls whether the lot is released when operation is completed. The toggle is displayed if it is an initial route step and "Enforce Assembly Selection at Station" is turned On for the step. Default value for the toggle is On.</td></tr><tr><td colspan="1" class="confluenceTd">Super Lot <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">This field is shown when "Auto Release Super Lot" toggle (at <a href="Material-29919417.html">Material Maintenance</a>) is turned Off and "Release Lot" toggle is turned On. It may be partially completed for a partial match or exactly entered for a full match. <span style="color: rgb(51,51,51);">(Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Planned Order <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">This field is shown when "Auto Release Super Lot" (at <a href="Material-29919417.html">Material Maintenance</a>) and "Release Lot" toggles are turned On. It may be partially completed for a partial match or exactly entered for a full match.  <span style="color: rgb(51,51,51);">(Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Quantity Released</td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items released to fulfil the Super Lot/Planned Order quantity. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Quantity Remaining</td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items remaining to be released to fulfil the Super Lot/Planned Order quantity. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Template <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The carrier template needed to create carrier. The template will determine whether the Carrier serial number is generated or assigned. (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Carrier Capacity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">This Carrier Capacity displays the maximum items that may be transported. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Quantity <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);"><span style="color: rgb(51,51,51);">The number of items to be released for the Lot. </span></span>This value must be more than 0. Value cannot be more than the Super Lot Quantity Remaining if "Auto Release Super Lot" is turned Off. <span style="letter-spacing: 0.0px;color: rgb(51,51,51);">If "Auto Release Super Lot" is turned On, value cannot be more than the selected carrier template capacity (it is assumed that 1 lot will only have 1 carrier associated). (Required)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Pass Quantity <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p>The user can determine the quantity to Pass. System will automatically populate the field with Release Quantity value. The total Pass + Fail Quantity must be equal to the Release Quantity. <span style="color: rgb(51,51,51);">(Required)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Fail Quantity <span style="color: rgb(255,0,0);">*</span></p></td><td colspan="1" class="confluenceTd">Default value is 0. The user can determine the quantity to Fail. If value is more than 0 then user needs to fill the Defects section. <span style="color: rgb(51,51,51);">(Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Scan Internal Batch Number <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The assigned Internal Batch Number for the Lot. Only available if the material release type = "Assigned Batch Number". The Internal Batch Number must fulfil the validation mask and does not exist for that material. Internal Batch Number is unique by material. (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Scan Carrier <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);"><span style="color: rgb(0,0,0);">The assigned Carrier serial number that the Lot is to be transported by. Only available when Template with Validation Mask configuration is selected. </span>(Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Lot Count</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">The number of Lots completed successfully at current session.<span> </span></span><span style="color: rgb(23,43,77);">Restart a new session, switching between single and batch mode or Reset button (Alt + Q) will reset the counter. </span>(Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Carrier Count</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">The number of Carriers completed successfully at current session.<span> </span></span><span style="color: rgb(23,43,77);">Restart a new session, switching between single and batch mode or Reset button (Alt + Q) will reset the counter. </span>(Read Only)</span></td></tr></tbody></table>

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualInspectionEntry(BatchManufacturing2.0)-DefectsSection"><strong>Defects Section</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Defect <span style="color: rgb(255,0,0);">*</span></p></td><td class="confluenceTd"><p>From a Global Defect List the user can select the Defect that are affecting the item(s)</p></td></tr><tr><td colspan="1" class="confluenceTd">Affected Item Quantity <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p>The user can enter the quantity of affected items for a specific Defect. The Affected Item Quantity follows the rules:</p><ol><li><p><span>Maximum items affected by a Defect and Material must be equal or less than the Fail Quantity</span></p></li><li><p><span>The total Defect items must be equal or greater than the Fail Quantity </span></p></li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Materials/CRD <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p>By default the top level material will be selected. The user will have the possibility to choose which material and CRD is affected by the defect. The list includes top level material (without CRD) and materials + CRD from the installed setup sheet. </p></td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">The user can enter a comment (max 200 characters).</td></tr><tr><td colspan="1" class="confluenceTd">Add Defect</td><td colspan="1" class="confluenceTd"><p>Once the fields are populated the user can click on the button to add the defect.</p></td></tr><tr><td colspan="1" class="confluenceTd">Delete icon</td><td colspan="1" class="confluenceTd">Remove Defects that are added at current operation.</td></tr></tbody></table>


- Note: If the same Defect and same Material has been selected to be added, the system will add it as individual rows.


***Non-Release Inspection Operation***  
When the step is not used for releasing lots (Release Lot toggle is Off or not available), the 
screen allows the user to enter new defects for the items, remove defects added at current operation, Abort or Complete the operation activities at the Route Step when Batch Pass Mode toggle is Off. When Batch Pass Mode toggle is On, user is able to continuously assign Pass result to the lots.
Pre-Start Rule is triggered (if configured) before the operation is started. Carrier labels are printed if the print trigger "On Lot Complete" is configured and resource is assigned to a printer. All the carrier labels will be printed in 1 PAS file (1 lot 1 file). The Lot status will change to "Complete" if the route step is a completion route step. If the Super Lot has been fully released and all the lots assigned to it are completed, the Super Lot status will be changed to "Complete".
*Single Entry Mode* 
User is able to scan the Internal Batch Number of a lot. If the Internal Batch Number is valid, user is required to scan all the carriers of the lot. User may also directly scan a carrier of the lot and system will look up the Internal Batch Number. User is then required to continue scanning all remaining carriers of the lot. User is able to click on the 'X' button next to "Scan Internal Batch Number" to clear the entire screen if operation has not started (not all carriers of the lot has been scanned). Carriers that have been scanned will be removed, allowing them to be scanned again.
If the scanned lot's Planned Order is on hold, system will not allow it to start. Lots that have "Started" in a station will be allowed to complete that operation if the planned order is put on hold. Once a lot has started the operation at the particular resource and route step, system does not allow other lots to start there. 
A lot that has started will not be able to put on hold in Lot Hold screen. There is option for Split and Merge (if "Allow Loading Multiple Lots" at Route Step Type is turned On).The behaviour of the station depends on the "Required Unload Action" flag in Route Step Type. 

- Route Step Type "Required Unload Action" = Off

![image2020-12-21_16-43-7.png](/.attachments/84705425.png)


Once all carriers of the lot have been scanned, the operation is started and the lot will remain assigned to the carriers. System will automatically populate the "Pass Quantity" mandatory field with the lot quantity and "Fail Quantity" is defaulted to 0. Cursor will focus at "Fail Quantity" field. 
Total of pass and fail quantity must equal to the lot quantity. Any changes in fail quantity will automatically change the pass quantity and vice versa. If "Fail Quantity" is  more than 0, user is required to add defect. Once operation is "Started", there will be an "Abort" button. If user decides to Abort the operation, all defects added in the current operation will be removed and will not be recorded in the system. Any defects from a previous operation remain, in other words it reverts to the original condition.![image2020-12-21_16-51-35.png](/.attachments/84705427.png)





- Route Step Type "Required Unload Action" = On

![image2020-12-21_17-5-31.png](/.attachments/84705428.png)



Once all carriers of the lot have been scanned, the operation is started and the loaded carriers will be unassigned. The Unload tab will be enabled and displayed. System will automatically populate the "Pass Quantity" mandatory field with the lot quantity and "Fail Quantity" is defaulted to 0. Cursor will focus at "Fail Quantity" field. 
Total of pass and fail quantity must equal to the lot quantity. Any changes in fail quantity will automatically change the pass quantity and vice versa. If "Fail Quantity" is  more than 0, user is required to add defect. Once operation is "Started", there will be an "Abort" button. If user decides to Abort the operation, the lot is assigned back to the original carriers and all defects added in the current operation will be removed and will not be recorded in the system. Any defects from a previous operation remain, in other words it reverts to the original condition. 
![image2020-12-21_17-20-27.png](/.attachments/84705430.png)


User has the option to unload using Existing Carrier or New Carrier. If "Existing Carrier" is selected, user is allowed to scan the original carrier or other existing unassigned carrier (empty carrier). The number of carriers to scan depends on carrier capacity and number of units.

![image2020-12-21_17-26-22.png](/.attachments/84705431.png)


If "New Carrier" is selected, system will show the list of active carrier templates with next number configuration for user to select. System will generate the carrier numbers upon completion based on the selected carrier template. The number of carriers generated for the lot depends on carrier capacity and number of units.

![image2020-12-21_17-36-38.png](/.attachments/84705433.png)


When user clicks on the Complete button, Lot Attributes dialog will be shown if there is Pass Quantity. Operation is completed and routing rules are triggered. If there are open defects, the Operation Status in Lot View - History tab shall show as "FAIL". If there are no open defects, it will show as "PASS". Lot View -" Operation View will show the Load event.

**Split Lot** 
Once "Required Unload Action" toggle in the route step is ON, the "Split Pass Quantity" toggle in the Unload Carriers section will be shown. 
If the route step does not have any attribute (exclude attributes for lot release) configured, when “Split Pass Quantity” is ON, user need to provide a value for “Quantity to Split”. The value must be more than 0 but less than “Lot Quantity”. If "New Carrier" is selected, system will show the list of carrier templates with next number configuration for user to select. System will generate the carriers needed for split lot and the original Internal Batch Number when user completing the operation. If "Existing Carrier" is selected, user need to scan unassigned carrier numbers at “Carrier For Split Lot” for the split lot. Number of carriers to scan depends on the “Quantity to Split” and carrier capacity.
New Carrier

![image2021-3-3_16-40-11.png](/.attachments/88113434.png)


Existing Carrier
![image2021-3-3_16-43-14.png](/.attachments/88113435.png)


**When the “Generate IBN On Split” (at Route Step) is Off, user need to scan a new Internal Batch Number for the split lot that follows the format of the Validation Mask.** 
![image2021-3-3_16-56-6.png](/.attachments/88113437.png)



![image2021-3-3_17-2-53.png](/.attachments/88113439.png)


When the “
Generate IBN On Split
” is On, the Internal Batch Number for split lot is generated by the system by adding a suffix of “-XXX” (sequence from -000 to -999) to the original IBN when user completing the operation.
![image2021-3-3_17-3-39.png](/.attachments/88113440.png)



![image2021-3-3_17-6-51.png](/.attachments/88113441.png)


If there are attributes configured (exclude attributes for lot release), the lot attributes window will pop up. The attribute values provided shall only be saved for PASS lots.

![image2021-3-3_17-12-43.png](/.attachments/88113443.png)


If user entered a value greater than 0 for "Fail Quantity", the Defects section will be displayed and user is required to add defect(s) before the Unload Carriers section is displayed.
![image2021-3-3_17-23-23.png](/.attachments/88113444.png)


**If Fail Quantity is more than 0, system will prompt user to scan an unassigned carrier with enough capacity for the fail quantity.**  
![image2021-3-3_17-26-22.png](/.attachments/88113445.png)



![image2021-3-3_17-26-53.png](/.attachments/88113446.png)



If a Defect Carrier is scanned, user is also required to scan a new Internal Batch Number if “Generate IBN On Split” is Off and system will split the failed items to the Defect Carrier.
![image2021-3-3_17-27-18.png](/.attachments/88113447.png)


When Fail Quantity is more than 0 but less than lot quantity, "Split Defect" toggle will be visible with default value ON.

![image2021-3-3_17-38-3.png](/.attachments/88113448.png)


If "Split Defect" is Off or not available, the number of carriers generated or scanned for unload need to accommodate Lot Quantity - Quantity to Split. Defect Carrier pop up will not be shown.
![image2021-3-3_17-48-33.png](/.attachments/88113449.png)



**Merge Multiple Lots** 
Once "Allow Loading Multiple Lots" toggle in the route step type is ON, the "Merge" toggle in the Load Carriers section will be shown.
Lots can only be merged if they are from the same superlot, in queue at that station and have the same attribute values (if attribute does not allow multiple values).
User can scan Internal Batch Number and then the cursor will focus on "Scan Carrier". After all the carriers associated to the lot has been scanned, user can continue to scan the next Internal Batch Number followed by its carriers.
![image2021-3-10_10-29-5.png](/.attachments/88113636.png)



![image2021-3-10_10-29-18.png](/.attachments/88113637.png)


If user does not scan the Internal Batch Number and directly scans a carrier, system will retrieve the Internal Batch Number and user will have to continue scanning all the carriers associated to the lot. After that user shall scan the carriers of the next lot.
![image2021-3-10_10-29-43.png](/.attachments/88113638.png)



![image2021-3-10_10-29-57.png](/.attachments/88113639.png)


User is required to select an Internal Batch Number to merge to from one of the scanned lots.
![image2021-3-10_10-30-31.png](/.attachments/88113640.png)


Clicking on "Merge" button system will merge the lots and start the operation.
![image2021-3-10_10-31-2.png](/.attachments/88113641.png)




*Batch Pass Mode* 
Once "Batch Pass Mode" toggle is turned ON, Lot Attributes dialog will be shown if there is attribute(s) configured. 
If "Auto Release Super Lot" at Material Maintenance is turned On, user shall scan Carrier (if "Auto Release Super Lot" is turned On, it is assumed that 1 lot will only have 1 carrier associated). Else, 
user shall scan Internal Batch Number. System will validate the lot against the selected route step and assembly at Manual Station Login.![image2020-12-30_16-5-55.png](/.attachments/84705524.png)


![image2020-12-30_16-6-24.png](/.attachments/84705525.png)


If the lot is already in Started operation status, it cannot be scanned in Batch Pass Mode. Once a lot has started the operation at the particular resource and route step, system does not allow other lots to start there. The lot is not allowed to start if the Planned Order or lot is on hold. Pre-start Rule validations will be triggered before the operation is started.
If the Internal Batch Number is valid, all the carriers of the lot will be loaded to the station. System will associate Pass result for all the units of the lot and complete the operation. Routing rules are triggered when operation is completed. "Lot Count" and "Carrier Count" counters are updated accordingly when operation is completed. Lot View -" Operation View will only show Load events.
![image2020-12-30_16-15-26.png](/.attachments/84705526.png)


![image2020-12-30_16-20-28.png](/.attachments/84705528.png)


There are no unload action, data collection, Merge or Split in Batch Pass Mode.


#### Setup Verification

*Material Consumption* 
Manual Station Setup Sheet, the part number must be of Unserialized Material only. Setup Verification is setup for the resource. GRN Quantity will be deducted upon lot/batch completion at Lot Station MOE. Material will not be consumed again for that CRD, if the CRD is consumed by material before. If the material part number was removed at rework station before returning to the same route step, the material will be consumed again.
*Material In Use* 
Track Quantity Consumption is turned on in setup sheet. Material In Use link can be view when user select the Superlot or Planned Order(for release step) or scanned the carriers(for single entry mode) or scanned the Carriers or Internal Batch Number(for batch entry mode) in MOE workstation screens.
*Online Material Loading* 
Online Material Loading turned ON in Material. For single entry mode, the window will pop up after user scans carrier. For batch entry mode, it will pop up once user turn on batch mode. Material is non lot batch, user will need to enter the 16 char GRN, after enter the GRN system will auto populate the editable Quantity field with the available GRN quantity. If material is lot batch, user will need to scan the previous carrier in the GRN fie
ld
.If Track Quantity Consumption for the Online Material Loading part number is turned on, The GRN quantity will be deducted accordingly when lot completes the operation, if insufficient GRN quantity, system will prompt warning message. Previous Carrier” value will be saved into the GRN table with lot quantity as the GRN quantity. The status of “Previous Carrier” scanned will be changed to “Consumed”. The GRN added in Online Material Loading will be shown in Lot View – Genealogy tab under the Identifier column.Previous Carrier rule:
a. The material of the “Previous Carrier” scanned must be the same as the part number required.
b. The “Previous Carrier” scanned must be in completed status.
c. The previous carrier should not be packed.


#### Attachments

[image2019-12-18_9-2-1.png](/.attachments/81200159.png)
[image2019-12-18_9-1-32.png](/.attachments/81200160.png)
[image2019-6-17_17-17-2.png](/.attachments/81200161.png)
[image2019-6-17_17-15-48.png](/.attachments/81200162.png)
[image2019-6-17_17-13-21.png](/.attachments/81200163.png)
[image2019-6-17_17-12-37.png](/.attachments/81200164.png)
[image2019-6-17_17-9-51.png](/.attachments/81200165.png)
[image2019-6-17_16-46-55.png](/.attachments/81200166.png)
[image2019-6-17_16-40-31.png](/.attachments/81200167.png)
[image2019-6-17_16-32-32.png](/.attachments/81200168.png)
[image2019-6-17_16-28-0.png](/.attachments/81200169.png)
[image2019-6-17_16-26-57.png](/.attachments/81200170.png)
[image2019-6-17_16-25-58.png](/.attachments/81200171.png)
[image2019-6-17_16-14-19.png](/.attachments/81200172.png)
[image2019-6-17_16-13-46.png](/.attachments/81200173.png)
[image2019-6-17_16-10-53.png](/.attachments/81200174.png)
[image2019-6-17_16-9-22.png](/.attachments/81200175.png)
[image2019-6-17_16-0-59.png](/.attachments/81200176.png)
[image2019-6-17_15-58-38.png](/.attachments/81200177.png)
[image2019-6-17_15-56-34.png](/.attachments/81200178.png)
[image2019-6-17_15-44-32.png](/.attachments/81200179.png)
[image2019-6-17_15-42-41.png](/.attachments/81200180.png)
[image2019-6-4_9-19-0.png](/.attachments/81200181.png)
[image2019-6-4_8-54-35.png](/.attachments/81200182.png)
[image2019-6-4_8-53-37.png](/.attachments/81200183.png)
[image2019-6-4_8-52-20.png](/.attachments/81200184.png)
[image2019-6-4_8-37-31.png](/.attachments/81200185.png)
[image2019-6-4_8-37-22.png](/.attachments/81200186.png)
[image2019-6-4_8-25-30.png](/.attachments/81200187.png)
[image2019-6-4_8-25-2.png](/.attachments/81200188.png)
[image2019-4-23_10-47-12.png](/.attachments/81200189.png)
[image2019-4-23_10-45-29.png](/.attachments/81200190.png)
[image2019-4-23_10-11-47.png](/.attachments/81200191.png)
[image2019-4-23_10-0-16.png](/.attachments/81200192.png)
[image2019-4-23_9-23-18.png](/.attachments/81200193.png)
[image2019-4-23_9-22-8.png](/.attachments/81200194.png)
[image2019-4-23_9-19-33.png](/.attachments/81200195.png)
[image2019-4-23_8-45-30.png](/.attachments/81200196.png)
[image2019-4-23_8-44-48.png](/.attachments/81200197.png)
[image2019-4-23_8-43-9.png](/.attachments/81200198.png)
[image2019-3-27_8-47-10.png](/.attachments/81200199.png)
[image2019-3-27_8-46-36.png](/.attachments/81200200.png)
[image2019-3-27_8-42-47.png](/.attachments/81200201.png)
[image2019-1-25_10-52-33.png](/.attachments/81200202.png)
[image2019-1-24_16-2-55.png](/.attachments/81200203.png)
[image2019-1-23_16-38-24.png](/.attachments/81200204.png)
[image2019-1-9_17-21-36.png](/.attachments/81200205.png)
[image2019-1-9_17-21-0.png](/.attachments/81200206.png)
[image2019-1-9_16-56-28.png](/.attachments/81200207.png)
[image2018-9-18_15-22-28.png](/.attachments/81200208.png)
[image2018-9-18_15-19-15.png](/.attachments/81200209.png)
[image2016-12-8 16:21:0.png](/.attachments/81200210.png)
[image2016-12-8 16:29:54.png](/.attachments/81200211.png)
[image2017-7-19 11:8:1.png](/.attachments/81200212.png)
[image2017-10-10 10:38:16.png](/.attachments/81200213.png)
[image2020-11-2_16-16-43.png](/.attachments/81200214.png)
[image2020-11-3_10-21-33.png](/.attachments/81200274.png)
[image2020-11-3_10-26-50.png](/.attachments/81200275.png)
[image2020-11-3_10-29-30.png](/.attachments/81200276.png)
[image2020-11-3_10-56-31.png](/.attachments/81200277.png)
[image2020-11-3_11-4-5.png](/.attachments/81200278.png)
[image2020-11-11_12-55-21.png](/.attachments/82903133.png)
[image2020-11-11_12-57-22.png](/.attachments/82903134.png)
[image2020-11-11_13-23-7.png](/.attachments/82903135.png)
[image2020-11-11_13-25-17.png](/.attachments/82903136.png)
[image2020-11-11_13-30-34.png](/.attachments/82903137.png)
[image2020-11-11_13-32-19.png](/.attachments/82903138.png)
[image2020-11-27_12-4-14.png](/.attachments/82903598.png)
[image2020-11-27_12-7-8.png](/.attachments/82903599.png)
[image2020-11-27_12-8-29.png](/.attachments/82903600.png)
[image2020-11-27_12-8-55.png](/.attachments/82903601.png)
[image2020-11-27_12-26-11.png](/.attachments/82903602.png)
[image2020-11-27_12-31-13.png](/.attachments/82903603.png)
[image2020-12-21_16-43-7.png](/.attachments/84705425.png)
[image2020-12-21_16-48-2.png](/.attachments/84705426.png)
[image2020-12-21_16-51-35.png](/.attachments/84705427.png)
[image2020-12-21_17-5-31.png](/.attachments/84705428.png)
[image2020-12-21_17-15-10.png](/.attachments/84705429.png)
[image2020-12-21_17-20-27.png](/.attachments/84705430.png)
[image2020-12-21_17-26-22.png](/.attachments/84705431.png)
[image2020-12-21_17-34-37.png](/.attachments/84705432.png)
[image2020-12-21_17-36-38.png](/.attachments/84705433.png)
[image2020-12-30_16-5-55.png](/.attachments/84705524.png)
[image2020-12-30_16-6-24.png](/.attachments/84705525.png)
[image2020-12-30_16-15-26.png](/.attachments/84705526.png)
[image2020-12-30_16-17-43.png](/.attachments/84705527.png)
[image2020-12-30_16-20-28.png](/.attachments/84705528.png)
[image2021-3-3_16-40-11.png](/.attachments/88113434.png)
[image2021-3-3_16-43-14.png](/.attachments/88113435.png)
[image2021-3-3_16-56-6.png](/.attachments/88113437.png)
[image2021-3-3_17-2-41.png](/.attachments/88113438.png)
[image2021-3-3_17-2-53.png](/.attachments/88113439.png)
[image2021-3-3_17-3-39.png](/.attachments/88113440.png)
[image2021-3-3_17-6-51.png](/.attachments/88113441.png)
[image2021-3-3_17-12-31.png](/.attachments/88113442.png)
[image2021-3-3_17-12-43.png](/.attachments/88113443.png)
[image2021-3-3_17-23-23.png](/.attachments/88113444.png)
[image2021-3-3_17-26-22.png](/.attachments/88113445.png)
[image2021-3-3_17-26-53.png](/.attachments/88113446.png)
[image2021-3-3_17-27-18.png](/.attachments/88113447.png)
[image2021-3-3_17-38-3.png](/.attachments/88113448.png)
[image2021-3-3_17-48-33.png](/.attachments/88113449.png)
[image2021-3-10_10-29-5.png](/.attachments/88113636.png)
[image2021-3-10_10-29-18.png](/.attachments/88113637.png)
[image2021-3-10_10-29-43.png](/.attachments/88113638.png)
[image2021-3-10_10-29-57.png](/.attachments/88113639.png)
[image2021-3-10_10-30-31.png](/.attachments/88113640.png)
[image2021-3-10_10-31-2.png](/.attachments/88113641.png)
