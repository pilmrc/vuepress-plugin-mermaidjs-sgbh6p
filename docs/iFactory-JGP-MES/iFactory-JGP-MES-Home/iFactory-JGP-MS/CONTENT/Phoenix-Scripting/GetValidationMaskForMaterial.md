# Introduction

**Usage:** 
($Mask, $Rules) = GetValidationMaskForMaterial($MaterialName, $PlantCode);


**Description:** This function returns 
all validation masks that are assigned to as user specified Phoenix Material.Name and Material.PlantCode.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$MaterialName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The MaterialName field from the Phoenix Materials table</p></td></tr><tr><td colspan="1" class="confluenceTd">$PlantCode</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The PlantCode field from the Phoenix Materials table</p></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" style="text-align: center;" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$Mask</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The validation mask for this material and plant code</td></tr><tr><td colspan="1" class="confluenceTd">$Rules</td><td colspan="1" class="confluenceTd">Boolean</td><td colspan="1" class="confluenceTd">Returns (False) or (True) based on whether ValidationRules exist for this $Mask</td></tr></tbody></table>


**Usage Example(s):** 
($Mask, $Validation) = GetValidationMaskForMaterial($MaterialName, $PlantCode);
