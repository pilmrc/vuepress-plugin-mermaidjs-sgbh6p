# Introduction

GRN quantity will be deducted upon WIP completion
The Manual Operation Entry  (MOE) station is used to perform simple Start, Abort and Complete activities to Lots at a Route Step. The basic use is for a User to identify the Resource, optionally disambiguate the Route and Route Step if the resource is configured for multiple locations, then to perform the operation that is configured for this Route Step.


### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN")
:::


#### Permission


MOE - Enforce Assembly ON & OFF 
1)Can Access Lot/Batch Build-Manual Operation Entry-Permissions related to manual operation entry 

2) Can Access Lot/Batch Build-Stations -Permissions related to stations that perform operations on lots (unserialed WIP) MOE - with material in use 

- using the same permission listed above MOE - with attribute assignment 

- using the same permission listed aboveAdditional Permissions for Online Material Loading:
1. Can Access NG - Can Access Part Allocation -  Can Access Customer Configuration

2. Can Access NG - Can Access Part Allocation -  Can Access Equipment Part Allocation
3. Can Access NG - Can Access Part Allocation -  Can Access Manual Station Part Allocation
4. Can Access NG - Can Access Setup Sheet -  Can Access Manual Station Setup Sheet


#### Screen Activity


Manual Station Login enables user to perform the following activity:

- Select the Resource, Route, Route Step that the User is performing their activities

- Start the Operation activity

- Abort the activity

- Complete the activity



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Station Login

