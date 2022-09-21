# Introduction

Some manufacturing process allows operator to restart immediately after it completed process at a Route Step. However, when when unit restarts and fails consecutively at the same route step one too many times, it is usually a sign of a problem with the unit. In this event, it is essential to get supervisor or engineer's attention to the unit and figure out the problem rather than letting the operator retest the unit even more and wasting valuable production time.
This rule verifies that a WIP has not failed more than a certain number of times 
consecutively without visiting other route steps in betweenat the Route Step where the rule is configured. If it has, the rule will then hold the WIP or move it to another route step depending on verification parameter.<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow">Application Scope</a></td><td class="confluenceTd">Customer + Product Family + Material/Plant Code</td></tr><tr><td class="highlight confluenceTd" colspan="1"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope" rel="nofollow">Blank Scope Applies to all WIPs</a></td><td colspan="1" class="confluenceTd">Yes</td></tr><tr><td class="highlight confluenceTd"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ParamRel" rel="nofollow">Parameter Inter-relationship</a></td><td class="confluenceTd">Mutual Exclusive</td></tr><tr><td class="highlight confluenceTd" colspan="2">Verification Parameters</td></tr><tr><td colspan="1" class="confluenceTd">Loop Count Threshold</td><td colspan="1" class="confluenceTd">Maximum number of times a WIP can fail at Pre-Start Rule Route step before action is taken against it</td></tr><tr><td colspan="1" class="confluenceTd">Ignore Abort</td><td colspan="1" class="confluenceTd">When this flag is checked, all process with ABORT status are not considered as a loop count and are not counted against the Loop Count Threshold. Some customer does not wish to factor in an Aborted process as part of the count.</td></tr><tr><td colspan="1" class="confluenceTd">Hold</td><td colspan="1" class="confluenceTd"><p>Yes = Hold the WIP at Pre-Start Rule Route Step</p><p>No = Move the WIP to another Route Step</p></td></tr><tr><td colspan="1" class="confluenceTd">Destination Route Step</td><td colspan="1" class="confluenceTd"><p>The Route Step to move the WIP to when Hold = "No". Only a Route Step within the current Route can be configured.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Consecutive Same Resource Count</span></td><td colspan="1" class="confluenceTd"><ol><li>File in any number which means the same resource can be used several times.</li><li>The same resource needs to be used continuously up to the limit before using other resources<br />ie. <span style="color: rgb(45,46,47);">Consecutive Same Resource Count  set "2" , same resource need use twice, so history will be AAB( A/B are resource)</span></li></ol></td></tr></tbody></table>



- **Sample Scenario 1:**

To ensure that operators does not retest a WIP at TEST route step unnecessarily, WIPs of Customer "Hades" must be put on hold if it fails 2 times in a row. This verification needs to apply to all WIPs of Customer "Hades". "Hades" thinks if a WIP is aborted then the counter for failure resets as sometimes an Abort represents action of change a configuration.**Sample Configuration:**  
Configure the Pre-Start Rule at the Test Route Step with below parameters.<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th><th class="confluenceTh">Loop Count Threshold</th><th colspan="1" class="confluenceTh">Ignore Abort</th><th colspan="1" class="confluenceTh">Hold</th><th colspan="1" class="confluenceTh">Destination Route Step</th></tr><tr><td class="confluenceTd">Hades</td><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd">2</td><td colspan="1" class="confluenceTd">No</td><td colspan="1" class="confluenceTd">Yes</td><td colspan="1" class="confluenceTd"><em>blank</em></td></tr></tbody></table>

**Result:**  
This configuration will put a WIP on hold while still in queue at the Pre-Start Rule Route Step
once it attempt to restart after 2 consecutive failures. Note that if an Abort occurs between 2 failures then the WIP will not be hold as the Abort is not ignored, therefore it resets the counter for hitting the threshold.
**Sample Scenario 2:** 
To ensure that operators does not retest a WIP at TEST route step unnecessarily, WIPs of Customer "Hades" must be put on hold if it fails 2 times in a row. This verification needs to apply to all WIPs of Customer "Zeus". "Zeus" thinks that if a WIP is aborted it should not affect the current counter as an aborted process is incomplete and does not factor as a loop count.**Sample Configuration:**  
Configure the Pre-Start Rule at the Test Route Step with below parameters.<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Customer Name</th><th class="confluenceTh">Product Family</th><th class="confluenceTh">Material + Plant Code</th><th class="confluenceTh">Loop Count Threshold</th><th colspan="1" class="confluenceTh">Ignore Abort</th><th colspan="1" class="confluenceTh">Hold</th><th colspan="1" class="confluenceTh">Destination Route Step</th></tr><tr><td class="confluenceTd">Zeus</td><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd"><em>blank</em></td><td class="confluenceTd">2</td><td colspan="1" class="confluenceTd">Yes</td><td colspan="1" class="confluenceTd">Yes</td><td colspan="1" class="confluenceTd"><em>blank</em></td></tr></tbody></table>

**Result:**  
This configuration will put a WIP on hold while still in queue at the Pre-Start Rule Route Steponce it attempt to restart after 2 consecutive failures. Note that if an Abort occurs between the 2 failures then the WIP will still be hold as the Abort is ignored, therefore it doesn't change the fact that an aborted process between 2 failed processes still makes that 2 consecutive failures.**Note:**  
Under the rules Parameter Inter-relationship of Mutual Exclusive, a WIP that belongs to Customer "Hades" and Product Family "Horse" will only apply the scenario 2 parameter as Product Family has a narrower scope of application than Customer.