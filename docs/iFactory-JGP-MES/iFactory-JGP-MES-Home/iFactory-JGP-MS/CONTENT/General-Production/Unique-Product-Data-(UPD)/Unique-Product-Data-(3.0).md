# Introduction

Unique data is required by Customer and it must be reserved to avoid its usage as WIP or Container serial number. User has the ability to create ranges of unique data for MAC Address WWN, IMEI, IMEISV, IMSI, MEID, ESN. These ranges are reserved and cannot be used for any type of Serial Number generation.  


### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("UNIQUE DATA")

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




<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="UniqueProductData(3.0)-UniqueDataTab">Unique Data Tab</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Unique Data Name</td><td class="confluenceTd">The name given to the unique data</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer associated to the unique data</td></tr><tr><td colspan="1" class="confluenceTd">Unique Data Type</td><td colspan="1" class="confluenceTd"><p>Below are the types of Unique Data Types:</p><ul><li><span style="color: rgb(0,0,255);"><strong>MAC</strong></span><br /><span style="font-size: 10.0pt;line-height: 13.0pt;">Generates </span><span style="font-size: 10.0pt;line-height: 13.0pt;">MAC Addresses of exactly 12 Hexadecimal character length</span></li></ul><ul><li><strong><span style="color: rgb(0,0,255);">WWN</span></strong><br /><span style="font-size: 10.0pt;line-height: 13.0pt;"><span>Generates</span> </span><span style="font-size: 10.0pt;line-height: 13.0pt;">World Wide Names of exactly 1</span><span style="font-size: 10.0pt;line-height: 13.0pt;">6 Hexadecimal character length<br /> </span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>ESN</strong></span><br /><span>Generates </span>Electronic Serial Number (CDMA) of exactly 8 Hexadecimal character length<br /><br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>MEID</strong></span><br /><span>Generates Mobile</span> Equipment Identifier (CDMA) <span>of exactly </span>14 Hexadecimal <span>character</span> length<br /><br /></span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>IMEI</strong></span><br /></span>Generates <span style="color: rgb(34,34,34);">International Mobile Station Equipment Identity (GSM) of exactly 15 Decimal character length. <br />The 15th character is a check digit character calculated using the Luhn formula. Refer to <a href="http://imei-number.com/check-digit-calculation/" class="external-link" rel="nofollow">http://imei-number.com/check-digit-calculation/</a> for the last digit calculation<br /> </span></li><li><span style="color: rgb(0,0,255);"><strong>IMEISV</strong></span><br /><span>Generates </span>International Mobile station Equipment Identity and Software Version Number (GSM) <span style="color: rgb(34,34,34);">of </span><span style="color: rgb(34,34,34);">exactly 16 Decimal character length<br /> </span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;"><span style="color: rgb(0,0,255);"><strong>IMSI</strong></span><br /><span style="color: rgb(0,0,0);">Generates International Mobile Subscriber Identity (stored in SIM cards) of exactly 15 decimal character length</span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Warning Threshold</td><td colspan="1" class="confluenceTd">Warning Threshold field allows user to set an alert when the unique data range is about to deplete. <br />If Warning Threshold is set to "10" and if the Remaining Qty becomes "10", an email notification will be sent to the configured User Group</td></tr><tr><td colspan="1" class="confluenceTd">User Group</td><td colspan="1" class="confluenceTd">This User Group will be receiving the Warning notification email</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">If checked, system is able to use the unique data range to generate unique data for the material<br />If unchecked, system will skip the unique data range from generating unique data for the material </td></tr><tr><td colspan="1" class="confluenceTd">Start Sequence</td><td colspan="1" class="confluenceTd">The first sequence in the unique data range</td></tr><tr><td colspan="1" class="confluenceTd">End Sequence</td><td colspan="1" class="confluenceTd"><span>The last sequence in the unique data range</span></td></tr><tr><td colspan="1" class="confluenceTd">Current Sequence</td><td colspan="1" class="confluenceTd">The last sequence generated from this unique data range. If Current Sequence field is empty, this signifies the Unique Data Range has not been used yet </td></tr><tr><td colspan="1" class="confluenceTd">Remaining Quantity</td><td colspan="1" class="confluenceTd">The number of unique data sequence that can be generated from this range</td></tr><tr><td colspan="1" class="confluenceTd">Quantity Preview</td><td colspan="1" class="confluenceTd">Allows user to enter the quantity of unique data to preview from this range</td></tr><tr><td colspan="1" class="confluenceTd">Preview Button</td><td colspan="1" class="confluenceTd">By clicking this button, the unique data to preview will be shown in a separate window</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="UniqueProductData(3.0)-MaterialAssignment">Material Assignment</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>Multiple materials from the same Customer (as configured in Unique Data tab) can share the same unique data range. However, each of the unique data sequence generated will be unique</p><p><em>Example</em>:<br /><em>Current Sequence for UniqueDataName1 = 1000000000000001<br />Material-A & Material-B share the same unique data range</em><br /><br /><em>Material-A requested to generate unique data from UniqueDataName1 first. Thus, 1000000000000002 is generated<br />Next, Material-B equested to generate unique data from UniqueDataName1. Thus 1000000000000003 is generated</em></p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity To Generate</td><td colspan="1" class="confluenceTd"><p>The quantity of unique data that can be generated by the material at the route step designated for generating Unique Data.</p><p>For example, if <span><strong>Quantity To Generate</strong> for Material-Z = 10, Material-Z can only generate 10 unique data from this unique data ranges</span></p></td></tr></tbody></table>





















- Material_A & Material_B share the same unique data range


Material_A requested to generate unique data from UniqueDataName1 first. Thus, 1000000000000002 is generated
Next, Material_B equested to generate unique data from UniqueDataName1. Thus 1000000000000003 is generatedQuantity To GenerateThe quantity of unique data that can be generated by the material at the route step designated for generating Unique Data.
For example, if 
**Quantity To Generate** for Material_Z = 10, Material_Z can only generate 10 unique data from this unique data ranges

