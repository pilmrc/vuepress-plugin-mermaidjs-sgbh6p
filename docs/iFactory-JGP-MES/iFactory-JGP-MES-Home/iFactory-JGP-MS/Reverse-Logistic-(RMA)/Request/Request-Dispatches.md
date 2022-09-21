# Introduction

Request Dispatch allows to the RMA user dispatch the RMA request item to the production Floor in order them can be processed in the floor. 
Reverse can transfer the information to 
***MES***  , in order MES can accept the information is necessary: 
- The Serial Number needs to be packed


- The Factory needs to be tie to a Site

- The Route needs to have at least a Route Step

- The Assembly needs to be linked to a Route

The Jabil Shipping Address (Site/Factory) selected is used as a filter to bring the Manufacturing Area when dispatchingReverse can transfer the information to 
***iFactory***  , in order ***iFactory***  can accept the information is necessary: 

- If Using Material (BTO/CTO Model) if Serial Number Return Count = 0 needs to be completed,  packed and shipped


- If Using Material (BTO/CTO Model) if Serial Number Return Count " = 1 needs to be completed and packed

- The Route needs to have at least a Route Step

The Jabil Shipping Address (Site/Factory) selected is used as a filter to bring the Manufacturing Area when dispatchingIf the request have multiple Material Groups, when dispatching it only can be one at once. 

Note: Both base material and alias material are supporting in the RMA module. However, if the RMA WIP is belong to an alias material, then the system only allows dispatching if this WIP serial number (and material) exist in iFactory. Alias material RMA WIP item is not allowed to birth for other site's RMA WIP. 
How to get there?


::: mermaid
graph LR
A("REQUEST ")-->0("DISPATCH")

:::


### Screen Activity


RMA Dispatch enables the user to perform the following activity:

- Dispatch All the RMA Request Items to the Production Floor

- Dispatch one or more RMA Request Items

- Able to select, the Manufacturing Area, Route, Route Step and Equipment

- Able to Re-dispatch serial numbers that failed dis

patch message processing to MFG
![](/.attachments/29920966.png)




![](/.attachments/29920967.png)



For new enhancement on RMA Dispatch for WIP items, the system only allows is completed/shipped and is packed WIP for dispatch. Upon RMA dispatch fail (notify by email), the WIP item will change from Received to Accepted status in order to allow the user to cancel or reject this RMA WIP item at Request Review screen.
For the RMA WIP item successfully dispatched, the WIP will be returned back to RMA/Production route (as per selected route step) for processing. This RMA WIP only considers the current history WIP checkpoint route routing rule (such as WIP checkpoint). Previous checkpoint routing history happens before the current RMA receives an event should not consider. The following item will be reflected:

- when the WIP is successfully dispatched, WIP View screen will show

- this WIP in queue at the selected RMA/Production route step.

- Is RMA = Yes

- Return Count increase 1

- Container number no longer shows, but it should not show any unpack history as it doesn’t unpack at iFactory.

- When the WIP completed the process in RMA/Production route and packed at packout step, Container View allow to search by WIP. System will prompt a search dialog for the container that packed previously in RMA and non-RMA container by identity by it’s container creation date.
Note: If the material x has been removed from the RMA/Production route ,then the serial number with material X can't dispatch to RMA/Production route.


#### Pre Condition


In order to be able to dispatch the RMA Request Items, the RMA Request has to be accepted. 

- [Request Management ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Request/Request-Dispatches.md)

- [Request Review](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Request/Request-Dispatches.md)

- [Request Dispatches](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Request/Request-Dispatches.md)




#### Screen Dependency


N/A


#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Filter By Request</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Request</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">This is the place user enter a specific RMA request number to search and view.</span></p><p><span style="color: rgb(0,0,0);">If this field is filled, the system will search and display that RMA request record on-screen.  Else, the system will search for all RMA Requests and display summary info in tabular format for the user to choose.</span></p><p><span style="color: rgb(0,0,0);">Users may fill in the first few characters of the Request number and search.</span></p><p><span style="color: rgb(0,0,0);">The system will retrieve all requests with numbers started with those few characters.  NO wildcard character allowed!</span></p></td></tr></tbody></table>

<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Search Request…</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">RMA Request Number</td><td class="confluenceTd">This is the place user enter a specific RMA request number (or partial of the number) to search and view.</td></tr><tr><td class="confluenceTd">Customer Division</td><td class="confluenceTd">Default to “<strong>All</strong>” option. This field show list of “Customer / Division” for RMA Requests. If selected, system will display list of RMA requests belongs to the “customer / division”.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Request Type  or</p>Type</td><td colspan="1" class="confluenceTd"><p>Default to “<strong>All</strong>” option. This list contains 4 options.</p><p>“<strong>All</strong>”            - System will not filter output result base on 'Request Type'.</p><p>“<strong>Return</strong>”     - System will show RMA requests with 'Return' type only.</p><p>“<strong>Rework</strong>”    - System will show RMA requests with 'Rework' type only.</p><p>“<strong>Upgrade</strong>”   - System will show RMA requests with 'Upgrade' type only.</p><p><br /></p>System will filter RMA requests base on 'Customer Division' (if this was selected too) and / or 'Request Type'.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Contact</td><td colspan="1" class="confluenceTd">Customer contact person of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">RMA request current status.</td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd">Indicate if the RMA request is current put On-Hold.</td></tr></tbody></table>

**”            - System will not filter output result base on ‘Request Type’.** 
“
**Return** ”     - System will show RMA requests with ‘Return’ type only.“
**Rework** ”    - System will show RMA requests with ‘Rework’ type only.“
**Upgrade** ”   - System will show RMA requests with ‘Upgrade’ type only.
System will filter RMA requests base on ‘Customer Division’ (if this was selected too) and / or ‘Request Type’.Customer ContactCustomer contact person of the RMA request.StatusRMA request current status.On HoldIndicate if the RMA request is current put On-Hold.<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Request information</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">RMA Request Number</td><td class="confluenceTd">RMA request number of the record user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">Request Type</td><td colspan="1" class="confluenceTd">The 'Type' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd"><p><span>Request Status</span></p></td><td colspan="1" class="confluenceTd"><p><span>The 'Status' of the RMA request user is viewing.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Site</td><td colspan="1" class="confluenceTd">The 'Site' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The 'Customer' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The 'Division' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">The 'Factory' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">PO Number</td><td colspan="1" class="confluenceTd">The 'Customer PO number' of the RMA request user is viewing.</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">The 'comment' user has entered into the RMA request.</td></tr></tbody></table>

The ‘Type’ of the RMA request user is viewing.Request Status
The ‘Status’ of the RMA request user is viewing.
SiteThe ‘Site’ of the RMA request user is viewing.CustomerThe ‘Customer’ of the RMA request user is viewing.DivisionThe ‘Division’ of the RMA request user is viewing.FactoryThe ‘Factory’ of the RMA request user is viewing.PO NumberThe ‘Customer PO number’ of the RMA request user is viewing.CommentThe ‘comment’ user has entered into the RMA request.




#### Attachments

[image2017-9-27 12:54:58.png](/.attachments/29920966.png)
[image2017-9-27 12:53:51.png](/.attachments/29920967.png)
[image2017-7-4 17:12:16.png](/.attachments/29920968.png)
[image2016-3-18 16:37:50.png](/.attachments/29920969.png)
