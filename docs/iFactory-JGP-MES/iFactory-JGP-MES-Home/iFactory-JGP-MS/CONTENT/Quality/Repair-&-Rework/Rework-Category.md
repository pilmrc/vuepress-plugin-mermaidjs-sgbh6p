# Introduction

Rework Category is used to group Rework Types.



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("QUALITY")
0-->1("REWORK CATEGORY")

:::

Screen Activity

Rework Category Maintenance enables user to perform the following activity:

- Create, view, update and delete Rework Category




#### **Screen Dependency**  



- Inspection and Rework Station



#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Rework Category Name</p></td><td class="confluenceTd"><p>The unique name given to the Rework Category</p></td></tr><tr><td class="confluenceTd">Rework Category Description</td><td class="confluenceTd">Additional description for the Rework Category can be entered in this field</td></tr><tr><td class="confluenceTd"><p>Global Rework Category ID</p></td><td class="confluenceTd"><p>A unique numerical ID given to each Rework Category</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Replacement</td><td colspan="1" class="confluenceTd"><p>To indicate that this Rework Category is a Replacement Type. <br />If enabled, at rework, operator will be prompted to enter a replacement identifier (the material serial number that replaces the defective material).<br />If disabled, at rework, operator will not be prompted to enter a replacement identifier.  </p><p>The "Is Replacement" rework category will only be available for rework operator to select if the material being reworked is an assembled material. <br />Operator can still log defect against non-assemble material in the BOM. At rework, all Rework Categories created that has "Is Replacement" enabled will not be available for selection. <br /><span>This is simply because non-assemble material does not have a replacement identifier.<br /><br />Example configuration<br /></span></p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh">Rework Category Name</th><th class="confluenceTh">Is Replacement flag</th></tr><tr><td class="confluenceTd">Replacement</td><td class="confluenceTd">TRUE</td></tr><tr><td colspan="1" class="confluenceTd">Repair</td><td colspan="1" class="confluenceTd">FALSE</td></tr></tbody></table></div><p>Example WIP BOM for Material-A</p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh">BOM Item</th><th class="confluenceTh">Description</th><th colspan="1" class="confluenceTh">Require to assemble</th></tr><tr><td class="confluenceTd">400-0011-01</td><td class="confluenceTd">Chassis</td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td colspan="1" class="confluenceTd">112-1288-89</td><td colspan="1" class="confluenceTd">Label</td><td colspan="1" class="confluenceTd">No</td></tr></tbody></table></div><p>At Rework, operator needs to rework 400-0011-01. Since this is an assembled material, system will display Rework Category "Replacement" & "Repair" for operator selection. <br />If operator selects Rework Category "Replacement", operator is required to enter a replacement material identifier. <br />If operator selects Rework Category "Repair", no replacement material identifier will be prompted. <br /><span><br />If operator needs to rework <span>112-1288-89, s</span>ince this is a non assemble material, system will display Rework Category "Repair" for operator selection only.</span></p><p><span><br /></span></p></td></tr></tbody></table>








<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Rework Category Name</th><th class="confluenceTh">Is Replacement flag</th></tr><tr><td class="confluenceTd">Replacement</td><td class="confluenceTd">TRUE</td></tr><tr><td colspan="1" class="confluenceTd">Repair</td><td colspan="1" class="confluenceTd">FALSE</td></tr></tbody></table>

Example WIP BOM for Material_A
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">BOM Item</th><th class="confluenceTh">Description</th><th colspan="1" class="confluenceTh">Require to assemble</th></tr><tr><td class="confluenceTd">400-0011-01</td><td class="confluenceTd">Chassis</td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td colspan="1" class="confluenceTd">112-1288-89</td><td colspan="1" class="confluenceTd">Label</td><td colspan="1" class="confluenceTd">No</td></tr></tbody></table>

At Rework, operator needs to rework 400-0011-01. Since this is an assembled material, system will display Rework Category "Replacement" & "Repair" for operator selection. 

If operator selects Rework Category "Replacement", operator is required to enter a replacement material identifier. 
If operator selects Rework Category "Repair", no replacement material identifier will be prompted. 

If operator needs to rework 112-1288-89, since this is a non assemble material, system will display Rework Category "Repair" for operator selection only.


