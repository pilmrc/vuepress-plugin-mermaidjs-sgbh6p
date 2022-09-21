# Introduction

The Manual Operation Entry  (MOE) station is used to perform simple
Start, Abort and Complete
activities to Lots at a Route Step. The basic use is for a User to identify the Resource, optionally disambiguate the Route and Route Step if the resource is configured for multiple locations, then to perform the operation that is configured for this Route Step.


### How to get there?



::: mermaid
graph LR
A("LOT STATION")
:::
![wiki arrow.png](/.attachments/81200355.png)


Select Resource, Carrier (optional for initial route steps), Route Step & Assembly (if "Enforce Assembly Selection at Station" is turned On)


#### Permission


To access the screen and all functionalities in the station (except those specifically requested by user to control by permission) :
To access the screen:

1) Lot Manual Operation Entry - Allow the user to access the Manual Operation Entry
To perform Manual Operation Entry operation:
1) Add Manual Lot Operation 
- Allows the user to manually 
create a manual operation record for a lot


#### Screen Activity


Manual Station Login enables user to perform the following activity:

- Select the Resource, Route, Route Step that the User is performing their activities

- Start the Operation activity

- Abort the activity

- Complete the activity


#### Pre-Condition


The following data needs to be pre-configured before user is able to start a Manual Inspection Entry

- Resource defined

- Route, all supporting Route Steps and Resources configured for the Route Steps

- Material Release Type is configured for the lot batch material type

- Create a Planned Order and assign to Route

- Release a Super Lot (if "Auto Release Super Lot" is turned Off for the material) if it is an initial route step and there is no lot released yet

- Manual Station Login - User must identify the Resource they are using before performing the Operation activities


#### Screen Dependency



- None specifically. Once the Lot is Started the system will record the occurrence of the activity and can be seen via the Lot View - History Tab.


- The system will show a message if the lot is not allowed to start based on the validation of the Planned Order hold status, Pre-Start Rules and Routing Rules.



#### Process


***Release Lot***  
User can release lot at Manual Operation Entry station if it's an initial route step. User is able to login to an initial route step without scanning any carrier if the "Enforce Assembly Selection at Station" is turned On. At an initial route step, there is a "Release Lot" toggle on screen with default value of "On".
*Single Entry Mode* 
User is required to scan or search for a Super Lot. The Super Lot search results will only return super lots that:

- Are released to that route

- Have the same assembly as the assembly selected during station login

- Have remaining quantity to release

- Are associated to an Order that is not on hold
![image2020-11-5_15-23-11.png](/.attachments/81200360.png)


If the "Carrier Template" selected is with Next Number configuration, carriers are generated when lot is released. The number of carriers generated for the lot depends on carrier capacity and release quantity. If the "Template" selected is with Validation Mask configuration, user is required to scan carrier numbers that does not exist in the system which follows the validation mask. Once the number of carriers scanned have enough capacity for the release quantity, the "Scan Carrier" field will be disabled and "Complete" button is enabled. Changing Release Quantity or Template will clear the Unloaded Carriers list. 
The template used to create the carrier will be saved and will display in Carrier View page.
Validation Mask
![image2020-11-6_14-51-40.png](/.attachments/81200430.png)



![image2020-11-6_14-52-7.png](/.attachments/81200431.png)


Next Number

![image2020-11-6_15-10-9.png](/.attachments/81200432.png)


When the User presses "Complete" button the system records the operation activity, the screen should be cleared and the cycle starts all over again. The Lot Count and Carrier Count will be increased.
If the material release type is Assigned Batch Number, user will need to scan a brand new Internal Batch Number that fulfills the validation mask configuration. System will mandate user to scan Internal Batch Number before lot release.
Validation Mask

![image2020-11-27_14-42-27.png](/.attachments/82903617.png)



Next Number
![image2020-11-27_14-42-27.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/91a6e43e-9e88-4f40-875c-42db1eecda16?fileName=image.png)


If the material release type is Generate Batch Number, system will generate the Internal Batch Number based on Next Number configuration when lot is released.

