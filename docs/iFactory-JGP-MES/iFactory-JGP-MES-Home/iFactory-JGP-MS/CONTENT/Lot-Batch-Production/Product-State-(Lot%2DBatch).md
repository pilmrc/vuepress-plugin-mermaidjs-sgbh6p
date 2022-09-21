# Introduction


Product state is a configurable status that can be assigned to Lots as they *successfully* pass through a station. There will also be a related "Product State Pass Qty" and "Product State Fail Qty" (not to be confused with lot quantity or defect qty) which the system will track to Planned Order level . If a route step is configured with a product state, that is referred to as a "Transformation Station" and if not configured it will be referred to as a "Non-Transformation Station". There is added complexity when the route step is a "Pass/Fail" station (e.g. MIE), the logic for which is explained in the "Transformation Examples" section below:-

### *Configuration* 




#### How to get there?


NOTE navigation for Product State configuration is by direct link at this point until it is integrated with the new menu service (which doesn't support the toggle as of time of writing)

::: mermaid
graph LR
A("[TBD CURRENTLY MENU UNDER DEV]")
:::
(Direct link to page - 
[http://corphxdevweb02:91/#/ProductState/Manage](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Product-State-(Lot%2DBatch).md))

#### Screen Activity


Manage Product State page enables user to perform the following activity:

- Select Customer/Division

- Select Material

- Select Route

- Assign Product state to Route step on selected route


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures [Item/Module you are writing]

- Customer/Division

- Material

- Route

- Route Steps (including resource config)


#### Screen Dependency



- No direct dependency on any other screen, but the Product State field on Lot view and the Product State tab on Planned order view and display on workstation
(both to be developed) depend on this 

#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Manage Product State - Header</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Customer/Division</p></td><td class="confluenceTd"><p>Customer Name and Division Name (available to the user)</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Material selected for scope</p></td></tr><tr><td class="confluenceTd"><p>Route/Version</p></td><td class="confluenceTd"><p>Route/Version selected for scope</p></td></tr><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>"Manage" Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Lists all route steps per selected route in alphabetical order</p></td></tr><tr><td class="confluenceTd"><p>Product State</p></td><td class="confluenceTd"><p>User defined "Product State" value assigned to each route step</p></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><strong>"Audit log" Tab</strong></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Logs the route step when edited</td></tr><tr><td colspan="1" class="confluenceTd">Original Value</td><td colspan="1" class="confluenceTd">Logs the pre-edited Product State Value</td></tr><tr><td colspan="1" class="confluenceTd">New Value</td><td colspan="1" class="confluenceTd">Logs the post-edited Product State Value</td></tr><tr><td colspan="1" class="confluenceTd">Modified</td><td colspan="1" class="confluenceTd">Logs the date time edit occurs</td></tr><tr><td class="confluenceTd">Modified By </td><td class="confluenceTd"><p>Logs the user that edited the Product State</p></td></tr></tbody></table>




*Transformation Views and Scenarios* 
***Planned Order View***  

The Product State tab in Planned Order view, displays the Product State, Product State Pass Qty's and Product State Fail Qty's for every Lot associated to the selected planned order. This is considered the "Master View" for Product State, since it provides a "real time" view of the status for all lots within the PO, giving the planner the ability to identify how much product is at the defined point in the process and, more importantly, any possible shortfall on committed qty, allowing the planner to take the appropriate remedial action (e.g. release additional lot(s)).
1)  In this example, where the first step is a NON-Transformation station on a brand new order, there would be no entries displayed because no transformation has taken place yet.
![](/.attachments/29917999.png)


2) If the first step IS a Transformation station and a NON pass/fail station, then the configured Product State (e.g. MOLDING) would be assigned and the
Product State Pass Qty for MOLDING would be incremented by the lot qty (100).![](/.attachments/29917996.png)


If the next step (e.g. MOE2) is also a Transformation station and a 
NON Pass/Fail station, then on completion, The product state will change (e.g. from MOLDING to MOLDING TWO), the lot qty (100) will be decremented from the old Product State Pass Qty (e.g. MOLDING) and and incremented to the new Product State Pass Qty (MOLDING TWO).![](/.attachments/29917994.png)


3) There is added complexity when the station is a PASS/FAIL station, since there is more than 1 path the lot can travel down - This first set of scenarios shows the paths for a PASS/FAIL station that is a NON-Transformation station, in which case the Product State does not change whether the lot successfully passes the station or not, but there will be increments/decrements to the Product State Pass Qty's and Product State Fail Qty's depending on the pass/fail path, as illustrated below:-
Status before completion AND on completion with PASS ALL - No change to the Product State, Product State pass qty or Product State fail qty
![](/.attachments/29917993.png)


