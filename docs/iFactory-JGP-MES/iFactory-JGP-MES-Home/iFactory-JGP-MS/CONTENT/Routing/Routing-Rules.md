# Introduction

Routing rules determine the next route step for a WIP to continue towards upon completion, both Pass and Fail, of the current route step. Different routing rules direct the WIP movement based on different conditions. 


### How to get there?





::: mermaid
graph LR
A("ROUTE")
:::
-->0("ROUTE DESIGNER TAB")
0-->1("PRESS ON EDIT BUTTON AND SELECT ROUTING RULES TAB")
![image2019-7-10_21-13-45.png](/.attachments/51872182.png)




#### Screen Activity


The routing rule package enables end users to perform the following activities:

- View, Add, Edit and Delete Routing Rules and their parameters

- Arrange Routing Rules in priority


#### Screen Dependency


The following screen(s) have a direct dependency with the routing rules package.

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)


#### Pre Condition



The following data needs to be pre-configured (if used) before an end user configures the pre-start rules package.

- Material's Product Family and Customer

- Route and Route Step


#### Fields/Functions


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field Name</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Priority</p></td><td class="confluenceTd"><p>Priority to execute each rule. The smaller the number, the higher the priority, the earlier the verification will be executed.</p></td></tr><tr><td class="confluenceTd"><p>Rule Type</p></td><td class="confluenceTd"><p>Identifier of each rule type.</p></td></tr><tr><td class="confluenceTd"><p>Rule Name</p></td><td class="confluenceTd"><p>User specified name for each configured Pre-Start Rule. Needs to be unique within a Route Step. Same Rule Type must be separate by different Rule Names.</p></td></tr><tr><td colspan="1" class="confluenceTd">Prompt Current Operator</td><td colspan="1" class="confluenceTd"><p>Option to allow user to manually select the next route step when there are multiple destination route steps available. Not applicable for <span style="font-size: 10.0pt;">Packout, </span><span style="font-size: 10.0pt;">OBA sampling and </span><span style="font-size: 10.0pt;">Audit Checklist stations.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">Possibility to inactivate a rule without deleting the configuration.</td></tr><tr><td colspan="1" class="confluenceTd">Destination Operation</td><td colspan="1" class="confluenceTd">The next route step to send the WIP to if the routing rule is applicable to the WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Application Scope</td><td colspan="1" class="confluenceTd">Determines whether the configured parameter needs to be executed against current WIP</td></tr><tr><td colspan="1" class="confluenceTd">Routing Parameter</td><td colspan="1" class="confluenceTd">Required input parameter to validate the applicability of the routing rule to the WIP.</td></tr></tbody></table>




#### Rule Type by Route process type


Based on route process type, this is the list of Rule type available
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Rule Type</th><th class="confluenceTh">BTO/CTO</th><th class="confluenceTh">Repetitive</th><th class="confluenceTh">Lot Production</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Default Pass Rule</span></td><td style="text-align: center;" class="confluenceTd"><p><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd">Default Fail Rule</td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Basic Random Sampling</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Return to Last Failed Step</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By Defect</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By Failure</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By Material</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By Mismatched WIP Attribute</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p>Route By Production Order Attribute</p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By Sampling</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Route By SubComponent</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><p>Route By WIP Attribute</p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Return Enqueued Step Last Pass</span></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table>













#### Rule Parameters


Each Routing Rule can contain multiple Parameters. Each parameter typically consists of 2 portions. The first portion is the Application Scope, which is a first layer filter which tells the system whether the completed WIP needs to be checked against the Routing parameter by comparing the WIP Customer, Product Family or Material. The second part is the Routing parameter, which is the critical element that defines the characteristic of each rule and is required to determine the applicability of the rule. Here's a sample of a typical Rule Parameter configuration screen.
![image2019-7-10_21-19-42.png](/.attachments/51872183.png)




#### Application Scope