Validation Mask
![image2020-11-27_14-42-27.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/d2c3eee7-7c1b-4436-b87d-75041938f570?fileName=image.png)



Next Number
![image2020-11-27_14-42-27.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/95dfdc3b-8c2d-4990-876b-5bb93f8f257c?fileName=image.png)


*Batch Mode Entry* 
When the user is in Batch Entry Mode, s
ystem will complete the carrier scanned by user by behaving like the “Complete” function in single entry mode and 
Carrier Count will reflect the number of carriers completed successfully.
If attribute is configured, the lot attributes window will pop up once batch entry mode is turned On. The value saved will be shown and retained on screen. 
Process Step History is recorded in Lot View.
![image2020-11-27_14-59-5.png](/.attachments/82903620.png)


User is required to scan or search for a Super Lot. The Super Lot search results will only return super lots that:

- Are released to that route

- Have the same assembly as the assembly selected during station login

- Have remaining quantity to release

- Are associated to an Order that is not on hold
![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/cbab42a3-b478-49bb-8bfb-1b8184d9a803?fileName=image.png)


If the material release type is Assigned Batch Number and carrier template selected is with Next Number configuration, user will need to scan a brand-new Internal Batch Number that fulfils the validation mask configuration. System will automatically complete the operation and release the lot after user scans the Internal Batch Number. The number of carriers generated for the lot depends on carrier capacity and release quantity.
![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8ec25336-4ac5-430d-8f5a-cbacd0df3056?fileName=image.png)


If the material release type is Assigned Batch Number and carrier template selected is with Validation Mask configuration, user will need to scan a brand-new carrier number and Internal Batch Number that fulfils the validation mask configuration. Once the number of carriers scanned have enough capacity for the release quantity, system will automatically complete the operation and release the lot.

![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/e0a98277-77cb-4ab7-bf6c-e9c8c729fc65?fileName=image.png)



![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/c5dc0cbf-644e-4294-b4bf-940576f6e822?fileName=image.png)



If the material release type is Generate Batch Number and carrier template is with Next Number configuration, system will generate the Internal Batch Number based on Next Number configuration when lot is released. System will automatically complete the operation and release the lot when user press Enter after inserting a valid release quantity.

The number of carriers generated for the lot depends on carrier capacity and release quantity.
![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/4e6b4413-542d-47fe-82b0-96901ee928e5?fileName=image.png)



If the material release type is Generate Batch Number and carrier template is with Validation Mask configuration, system will generate the Internal Batch Number based on Next Number configuration when lot is released. User need to scan a brand new carrier numbers that match the validation mask configuration. Once the number of carriers scanned have enough capacity for the release quantity, system will automatically complete the operation and release the lot.
![image2020-11-27_14-59-5.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/55aa1262-496e-4faf-9c8b-c0486b9b8c85?fileName=image.png)


*Auto Release Super Lot* 
User is able to configure the system to automatically release a Super Lot when a Lot is released, so that user does not need to use
[Super Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Operation-Entry-(Batch-Manufacturing-2.0).md)screen for products that do not need Super Lot grouping. This is applicable in Single Mode as well as Batch Entry Mode. If "Auto Release Super Lot" (at
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)) and "Release Lot" toggles are turned On, user is required to select a Planned Order instead of a Super Lot. Planned Order search results will only return the Orders that:
- have Ready and In Progress status


- are assigned to the current route and assembly selected during station login ("Enforce Assembly Selection At Station" must be turned On in order to be able to release lot)


- have remaining quantity to release


- are not on hold

Single Mode:
![image2020-11-27_14-7-54.png](/.attachments/82903607.png)


Batch Entry Mode:
![image2020-11-27_14-9-0.png](/.attachments/82903608.png)


Clicking on 'X' button to clear the Planned Order will clear the screen, ready to scan another Planned Order. For Batch Entry Mode, the saved attribute values are retained on screen.
![image2020-11-27_14-11-18.png](/.attachments/82903609.png)


