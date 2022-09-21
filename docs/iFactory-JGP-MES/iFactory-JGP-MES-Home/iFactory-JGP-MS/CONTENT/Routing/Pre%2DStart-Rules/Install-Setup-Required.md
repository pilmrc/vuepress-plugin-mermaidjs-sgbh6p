# Introduction

This rule verifies that a WIP/lot can't be started if a setup sheet is configured for Assembly , Route and Route Step but there is no active setup sheet installed at Part allocation for the current Resource. This rule is applicable for Repetitive and Lot/Batch workstation.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><a rel="nofollow" class="external-link" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><a rel="nofollow" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" class="external-link">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">No</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><a class="external-link" href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ParamRel" rel="nofollow">Parameter Inter-relationship</a></td><td class="confluenceTd">Mutual Exclusive</td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">Verification Parameters</td></tr><tr><td colspan="2" class="confluenceTd"><p>N/A</p></td></tr></tbody></table>

**Prestart rule configure to validate setup is installed as below:** 

- The step for the assembly under evaluation doesn’t have any Setup Sheet →
pass
- The step for the assembly under evaluation have Setup Sheet, if all Inactive and Not installed
→pass
- The step for the assembly under evaluation have Setup Sheet, if all Inactive and Installed
→pass
- The step for the assembly under evaluation have Setup Sheet, if at least one Active and Installed
→pass
- The step for the assembly under evaluation have Setup Sheet, if at least one Active and not Installed
→fail**Sample Scenario:** 
At MOE route step, user wishes to confirm that an active setup sheet has been installed at Setup Verification for a WIP before it is allowed to start.**Sample Configuration:**  
Configure the Pre-Start Rule at the MOE route step with below parameters.<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Customer Name</p></th><th class="confluenceTh"><p>Product Family</p></th><th class="confluenceTh"><p>Material Name/Plant Code</p></th></tr></thead><tbody><tr><td class="confluenceTd">Hercules</td><td class="confluenceTd">Blank</td><td class="confluenceTd">Blank</td></tr></tbody></table>

**Result:**  
This configuration will prevent a WIP to start when a setup sheet is configured but not installed at the workstation.
