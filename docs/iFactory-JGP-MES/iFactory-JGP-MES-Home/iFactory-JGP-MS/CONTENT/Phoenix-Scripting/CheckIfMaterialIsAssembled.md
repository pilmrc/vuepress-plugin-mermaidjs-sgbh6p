# Introduction

**Usage:** 
$AssembledQuantity = CheckIfMaterialIsAssembled($MaterialName,$MaterialPlantCode,$OptionalSerialNumber);

**Description:** This function allows you to find the qty of a material currently assembled. 


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$MaterialName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd">Name of the Material</td></tr><tr><td colspan="1" class="confluenceTd">$PlantCode</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String </strong></td><td colspan="1" class="confluenceTd"><p>Plant Code of the Material</p></td></tr><tr><td colspan="1" class="confluenceTd">$OptionalSerialNumber</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Serial Number</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$AssembledQuantity</td><td style="text-align: center;" class="confluenceTd"><strong>Integer</strong></td><td class="confluenceTd">Qty of the item currently assembled</td></tr></tbody></table>


**Usage Example(s):** 
$AssembledQuantity = CheckIfMaterialIsAssembled("Material123","TN01","123-456-789");