The Release Quantity value must be more than 0 but cannot be more than the selected carrier template capacity (if "Auto Release Super Lot" is turned On, it is assumed that 1 lot will only have 1 carrier associated). The rest of the fields behave as per Release Lot functionality. When the operation is completed, a new Super Lot with the same quantity as the Lot quantity will be automatically released with the Super Lot number = [Planned Order]-[5 digit sequence number]. The Lot that is released will be associated to the Super Lot released.



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 14.7772%;" /><col style="width: 85.2228%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Single Entry Mode</strong></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Descriptions</th></tr><tr><td colspan="1" class="confluenceTd">Batch Entry Mode</td><td colspan="1" class="confluenceTd">This toggle controls whether the operation is in Single Mode or Batch Entry Mode behaviour. If toggle if Off, screen is in Single Mode. Default value for the toggle is Off.</td></tr><tr><td colspan="1" class="confluenceTd">Release Lot</td><td colspan="1" class="confluenceTd">This toggle controls whether the lot is released when operation is completed. The toggle is displayed if it is an initial route step and "Enforce Assembly Selection at Station" is turned On for the step. Default value for the toggle is On.</td></tr><tr><td class="confluenceTd">Super Lot <span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd">This field is shown when "Auto Release Super Lot" toggle (at<span> </span><a href="http://usplnd0wiki01:8090/display/IJM/Material" style="text-decoration: none;" rel="nofollow">Material Maintenance</a>) is turned Off and "Release Lot" toggle is turned On. It may be partially completed for a partial match or exactly entered for a full match. <span style="color: rgb(51,51,51);">(Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Planned Order <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">This field is shown when "Auto Release Super Lot" (at<span> </span><a href="http://usplnd0wiki01:8090/display/IJM/Material" style="text-decoration: none;" rel="nofollow">Material Maintenance</a>) and "Release Lot" toggles are turned On. It may be partially completed for a partial match or exactly entered for a full match.  <span style="color: rgb(51,51,51);">(Required)</span></td></tr><tr><td class="confluenceTd">Quantity Released</td><td class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items released to fulfil the Super Lot/Planned Order quantity. (Read Only)</span></td></tr><tr><td class="confluenceTd">Quantity Remaining</td><td class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items remaining to be released to fulfil the Super Lot/Planned Order quantity. (Read Only)</span></td></tr><tr><td class="confluenceTd">Carrier Template <span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd"><span style="color: rgb(51,51,51);">The carrier template needed to create carrier. The template will determine whether the Carrier serial number is generated or assigned. (Required)</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">Carrier Capacity</span></td><td class="confluenceTd"><span style="color: rgb(0,51,102);">This Carrier Capacity displays the maximum items that may be transported. (Read Only)</span></td></tr><tr><td class="confluenceTd">Release Quantity <span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items to be released for the Lot. </span><span style="color: rgb(23,43,77);">This value must be more than 0. Value cannot be more than the Super Lot Quantity Remaining if "Auto Release Super Lot" is turned Off. </span><span style="color: rgb(51,51,51);">If "Auto Release Super Lot" is turned On, value cannot be more than the selected carrier template capacity (it is assumed that 1 lot will only have 1 carrier associated). (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Scan Internal Batch Number <span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The assigned Internal Batch Number for the Lot. Only available if the material release type = "Assigned Batch Number". The Internal Batch Number must fulfil the validation mask and does not exist for that material. Internal Batch Number is unique by material. (Required)</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">Scan Carrier <span style="color: rgb(255,0,0);">*</span></span></td><td class="confluenceTd"><span style="color: rgb(51,51,51);"><span style="color: rgb(0,51,102);">The assigned Carrier serial number that the Lot is to be transported by. Only available when Template with Validation Mask configuration is selected. (Required</span>)</span></td></tr><tr><td class="confluenceTd">Lot Count</td><td class="confluenceTd"><span style="color: rgb(0,51,102);">The number of Lots completed successfully at current session. Restart a new session, switching between single and batch mode or Refresh button (Alt + Q) will reset the counter. (Read Only)</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">Carrier Count</span></td><td class="confluenceTd"><span style="color: rgb(0,51,102);">The number of Carriers completed successfully at current session. Restart a new session, switching between single and batch mode or Refresh button (Alt + Q) will reset the counter. (Read Only)</span></td></tr></tbody></table>

