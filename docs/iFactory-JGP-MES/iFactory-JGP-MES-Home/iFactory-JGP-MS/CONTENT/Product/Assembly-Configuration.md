# Introduction

An 
**assembly**  is a product that Jabil manufactures. Some examples of assembly names are Hammerhead, Mars, and Piranha. Assemblies must be marked as **Active**  in order to create setup sheets. No two assemblies may have the same assembly number, revision and version.

### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("ASSEMBLY CONFIGURATION")

:::

Screen Activity

Assembly Configuration 
enables user to perform the following activity:
- Create, view, update and delete Assemblies

- Enable Alias to Assembly


#### Pre Condition


The following data needs to be pre-configured before user configures Assemblies: 

- BOM


#### Screen Dependency


The following screen(s) has direct dependency with Assembly Configuration

- Document

- Next Number

- Setup Sheet

- WIP Release

- Lot Release


#### **Page Screenshot** 


WIP Assembly:
![](/.attachments/41058415.png)




Lot Assembly:
![](/.attachments/41058416.png)



User is able to create an assembly for lot/batch material so that it can be used to setup the Manual Station Part Allocation. If user creates an assembly for lot/batch material, the assembly revision and assembly version fields will be blank and disabled. If there is already an active assembly configuration for the lot material, user cannot create a new assembly for the same lot material. The assembly number for lot/batch material must be the same as the lot/batch material name so once the assembly is created, the material field will be disabled. For lot/batch assembly, 
Panel Type is 'None' and disabled.

![image2019-7-26_11-37-27.png](/.attachments/53772515.png)


User is able to configure Assembly as Alias by turning ON or OFF the flag. The Alias’ flag is default to off. User is NOT allowed:

- To turn OFF the Alias Flag if any WIP assigned to it


- To Delete Assembly that with Alias turned ON if the Assembly has been assigned to any WIP



- To turn OFF Active Status if the Assembly has been assigned to any WIP


- If the Material Release type of Assembly material is "Progression Serial Number"

Alias Assembly will not show on the operation screen if the Assembly is expired or turn OFF the Active Status.
Only allow user to enable the Alias flag if the following criteria fulfilled:

- SAP material type is FERT or HALB or ZRMA or others

- Material type is WIP

- Assembly is not associated with any route ( Repetitive or Lot Batch)

- Assembly is not associated with any setup sheet

- Assembly is not associate with any next number

- Material/ Assembly should not configure for Attribute Assignment

- Material has no Data Collection configured



