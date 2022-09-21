# Introduction

This rule allows a WIP to be sent to a target (destination) route step if a production order attribute is found in the WIP's Production Order. Production Order Attribute can be viewed in Production Order Details screen under the "Attributes" tab. 


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight confluenceTd" colspan="1"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" rel="nofollow">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight confluenceTd" colspan="2">Routing Parameter</td></tr><tr><td class="confluenceTd">Attribute Name</td><td class="confluenceTd">Production Order's Attribute Name that needs to be found in the WIP's Production Order for this rule to be triggered</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd">An additional condition where the WIP will only be routed if its Production Order Attribute Name <u>and</u> Attribute Value matches</td></tr><tr><td colspan="1" class="confluenceTd">Completion Status</td><td colspan="1" class="confluenceTd"><p>An additional condition of "PASS" or "FAIL" operation status obtained when the WIP completes the operation at the route step.</p><p>Example: If the Completion Status configured is PASS. If a WIP completes the operation with a "FAIL", this rule will NOT be triggered even if the Production Order Attribute/Value matches.</p></td></tr></tbody></table>

***Sample Scenario:***  
After completing the "QC" route step with a **PASS** 
, user wants to send the WIP to "Packout" step if the WIP is from a Production Order that has Attribute = "**ScheduledShipDate** 
" and Value = "**20170203** 
". This rule will apply to any WIP that is processed at "QC" route step.**Sample Configuration:** 
Configure the Routing Rule at "QC" with Destination Operation of "Packout" and below parameters.

**ProdOrder-Rule Parameter** <table class="confluenceTable"><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th><th colspan="1" class="confluenceTh">Attribute</th><th colspan="1" class="confluenceTh">Value</th><th colspan="1" class="confluenceTh">Status</th></tr><tr><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd"><em>blank </em></td><td class="confluenceTd"><em>blank </em></td><td colspan="1" class="confluenceTd">ScheduledShipDate</td><td colspan="1" class="confluenceTd">20170203</td><td colspan="1" class="confluenceTd">Pass</td></tr></tbody></table>

**ProdOrder-Destination Operations** 
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Operation</th></tr><tr><td class="confluenceTd"><em>Packout</em></td></tr></tbody></table>

**Result:**  
Each time a WIP passes the "QC" route step, system will evaluate if the WIP's Production Order Attribute = "
**ScheduledShipDate** 
" and Value = "**20170203** 
". If yes, then the WIP will be routed to "Packout" step.