***Non-Release Inspection Operation***  
When the step is not used for releasing lots, the 
screen allows the user to load and unload carrier in the current operation, Abort or Complete the operation activities at the Route Step.
Pre-Start Rule is triggered (if configured) before the operation is started. Carrier labels are printed if the print trigger "On Lot Complete" is configured and resource is assigned to a printer. All the carrier labels will be printed in 1 PAS file (1 lot 1 file). The Lot status will change to "Complete" if the route step is a completion route step. If the Super Lot has been fully released and all the lots assigned to it are completed, the Super Lot status will be changed to "Complete".
*Single Entry Mode* 
User is able to scan the Internal Batch Number of a lot. If the Internal Batch Number is valid, user is required to scan all the carriers of the lot. User may also directly scan a carrier of the lot and system will look up the Internal Batch Number. User is then required to continue scanning all remaining carriers of the lot. User is able to click on the 'X' button next to "Scan Internal Batch Number" to clear the entire screen if operation has not started (not all carriers of the lot has been scanned). Carriers that have been scanned will be removed, allowing them to be scanned again.
If the scanned lot's Planned Order is on hold, system will not allow it to start. Lots that have "Started" in a station will be allowed to complete that operation if the planned order is put on hold. Once a lot has started the operation at the particular resource and route step, system does not allow other lots to start there. 
A lot that has started will not be able to put on hold in Lot Hold screen. There is option for Split and Merge (if "Allow Loading Multiple Lots" at Route Step Type is turned On).The behavior of the station depends on the "Required Unload Action" flag in Route Step Type. 

- Route Step Type "Required Unload Action" = Off


![image2020-11-27_14-11-18.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/dc4f59fd-5e14-4054-9757-e42a833ee29e?fileName=image.png)



Once all carriers of the lot have been scanned, the operation is started. Once operation is "Started", there will be an "Abort" button. If user decides to Abort the operation, loaded carriers will be removed and lot is assigned back to the original carriers.

- Route Step Type "Required Unload Action" = On


![image2020-12-23_15-39-54.png](/.attachments/84705470.png)



Once all carriers of the lot have been scanned, the operation is started and the loaded carriers will be unassigned. The Unload tab will be enabled and displayed. Once operation is "Started", there will be an "Abort" button. If user decides to Abort the operation, the lot is assigned back to the original carriers. User has the option to unload using Existing Carrier or New Carrier. If "Existing Carrier" is selected, user is allowed to scan the original carrier or other existing unassigned carrier (empty carrier). The number of carriers to scan depends on carrier capacity and number of units. ![image2020-12-23_15-39-54.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b9e24860-7f9f-407d-a9b2-183debd9bc11?fileName=image.png)



If "New Carrier" is selected, system will show the list of active carrier templates with next number configuration for user to select. System will generate the carrier numbers upon completion based on the selected carrier template. The number of carriers generated for the lot depends on carrier capacity and number of units.

![image2020-12-23_15-39-54.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b0fcaa33-c187-4778-9a6b-f09ab7762130?fileName=image.png)




When user clicks on the Complete button, operation is completed and routing rules are triggered. Lot View -" Operation View will show the Load event if “Required Unload Action” =Off. Lot View -" Operation View will show the Load and Unload event if “Required Unload Action” =On. 

*Batch Entry Mode* 
Once "Batch Pass Mode" toggle is turned ON, Lot Attributes dialog will be shown if there is attribute(s) configured. 
If "Auto Release Super Lot" at Material Maintenance is turned On, user shall scan Carrier (if "Auto Release Super Lot" is turned On, it is assumed that 1 lot will only have 1 carrier associated). Else, 
user shall scan Internal Batch Number. System will validate the lot against the selected route step and assembly at Manual Station Login.
![image2020-12-23_15-39-54.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/4b1083da-924d-4cee-a8f3-93d0bed51389?fileName=image.png)