#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Assembly Number*</p></td><td class="confluenceTd"><p><span>The Assembly Number, the unique name for the assembly is the combination of the Number + Revision + Version</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Customer/Division*</span></td><td colspan="1" class="confluenceTd"><span>To indicate the assembly belongs to specific Customer/Division</span></td></tr><tr><td colspan="1" class="confluenceTd">Material*</td><td colspan="1" class="confluenceTd">To indicate the serialized/unserialized material for assembly.</td></tr><tr><td class="confluenceTd"><p>BOM*</p></td><td class="confluenceTd"><span>To indicate the assembly belongs to specific BOM</span></td></tr><tr><td colspan="1" class="confluenceTd">Valid From*</td><td colspan="1" class="confluenceTd">Can be any value in the range between the BOM's ' Valid From' to 'Valid To' dates. Date is defaulted to the BOM's “Valid From” date if the BOM's “Valid From” is current date or after current date. <p>Date is defaulted to current date if the BOM's “Valid From” is before current date. </p>The user can not modify the valid from date <span style="color: rgb(34,34,34);">after WIP/lot has been released for that revision</span></td></tr><tr><td colspan="1" class="confluenceTd">Valid To*</td><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);"><span style="color: rgb(34,34,34);">"Valid To" cannot be before current date and 'Valid From' & cannot be after BOM's 'Valid To'. </span></span>The “Valid To” date is defaulted to the BOM's “Valid To” date.</td></tr><tr><td colspan="1" class="confluenceTd">From Lot/Batch Material</td><td colspan="1" class="confluenceTd"><ul><li>Field is only visible if "Material" type = WIP</li><li>The <span style="color: rgb(34,34,34);">Lot/Batch Material part number (unserialized) which will be serialized to become the WIP assembly.</span></li><li>Lot/Batch Material part number needs to be different with WIP Material part number</li><li>Lot/Batch material must be an item in the WIP assembly BOM (1st Level BOM)</li><li>WIP Assembly cannot be a Panel</li><li><span style="color: rgb(0,51,102);">After "From Lot/Batch Material" is configured, the next time a new WIP is released for that assembly, the “From Lot/Batch Material” configuration will be locked</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Assembly Revision*</td><td colspan="1" class="confluenceTd"><span>To indicate the Assembly Revision</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembly Version*</td><td colspan="1" class="confluenceTd"><span>To indicate the Assembly Version</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Number</td><td colspan="1" class="confluenceTd">The Number provide by the customer</td></tr><tr><td colspan="1" class="confluenceTd">Customer Revision</td><td colspan="1" class="confluenceTd"><span>The Revision provide by the customer</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembly Description*</td><td colspan="1" class="confluenceTd">The Assembly Description</td></tr><tr><td colspan="1" class="confluenceTd">Panel Type</td><td colspan="1" class="confluenceTd">if the assembly required a Panel type</td></tr><tr><td colspan="1" class="confluenceTd">Build Status</td><td colspan="1" class="confluenceTd"><p>There are two options:</p><ul><li>Engineering<span style="font-size: 10.0pt;line-height: 13.0pt;"> (non-production assembly)</span></li><li>Production<span style="font-size: 10.0pt;line-height: 13.0pt;"> (production assembly, available for packout)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Active Status</td><td colspan="1" class="confluenceTd">Two possible options ON (activate) / OFF (Deactivate). By default is ON</td></tr><tr><td colspan="1" class="confluenceTd">Alias</td><td colspan="1" class="confluenceTd">Two possible options ON (activate) / OFF (Deactivate). Default is OFF</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd"><p>Optional to configure. Will show for configuration if selected material is belong to Repetitive process Type and Assigned Serial Number release type (configured in material).</p><ul><li>If configured, system will match with provided WIP serial number with Assembly Validation Mask pattern during WIP generation.</li><li>If not configured, system will work as per existing to match with provided WIP serial number with Material Validation Mask pattern during WIP generation.</li></ul></td></tr></tbody></table>

**Can be any value in the range between the BOM's ' Valid From' to 'Valid To' dates. Date is defaulted to the BOM’s “Valid From” date if the BOM's “Valid From” is current date or after current date.**  
Date is defaulted to current date if the BOM's “Valid From” is before current date. 
The user can not modify the valid from date after WIP/lot has been released for that revision
Valid To\*"Valid To" cannot be before current date and 'Valid From' & cannot be after BOM's 'Valid To'. 
The “Valid To” date is defaulted to the BOM’s “Valid To” date.From Lot/Batch Material
- Field is only visible if "Material" type = WIP

- The
Lot/Batch Material part number (unserialized) which will be serialized to become the WIP assembly.

- Lot/Batch Material part number needs to be different with WIP Material part number

- Lot/Batch material must be an item in the WIP assembly BOM (1st Level BOM)

- WIP Assembly cannot be a Panel

- After "From Lot/Batch Material" is configured, the next time a new WIP is released for that assembly, the “From Lot/Batch Material” configuration will be locked

Assembly Revision\*To indicate the Assembly RevisionAssembly Version\*To indicate the Assembly VersionCustomer NumberThe Number provide by the customerCustomer RevisionThe Revision provide by the customerAssembly Description\*The Assembly DescriptionPanel Typeif the assembly required a Panel typeBuild StatusThere are two options:

- Engineering
(non-production assembly)

- Production
(production assembly, available for packout)
Active StatusTwo possible options ON (activate) / OFF (Deactivate). By default is ONAliasTwo possible options ON (activate) / OFF (Deactivate). Default is OFFValidation MaskOptional to configure. Will show for configuration if selected material is belong to Repetitive process Type and Assigned Serial Number release type (configured in material).

- If configured, system will match with provided WIP serial number with Assembly Validation Mask pattern during WIP generation.

- If not configured, system will work as per existing to match with provided WIP serial number with Material Validation Mask pattern during WIP generation.


#### Attachments

[image2018-9-14_13-20-45.png](/.attachments/35356778.png)
[image2019-1-17_8-58-2.png](/.attachments/41058415.png)
[image2019-1-17_9-1-45.png](/.attachments/41058416.png)
[image2019-7-26_11-37-27.png](/.attachments/53772515.png)
