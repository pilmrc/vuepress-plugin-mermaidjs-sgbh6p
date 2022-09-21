# Introduction

**Usage:** 
($Errors, $SerializedMaterial) = GetSerializedMaterial($MaterialName, $CustomerName, $MaterialName, $SerialNumber);


**Description:** **Verifies the Serialized Material you passed in exists for the customer and serial number.** 

<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Function Arguments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$CustomerName</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"><p> </p></td></tr><tr><td class="confluenceTd"><p>$MaterialName</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"> </td></tr><tr><td class="confluenceTd"><p>$SerialNumber</p></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"> </td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Return Parameters</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td class="confluenceTd"><p>$SerializedMaterial</p></td><td class="confluenceTd"><p>String</p></td><td class="confluenceTd"><p>Serialized Material object or False (if none found)</p></td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $SerializedMaterial) = GetSerializedMaterial(“Isilon”, “031-0025-01$”, “S12510001”);