![image2020-12-31_10-1-26.png](/.attachments/84705530.png)


If the lot is already in Started operation status, it cannot be scanned in Batch Pass Mode. Once a lot has started the operation at the particular resource and route step, system does not allow other lots to start there. The lot is not allowed to start if the Planned Order or lot is on hold. Pre-start Rule validations will be triggered before the operation is started.
If the Internal Batch Number is valid, all the carriers of the lot will be loaded to the station and complete the operation. Routing rules are triggered when operation is completed. "Lot Count" and "Carrier Count" counters are updated accordingly when operation is completed. Lot View -" Operation View will only show Load events.
![image2020-12-31_10-1-26.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/831a134b-2755-4f5a-af21-d14818a91265?fileName=image.png)


![image2020-12-31_10-1-26.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/81c80dac-f99a-437a-9540-1348042a0f25?fileName=image.png)


There are no unload action, data collection, Merge or Split in Batch Pass Mode.
***Split Lot***  
Once "Required Unload Action" toggle in the route step is ON, the "Split Pass Quantity" toggle in the Unload Carriers section will be shown. 
If the route step does not have any attribute (exclude attributes for lot release) configured, when “Split Pass Quantity” is ON, user need to provide a value for “Quantity to Split”. The value must be more than 0 but less than “Lot Quantity”.  If "New Carrier" is selected, system will show the list of carrier templates with next number configuration for user to select. System will generate the carriers needed for split lot and the original Internal Batch Number when user completing the operation. If "Existing Carrier" is selected, user need to scan unassigned carrier numbers at “Carrier For Split Lot” for the split lot. Number of carriers to scan depends on the “Quantity to Split” and carrier capacity.

New Carrier

![image2021-2-9_14-20-41.png](/.attachments/86311522.png)



Existing Carrier

![image2021-2-9_14-28-23.png](/.attachments/86311524.png)


When the “Generate
IB
N
On Split” (at Route Step) is Off, user need to scan a new Internal Batch Number for the split lot that follows the format of the Validation Mask.

![image2021-2-9_14-30-30.png](/.attachments/86311526.png)



![image2021-2-9_14-30-53.png](/.attachments/86311527.png)



When the “
Generate IBN On Split
” is On, the Internal Batch Number for split lot is generated by the system by adding a suffix of “-XXX” (sequence from -000 to -999) to the original IBN when user completing the operation.

![image2021-2-9_14-33-12.png](/.attachments/86311528.png)



![image2021-2-9_14-35-26.png](/.attachments/86311529.png)



