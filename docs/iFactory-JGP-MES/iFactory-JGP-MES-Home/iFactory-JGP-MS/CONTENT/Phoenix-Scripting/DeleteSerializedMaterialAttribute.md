# Introduction

**Usage:** 
($Errors, $Result) = DeleteSerializedMaterialAttribute($SerializedMaterial, $AttributeName);


**Description:** **Delete a serialized material’s attribute.** 

<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Function Arguments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$SerializedMaterial</p></td><td class="confluenceTd"><p align="center">Object</p></td><td class="confluenceTd"><p>Call GetSerializedMaterial to get this object</p></td></tr><tr><td class="confluenceTd"><p>$Atrributeame</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"><p>The name of the attribute you wish to remove</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Return Parameters</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td class="confluenceTd"><p>$Result</p></td><td class="confluenceTd"><p>String</p></td><td class="confluenceTd"><p>Attribute that was removed</p></td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $Result) = DeleteSerializedMaterialAttribute(“$031-0025-01$”, “Voltage”);
