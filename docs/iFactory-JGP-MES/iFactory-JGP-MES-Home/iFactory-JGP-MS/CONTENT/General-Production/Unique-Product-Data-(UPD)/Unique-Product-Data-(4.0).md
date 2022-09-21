# Introduction

Unique data is required by Customer and it must be reserved to avoid its usage as WIP or Container serial number. User has the ability to create ranges of unique data for MAC Address WWN, IMEI, IMEISV, IMSI, MEID, ESN. These ranges are reserved and cannot be used for any type of Serial Number generation.  


### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("UNIQUE PRODUCT DATA")

:::

Precondition
User Group and Material need to exist in order to assign them to the unique data



#### Screen Activity



Unique Data Maintenance enables user to perform the following activity:

- Create, view, update and delete unique data

- Preview unique data sequence by block

- Assign material(s) that requires unique data reservation




#### **Screen Dependency** 



- ***Material***

[ Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/GRN-Hold-Data-Importer.md)
- User Group Maintenance



#### **Fields** 




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UniqueProductData(4.0)-General-ConfiguretheUniqueProductData">General - Configure the Unique Product Data</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Unique Data Name</td><td class="confluenceTd">The name given to the unique data</td></tr><tr><td colspan="1" class="confluenceTd">SAP Handling Unit Name</td><td colspan="1" class="confluenceTd"><p>The field name that will be used in constructing the Handling Unit message content to include the UPD information in the HU message. Select from below:</p><ul><li>None</li><li>FC WWN</li><li>MAC ADDRESS</li><li>PCM</li><li>SAS WWN</li></ul></td></tr><tr><td class="confluenceTd">UPD Type</td><td class="confluenceTd"><div class="content-wrapper"><p>The different UPD types each with its own characteristics. Select the UPD Types from below selections:</p><ul><li><span style="color: rgb(0,0,255);"><strong>MAC<span style="color: rgb(0,51,102);"> -</span> </strong></span><span>Generates </span><span>MAC Addresses of exactly 12 Hexadecimal character length</span><strong><span style="color: rgb(0,0,255);"><br /></span></strong></li><li><strong><span style="color: rgb(0,0,255);">WWN<span style="color: rgb(0,51,102);"> -</span> </span></strong><span style="font-size: 10.0pt;line-height: 13.0pt;"><span>Generates</span> </span><span style="font-size: 10.0pt;line-height: 13.0pt;">World Wide Names of exactly 1</span><span style="font-size: 10.0pt;line-height: 13.0pt;">6 Hexadecimal character length<br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>ESN - </strong></span><span>Generates </span>Electronic Serial Number (CDMA) of exactly 8 Hexadecimal character length<br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>MEID - </strong></span><span>Generates Mobile</span> Equipment Identifier (CDMA) <span>of exactly </span>14 Hexadecimal <span>character</span> length<br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>IMEI - </strong></span></span>Generates <span style="color: rgb(34,34,34);">International Mobile Station Equipment Identity (GSM) of exactly 15 Decimal character length. The 15th character is a check digit character calculated using the Luhn formula. Refer to <a href="http://imei-number.com/check-digit-calculation/" class="external-link" rel="nofollow">http://imei-number.com/check-digit-calculation/</a> for the last digit calculation<br /></span></li><li><span style="color: rgb(0,0,255);"><strong>IMEISV - </strong></span><span>Generates </span>International Mobile station Equipment Identity and Software Version Number (GSM) <span style="color: rgb(34,34,34);">of </span><span style="color: rgb(34,34,34);">exactly 16 Decimal character length<br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>IMSI - </strong></span><span style="color: rgb(0,0,0);">Generates International Mobile Subscriber Identity (stored in SIM cards) of exactly 15 decimal character length</span></span></li><li><span style="color: rgb(0,0,255);"><strong>DELL SERVICE TAG <span style="color: rgb(0,0,0);">-</span></strong><span style="color: rgb(0,0,0);"> Generates Dell Service Tag of exactly 7 character length</span></span></li><li><span style="color: rgb(0,0,255);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,255);"><strong>GENERIC</strong></span> - Generates generic data. Allow 0-9 a-z A-Z and <span style="color: rgb(45,46,47);">--=+[]</span>, the length should be less than 50. </span></span><ul><li><span style="color: rgb(0,0,255);"><span style="color: rgb(0,0,0);">Notes: the allowable characters of GENERIC can be configured in database table. as below:<span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86310954.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86310954.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="86310954" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-1-13-13-11-5.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918469" data-linked-resource-container-version="7" /></span></span></span></li><li><span style="color: rgb(0,0,255);"><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="181" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86310955.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86310955.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="86310955" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-1-13-13-13-18.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918469" data-linked-resource-container-version="7" /></span></span></span></li></ul></li></ul><div><span style="color: rgb(0,0,0);">Click on the information button to gather more information for each of the UPD type.</span></div></div></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer associated to the UPD</td></tr><tr><td colspan="1" class="confluenceTd">Assignment Type</td><td colspan="1" class="confluenceTd"><p>Define how the UPD is assigned to a material</p><ul><li>User Assigned - Prompt user to scan the UPD value</li><li>Auto Select From List - System selects the UPD value from the list and auto assign it</li><li>System Generated - System generate the UPD value by selected NextNumber. (Can only choose this one when UPD Type is 'GENERIC')</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Next Number</td><td colspan="1" class="confluenceTd">Select the Next Number that will be used to generated UPD value.(Can only be enable when UPD type is 'Generic' and Assignment type is 'System Generated').</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd"><p>Select the Validation Mask that will be used to verify the UPD value. (Can only be enable when UPD type is 'Generic').</p><p>For the Generic UPD Type, user can configure this field when Assignment Type are 'User Assigned' or 'AutoSelectFromList'. </p></td></tr><tr><td colspan="1" class="confluenceTd">IsLookUp</td><td colspan="1" class="confluenceTd"><p>Define whether the UPD is used to look up main WIP SN.</p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UniqueProductData(4.0)-UPDAssignment-ConfiguretheMaterialtoassigntheUPD">UPD Assignment - Configure the Material to assign the UPD</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>Select the Material that will be assigned the current Unique Product Data.</p><p>It will be used for Assemble station when route&route step is blank.</p><p style="margin-left: 30.0px;">For User Assigned, user will be required to scan the UPD during assemble action. The UPD will be assigned when the Material is assembled to a parent WIP.</p><p style="margin-left: 30.0px;">For AutoSelectFromList, system will automated select an existing UPD and assigned to the assembled material.</p><p style="margin-left: 30.0px;">For SystemGenerated, system will automated generate UPD and assigned to the assembled material.</p><p>It will be used for target route step(MOE) when route&route step is not blank.</p><p style="margin-left: 30.0px;">For User Assigned, user will be required to scan the UPD after WIP started. The UPD will be assigned to WIP.</p><p style="margin-left: 30.0px;">For AutoSelectFromList, system will automated select an existing UPD and assigned to WIP.</p><p style="margin-left: 30.0px;">For SystemGenerated, system will automated generate UPD and assigned to WIP.</p><p><br /></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><p>Can configure a Route.</p><p>The precondition user can choose route when:</p><p>1: UPD type is Generic.</p><p>2: Material is repetitive process.</p><p>3: Material has been associated to a route.</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>Currently, can only choose MOE station.</p></td></tr><tr><td colspan="1" class="confluenceTd">Qty of UPDs to Assign</td><td colspan="1" class="confluenceTd"><p>The quantity of UPD needed to assign to the selected Material.</p></td></tr><tr><td colspan="1" class="confluenceTd">IsActive</td><td colspan="1" class="confluenceTd"><p>The status of configuration of current material. By default is Active.</p><p>Active: current configuration is validate for runtime.</p><p>InActive: current configuration is invalidate for runtime.</p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 style="text-align: center;" id="UniqueProductData(4.0)-UPDValues-UploadtheavailableUPDValuestobeassignedforcurrentUPD">UPD Values - Upload the available UPD Values to be assigned for current UPD</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Choose File</td><td colspan="1" class="confluenceTd">Select a text file with UPD Values in each line to upload UPD Values for current UPD. Alternatively user can drag the text file over the grid.</td></tr><tr><td colspan="1" class="confluenceTd">UPD</td><td colspan="1" class="confluenceTd">The UPD value that can be assigned if not yet done so</td></tr><tr><td class="confluenceTd">Assigned Item</td><td class="confluenceTd">The Unique Idenfitied of an object a UPD value has already been assigned to</td></tr><tr><td class="confluenceTd">Search (Magnifying glass on top right of the grid)</td><td class="confluenceTd">Search for a particular UPD value</td></tr></tbody></table>








