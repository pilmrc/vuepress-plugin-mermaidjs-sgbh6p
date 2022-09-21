# Introduction

To process a WIP in a route step, the WIP must first be started at that route step. The Start WIP process includes all the validation such as In Queue validation and Pre-start Rules validation. These validations are already built into the Start WIP function and are not required to be called explicitly.


### Prerequisite



- Token successfully retrieved

- WIP has been released and enqueued at route step


#### How To



- Prompt user to scan the Serial Number, and optionally provide the Customer Name and Material Name + Plant Code

- Call function
["Retrieve WIP"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Start-WIP.md), passing the Serial Number and the other optional parameters if available, with valid Token embedded in the header
- If parameter provided failed to retrieve a valid WIP, function will return nothing

- If valid WIP(s) is retrieve, search for the WIP Id within the returned fields

- Call function
["Start WIP"](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/StackTest-Gateway-API/Start-WIP.md), passing the Serial Number and the other optional parameters if available, with valid Token embedded in the header
- Function Start WIP will validate below condition:


- WIP is enqueue at the Route Step of which the resource is associated to

- All Prestart Rules configured at the route step has passed

- If all validation pass, WIP will have a new process history with "STARTED" state at the route step

- If the WIP has successfully started at a route step, the function shall return a WIP Process Step History ID for subsequent process.


#### Related Functions and Details


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Function</strong></p></td><td colspan="3" class="confluenceTd"><p><span class="confluence-anchor-link" id="StartWIP-funcRetrieveWIP"></span>Retrieve WIP</p></td></tr><tr><td class="confluenceTd"><p><strong>URL</strong></p></td><td colspan="3" class="confluenceTd"><p>api/wips</p></td></tr><tr><td class="confluenceTd"><p><strong>Http Method</strong></p></td><td colspan="3" class="confluenceTd"><p>GET</p></td></tr><tr><td rowspan="5" class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>serialNumber</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Mandatory</em></p></td></tr><tr><td class="confluenceTd"><p><em>customerName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Optional</em></p></td></tr><tr><td class="confluenceTd"><p><em>materialName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Optional</em></p></td></tr><tr><td class="confluenceTd"><p><em>materialPlantCode</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Optional</em></p></td></tr><tr><td rowspan="24" class="confluenceTd"><p><strong>Return</strong></p></td><td colspan="3" class="confluenceTd"><p>Single object with the following property</p></td></tr><tr><td class="confluenceTd"><p><strong>Property Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>wips</em></p></td><td class="confluenceTd"><p><em>wip</em></p></td><td class="confluenceTd"><p><em>Collection of objects</em></p></td></tr><tr><td colspan="3" class="confluenceTd"><p><u> </u></p></td></tr><tr><td colspan="3" class="confluenceTd"><p><u>wip</u></p></td></tr><tr><td class="confluenceTd"><p><strong>Property Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>bomAlternativeBom</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>bomHeaderRev</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>bomId</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>bomVersion</em></p></td><td class="confluenceTd"><p><em>int</em></p></td><td class="confluenceTd"><p><em>-2147483648 to 2147483647</em></p></td></tr><tr><td class="confluenceTd"><p><em>customerName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>deliveryOrderNumber</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>id</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr><tr><td class="confluenceTd"><p><em>isAssembled</em></p></td><td class="confluenceTd"><p><em>bool</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>isOnHold</em></p></td><td class="confluenceTd"><p><em>bool</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>isOnShippingHold</em></p></td><td class="confluenceTd"><p><em>bool</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>isPacked</em></p></td><td class="confluenceTd"><p><em>bool</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>isScrapped</em></p></td><td class="confluenceTd"><p><em>bool</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>materialName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>materialPlantCode</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>plannedOrderNumber</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>productionOrderNumber</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>serialNumber</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em> </em></p></td></tr><tr><td class="confluenceTd"><p><em>wipStatus</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>New / InProcess / Completed / Shipped / Archived</em></p></td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Function</strong></p></td><td colspan="3" class="confluenceTd"><p><span class="confluence-anchor-link" id="StartWIP-ancStartWIP"></span>Start WIP</p></td></tr><tr><td class="confluenceTd"><p><strong>URL</strong></p></td><td colspan="3" class="confluenceTd"><p>api/wips/{wipId}/processSteps/start</p></td></tr><tr><td class="confluenceTd"><p><strong>Http Method</strong></p></td><td colspan="3" class="confluenceTd"><p>POST</p></td></tr><tr><td rowspan="2" class="confluenceTd"><p><strong>URL Segment</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>wipId</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr><tr><td rowspan="2" class="confluenceTd"><p><strong>Parameter</strong></p></td><td class="confluenceTd"><p><strong>Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>resourceName</em></p></td><td class="confluenceTd"><p><em>string</em></p></td><td class="confluenceTd"><p><em>Mandatory</em></p></td></tr><tr><td rowspan="3" class="confluenceTd"><p><strong>Return</strong></p></td><td colspan="3" class="confluenceTd"><p>Single object with the following property</p></td></tr><tr><td class="confluenceTd"><p><strong>Property Name</strong></p></td><td class="confluenceTd"><p><strong>Type</strong></p></td><td class="confluenceTd"><p><strong>Remark</strong></p></td></tr><tr><td class="confluenceTd"><p><em>wipProcessStepHistoryId</em></p></td><td class="confluenceTd"><p><em>long</em></p></td><td class="confluenceTd"><p><em>-9223372036854775808 to 9223372036854775807</em></p></td></tr></tbody></table>

