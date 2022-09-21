# Introduction

**Usage:** 
($Errors, $TestStatus) = E($UseSampling, $DataCollectionName);


**Description:** **Allows the user to build, via a popup form, a Phoenix data collection of parametric data about this test** 

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><p>$UseSampling</p></td><td style="text-align: center;" class="confluenceTd"><p align="center"><strong>Bool</strong></p></td><td class="confluenceTd"><p>Is the Wip at this Operation subject to sampling?</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>$ DataCollectionName</p></td><td colspan="1" style="text-align: center;" class="confluenceTd"><p align="center">String </p></td><td colspan="1" class="confluenceTd"><p>Name of the Data Collection you intend to add data to</p></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" style="text-align: center;" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td style="text-align: center;" class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td colspan="1" class="confluenceTd">$<span>TestStatus</span></td><td colspan="1" class="confluenceTd">Enum</td><td colspan="1" class="confluenceTd">Pass, Fail, Abort</td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $TestStatus) = GetDataCollectionByName(True, MyDataCollectName);
($Errors, $TestStatus) = GetDataCollectionByName(False, MyDataCollectName);
