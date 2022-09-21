# Introduction

**Usage:** 
($Errors, $Result) = GetNextWip($Divisor, $Remainder);

**Description:** **Returns the nth Wip InQueue.  (Only use for debugging.  Should serve no business purpose.)** 

<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Function Arguments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><pre>$Divisor</pre></td><td class="confluenceTd"><p align="center">Int</p></td><td class="confluenceTd"><pre>Modular division value</pre></td></tr><tr><td class="confluenceTd"><pre>$Remainder</pre></td><td class="confluenceTd"><p align="center">Int</p></td><td class="confluenceTd"><pre> </pre></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><td colspan="3" class="confluenceTd"><p><strong>Return Parameters</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p align="center"><strong>Variable</strong><br /> <strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td class="confluenceTd"><p>$Result</p></td><td class="confluenceTd"><p>Int</p></td><td class="confluenceTd"><p>WipId</p></td></tr><tr><td class="confluenceTd"><p>$Serial</p></td><td class="confluenceTd"><p>String</p></td><td class="confluenceTd"><p>Serial Number</p></td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $Result) = GetNextWip(100, 0);
