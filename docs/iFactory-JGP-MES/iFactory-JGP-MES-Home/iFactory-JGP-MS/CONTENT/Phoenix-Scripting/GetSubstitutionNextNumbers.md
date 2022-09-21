# Introduction

**Usage:** 
$nextNumbers = GetSubstitutionNextNumbers($NextNumberName, $Quantity, $IsPreview);


**Description:** This function generates next numbers of substitution type.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$NextNumberName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The name of the next number that is a substitution type.</p></td></tr><tr><td colspan="1" class="confluenceTd">$Quantity</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Integer</strong></td><td colspan="1" class="confluenceTd"><p>Number of next numbers to generate.</p></td></tr><tr><td colspan="1" class="confluenceTd">$IsPreview</td><td colspan="1" class="confluenceTd"><strong>  Bool</strong></td><td colspan="1" class="confluenceTd">If this is not to add to the incremented value, then this should be true.</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$nextNumbers</td><td style="text-align: center;" class="confluenceTd"><strong>Array</strong></td><td class="confluenceTd"><p>Returned next numbers</p></td></tr></tbody></table>


**Usage Example(s):** 
$NextNumberName
=  "NextNumberName";$Quantity
= 5;$IsPreview = true;
$nextNumbers = GetSubstitutionNextNumbers($NextNumberName, $Quantity, $IsPreview);
