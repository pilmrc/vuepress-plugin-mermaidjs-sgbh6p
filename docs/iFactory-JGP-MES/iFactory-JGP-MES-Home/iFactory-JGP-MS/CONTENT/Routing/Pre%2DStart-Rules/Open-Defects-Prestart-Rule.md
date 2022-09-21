# Introduction

This rule verifies that a WIP do not contain any open defects.
<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight confluenceTd" colspan="1"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" rel="nofollow">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ParamRel" rel="nofollow">Parameter Inter-relationship</a></td><td class="confluenceTd">Mutual Exclusive</td></tr><tr><td class="highlight confluenceTd" colspan="2">Verification Parameters</td></tr><tr><td colspan="2" class="confluenceTd">N/A</td></tr></tbody></table>

**Sample Scenario:**  
After QC route step, user needs to pack a WIP at the next route step "Packout". It is important to pack the WIP only if it does not contain any open defect, because an open defect indicates that there are still outstanding issues with the WIP. All WIPs for Customer "Zeus" must be clear of open defect before they can be packed.**Sample Configuration:** 
Configure the Pre-Start Rule at the Packout route step with below parameters.<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th></tr><tr><td class="confluenceTd">Zeus</td><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd"><em>blank</em></td></tr></tbody></table>

**Result:**  
All WIPs belonging to Customer "Zeus" will be prevented from being started at Packout route step if they contain open defects.