Application scope tells whether the started WIP needs to be checked against the parameter. Typically application scope contains 3 fields: "Customer", "Product Family" and "Material + Plant Code". In each parameter, only one of the 3 fields need to be configured. Configuring more than 1 fields serves no purpose other than using the broader scope field to narrow down the selection in the narrower scope field. E.g. If user select the "Customer", only Product Family and Material that belongs to the selected Customer will be available for selection for those 2 fields.
**Blank Scope Applies to all WIPs -**  
Many rules allow all 3 fields to be left as blank within a scope, which means that the parameter would apply to all WIPs regardless of the Customer, Product Family or Material of the WIPs. Different rules contain different Application Scope. Not all of them contain all the 3 fields stated above, depending on the design of the Pre-Start Rule.


#### Parameters Inter-relationship


Routing Rule parameters always behave in a mutually exclusive behavior, where
only 1 parameter shall ultimately be used to determine whether the WIP needs to be verified against the Routing parameter to apply the routing rule. Where more than multiple rules with different range in scope applies to the WIP, 3 Tier Hierarchical Scope Priority Rules apply would be use to select the narrowest scope parameter.
3 Tier Hierarchical Scope Priority Rules
In a scenario where there are multiple parameters applying to the started WIP in a Mutual Exclusive relationship, system need to choose the parameter that contains the narrowest application scope as the parameter to check the started WIP. 

E.g. 4 parameters is configured for a Pre-Start Rule. Parameter A have all 3 fields left blank, which means the parameter applies to all WIPs. Parameter B has Customer configured, Parameter C has Product Family configured and Parameter D has Material configured. In terms of scope from broadest to narrowest we have Parameter A " B " C " D. If a started WIP matches all 4 parameters, system will choose parameter with the narrowest scope which is Parameter D to run the verification.

#### How it works


Every time a WIP completes a route step, system will process through the configured routing rules on that route step, starting from the highest priority, to determine if any of those routing rules should apply to the WIP. When determining the applicability, system first filter through the application scope to find that one parameter that matches the WIP, then validate the Routing parameter to confirm the applicability. When a rule is found to be applicable, system will immediately place the WIP in queue at the route step(s) configured in the Destination Operation list of that rule. Any lower priority routing rules not yet processed at that point will be ignored.



#### Re-evaluate Inqueue WIP by Routing Rule Change


