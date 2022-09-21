# Introduction

Default Route it is used to setup a Route that will be used in 
[Dispatch ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Configuration/Default-Route.md)in that way the RMA user does not need to take about which route needs to select for sending the Serial Numbers to production floor. The routes are populated from Shop Floor Systems (iFactory or MES). For Ifactory , it will populate RMA/Production routes for user to select which route for dispatching.

### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("DEFAULT ROUTE")

:::


#### Screen Activity


Default Route enables user to perform the following activity:

- Create, view, update and delete Default Route.

- Setup as Restricted to Default Route.

![](/.attachments/29920907.png)




#### Pre Condition


Needs to exists communication between Reverse and iFactory or MES.



#### Screen Dependency


N/A


#### Fields




<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="DefaultRoute-DefaultRoute"><strong>Default Route</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Site</td><td colspan="1" class="confluenceTd"><span>To indicate the Default Route setup belongs to specific Customer/Division.</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division*</td><td colspan="1" class="confluenceTd">To indicate the <span>Default Route setup</span> belongs to specific Customer/Division.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">To indicate the <span>Default Route setup</span> belongs to specific Product Family.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>To indicate the <span>Default Route setup</span> belongs to specific Material.</p><p>For Ifactory ,if the material being removed from the Production/RMA route then it will auto disassociate from the default route. </p></td></tr><tr><td colspan="1" class="confluenceTd">Revision</td><td colspan="1" class="confluenceTd">To indicate the <span>Default Route setup</span> belongs to specific Material Revision.</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">To indicate the <span>Default Route setup</span> belongs to specific Material Version.</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">To indicate to which MA of the Shop Floor will be dispatch the Serial Numbers</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>To indicate to which Route of the Shop Floor will be dispatch the Serial Numbers . </span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>To indicate to which Route Step of the Shop Floor will be dispatch the Serial Numbers</span></td></tr><tr><td colspan="1" class="confluenceTd">Equipment/Resource</td><td colspan="1" class="confluenceTd"><span>To indicate to which <span>Equipment/Resource </span>of the Shop Floor will be dispatch the Serial Numbers</span></td></tr><tr><td colspan="1" class="confluenceTd">Restricted to Default Route</td><td colspan="1" class="confluenceTd"><span>If this is "ON" restricted then the user in </span><a href="Default-Route-29920906.html">Dispatch </a><span>will not be able to modify the Route.</span></td></tr></tbody></table>



#### Attachments

[image2017-9-27 11:41:41.png](/.attachments/29920907.png)
