# Introduction

**Usage:** SaveWIPAttribute($attribName, $attribType, $attribValue);

**Description:** This function saves the WIP attribute's value as added by user

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span>$attribName</span></td><td class="confluenceTd">String</td><td class="confluenceTd"><span>The attribute name</span></td></tr><tr><td class="confluenceTd"><span>$attribType</span></td><td class="confluenceTd">String</td><td class="confluenceTd"><span>The type of the attribute. Type consists of (BOOLEAN, STRING, INTEGER, DECIMAL)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>$attribValue</span></td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd"><span>The value of the attribute. Value must be valid as per specified type</span></td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong> <strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><em>None</em></td><td class="confluenceTd"><em>None</em></td><td class="confluenceTd"><p><em>None</em></p></td></tr></tbody></table>

**Usage Example(s):** 
$attribName =  "Color";
$attribType = "String";

$attribValue = "Blue";SaveWIPAttribute($attribName, $attribType, $attribValue);