(CAUTION: The WIP in queue re-evaluation no matter how will impact the WIP In queue table, therefore it will impact the performance while scanning at operation during re-evaluation process. So, It's important to set the expectation to end user to preferably do this during downtime or lunch time)  
To re-evaluate in queue WIPs can be accomplish by update the routing rule on a step. This enhancement only applicable for Repetitive route when “Re-evaluate Inqueue WIP by Routing Rule Change” flag is set to ON at Customer’s Configuration Options tab. (Caution: Advisable to perform this feature in re-factor route screen. Do not activate it in old route screen, as the feature is not fully supported.)  
During re-evaluate process, system will prompt to inform total WIPs will affecting by this change. User has option to click Yes for proceed the WIP updating or click No for cancel to revert. Both action will incurred a back end process to update WIP/release WIP 1k at a time in order not to causing WIP In queue table busy timeout issue.  The WIP will be sort in ascending order (first in first out by WIPId). The 1
st1K updated WIP will be release from locked and able to continue the operation. Therefore, it should shorten the delay at operator side. If operator scan any of the locked WIP at operation screen, system will notify user that this WIP is re-evaluating due to performing route maintenance by "who", no operation is allowed and user is advice to try later. (Note: WIP inqueue service schedule job will checking every 1 min.)On the other hand, no changes is allow to make at same route while WIP is updating. Once all WIPs updated completely, the route will be release to allow user to make changes. An email will sent to inform the person who make the routing rule change. As per our testing, It takes approximately 8min to update 100K of WIPs with a change from 24 destination steps to 25 destination steps. This timing may be differ depending on the frequency of scanning WIP at any stations while the WIP In queue table is updating.
Adding new adhoc routing rule on current route step will NOT re-evaluate the WIP Inqueue. However, changes on existing routing rule will trigger the WIP Inqueue action. Default Pass and default fail rule are default routing rule, therefore updating both rules will modify WIP Inqueue step based on the modification made. (Please check below Adhoc Routing Rule Scenario A)
Upon saving, system will re-evaluate all WIPs which currently inqueue at “old destination” route step(s) and it’s Last Scan Route step is current route step. The following WIP re-evaluate rule will be aply:
A. Same Old Destination behavior
Source Step Name: A
Old Destination Step Name: B
New Destination step Name: C

Case 1: A to B with 1 routing rule (any type)
Result: Move all WIP coming from A and in queue in B change to C

Case 2: A to B with 2 routing rule (Default Pass and Default Fail)
Result: Move those WIPs which is coming from A and in queue in B base on WIP status:

- If status in A was fail, move those WIP to C only if changing Default Fail rule

- If status in A was Pass, move those WIP to C only if changing on Default Pass rule.
(Note: Abort WIP will not be take into account)
Case 3: A to B with 2 or more routing rule (Adhoc rule that not in Case 2: could be more than 1 adhoc rules have same old destination scenario or at least 1 Default Pass/Fail rule + 1 or more adhoc routing rule scenario.)
Result: System will warn the user as it is not possible to evaluate the WIP and no WIP shall updated after successfully change new destination step on the rule. (Sample: "No WIP Inqueue will modify against this routing rule change as multiple routing rule have common destination step defined"). Since adhoc rule can be set as active/inactive, the mention behavior should only apply to the adhoc rule when is set as active. If the adhoc rule is set to inactive, then no re-evaluate WIP on inactive adhoc rule and default routing rule will –re-evaluate WIPs without consider on inactive adhoc rule.
B. End Route Step behavior
When WIP(s) processed in end route step (where originally no routing rule defined, not even default Pass/Fail rule), it will be enqueued to nowhere. Now, if user modifies the step with a destination step against any routing rule, system will update WIP(s) enqueued station as new destination step defined in last route step. No WIPs should get updated to new route step if this route step is not end route step. 
**For example:** A route step didn’t configured default pass but with default fail configure to Rework. While updating default pass to MIE, since this is not considered as end route step, WIP with blank inqueue will not update to new MIE route step.(Note: In new refactor route screen, system will save each time changes made on the routing rule. To avoid the WIP did not update due to above mention scenario, system will not allow deleting destination route step to blank if there is any WIP impact. User is advice to use modify action instead. If the step has no WIP impact then system will allow to delete destination to blank.)
C. Basic WIP update behavior 
Below are some examples that expected the WIP will be change accordingly once the route save successfully.
Original Route step
Step A --" Step B --" Step C
Original WIP status
WIP 1 is inqueue at A
WIP 2 is inqueue at B
WIP 3 is inqueue at C
WIP 4 is inqueue at B, but was re-route by WIP Maintenance to B.
WIP 5 complete at C no inqueue

*Original route change - add additional route step D scenario* 
Step A --" Step B --" Step C and
Step A --" Step D 
After commit change and save route. System will prompt to inform if there is WIP(s) will be impact by this change.
WIP 1 is inqueue at A
WIP 2 is inqueue at B and D
WIP 3 is inqueue at C
WIP 4 is inqueue at B, no change due to it is not come from A.

(Another scenario could be the other way round, A --" “B or D” --" C change to A --" B --" C
Then it will become WIP 2 inqueue at B (removed inqueue at D))


*Original route change - add additional route step at last step scenario* 
Step A --" Step B --" Step C --" Step D
After commit change and save route. System will prompt to inform if there is WIP(s) will be impact by this change.
WIP 1 is inqueue at A
WIP 2 is inqueue at B
WIP 3 is inqueue at C
WIP 4 is inqueue at B, no change due to it is not come from A.
WIP 5 (Completed at C) is inqueue at D


*Original route change - update routing rule from A to C route step scenario* 
Step A --" Step C (B --" C connection is still there)
After commit change and save route. System will prompt to inform if there is WIP(s) will be impact by this change.
WIP 1 is inqueue at A
WIP 2 is inqueue at C
WIP 3 is inqueue at C
WIP 4 is inqueue at B, no change due to it is not come from A.


