# Introduction


The manual Lot Release screen is intended to permit the user to sub-divide a Planned Order into small manageable Lots that can be traced and transported with a Carrier in the factory. The basic tenet is, to collect and store information about the materials being processed requires some unique identifier by which all activities may be recorded against. The Lot number is a unique identifier the represents X number of materials that are part of a Planned Order. Unlike the serialized materials for the BTO/CTO and Repetitive process the Lot / Batch Build process has no unique identifier for each individual item. The Lot Serial / Number is used to identify all X items of the Lot. It is generally assumed for data integrity that items in the lot are processed together.  Upon successful release, the system provides a message indicating the Lot has been released and display the Lot Serial Number. The Lot Serial Number is a GUID, Globally Unique Identifier, that looks something like 'c6649eb2-5862-4586-a916-99c4eb2371fe'. Users will generally identify Lots by the Carrier that they are transported on as that number may be more user friendly.  


### How to get there?



::: mermaid
graph LR
A("CARRIER/LOT")-->0("LOT RELEASE")

:::


#### Permission


Lot Release- without link with previous process material 
1) Can Access Lot/Batch Build-Carrier -Permissions releated to working with carriers for transporting materials 

2)Can Access Lot/Batch Build-Carrier Template-Permissions releated to the templates used for generating material carriers 
3)Can Access Lot/Batch Build-Lot-Release Lot -Allows the user to release new lots Lot Release - With Auto birth 

- Using the same permissions listed above 
Lot Release - with label printing 

- Using the same permission listed above Lot Release - With Attribute Assignment 

- Using the same permission listed above Lot Release - Link with previous process material 
1) Can Access Lot/Batch Build- Carrier -Permissions releated to working with carriers for transporting materials 

2) Can Access Lot/Batch Build-Carrier Template-Permissions releated to the templates used for generating material carriers 
3)Can Access Lot/Batch Build-Lot-Release Lot -Allows the user to release new lots 
4) Can Access Lot/Batch Build-Lot-View Lot Details -Allows the user to view detailed lot information (operation history, attributes, etc.) 

#### Screen Activity


Lot Release enables user to perform the following activity:

- The primary activity is to release a Lot, comprised of X number of items, for a Planned Order and associate them to a Carrier

- The screen limits the released quantity to the lesser of the Remaining Quantity of the Planned order or the Carrier Capacity

- The user may also release a lesser quantity if they so desire

- Associate to previous process material for traceability purpose



#### Pre Condition


The following data needs to be pre-configured (if used) before user is permitted to perform a Lot Release

- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)
must be created and assigned to a [Lot Release 2.0 (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)
- If "Auto Birth Carrier" is not selected,
[Create Carrier](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)must have previously occurred and must be "Unassigned", meaning the Carrier is not currently assigned a Lot


#### Screen Dependency


[Screen Name/Module Name]

- [Manual Station](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)
, A Lot may not be started at a Manual Station until they have been Released 
- [Lot View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)
, Lots may not be viewed until they have been released![image2019-4-24_9-10-17.png](/.attachments/48169110.png)


If "Auto Birth Carrier" is selected, user is able to 
create carrier during Lot Release without using the Create Carrier screen.
User will need to select a “Template”. The template will determine whether the carrier serial number is generated or assigned.

- Generate carrier serial number:

![image2019-4-24_9-17-52.png](/.attachments/48169111.png)


If the carrier template selected uses a next number with assembly revision properties or material custom data configuration, the carrier number will be generated accordingly based on the material of the planned order selected.
![image2019-12-18_8-50-58.png](/.attachments/62423129.png)


![image2019-12-18_8-52-11.png](/.attachments/62423130.png)



- Assign carrier serial number:


![image2019-4-24_14-36-13.png](/.attachments/48169121.png)



If there is an assembly created for the lot material, the assembly will be associated to the lot when it is released. User will be able to view the 
Assembly at 
[Lot View](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-2.0-(Lot-%2D-Batch-Build).md)- General Tab. If the Lot material does not have an Assembly, system shall display the Assembly field as blank.If "Link with Previous Process Material " is selected , user is able to select the previous process material and scan the single/multiple container that belong to the material. The Lots in the box will be fully consumed when it is released. User will be able to view the Previous Planned Order at Lot View -General tab and associated containers with the current carrier at Lot view -Audit Log Tab.  
![image2019-4-24_14-39-51.png](/.attachments/48169122.png)


![image2019-4-24_14-42-20.png](/.attachments/48169123.png)



If document is assigned for "On Carrier Create" print trigger, user is able to print all the values under “ASSEMBLYREVISION PROPERTIES” during lot release.
![image2019-12-18_8-55-17.png](/.attachments/62423131.png)


![image2019-12-18_8-55-55.png](/.attachments/62423132.png)



Fields
<table class="confluenceTable"><colgroup><col style="width: 113.0px;" /><col style="width: 1326.0px;" /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Planned Order<span style="color: rgb(255,0,0);">*</span></span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Intended for the user to enter all or part of the Planned Order Number. If a complete Planned Order is entered and a match is found the details of the order will be populated on the form. If a partial match or no match is found a Search Result dialog will be presented to help select the specific order the user desires. A wild card search (no entry) may also be used. Only Planned Order with the status of Ready and In Progress will be available. (Required)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Assigned route</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Route the Planned Order is assigned to be processed (Read Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Allow user to select the initial route step for releasing. It will auto populated the initial route step if there is only one initial route step.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Link With Previous Process Material</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Option for user to associate the current Carrier with the previous process material for traceability purpose.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Previous Process Material</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow user to select Previous production material that needed for association.</span></p><p><span style="color: rgb(0,0,0);">The previous process material will be displayed if </span></p><ul><li><span style="color: rgb(0,0,0);">Same Customer</span></li><li><span style="color: rgb(0,0,0);">Lot/Batch Material Type</span></li><li><span style="color: rgb(0,0,0);">Active status</span></li><li><span style="color: rgb(0,0,0);">Available in the Planned Order's BOM</span></li></ul><p><span style="color: rgb(0,0,0);">There is a validation to check if user selects different material from the material to produce for the Planned Order.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scan Container</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow user to scan single/multiple container that need to be consumed in the release.</span></p><p><span style="color: rgb(0,0,0);">System will validate if </span></p><p><span style="color: rgb(0,0,0);">a.      the container is closed</span><br /><span style="color: rgb(0,0,0);">b.      the Lot in the container with Completed status.</span><br /><span style="color: rgb(0,0,0);">c.      the material is matched with the selected material.</span><br /><span style="color: rgb(0,0,0);">d.      the planned order of the container is not on hold/ cancelled/shipped.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">QTY</td><td colspan="1" class="confluenceTd">The quantity of the scanned container and this quantity will be checked against the Quantity Remaining , Carrier Capacity and Total Release Quantity ( Carrier number*Carrier Capacity),</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Order Number</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The selected Planned Order Number to release a Lot from (Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Material to produce for the Planned Order (Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Scheduled start date</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Scheduled Start Date the Planned Order is to begin in production (Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Quantity</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Total Quantity of the Planned Order (Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Quantity released</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Number of items released to fulfill the Planned Order (Read Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity remaining</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The Number of items remaining to be released to fulfill the Planned Order. Currently the Remaining Quantity = Planned Order Quantity - Released Quantity. Once a material can be Scrapped it should be defined as Remaining Quantity = Planned Order Quantity - Released Quantity + Scrapped Quantity so that the entire Planned Order is fulfilled even if there is fall out from scrap. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Auto Birth Carrier</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Option for user to create carrier during Lot Release without using the Create Carrier screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Template<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The carrier template needed to create carrier. The template will determine whether the carrier serial number is generated or assigned. (Required if "Auto Birth Carrier" is selected)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Batch Carrier File<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">If user has more than 1 carrier serial number to assign, user will upload the “Batch Carrier File”. If a file is uploaded, “Carrier number” field will be disabled. Either "Carrier number" or “Batch Carrier File” is required.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Printer<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">If 'On Carrier Create' is configured in document assignment then “Printer” field is displayed and carrier label(s) will be printed when submit. This is required if carrier serial number is generated. For assign carrier serial number, the <span style="color: rgb(0,0,0);">'On Carrier Create' configuration <span style="color: rgb(0,0,0);">in document assignment</span> is optional.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scan Carrier<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The Carrier Serial Number that the Lot is to be transported by. The Carrier must have been created and currently has a status of 'Unassigned" if "Auto Birth Carrier" is not selected. (Required)</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Number of carriers<span style="color: rgb(255,0,0);">*</span></span></td><td class="confluenceTd"><span style="color: rgb(0,0,0);">The number of labels printed depends on the value entered in “Number of carriers” field. (Required if carrier serial number is generated)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Carrier number<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"> If only 1 carrier serial number to assign, user will enter the "Carrier number" and it needs to pass the validation mask configured. The validation mask refers to the latest configuration set at Validation Mask Maintenance screen. If "Carrier number" is entered, “Batch Carrier File” will be disabled.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Carrier capacity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">This Carrier Capacity displays the maximum items that may be transported (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Release quantity per carrier<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">This field is auto populated with the Carrier Capacity. The user is permitted to change the value between 1 and the lesser of the Remaining Quantity of the Planned order or the Carrier Capacity. (Required) </span></p><p><span style="color: rgb(0,0,0);">This field will be auto disabled and populated the LOT QTY if the " Link With Previous Process Material" is checked.</span></p></td></tr></tbody></table>





- The quantity of the scanned container and this quantity will be checked against the Quantity Remaining , Carrier Capacity and Total Release Quantity ( Carrier number\*Carrier Capacity),

Order Number
The selected Planned Order Number to release a Lot from (Read Only)
Material
The Material to produce for the Planned Order (Read Only)
Scheduled start date
The Scheduled Start Date the Planned Order is to begin in production (Read Only)
Quantity
The Total Quantity of the Planned Order (Read Only)
Quantity released
The Number of items released to fulfill the Planned Order (Read Only)
Quantity remaining
The Number of items remaining to be released to fulfill the Planned Order. Currently the Remaining Quantity = Planned Order Quantity - Released Quantity. Once a material can be Scrapped it should be defined as Remaining Quantity = Planned Order Quantity - Released Quantity + Scrapped Quantity so that the entire Planned Order is fulfilled even if there is fall out from scrap. (Read Only)
Auto Birth Carrier
Option for user to create carrier during Lot Release without using the Create Carrier screen.
Template

The carrier template needed to create carrier. The template will determine whether the carrier serial number is generated or assigned. (Required if "Auto Birth Carrier" is selected)
Batch Carrier File

If user has more than 1 carrier serial number to assign, user will upload the “Batch Carrier File”. If a file is uploaded, “Carrier number” field will be disabled. Either "Carrier number" or “Batch Carrier File” is required.
Printer

If ‘On Carrier Create’ is configured in document assignment then “Printer” field is displayed and carrier label(s) will be printed when submit. This is required if carrier serial number is generated. For assign carrier serial number, the 
‘On Carrier Create’ configuration 
in document assignment
is optional.Scan Carrier

The Carrier Serial Number that the Lot is to be transported by. The Carrier must have been created and currently has a status of 'Unassigned" if "Auto Birth Carrier" is not selected. (Required)
Number of carriers

The number of labels printed depends on the value entered in “Number of carriers” field. (Required if carrier serial number is generated)
Carrier number

If only 1 carrier serial number to assign, user will enter the "Carrier number" and it needs to pass the validation mask configured. The validation mask refers to the latest configuration set at Validation Mask Maintenance screen. If "Carrier number" is entered, “Batch Carrier File” will be disabled.
Carrier capacity
This Carrier Capacity displays the maximum items that may be transported (Read Only)
Release quantity per carrier

This field is auto populated with the Carrier Capacity. The user is permitted to change the value between 1 and the lesser of the Remaining Quantity of the Planned order or the Carrier Capacity. (Required) 
This field will be auto disabled and populated the LOT QTY if the " Link With Previous Process Material" is checked.


#### Attachments

[Manual Lot Release.png](/.attachments/36962308.png)
[image2018-10-15_10-37-21.png](/.attachments/36962310.png)
[image2018-10-15_10-43-39.png](/.attachments/36962311.png)
[image2018-10-15_10-51-59.png](/.attachments/36962312.png)
[image2018-12-11_16-6-37.png](/.attachments/39649313.png)
[image2018-12-11_16-11-42.png](/.attachments/39649314.png)
[image2018-12-11_16-15-5.png](/.attachments/39649315.png)
[image2018-12-11_16-29-46.png](/.attachments/39649318.png)
[image2018-12-11_16-30-57.png](/.attachments/39649319.png)
[image2019-1-18_14-56-32.png](/.attachments/41058460.png)
[image2019-1-18_14-57-21.png](/.attachments/41058461.png)
[image2019-1-18_14-59-50.png](/.attachments/41058463.png)
[image2019-1-18_15-8-31.png](/.attachments/41058465.png)
[image2019-1-18_15-9-3.png](/.attachments/41058466.png)
[image2019-4-24_9-10-17.png](/.attachments/48169110.png)
[image2019-4-24_9-17-52.png](/.attachments/48169111.png)
[image2019-4-24_14-36-13.png](/.attachments/48169121.png)
[image2019-4-24_14-39-51.png](/.attachments/48169122.png)
[image2019-4-24_14-42-20.png](/.attachments/48169123.png)
[image2019-12-18_8-50-58.png](/.attachments/62423129.png)
[image2019-12-18_8-52-11.png](/.attachments/62423130.png)
[image2019-12-18_8-55-17.png](/.attachments/62423131.png)
[image2019-12-18_8-55-55.png](/.attachments/62423132.png)
