# Introduction

**Usage:** 
$processStep = AddProcessStep($stepName, $stepGroup, $stepStatus, $elapsedTime);


**Description:** This function adds a process step to the operation's result structure.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$stepName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The name of the process step.</p></td></tr><tr><td colspan="1" class="confluenceTd">$stepGroup</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The group the process step belongs to.</p></td></tr><tr><td colspan="1" class="confluenceTd">$stepStatus</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Process step status.<br />Values: PASS, FAIL, ABORT, PRESENT, STARTED</p></td></tr><tr><td colspan="1" class="confluenceTd">$elapsedTime</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Integer</strong></td><td colspan="1" class="confluenceTd">The amount of time the step took, in ms.</td></tr></tbody></table>



<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$processStep</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The process step created.</td></tr></tbody></table>


**Usage Example(s):** 
stepName
=  ""
process step
"";
$stepGroup
= ""process step group"";
$stepStatus= ""process step status"";
$elapsedTime= 3800;$processStep = AddProcessStep($stepName, $stepGroup, $stepStatus, $elapsedTime);