- [Manual Operation Entry - MOE (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)
defined
- [Manual Operation Entry - MOE (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [Create Carrier](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)
, Create a [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)and assign to Route,  [Lot Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start
- [Manual Station Login](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)
User must identify the Resource they are using before performing the Operation activities  


#### Screen Dependency


Manual Operation Entry 

- None specifically, once the Lot is Started the system will record the occurrence of the activity and can be seen via the
[Lot View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)History Tab. 


#### Process


When the user has selected the station through the 
[Manual Station Login](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)the application will open the configured operation activity screen, in this example MOE. The MOE screen is a simple operation that allows the user to Start, Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Carrier to start the operation activities. The user has also pressed the Station Details Control to optionally view what has been selected as Route and Route Step context.
![image2019-6-3_16-27-15.png](/.attachments/50954249.png)


MOE screen will show how many units Completed/Started at current session. (\*This is only in DEV mode)

- Reenter to the station or Refresh button will reset the Counter to Zero

- Abort Operation will not increase the Counter
![image2019-6-3_16-27-15.png](/.attachments/29917863.png)


Once a valid Carrier Serial Number has been scanned, the Lot Number is looked up, and the Lot is Started automatically, the screen is presented to the user allows to Abort or Complete the operation. When the User presses one of the buttons the systems records the operation activity, the screen should be cleared and the cycle starts all over again.
![image2019-6-3_16-36-26.png](/.attachments/50954253.png)





#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan a carrier serial number</p></td><td class="confluenceTd"><p>This field may be empty for a full wild card search, partially completed for a partial match, exactly entered for a full match. The field should normally be scanned from the Carrier label in production</p></td></tr><tr><td class="confluenceTd"><p>Lot Number</p></td><td class="confluenceTd"><p>The Number of the Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Lot Quantity</p></td><td class="confluenceTd"><p><span>The Number of items for the Lot currently assigned to the Carrier that has just started. (Read only)</span></p></td></tr><tr><td class="confluenceTd"><p><span>Order Number</span></p></td><td class="confluenceTd"><p>The Planned Order this lot is fulfilling.<span> (Read only)</span></p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd">The Material that is being processed on this Lot. <span>(Read only)</span></td></tr></tbody></table>





#### Batch Entry Mode


User will have the option to be in Batch Entry Mode at Lot MOE Station when
the customer has the “Enforce assembly selection at station” (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) set to ON. "Batch Entry Mode" toggle will be visible. User can continuously scan to complete the carrier so that the operation time can be decreased. 
When the user is in Batch Entry Mode, s
ystem will complete the carrier scanned by user by behaving like the “Complete” function in single entry mode and 
Carrier Count will reflect the number of carriers completed successfully. 
If attribute is configured, the lot attributes window will pop up once batch entry mode is turned On. The value saved will be shown and retained on screen. Process Step History is recorded in Lot View.![image2019-6-20_13-12-52.png](/.attachments/51871953.png)





#### Auto Release Lot


If the customer has the “Enforce assembly selection at station” set to ON, user will be able to see the “Auto Release Lot” toggle when the MOE route step is an initial route step.
![image2019-6-20_13-16-14.png](/.attachments/51871959.png)


If “Auto Release Lot” is OFF and "Batch Pass" is turned ON, screen will behave as per normal batch pass mode. 
When “Auto Release Lot” is turned ON, "Batch Entry Mode" will be automatically turned ON (Auto Release Lot is only applicable to Batch Entry Mode). 
“Auto Release Lot” toggle will be disabled. 

![image2019-6-20_13-16-51.png](/.attachments/51871961.png)



Attribute(s) that is configured for Lot Release will be shown together with the lot attribute configured for the route step. 
![image2019-6-20_13-17-12.png](/.attachments/51871962.png)


![image2019-6-20_13-17-34.png](/.attachments/51871963.png)


![image2019-6-20_13-17-55.png](/.attachments/51871964.png)


User will need to search for the “Planned Order”. The planned orders returned by the search are filtered by route and material. 
![image2019-6-20_13-18-17.png](/.attachments/51871965.png)


“Quantity Released”, “Quantity Remaining”, “Template”, “Carrier Capacity” and “Release Quantity” fields will be visible after Planned Order is entered.
![image2019-6-20_13-18-35.png](/.attachments/51871966.png)


Template list will only display carrier templates with validation mask configuration. 
“Carrier capacity” is a read-only field and value will be populated based on the “Template” selected. The “Release Quantity” is auto populated with the value of carrier capacity. The value is editable but it must be more than 0 and cannot be more than “Carrier Capacity”.If “Template” is selected, the carrier number scanned should not exist in the system. ![image2019-6-20_13-18-55.png](/.attachments/51871967.png)


If "Template" is selected and "On Carrier Create" is configured in document assignment then “Printer” option is displayed and label will be printed when lot completes. If only 1 printer is configured, it will be selected by default.
![image2019-6-20_13-19-48.png](/.attachments/51871969.png)


If “Template” is not selected, the carrier number scanned should exist in the system with status of “Unassigned”. If carrier scanned is valid, "Carrier Capacity" will be populated and "Release Quantity" will be populated with the "Carrier Capacity" value.
![image2019-6-20_13-20-11.png](/.attachments/51871970.png)


![image2019-6-20_13-20-31.png](/.attachments/51871971.png)


When the Complete event is triggered with “Auto Release Lot” turned On:

- Carrier will be created if it does not exist. A lot number will be assigned to the carrier scanned.

- If successful, lot will in queue at the next route step.
After completing the lot, values for “Planned Order”, “Template”, “Carrier capacity”, “Release Quantity” and “Printer” fields are not cleared. “Quantity Released” and “Quantity Remaining” will be updated accordingly. Carrier number is cleared so that user is able to continue scanning.
Link With Previous Process Material (Unserialized to Unserialized process) is not supported in Auto Release Lot.
For Auto Release Lot at stations, if document is assigned for "On Carrier Create" print trigger, user is able to print all the values under “ASSEMBLYREVISION PROPERTIES”.
![image2019-12-18_9-1-32.png](/.attachments/62423137.png)


![image2019-12-18_9-2-1.png](/.attachments/62423138.png)





#### Online Material Loading


If the installed setup sheet has part number(s) with “Online Material Loading” turned ON at
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md), the Online Material Loading window will pop up.
![image2019-6-4_10-30-33.png](/.attachments/50954325.png)


![image2019-6-4_10-30-53.png](/.attachments/50954326.png)


The Online Material Loading is support Non-EA UOM Material too.
![image2022-2-25_15-57-13.png](/.attachments/108430069.png)


For single entry mode, the window will pop up after user scans carrier. For Batch Entry mode, it will pop up once user turn on Batch Entry mode. When the window opens, system will select the first row by default and focus the cursor at GRN field. If there is already a GRN value, it is highlighted so that user can scan a new GRN if needed.
If the Part Number’s GRN Validation Mask is configured, user will need to enter the Non-Unique Identifier GRN in the GRN field. After pressing on Enter key, cursor will focus on Quantity field. System will auto populate the editable Quantity field with the available GRN quantity. User needs to manually create the GRN first before being able to use it for online material loading.
If no GRN Validation Mask is configured and material is non lot batch, user will need to enter the 16 char GRN. After pressing on Enter key, cursor will focus on Quantity field. System will auto populate the editable Quantity field with the available GRN quantity. User needs to manually create the GRN first before being able to use it for online material loading.
If no GRN Validation Mask is configured and material is lot batch, user will scan a previous carrier number in the GRN field. The previous carrier number scanned need not exist in GRN table.

- The material of the “Previous Carrier” scanned must be the same as the part number required.

- The “Previous Carrier” scanned must be in completed status.

- The previous carrier should not be packed.

- The previous carrier scanned cannot be On Hold.

- The previous carrier scanned cannot be Scrapped.
If the previous carrier scanned passes the validations above, the previous carrier's lot quantity will be displayed in the editable Quantity field. 
The “Previous Carrier” value will be saved into the GRN table with Quantity as the GRN quantity. If the carrier number already exists in the GRN table, GRN creation is skipped. When the lot completes the operation, the status of “Previous Carrier” scanned will be changed to “Consumed”. This carrier will not be allowed to use for Unserialized To Serialized feature.
![image2019-6-4_10-38-27.png](/.attachments/50954328.png)


![image2019-6-4_10-38-14.png](/.attachments/50954327.png)


Once the last record has GRN and quantity added, the Online Material Loading window will automatically close.
If the Online Material Loading window is closed before all part numbers have a valid GRN entered:

- Lot MOE single entry mode: the Complete button will remain disabled.


- Lot MOE batch entry mode: the Scan Carrier field will remain disabled.

Once all online materials have been added, the button will not show a number: 
![image2019-6-4_8-53-37.png](/.attachments/50954331.png)


If the GRN quantity is not sufficient for current lot operation, error message is returned and the Online Material Loading window will pop-up so that user can scan another GRN to complete the lot:
![image2019-6-4_10-45-52.png](/.attachments/50954332.png)


The GRN added in Online Material Loading will be shown in Lot View – Genealogy tab under the Identifier column regardless the setup sheet has Material Quantity Consumption turned On or Off.
![image2019-6-4_10-47-23.png](/.attachments/50954333.png)


![image2019-6-4_10-48-37.png](/.attachments/50954334.png)


For Lot MOE Batch Pass mode, the Online Material Loading window will not pop up after lot is released. The window will only pop up when GRN quantity is not sufficient for current lot consumption. 
The GRN value in Online Material Loading window is retained until operator scans a new GRN or setup is cleared at Manual Station Part Allocation.



#### Material Consumption


Pre-requisite:

- Assembly is created for the Lot material.


- Manual Station Part Allocation is setup for the Resource. T

he part number must be of Unserialized or Lot/batch Material

- The Material/setup sheet has "Material Quantity Consumption" turned on


When
"
Material quantity Consumption"
is turned on in [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)screen, the 
GRN Quantity will be deducted upon lot/batch completion at Lot Station MOE. The quantity deducted = 
Number of CRD X Lot Quantity. 
If the CRD has material consumed before, material will not be consumed again for that CRD. 
If the lot returns to the same route step but with a different setup sheet/setup sheet version, i
f there are additional CRD configured, the material(s) at the new CRD will be consumed. When
the GRN quantity is not sufficient to use, s
ystem will not allow the lot/batch to start.
If "Enforce assembly selection at station" (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) is turned on, user is able to view the “Material In Use” icon when they first access the screen (before starting the lot).
![image2019-6-3_16-33-17.png](/.attachments/50954251.png)


![image2019-6-3_16-33-17.png](/.attachments/38273513.png)



If "Enforce assembly selection at station" is NOT turned on, user will only be able to view the “Material In Use” icon after the lot has started.
![image2019-6-3_16-40-52.png](/.attachments/50954257.png)







#### Attachments

[image2017-7-26 14:59:29.png](/.attachments/29917863.png)
[MOE Search Start.png](/.attachments/29917864.png)
[MOE screen.png](/.attachments/29917865.png)
[Manual Station Login Search.png](/.attachments/29917866.png)
[Manual Login fully populated -2.png](/.attachments/29917867.png)
[MOE Start Carrier with details.png](/.attachments/29917868.png)
[image2018-11-29_8-42-36.png](/.attachments/38273433.png)
[image2018-11-29_9-20-8.png](/.attachments/38273434.png)
[image2018-11-29_9-20-38.png](/.attachments/38273435.png)
[image2018-11-29_9-28-41.png](/.attachments/38273436.png)
[image2018-11-29_9-34-17.png](/.attachments/38273437.png)
[image2018-12-3_9-38-40.png](/.attachments/38273513.png)
[image2019-4-22_15-38-24.png](/.attachments/48168962.png)
[image2019-4-22_15-41-43.png](/.attachments/48168963.png)
[image2019-4-23_8-35-52.png](/.attachments/48169013.png)
[image2019-6-3_16-27-15.png](/.attachments/50954249.png)
[image2019-6-3_16-33-17.png](/.attachments/50954251.png)
[image2019-6-3_16-36-26.png](/.attachments/50954253.png)
[image2019-6-3_16-40-52.png](/.attachments/50954257.png)
[image2019-6-4_10-30-33.png](/.attachments/50954325.png)
[image2019-6-4_10-30-53.png](/.attachments/50954326.png)
[image2019-6-4_10-38-14.png](/.attachments/50954327.png)
[image2019-6-4_10-38-27.png](/.attachments/50954328.png)
[image2019-6-4_8-53-37.png](/.attachments/50954331.png)
[image2019-6-4_10-45-52.png](/.attachments/50954332.png)
[image2019-6-4_10-47-23.png](/.attachments/50954333.png)
[image2019-6-4_10-48-37.png](/.attachments/50954334.png)
[image2019-6-20_13-11-17.png](/.attachments/51871952.png)
[image2019-6-20_13-12-52.png](/.attachments/51871953.png)
[image2019-6-20_13-13-19.png](/.attachments/51871954.png)
[image2019-6-20_13-14-44.png](/.attachments/51871955.png)
[image2019-6-20_13-15-4.png](/.attachments/51871956.png)
[image2019-6-20_13-15-28.png](/.attachments/51871957.png)
[image2019-6-20_13-15-52.png](/.attachments/51871958.png)
[image2019-6-20_13-16-14.png](/.attachments/51871959.png)
[image2019-6-20_13-16-34.png](/.attachments/51871960.png)
[image2019-6-20_13-16-51.png](/.attachments/51871961.png)
[image2019-6-20_13-17-12.png](/.attachments/51871962.png)
[image2019-6-20_13-17-34.png](/.attachments/51871963.png)
[image2019-6-20_13-17-55.png](/.attachments/51871964.png)
[image2019-6-20_13-18-17.png](/.attachments/51871965.png)
[image2019-6-20_13-18-35.png](/.attachments/51871966.png)
[image2019-6-20_13-18-55.png](/.attachments/51871967.png)
[image2019-6-20_13-19-19.png](/.attachments/51871968.png)
[image2019-6-20_13-19-48.png](/.attachments/51871969.png)
[image2019-6-20_13-20-11.png](/.attachments/51871970.png)
[image2019-6-20_13-20-31.png](/.attachments/51871971.png)
[image2019-12-18_9-1-32.png](/.attachments/62423137.png)
[image2019-12-18_9-2-1.png](/.attachments/62423138.png)
[image2022-2-25_15-57-13.png](/.attachments/108430069.png)
