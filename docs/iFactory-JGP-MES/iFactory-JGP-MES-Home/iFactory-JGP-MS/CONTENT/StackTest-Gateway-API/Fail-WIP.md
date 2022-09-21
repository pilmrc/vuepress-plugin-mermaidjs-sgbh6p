# Introduction

In the event that a process within a Route Step has failed and as a result the WIP needs to be failed at the current Route Step so that it can be routed to a Route Step to be fixed, the Fail WIP process shall be carried out


### Prerequisite



- Token retrieved successfully

- WIP has started successfully at Route Step and WIP Process History ID retrieved


#### How To



- After the failure happens, call function
["Insert Failure"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Fail-WIP.md), with:

- WIP Id from Retrieve WIP function and WIP Process Step History Id from the
["Start WIP"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Fail-WIP.md)function in URL Segment

- Failure Label and Failure Message as the function parameters

- Token in header

- After successfully inserting the failure, call function "Complete Step Process History" with


- WIP Id from Retrieve WIP function and WIP Process Step History Id from the
["Start WIP"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Fail-WIP.md)function in URL Segment
- Token in header

- If complete function is successful, the next Route Steps and the WIP Process Step History Status will be returned

- Display the next Route Steps to inform operator on where the WIP should head to next.


#### Related Function and Details


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Function</strong></p></td><td colspan="3" class="confluenceTd"><p><span class="confluence-anchor-link" id="FailWIP-funcInsertFailure"></span>Insert Failure</p></td></tr><tr><td class="confluenceTd"><p><strong>URL</strong></p></td><td colspan="3" class="confluenceTd"><p>api/wips/{wipId}/processSteps/{wipProcessStepHistoryId}/symptoms</p></td></tr><tr><td class="confluenceTd"><p><strong>Http Method</strong></p></td><td colspan="3" class="confluenceTd"><p>POST</p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>URL Segment</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>wipId</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr><tr><td class="confluenceTd"><p><em>wipProcessStepHistoryId</em></p></td><td class="confluenceTd"><p>long</p></td><td class="confluenceTd"><p>-9223372036854775808 to 9223372036854775807</p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>failureMessage</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Optional - if no value provided, will take symptom label as default value, unlimited characters </em></p></td></tr><tr><td class="confluenceTd"><p><em>symptomLabel</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Mandatory - max 100 characters</em></p></td></tr><tr><td class="confluenceTd"><p><strong>Return</strong></p><p><em> </em></p></td><td colspan="3" class="confluenceTd"><p>No object return</p></td></tr></tbody></table>

