# Introduction

This screen allows setup parameters used for controlling of RMA Request Processing, when the defined threshold is exceeded (time or quanitty) then notification shall be sent out to the defined Email Address according to the configuration. 
The “0” (zero), means that is not necessary to calculate the threshold. 
Can be setup by: Customer/Division, Product Family, Material, Revision and Version. 
The lowest level configuration setup is taking priority.

When a request header contains multiple material groups for different materials the lowest threshold value (minimum) will be applied to all items in the same request.  This applies to all Time Out thresholds.
Example: If a request contains one material with a ‘Auto Close’ threshold of zero and one with a value of 5, the result will be that the time out threshold for all items in the request will be set to zero (the minimum threshold value of the 2 different values).


### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("TIMEOUTS")

:::


#### Screen Activity


Timeouts enables user to perform the following activity:

- Setup the Timeouts

- View
the Timeouts
- Update
the Timeouts
- Delete
the Timeouts
Pre Condition
The following data  is recommendedneeds to be pre-configured before user setup the timeouts: 
Screen Dependency
N/A


#### Fields



<table class="confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Timeouts-Timeouts"><strong>Timeouts</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division*</td><td colspan="1" class="confluenceTd"><span>To indicate </span><span>the timeout setup belongs</span><span> to specific Customer/Division.</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span>To indicate </span><span>the <span> timeout setup </span> belongs</span><span> to specific Product Family.</span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span>To indicate </span><span>the <span> timeout setup </span> belongs</span><span> to specific Material. </span></td></tr><tr><td colspan="1" class="confluenceTd">Revision</td><td colspan="1" class="confluenceTd"><span>To indicate </span><span>the timeout setup belongs</span><span> to specific Material Revision. </span></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd"><span>To indicate </span><span>the timeout setup belongs</span><span> to specific Material Version. </span></td></tr><tr><td class="confluenceTd"><p>Request Review Timeout </p></td><td class="confluenceTd"><p>Sets the number of days that Jabil have to review an RMA request. Once the timeout expires, Jabil can no longer deny the RMA, <span style="font-size: 10.0pt;line-height: 13.0pt;">If Request Review Timeout setup is different to “0” (zero) a warning threshold configuration is required. <span style="color: rgb(51,51,51);">O<span>nce the warning threshold is reached an email has to be sent out to the configured email address.</span></span></span></p></td></tr><tr><td class="confluenceTd"><p class="ng-binding">Automatic Accept Response Timeout</p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Number of days during which an RMA request must be accepted or rejected). So once the timeout expires, the system automatically accepts the RMA request. Once the warning threshold is reached an email has to be sent out to the configured email address.</span></p></td></tr><tr><td class="confluenceTd"><p class="ng-binding">Responsibility Change Timeout</p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);"><span>Number of days during which a user may change the responsibility for the RMA return. No changes can be made to the field "Responsible Party" in the Material Group once this timeout is exceeded. A</span><span style="font-size: 10.0pt;line-height: 13.0pt;">pplies only for Rework type and accepted RMA request, </span><span style="font-size: 10.0pt;line-height: 13.0pt;">Once the <span>Responsibility Change Timeout</span> is reached an email has to be sent out to the configured email address.</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding"><span style="color: rgb(51,51,51);">Packing Timeout</span></p></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Number of days between products being received at Jabil until they are packed. Once the warning threshold is reached an email has to be sent out to the configured email address. (Implementing with MES, missing iFactory)</span></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Failure Analysis Timeout</p></td><td colspan="1" class="confluenceTd"><p><span>Number of days during which a failure analysis must be performed on the selected product. Once the limit is reached, the system should send an email notification </span><span>to the configured email address. <span>(</span><span>Implementing with MES, missing iFactory)</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Warning Threshold</p></td><td colspan="1" class="confluenceTd"><p>(days) If Request Review Timeout setup is different to “0” (zero) a warning threshold configuration is required, it helps to remember that the time of the request review is nearing reach. <span style="font-size: 10.0pt;line-height: 13.0pt;">The Warning threshold configuration should be less than the configuration of Request Review Timeout. </span><span style="font-size: 10.0pt;line-height: 13.0pt;">Once the warning threshold is reached an email has to be sent out to the configured email address. </span><span style="font-size: 10.0pt;line-height: 13.0pt;">After the warning threshold is reached email notification should be sent daily until timeout threshold is reached or RMA status changes (Accepted, Reject, Hold, and Cancel).  </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Receipt Timeout</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Time in which a Jabil plant must receive and reviewed/accept a RMA request. Once the timeout expires an email has to be sent to the configured email address. </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Return Limit</p></td><td colspan="1" class="confluenceTd"><p>Number of times a particular unit can be returned to Jabil as an RMA. So a unit that has passed the configured threshold when scanned, the system would block the receipt of the unit. T<span style="font-size: 10.0pt;line-height: 13.0pt;">he system will notify the user by email address configured that the serial number has exceeded the configured threshold.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Failure Symptom Threshold</p></td><td colspan="1" class="confluenceTd"><p><span> <span>Limit of boards having the same failure symptom within the established time frame during the RMA request creation process). So once the limit is reached an email has to be sent out to the configured email address. </span><span>Can be set in a Weekly or Monthly Basis. </span><span>(No Implemented)</span><span> </span></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="ng-binding">Warranty Period</p></td><td colspan="1" class="confluenceTd">It means Contractual number of days (agreed with the customer) during which RMA product will be reworked/upgraded at no cost (under the terms of the contract). So it can be used for reporting to check the Warranty. </td></tr><tr><td colspan="1" class="confluenceTd">Auto Close</td><td colspan="1" class="confluenceTd"><div>The system is able to automatically close RMA Requests under the following conditions: </div><div>a. Request header status is “Dispatched”, "Received", or “Packed”. </div><div>b. All RMA Items are in status "Dispatched",“Rejected” or “Cancelled” or “Packed” or “Completed”. </div><div>c. No activity exists that changed any Request or Request Item data for the time greater than configured “Automatic Close” timeout.</div><div><span style="color: rgb(34,34,34);">Once it is close an email notification shall be sent </span> </div><div>Only applicable for Request Type Rework/Upgrade</div></td></tr></tbody></table>