- **_-=+[]**

, the length should be less than 50. 
- Notes: the allowable characters of GENERIC can be configured in database table. as below:

![image2021-1-13_13-11-5.png](/.attachments/86310954.png)


![image2021-1-13_13-13-18.png](/.attachments/86310955.png)



- Click on the information button to gather more information for each of the UPD type.

CustomerCustomer associated to the UPDAssignment TypeDefine how the UPD is assigned to a material

- User Assigned - Prompt user to scan the UPD value

- Auto Select From List - System selects the UPD value from the list and auto assign it

- System Generated - System generate the UPD value by selected NextNumber. (Can only choose this one when UPD Type is 'GENERIC')
Next NumberSelect the Next Number that will be used to generated UPD value.(Can only be enable when UPD type is 'Generic' and Assignment type is 'System Generated').Validation MaskSelect the Validation Mask that will be used to verify the UPD value. (Can only be enable when UPD type is 'Generic').
For the Generic UPD Type, user can configure this field when Assignment Type are 'User Assigned' or 'AutoSelectFromList'. 
IsLookUpDefine whether the UPD is used to look up main WIP SN.


#### UPD Assignment - Configure the Material to assign the UPD

FieldDescriptionMaterialSelect the Material that will be assigned the current Unique Product Data.
It will be used for Assemble station when route&route step is blank.
For User Assigned, user will be required to scan the UPD during assemble action. The UPD will be assigned when the Material is assembled to a parent WIP.
For AutoSelectFromList, system will automated select an existing UPD and assigned to the assembled material.
For SystemGenerated, system will automated generate UPD and assigned to the assembled material.
It will be used for target route step(MOE) when route&route step is not blank.
For User Assigned, user will be required to scan the UPD after WIP started. The UPD will be assigned to WIP.
For AutoSelectFromList, system will automated select an existing UPD and assigned to WIP.
For SystemGenerated, system will automated generate UPD and assigned to WIP.

RouteCan configure a Route.
The precondition user can choose route when:
1: UPD type is Generic.
2: Material is repetitive process.
3: Material has been associated to a route.
Route StepCurrently, can only choose MOE station.
Qty of UPDs to AssignThe quantity of UPD needed to assign to the selected Material.
IsActiveThe status of configuration of current material. By default is Active.
Active: current configuration is validate for runtime.
InActive: current configuration is invalidate for runtime.


#### UPD Values - Upload the available UPD Values to be assigned for current UPD

FieldDescriptionChoose FileSelect a text file with UPD Values in each line to upload UPD Values for current UPD. Alternatively user can drag the text file over the grid.UPDThe UPD value that can be assigned if not yet done soAssigned ItemThe Unique Idenfitied of an object a UPD value has already been assigned toSearch (Magnifying glass on top right of the grid)Search for a particular UPD value



#### Attachments

[image2021-1-13_13-11-5.png](/.attachments/86310954.png)
[image2021-1-13_13-13-18.png](/.attachments/86310955.png)