Status on completion with FAIL ALL (i.e. not auto split performed at MIE) - Product State Pass Qty for previously assigned Product State is decremented by lot qty (100) and Product State Fail Qty for previously assigned Product State is incremented by lot Qty (100)
![](/.attachments/29917992.png)


Status on Split of defective units at MIE  - In this example 10 failed, 90 passed and the 10 fails were split to another carrier, so the Product State Pass Qty for the previously assigned Product State (e.g. MOLDING) is decremented by the fail Qty (10) and the Product State Fail Qty 
for the previously assigned Product State (e.g. MOLDING) is incremented by the Fail Qty (10)![](/.attachments/29917991.png)


Status on rework of 10 failed units (When Rework is a NON-Transformation station) - The Product State is not changed(e.g. remains MOLDING), but the Product State Pass Qty is incremented by the reworked lot qty (10) and the Product State Fail Qty is decremented by the reworked lot Qty (10).
![](/.attachments/29917993.png)


4) The next scenario's show the paths for a PASS/FAIL station that IS a Transformation station, in which case the Product States, Product State Pass Qty's and Product State Fail Qty's will be affected, depending on the pass/fail path as illustrated below:-
Status before completion
![](/.attachments/29917993.png)


Status on completion with PASS ALL - The Product State transforms, the Product State Pass Qty for the "Old" product state (e.g. MOLDING) is decremented by Lot Qty (100) and Product State Pass Qty is incremented by Lot Qty (100) for the new product state (e.g. MODING INSPECTION):-
![](/.attachments/29917990.png)


Status on completion with FAIL ALL - The Product state does not Transform, but the Product State Pass Qty for the original Product State (MOLDING) is decremented by Lot Qty and Product State Fail Qty for the original Product State (MOLDING) is incremented by Lot Qty:-
![](/.attachments/29917989.png)


Status on Split of defective units at MIE - 
In this example 10 failed, 90 passed and the 10 fails were split to another carrier - For the "Pass" carrier, the Product State would Transform, the Product State Pass Qty for the new Product State (e.g. MOLDING INSPECTION) would be incremented by the Pass Qty (90) and the Product state Pass Qty for the Old Product State (MOLDING) is decremented by the Pass Qty (90)For the "Fail" carrier the Product State does not Transform, but the Product state Pass Qty for the Old Product State (MOLDING) is decremented by the Fail Qty (10) and the Product State Fail Qty for the Old product State (MOLDING) is incremented by the Fail Qty (10):-
![](/.attachments/29917988.png)


Status on rework of 10 failed units (when rework is NON-Transformation) - The original Product state Pass Qty (MOLDING) is incremented by the reworked lot qty (10) and the original Product state Fail Qty (MOLDING) is decremented by the reworked lot Qty (10).
![](/.attachments/29917987.png)


If the reworked Qty (10) is re-inspected with all passing, the Product State would transform and the Product State Pass Qty for the old Product State (MOLDING) will be decremented by re-inspected Qty (10) and the Product State Pass Qty for the new Product State (MOLDING INSPECTION) will be incremented by re-inspected Qty (10) - Note the re-inspection could also fully or partially fail in which case the relevant scenarios above illustrate the behaviour that would be invoked for each scenario.
![](/.attachments/29917986.png)


