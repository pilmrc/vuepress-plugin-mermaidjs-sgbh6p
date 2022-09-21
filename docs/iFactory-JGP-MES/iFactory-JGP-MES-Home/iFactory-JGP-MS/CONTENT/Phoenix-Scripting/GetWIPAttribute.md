# Introduction

**Usage:** 
($found, $attribType, $attribValue) = GetWIPAttribute($attribName);


**Description:** Returns the specified attribute information.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$attribName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The attribute name.</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$found</td><td class="confluenceTd"><strong>Boolean</strong></td><td class="confluenceTd">Whether the specified attribute was found.</td></tr><tr><td colspan="1" class="confluenceTd">$attribType</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">The type of the attribute.</td></tr><tr><td colspan="1" class="confluenceTd">$attribValue</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">The value of the attribute.</td></tr></tbody></table>


**Usage Example(s):** 
$attribName =  ""attribute name"";
($found, $attribType, $attribValue) = GetWIPAttribute($attribName);
