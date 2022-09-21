# Introduction

**Usage:** 
($testresult, $teststatus) = ExecuteAssembleOperation("PASS", False);


**Description:** This function allows you to assemble for the WIP that is running.  A call here causes the Assemble Operation
form to appear with your WIP information pre-loaded.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><p>ActionOnClosingWithItemsLeftToAssemble</p><p> </p></td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>This is the action taken on the wip when closing the form if there are still items to assemble. The values are</p><p>"PASS", "ABORT", "FAIL".</p></td></tr><tr><td colspan="1" class="confluenceTd">IsBatchMode</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Bool</strong></td><td colspan="1" class="confluenceTd"><p>This value will set the assemble screen in batch mode or not. If IsBatchMode = True, batch mode will be on and many items</p><p>can be assembled on screen without saving. Pressing the Save button in batch mode will submit all the assembled</p><p>items to the database at once. When the IsBatchMode is false, Only one item at a time can be assembled.</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$testresult</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">Failure Error(s)</td></tr><tr><td colspan="1" class="confluenceTd">$teststatus</td><td colspan="1" class="confluenceTd">Boolean</td><td colspan="1" class="confluenceTd">Pass (If no failure errors) Fail (Failure errors exist)</td></tr></tbody></table>


**Usage Example(s):** 
// $symptom comes from another step.
($testresult, $teststatus) = ExecuteAssembleOperation("PASS", False);
