# Introduction

In the event that a WIP needs to cease a current process after it is already started there, it can be aborted and be placed back in queue to the Route Step


### Prerequisite



- Token retrieved successfully

- WIP has started successfully at Route Step and WIP Process History ID retrieved


#### How To



- After WIP is started, call function
["Abort WIP Process Step"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Abort-WIP.md), passing the WIP Id and WIP Process Step History Id from the ["Start WIP"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Abort-WIP.md)function, with Token in header.
- If function is successful, the next Route Steps and the WIP Process Step History Status will be returned

- Display the next Route Steps to inform operator on where the WIP should head to next.


#### Related Function and Details



<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Function</strong></p></td><td colspan="4" class="confluenceTd"><p><span class="confluence-anchor-link" id="AbortWIP-funcAbortWIP"></span>Abort WIP Process Step</p></td></tr><tr><td class="confluenceTd"><p><strong>URL</strong></p></td><td colspan="4" class="confluenceTd"><p>api/wips/{wipId}/processSteps/{wipProcessStepHistoryId}/abort</p></td></tr><tr><td class="confluenceTd"><p><strong>Http Method</strong></p></td><td colspan="4" class="confluenceTd"><p>POST</p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>URL Segment</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td colspan="2" class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>wipId</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td colspan="2" class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr><tr><td class="confluenceTd"><p><em>wipProcessStepHistoryId</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td colspan="2" class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr><tr><td rowspan="8" class="confluenceTd"><p><strong>Return</strong></p></td><td colspan="4" class="confluenceTd"><p>Single object with the following property</p></td></tr><tr><td class="confluenceTd"><p><strong>Property Name</strong></p></td><td colspan="2" class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>inQueueRouteSteps</em></p></td><td colspan="2" class="confluenceTd"><p><em>routeStep</em></p></td><td class="confluenceTd"><p><em>Collection of objects</em></p></td></tr><tr><td colspan="4" class="confluenceTd"><p><em> </em></p></td></tr><tr><td colspan="4" class="confluenceTd"><p><u>routeStep</u></p></td></tr><tr><td class="confluenceTd"><p><strong>Property Name</strong></p></td><td colspan="2" class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>routeStepId</em></p></td><td class="confluenceTd"><p><em>int</em></p></td><td colspan="2" class="confluenceTd"><p><em>-2147483648 to 2147483647</em></p></td></tr><tr><td class="confluenceTd"><p><em>routeStepName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td colspan="2" class="confluenceTd"><p><em> </em></p></td></tr></tbody></table>