*Original route change - remove routing rule from B to C, B become last route step scenario* 
Step A --" Step B (become last step)
After commit change and save route. (Note: new refactor route only able to delete destination to blank if no WIP is impact.)
WIP 1 is inqueue at A
WIP 2 is inqueue at B
WIP 3 need to move to other step first before this change.
WIP 4 is inqueue at B, no change due to it is not come from A.


*Original (Adhoc Routing Rule Scenario A)* 
Step A  --" default pass Step B, WIP 1
--" default fail Step C and D,  WIP 2 (not meet new add rule defect criteria) and WIP 3 (meet new add rule defect criteria)

New change: --" (New add) adhoc rule 1 (defect) Step C
WIP 1 inqueue at Step B (No change)
WIP 2 inqueue at Step C and D (No change)
WIP 3 inqueue at step C and D (
No change on adding new rule it should impact on next WIP while processing from Step A)The scope is to update existing routing rule that impact the WIP, therefore new added adhoc rule 1 will not affect existing WIP. 
(Note: Update Default Pass and Default Fail is not consider adding new adhoc routing rule as both are defaulted to have.)


*Original (Adhoc Routing Rule Scenario B)* 
--" rule 1 (Exiting) priority rule 1 (defect) Step D and E 
Step A  --" rule pass Step B 
--" rule fail Step C 
and the WIP are:
WIP 1 inqueue at Step B
WIP 2 inqueue at Step C 
WIP 3 inqueue at Step D and Step E

New change:
If the rule 1 is change to Step E and Step F
WIP 1 inqueue at Step B (No change)
WIP 2 inqueue at Step C (No change)
WIP 3 change inqueue to Step E and Step F


*Original (Adhoc Routing Rule Scenario C)* 
--" rule 1 (Exiting) priority rule 1 (defect) Step C 
Step A  --" rule pass Step B 
--" rule fail Step C and E
and the WIP are:
WIP 1 inqueue at Step B 
WIP 2 inqueue at Step C and E
WIP 3 inqueue at Step C

New change:
Either change rule 1 or default fail rule from C to D (both rule 1 and default fail have common destination step C, this is align with above Same Old Destination Case 3 scenario)
WIP 1 inqueue at Step B (No change)
WIP 2 inqueue at Step C (No change)
WIP 3 inqueue at Step C (No change)
System will warn the user as it is not possible to evaluate the WIP and no WIP shall updated after successfully change new destination step on the rule.


#### Attachments

[routing rule parameter.PNG](/.attachments/29920033.png)
[image2015-9-29 15:6:23.png](/.attachments/29920034.png)
[image2013-5-14 10:49:27.png](/.attachments/29920035.png)
[image2013-4-16 13:43:46.png](/.attachments/29920036.png)
[image2013-4-16 13:37:2.png](/.attachments/29920037.png)
[image2013-4-16 13:10:13.png](/.attachments/29920038.png)
[image2013-4-16 12:50:43.png](/.attachments/29920039.png)
[image2013-4-16 12:28:40.png](/.attachments/29920040.png)
[image2013-4-16 12:4:27.png](/.attachments/29920041.png)
[image2013-4-16 10:23:51.png](/.attachments/29920042.png)
[image2013-4-16 10:22:14.png](/.attachments/29920043.png)
[image2013-4-16 9:48:6.png](/.attachments/29920044.png)
[image2013-4-15 15:19:41.png](/.attachments/29920045.png)
[image2019-7-10_21-13-45.png](/.attachments/51872182.png)
[image2019-7-10_21-19-42.png](/.attachments/51872183.png)
