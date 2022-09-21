# Introduction

This rule allows a WIP to be sent to a target route step at the at the percentage of the chance as configured by the user. When a WIP passes a route step, there is a certain percent of chances that it will be sent to a different route step than the default Pass route step.
<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight confluenceTd" colspan="1"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" rel="nofollow">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight confluenceTd" colspan="2">Routing Parameter</td></tr><tr><td class="confluenceTd">Sampling Percentage</td><td class="confluenceTd">How many percent of WIPs will be sent to destination of this rule.</td></tr></tbody></table>

**Sample Scenario:**  
After completing the "QC" route step, user wants to send 20% of the completed WIPs for further Audit in "Audit" route step for WIPs of "Lion" Product Family.**Sample Configuration:** 
Configure the Routing Rule at "QC" with Destination Operation of "Audit" and below parameters.<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th><th colspan="1" class="confluenceTh">Sampling Percentage</th></tr><tr><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd">Lion</td><td class="confluenceTd"><em>blank </em></td><td colspan="1" class="confluenceTd">20</td></tr></tbody></table>

**Result:**  
Each time a WIP of "Lion" Product Family passes the "QC" route step, there is a 20% chance that it will be sent to the "Audit" route step.