5) Transformation outwith stations - 
If a product follows the "Fail All" path from MIE (e.g. total lot qty of 100, 90 passes and 10 fails and the user does not use the "Auto split defects at MIE" option), then the user can of course, re-work and re-inspect the whole carrier as shown above. However, the user can also make use of the Lot Transfer functionality to transfer the "Pass" qty to a new carrier before rework, which in turn would invoke the "Auto route/bypass MIE" functionality. In short if the user choses this option the new "Pass" carrier/lot (90) would automatially bypass the MIE step, adopt the Product State configured at the MIE step (e.g. MOLDING INSPECTION), increment the Product State Pass Qty for the new Product State (e.g. MOLDING INSPECTION) by the pass qty (90) and decrement the pass Qty (90) from the Product State Pass Qty of the Old Product State (e.g. MOLDING). The "Fail" carrier qty (10) would remain assigned the old Product State and the Product State Fail Qty would remain (e.g. MOLDING):-
Status before Lot Transfer
![](/.attachments/29917985.png)


Status when Pass qty is transferred to another carrier before rework and the "Auto route/bypass MIE" funtionality is invoked.
![](/.attachments/29917984.png)


6) Packout stations follow the same rules, the difference being that the transformation is done on pack and undone on unpack instead of complete/abort. There is also a scenario where the user may want to pack scrapped lots - Our current solution basically blanks the product state out when a lot is scrapped, since this qty is already tracked on the general tab of the planned order view under "Quantity Scrapped" field. 
***Lot View***  
To view the currently assigned Product State for a particular Lot, a "Products State" field has been added to Lot View.
1) On Lot release, the product state on Lot View will be blank - If processed through the first step on a route that is a NON-Transformation station, then the Lot view will still be blank, If processed through a NON-Transformation station positioned after a Transformation station on the route, the product state displayed after processing through the NON-Transformation station, remains unchanged (i.e. it would retain the pre-processessing product state).
![](/.attachments/29918000.png)



2) If processed through the first step on a route, that IS a Transformation station, then the Lot view will show the product state assigned to that route step. :-
![](/.attachments/29917998.png)


3) Focussing only on the product state displayed on the lot view (and not the product state pass and fail Qty's discussed in the planned order view above), then the following summary best describes the behaviour:-
![](/.attachments/29917995.png)




#### Attachments

[image2017-11-29 16:57:12.png](/.attachments/29917984.png)
[image2017-11-29 16:55:19.png](/.attachments/29917985.png)
[image2017-11-29 16:30:15.png](/.attachments/29917986.png)
[image2017-11-29 16:20:59.png](/.attachments/29917987.png)
[image2017-11-29 16:16:0.png](/.attachments/29917988.png)
[image2017-11-29 15:41:48.png](/.attachments/29917989.png)
[image2017-11-29 15:34:35.png](/.attachments/29917990.png)
[image2017-11-29 14:14:30.png](/.attachments/29917991.png)
[image2017-11-29 14:8:36.png](/.attachments/29917992.png)
[image2017-11-29 14:1:34.png](/.attachments/29917993.png)
[image2017-11-29 12:14:55.png](/.attachments/29917994.png)
[image2017-11-29 11:14:57.png](/.attachments/29917995.png)
[image2017-11-29 10:57:41.png](/.attachments/29917996.png)
[image2017-11-29 10:56:59.png](/.attachments/29917997.png)
[image2017-11-29 10:39:13.png](/.attachments/29917998.png)
[image2017-11-29 10:28:22.png](/.attachments/29917999.png)
[image2017-11-29 10:24:29.png](/.attachments/29918000.png)
[image2017-11-20 16:46:40.png](/.attachments/29918001.png)
[image2017-11-20 16:26:36.png](/.attachments/29918002.png)
[image2017-11-20 16:11:14.png](/.attachments/29918003.png)
[image2017-11-20 16:6:55.png](/.attachments/29918004.png)
[image2017-11-20 15:52:42.png](/.attachments/29918005.png)
[image2017-11-20 15:51:40.png](/.attachments/29918006.png)
