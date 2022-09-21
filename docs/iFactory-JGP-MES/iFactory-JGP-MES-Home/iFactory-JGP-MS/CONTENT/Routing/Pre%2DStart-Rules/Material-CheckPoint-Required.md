# Introduction

This rule verifies that the components assembled in a WIP/LOT matches exactly what is supposed to be assembled as configured in Assemble Station/Manual Station. System performs the match by comparing the assembled material of the WIP/LOT from genealogy with the parameter setup in the Pre-start rule. Route deviation in Deviation screen should have the same configuration. List of materials will be filtered by Customer, Product Family and Assembly Revision.
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><a href="http://usplnd0wiki01:8090/pages/viewpage.action?pageId=39649454#MaterialCheckPointRequired-ApplicationScope">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Assembly / Revision / Version</td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><a href="http://usplnd0wiki01:8090/pages/viewpage.action?pageId=39649454#MaterialCheckPointRequired-BlankScope">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><a href="http://usplnd0wiki01:8090/pages/viewpage.action?pageId=39649454#MaterialCheckPointRequired-ParamRel">Parameter Inter-relationship</a></td><td class="confluenceTd">Mutual Exclusive</td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">Verification Parameters</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>Material to verify with the assembled components. This is a list selection material which retrieved from Setup Sheet (for both Active/Inactive). This is a mandatory field.</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>CRD refer to the material <span>configured above </span>at the Setup Sheet(only Active) of the current Route. This is a list selection CRD according to the configured Material. This is a mandatory field.</p><p>User is able to multiple select the CRD for one route step.</p><p>System allow user choose [All] item for CRD, the logic as below:</p><ul><li>If the <span style="color: rgb(45,46,47);">Unit Of Measure(UOM) of material is 'EA', system will check whether the current WIP already assembled all active CRDs item or not. if no, will block WIP to start.</span></li><li><span style="color: rgb(45,46,47);">If the Unit Of Measure(UOM) of material is not 'EA', system will check whether the current WIP already assembled the sub material or not. if no, will block WIP to start.</span></li></ul></td></tr></tbody></table>



- **Expected Behavior**

**Configuration** 
**:** 
- Customer A, Material A, CRD1

- Customer A, Material B, CRD2

- Customer A, Assembly A, Material C, CRD3

- Customer A, Assembly A, Material D, CRD4
**Runtime Behavior:** 
WIP/LOT: Customer A, Assembly B =" Validate with configuration 1 & 2
WIP/LOT: Customer A, Assembly A ="
Validate with configuration 3 & 4
**Sample Scenario:** 
At Final QC route step, user would like to confirm that all components are assembled as configured in Pre-start rule before they are allowed to perform the final process of the route for WIPs of all materials in Customer "Hercules".**Sample Configuration:**  
Configure the Pre-Start Rule at the Final QC route step with below parameters.<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Customer Name</p></th><th class="confluenceTh"><p>Product Family</p></th><th class="confluenceTh"><p>Material Name/Plant Code</p></th></tr></thead><tbody><tr><td class="confluenceTd">Hercules</td><td class="confluenceTd"> <em>blank</em></td><td class="confluenceTd"><em>blank</em></td></tr></tbody></table>

**Result:**  
This configuration will prevent WIP to be started at Final QC if any of the material and CRD configured do not match those in WIP Genealogy.
