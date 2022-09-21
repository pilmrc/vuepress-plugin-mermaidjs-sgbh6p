# Introduction

The phoenix system uses an internal return material authorization (RMA) process for introducing work-in-process (WIP) back onto its route.



### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("RMA")
0-->1("INTERNAL RMA")

:::
![image2013-5-14 12:1:13.png](/.attachments/29920158.png)





#### Work-In-Process (WIP) Completion Process


The system only list WIP items that have a 
**“completion”** status; this permits the end user to search for a completed WIP item. The system filters out WIP items that has **“IsPack”**  checked as TRUE and not allow end users to select packed WIPs. 
![image2013-4-4 10:51:50.png](/.attachments/29920159.png)




#### Return Material Authorization Process



The phoenix system provides the capability of introducing WIP back onto its route.  WIP status can be changed from
**“completed”** to**“in progress”** and add WIP records into WIP-In-Queue-Route steps. The system automatically increments the WIP-return-count while updating the WIP-audit-log record when WIP is introduced back onto its route.  ![image2013-4-3 11:3:26.png](/.attachments/29920165.png)


The phoenix system only searches for completed 
**WIP serial numbers** being introduced back onto its route step. In the WIP section a client’s **materials name**  and**description** is being displayed. The system shows the **route name, plant code and route steps**  of each completed **WIP item.** ![image2013-5-14 12:3:55.png](/.attachments/29920157.png)


This is a sample list of all WIPs that has a completion status.
![image2013-4-4 9:1:54.png](/.attachments/29920163.png)


The system 
**permits** and**stores**  RMA configurations regarding RMA types, RMA events drop-down list, destination routes and route steps. ![image2013-5-14 12:6:46.png](/.attachments/29920156.png)




#### Screen Activity


Internal RMA enables user to perform the following activities:

- Use the internal return authorization (RMA) process for introducing work-in-process (WIP) back into its route.

- The system permits and stores RMA configurations regarding RMA types, RMA events, destination routes, route steps and adding comments.

Pre Condition
The following data needs to be pre-configured (if used) before user configures the internal RMA package. 

- The phoenix system should contain customer names, material descriptions, plant designation, route and route step information.

- Ensure RMA types, designation routes and route steps, RMA events are stored in the phoenix system.



#### Screen Dependency


The following screen(s) have direct dependency with the internal RMA package.  

- [WIP Maintenance (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Material Vendor](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Vendor.md)

- [Material Manufacturer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)

- [WIP Material View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-Material-View.md)



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="InternalRMA-Fields/Functions.1">Fields/Functions</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Fields/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>RMA</p></td><td class="confluenceTd"><p>A number that authorizes the customer to return a manufactured material to a supplier for corrective action.</p></td></tr><tr><td class="confluenceTd"><p>Bill of Material</p></td><td class="confluenceTd"><p>Bill of materials (BOM) is a list of raw material, sub-assemblies, intermediate assemblies, sub-components, parts and quantities of each needed to manufacturer an end product.</p></td></tr><tr><td class="confluenceTd"><p>Material Types</p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">A grouping of materials with the same basic attributes such as raw materials, semi-finished products or finished products.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The distance to be covered between a starting point and an end point. A route can be comprised of several legs, depending on whether the task is a standalone task or bundle.</span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</td></tr><tr><td colspan="1" class="confluenceTd">Work-In-Process</td><td colspan="1" class="confluenceTd">Material that has entered the production process but is not yet a finished product. Work-In-Process (WIP) therefore refers to all materials and partly finished products that are at various stages of the production process. WIP excludes inventory of raw materials at the start of the production cycle and finished products inventory at the end of the production cycle.</td></tr><tr><td colspan="1" class="confluenceTd">Plant Codes</td><td colspan="1" class="confluenceTd">A plant is the type of facility that is assigned a unique alpha-numeric code.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>A defined portion of the production process along a specified route. <span style="font-size: 10.0pt;line-height: 13.0pt;">A given step can be an operation, another route step can be used on the specified route, or a step that performs a direct action (such as a scrap step).</span></p></td></tr></tbody></table>



#### Attachments

[image2013-5-14 12:6:46.png](/.attachments/29920156.png)
[image2013-5-14 12:3:55.png](/.attachments/29920157.png)
[image2013-5-14 12:1:13.png](/.attachments/29920158.png)
[image2013-4-4 10:51:50.png](/.attachments/29920159.png)
[image2013-4-4 10:15:55.png](/.attachments/29920160.png)
[image2013-4-4 10:15:40.png](/.attachments/29920161.png)
[image2013-4-4 10:11:37.png](/.attachments/29920162.png)
[image2013-4-4 9:1:54.png](/.attachments/29920163.png)
[image2013-4-4 8:52:1.png](/.attachments/29920164.png)
[image2013-4-3 11:3:26.png](/.attachments/29920165.png)
[image2013-4-3 10:36:47.png](/.attachments/29920166.png)
[image2013-4-3 9:20:53.png](/.attachments/29920167.png)
