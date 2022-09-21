# Introduction

**Usage:** 
($Mask, $Rules) = GetValidationMaskByNamel($MaskName);


**Description:** Retrieve a validation mask object from the Phoenix context and stores it as a script variable.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$MaskName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The Name field from the Phoenix ValidationMasks table</p></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" style="text-align: center;" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" style="text-align: center;" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$Mask</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The validation mask to retrieve</td></tr><tr><td colspan="1" class="confluenceTd">$Rules</td><td colspan="1" class="confluenceTd">Boolean</td><td colspan="1" class="confluenceTd">Returns (False) or (True) based on whether ValidationRules exist for this $Mask</td></tr></tbody></table>


**Usage Example(s):** 
($Mask, $Rules) = GetValidationMaskByNamel($MaskName);