If the route step has attribute (exclude attributes for lot release) configured, when “Split Pass Quantity” is turned On, user need to provide the "Number of Lots to Split" (value must be " 1)
![image2021-2-9_14-39-21.png](/.attachments/86311530.png)


If "New Carrier" is selected, system will show the list of carrier templates with next number configuration for user to select. If "Existing Carrier" was selected, user shall scan unassigned carrier numbers for each split lot. Number of carriers to scan depends on the carrier capacity. 
New Carrier

![image2021-2-9_14-45-25.png](/.attachments/86311531.png)


Existing Carrier

![image2021-2-9_14-46-53.png](/.attachments/86311532.png)



When the “Generate IBN On Split” is Off, user need to scan a new Internal Batch Number for each of the split lots that follows the format of the Validation Mask.
![image2021-2-9_14-48-15.png](/.attachments/86311535.png)



![image2021-2-9_14-48-47.png](/.attachments/86311536.png)


When the “Generate IBN On Split” is On, the Internal Batch Number for each split lot is generated by the system by adding a suffix of “-XXX” (sequence from -000 to -999) to the original IBN.
![image2021-2-9_14-49-14.png](/.attachments/86311537.png)



![image2021-2-9_14-50-23.png](/.attachments/86311538.png)


***Merge Lot***  
Once "Allow Loading Multiple Lots" toggle in the route step type is ON, the "Merge" toggle in the Load Carriers section will be shown.
Lots can only be merged if they are from the same superlot, in queue at that station and have the same attribute values (if attribute does not allow multiple values). 
User can scan Internal Batch Number and then the cursor will focus on "Scan Carrier". After all the carriers associated to the lot has been scanned, user can continue to scan the next Internal Batch Number followed by its carriers.
![image2021-3-10_10-19-2.png](/.attachments/88113628.png)



![image2021-3-10_10-19-19.png](/.attachments/88113629.png)


If user does not scan the Internal Batch Number and directly scans a carrier, system will retrieve the Internal Batch Number and user will have to continue scanning all the carriers associated to the lot. After that user shall scan the carriers of the next lot.
![image2021-3-10_10-24-12.png](/.attachments/88113631.png)



![image2021-3-10_10-24-40.png](/.attachments/88113632.png)


User is required to select an Internal Batch Number to merge to from one of the scanned lots.
![image2021-3-10_10-25-36.png](/.attachments/88113633.png)


Clicking on "Merge" button system will merge the lots and start the operation.
![image2021-3-10_10-26-22.png](/.attachments/88113634.png)




#### Setup Verification


*Material Consumption* 
Manual Station Setup Sheet, the part number must be of Unserialized Material only. Setup Verification is setup for the resource. GRN Quantity will be deducted upon lot/batch completion at Lot Station MOE. Material will not be consumed again for that CRD, if the CRD is consumed by material before. 
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

[wiki arrow.png](/.attachments/81200355.png)
[image2020-11-5_15-22-51.png](/.attachments/81200358.png)
[image2020-11-5_15-23-11.png](/.attachments/81200360.png)
[image2020-11-6_14-45-30.png](/.attachments/81200425.png)
[image2020-11-6_14-45-41.png](/.attachments/81200426.png)
[image2020-11-6_14-46-10.png](/.attachments/81200428.png)
[image2020-11-6_14-51-40.png](/.attachments/81200430.png)
[image2020-11-6_14-52-7.png](/.attachments/81200431.png)
[image2020-11-6_15-10-9.png](/.attachments/81200432.png)
[image2020-11-27_14-7-54.png](/.attachments/82903607.png)
[image2020-11-27_14-9-0.png](/.attachments/82903608.png)
[image2020-11-27_14-11-18.png](/.attachments/82903609.png)
[image2020-11-27_14-42-27.png](/.attachments/82903617.png)
[image2020-11-27_14-59-5.png](/.attachments/82903620.png)
[image2020-12-23_15-39-54.png](/.attachments/84705470.png)
[image2020-12-31_10-1-26.png](/.attachments/84705530.png)
[image2021-2-9_14-20-41.png](/.attachments/86311522.png)
[image2021-2-9_14-23-58.png](/.attachments/86311523.png)
[image2021-2-9_14-28-23.png](/.attachments/86311524.png)
[image2021-2-9_14-30-30.png](/.attachments/86311526.png)
[image2021-2-9_14-30-53.png](/.attachments/86311527.png)
[image2021-2-9_14-33-12.png](/.attachments/86311528.png)
[image2021-2-9_14-35-26.png](/.attachments/86311529.png)
[image2021-2-9_14-39-21.png](/.attachments/86311530.png)
[image2021-2-9_14-45-25.png](/.attachments/86311531.png)
[image2021-2-9_14-46-53.png](/.attachments/86311532.png)
[image2021-2-9_14-48-15.png](/.attachments/86311535.png)
[image2021-2-9_14-48-47.png](/.attachments/86311536.png)
[image2021-2-9_14-49-14.png](/.attachments/86311537.png)
[image2021-2-9_14-50-23.png](/.attachments/86311538.png)
[image2021-3-10_10-19-2.png](/.attachments/88113628.png)
[image2021-3-10_10-19-19.png](/.attachments/88113629.png)
[image2021-3-10_10-24-12.png](/.attachments/88113631.png)
[image2021-3-10_10-24-40.png](/.attachments/88113632.png)
[image2021-3-10_10-25-36.png](/.attachments/88113633.png)
[image2021-3-10_10-26-22.png](/.attachments/88113634.png)
