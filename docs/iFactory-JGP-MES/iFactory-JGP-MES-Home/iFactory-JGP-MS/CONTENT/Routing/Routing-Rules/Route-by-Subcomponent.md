# Introduction

This rule allows a WIP to be sent to a target (destination) route step if a subcomponent is found in the BOM of the WIP. 


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight confluenceTd" colspan="1"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" rel="nofollow">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight confluenceTd" colspan="2">Routing Parameter</td></tr><tr><td class="confluenceTd">Subcomponent</td><td class="confluenceTd">The material (subcomponent) that is found in the WIP's BOM. It will be reflected as material name & plant code after selection.</td></tr></tbody></table>

**Sample Scenario:**  
After completing the "QC" route step, user wants to send the WIP to "Burn Test" step if subcomponent "006-0030-12" is found in the WIP's BOM. This is only applicable for WIP with Product Family = Lion.**Sample Configuration:** 
Configure the Routing Rule at "QC" with Destination Operation of "Burn Test" and below parameters.

**Subcomponent-Rule Parameter** <table class="confluenceTable"><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th><th colspan="1" class="confluenceTh">Subcomponent</th></tr><tr><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd"><em>Lion</em></td><td class="confluenceTd"><em>blank </em></td><td colspan="1" class="confluenceTd"><span>006-0030-12</span></td></tr></tbody></table>

**Subcomponent-Destination Operations** 
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Operation</th></tr><tr><td class="confluenceTd"><em>Burn Test</em></td></tr></tbody></table>


**Result:**  
Each time a WIP of "Lion" Product Family passes the "QC" route step, system will evaluate if subcomponent "0006-0030-12" is found in the WIP's BOM. If yes, the WIP will be routed to "Burn Test" step. 


