# Introduction

**Usage:** 
($Errors, $Result) = IsilonUnlinkHDD ($ContainerType, $MaxItemPerContainer);

**Description:** **Hard drive Unlink via a Popup Form (Customer specific to Isilon).** 

<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Function Arguments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><pre>$ ContainerType</pre></td><td class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"> </td></tr><tr><td class="confluenceTd"><pre>$ MaxItemPerContainer</pre></td><td class="confluenceTd"><p align="center">int</p></td><td class="confluenceTd"><p> </p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Return Parameters</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td class="confluenceTd"><p>$Result</p></td><td class="confluenceTd"><p>String</p></td><td class="confluenceTd"><p>Pass, Fail, Abort</p></td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $Result) = IsilonUnlinkHDD (“Pallet”, 12);
