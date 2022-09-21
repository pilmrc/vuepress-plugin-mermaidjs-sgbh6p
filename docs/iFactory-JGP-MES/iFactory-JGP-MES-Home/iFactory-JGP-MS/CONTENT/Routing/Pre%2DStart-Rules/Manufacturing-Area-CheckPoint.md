# Introduction

This rule verifies that a WIP whether got same MA for configured route steps.
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><a style="text-decoration: none;" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td style="text-align: left;" class="confluenceTd">Customer + Product Family + Material/Plant Code + Route Step</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey"><a rel="nofollow" style="text-decoration: none;" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope">Blank Scope Applies to all WIPs</a></td><td style="text-align: left;" colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><a rel="nofollow" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ParamRel" style="text-decoration: none;">Parameter Inter-relationship</a></td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Apply All</span></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="2" data-highlight-colour="grey">Verification Parameters</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd">Required, Can only search the Customer base on current data partition.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Optional, Filter by Customer.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd">Optional, Filter by Customer and Product Family.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route Step</td><td style="text-align: left;" colspan="1" class="confluenceTd">Required, Allow search and choose a route step. maximum is 10 steps.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Use Current Manufacturing Area</span></td><td colspan="1" class="confluenceTd"><p>If turn on, user need to configure one route step at least. System will use current started step to compare the MA with configured steps in runtime.</p><p>If turn off, user need to configure two route step at lest. System will compare the MA of all the configured steps.</p><p>If all the steps got same MA this rule will pass, else fail.  If missing history of configured steps, it will Fail. System will base on the latest(Pass/Fail) history to calculate. </p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route Step List</td><td style="text-align: left;" colspan="1" class="confluenceTd">display the route steps user added.</td></tr></tbody></table>



**Sample Scenario 1:**  
At QC route step(MA = CM01), user wishes to confirm that any WIP of Product Family "CM-ProductFamily" and Material "MAT-000-A1" and Plant Code "JB01"whether got same MA in 'MOE1' and 'MOE2' steps.**Sample Configuration:**  
Configure the Pre-Start Rule at QC route step with below parameters<table class="confluenceTable"><colgroup><col /><col /><col /><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Customer Name</p></th><th colspan="1" class="confluenceTh">Product Family</th><th style="text-align: left;" class="confluenceTh"><p>Material + Plant Code</p></th><th style="text-align: left;" class="confluenceTh"><p>Use Current Manufacturing Area</p></th><th style="text-align: left;" colspan="1" class="confluenceTh"><p>Route Steps</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Customer01</td><td colspan="1" class="confluenceTd">CM-ProductFamily</td><td style="text-align: left;" class="confluenceTd"><span>MAT-000-A1 + JB01</span></td><td style="text-align: left;" class="confluenceTd">No</td><td style="text-align: left;" colspan="1" class="confluenceTd">MOE1, MOE2</td></tr></tbody></table>


**Result:**  
This configuration will prevent any WIP from being started at QC route step if the MA of 'MOE1'&'MOE2' of WIP are not same.  for example:**Case 1:** 
History of MOE1:
1:  MOE1  CM01(MA)   2021/09/15 13:00:00     Pass
2:  MOE1  CM02(MA)   2021/09/15 13:01:00     Pass

History of MOE2:
1:  MOE2  CM01(MA)   2021/09/15 13:03:00     Pass
Fail, since the MA of latest history of MOE1 is different with MA of latest history of MOE2.

**Case 2:** 
History of MOE1:
1:  MOE1  CM01(MA)   2021/09/15 13:00:00     Pass
2:  MOE1  CM02(MA)   2021/09/15 13:01:00     Abort

History of MOE2:
1:  MOE2  CM01(MA)   2021/09/15 13:03:00     Pass
Pass, since the MA of latest pass/fail history of MOE1 is different with MA of latest history of MOE2. System will only consider Pass/Fail history record.

**Case 3:** 
History of MOE1:
1:  MOE1  CM01(MA)   2021/09/15 13:00:00     Pass
2:  MOE1  CM02(MA)   2021/09/15 13:01:00     Abort

History of MOE2:
1:  MOE2  CM02(MA)   2021/09/15 13:03:00     Abort
Fail, since MOE missing Pass/Fail record for MOE2 step. System will only consider Pass/Fail history record.

**Sample Scenario 2:**  
At QC route step(MA = CM01), user wishes to confirm that any WIP of Product Family "CM-ProductFamily" and Material "MAT-000-A1" and Plant Code "JB01"whether got same MA in 'MOE1'  step.**Sample Configuration:**  
Configure the Pre-Start Rule at QC route step with below parameters<table class="relative-table confluenceTable" style="width: 42.8963%;"><colgroup><col style="width: 16.2612%;" /><col style="width: 19.3342%;" /><col style="width: 21.1268%;" /><col style="width: 30.0896%;" /><col style="width: 13.1882%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Customer Name</p></th><th colspan="1" class="confluenceTh">Product Family</th><th style="text-align: left;" class="confluenceTh"><p>Material + Plant Code</p></th><th style="text-align: left;" class="confluenceTh"><p>Use Current Manufacturing Area</p></th><th style="text-align: left;" colspan="1" class="confluenceTh"><p>Route Steps</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Customer01</td><td colspan="1" class="confluenceTd">CM-ProductFamily</td><td style="text-align: left;" class="confluenceTd"><span>MAT-000-A1 + JB01</span></td><td style="text-align: left;" class="confluenceTd">Yes</td><td style="text-align: left;" colspan="1" class="confluenceTd">MOE1</td></tr></tbody></table>


**Result:**  
This configuration will prevent any WIP from being started at QC route step if the MA of 'MOE1' and current started step(QC) of WIP are not same. For current started step(QC) system will use the MA which selected by login screen to calculate, for example:**Case 1:** 
History of MOE1:
1:  MOE1  CM02(MA)   2021/09/15 13:00:00     Pass
Fail, since the MA of latest history of MOE1 is different with MA of QC.

**Case 2:** 
History of MOE1:
1:  MOE1  CM01(MA)   2021/09/15 13:00:00     Pass
2:  MOE1  CM02(MA)   2021/09/15 13:01:00     Abort
Pass, since the MA of latest history of MOE1 is same with MA of QC.
