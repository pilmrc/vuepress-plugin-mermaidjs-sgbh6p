# Introduction

**Usage:** 
($Errors, $HoldStatus) = DeleteWipHold($SerialNumber $MaterialName, $CustomerName, $Comments);


**Description:** **Verifies the Serialized Material you passed in exists for the customer and serial number.** 

<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Function Arguments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$SerialName</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"><p> </p></td></tr><tr><td class="confluenceTd"><p>$MaterialName</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"> </td></tr><tr><td class="confluenceTd"><p>$CustomerNumber</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"> </td></tr><tr><td class="confluenceTd"><p>$Comments</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"><p> </p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Return Parameters</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td class="confluenceTd"><p>$HoldStatus</p></td><td class="confluenceTd"><p>Bool</p></td><td class="confluenceTd"><p>True or False</p></td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $HoldStatus) = DeleteWipHold(“S12510001” , “403-0093-01”, “Isilon”, “Some Comments Here”);

