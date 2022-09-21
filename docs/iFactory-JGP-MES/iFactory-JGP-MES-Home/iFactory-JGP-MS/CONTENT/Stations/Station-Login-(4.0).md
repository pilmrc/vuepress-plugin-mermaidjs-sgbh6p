# Introduction

This screen allows the user to login to different Production Stations such as Assemble, Assemble Validation, OBA Sampling/Sampling/Manual Sampling, PopDePop, Packout, Inspection and Rework, Audit Checklist, Manual Test Entry and others. The users have to select available Resource, scan Panel/WIP/Container/UPD/BatchTagName/Serialized Material and select Route/Route Step before performing the station activity. If the Resource is soft deleted, user is unable to find the Resource in the dopdown list.
When the user selects the Resources (except resources having resource type: 'Test Equipment'), scan Panel/WIP/Container/UPD/BatchTagName/Serialized Material and select Route/Route Step then the associated Station(s) shall be available for selection.  
In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
![image2020-11-29_21-5-27.png](/.attachments/82903661.png)


![image2020-11-29_21-8-54.png](/.attachments/82903662.png)


![image2020-11-29_21-8-12.png](/.attachments/82903663.png)



- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "

ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:

- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step


### How to get there?



::: mermaid
graph LR
A("STATIONS")
:::
![image2020-11-29_22-13-41.png](/.attachments/82903664.png)




#### **Precondition** 




#### Configure Can Access All Resource permission base on the User Group to set ON/OFF so that the resource field display accordingly.


- Set to ON, a selection resource list will be shown for engineer or admin to select. (As least one user group has this set to ON, the user will be able to select from a list.)

- Set to OFF, a text box for resource will be shown for operator to enter/scan the valid resource name in order to continue.



#### Screen Activity


Station Login enables user to perform the following activity:

- Log in to different Production Stations


- [Assemble](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assemble/Assemble-(4.0).md)

- [Assemble Validation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Validation.md)

- OBA Sampling

- PopDePop

- [Packout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/WIP-Packout.md)

- [Inspection and Rework](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.4).md)

- Audit Checklist

- [Manual Test Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Test-Entry.md)

- [Manual Inspection Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)

- [Manual Operation Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Manual-Operation-Entry-(MOE).md)

- [Disassemble](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Stations/Disassemble-Station/Disassemble-(Single-Entry-Mode).md)

- [Warehouse](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Warehouse.md)

- [Receiving](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Receiving.md)

- [Material Review](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Material-Review.md)
: User could login MRB station without providing SN.
- Sampling


#### Screen Dependency


The following screen(s) has direct dependency with Station Login

- *[Factory Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*

- *[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)*

- *[Route Step Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*

- *[Resource Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)*

- *[Resource Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Resource-Type-Maintenance.md)*


#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 81.4454%;"><colgroup><col style="width: 13.0487%;" /><col style="width: 86.9001%;" /></colgroup><thead><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td class="confluenceTd">Resource</td><td class="confluenceTd">Select the resource that will be utilized in the station. The resources having Resource type as 'Test Equipment' is not been shown here.</td></tr><tr><td colspan="1" class="confluenceTd">Panel/WIP/Container/UPD/BatchTagName/Serialized Material</td><td colspan="1" class="confluenceTd"><p>Scan a Panel or WIP or Container or UPD or BatchTagName or Serialized Material <span style="color: rgb(23,43,77);"><span style="color: rgb(23,43,77);">to determine the route version and assembly (if “Enforce Assembly Selection At Station” is ON</span></span><span style="color: rgb(23,43,77);">) used. If left blank, user can login to an initial route step to perform Auto Release WIP.</span></p><p><span style="color: rgb(23,43,77);">Notes: If input the SN is Batch Tag Name it only can login Sampling station, and the batch tag name should meet below condition:</span></p><p style="margin-left: 30.0px;"><span>a: the BatchTagName should be 'Manual Sampling' type.</span><br /><span>b: the BatchTagName should be available(Active and not expired).</span><br /><span>c: the BatchTagName has configured an available sample plan.</span></p><p style="margin-left: 30.0px;">If input SN is a WIP and the WIP has been assembled to another parent WIP, system will use the parent WIP to login. only support 1 level look up.</p><p style="margin-left: 30.0px;">If input SN is a serialized material and it has been assembled to a parent WIP, system will use the parent WIP to login.</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step and Route</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">By default, the Route Step list shows all the initial route steps from active routes with “Enforce Assembly Selection At Station” turned ON which are associated to the Resource.</span></p><p><span style="color: rgb(51,51,51);">If user scans a serial number, this field will return the list of In Queue and Pull steps with the selected Resource from the Route Version of the scanned Panel/WIP/Container. If only 1 Route Step is available, system will automatically select it.</span></p><p><span style="color: rgb(51,51,51);">If the Resource selected is associated to WIP Packout station, the Packout steps from the route version of the scanned serial number are always displayed in the Route Step list even if the WIP is not in queue there. This is so that unpack operation can be done.</span></p><p>If login by batch tag name, the Route Step and Route will be retrieved from sample plan → Is Manual Sample(turn on) → Generic tab's route, route step.</p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><p><span>If “Enforce Assembly Selection At Station” is turned ON, this field is shown after user selects the route step. This field is read-only and will automatically display the current assembly of the scanned Panel/WIP/Container. If the current assembly is an Alias, system will display the base assembly.</span></p><p><span style="color: rgb(51,51,51);">If route step is selected without scanning a serial number, user will need to select an Assembly.</span></p><p><span style="color: rgb(51,51,51);">If login by batch tag name, the Assembly will be retrieved from sample plan → Is Manual Sample(turn on) → Generic tab's Assembly.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd"><p>WIP can be "Released at Manufacturing Area" and updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the station login, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area.</p><p>If Option is turned On, WIP to be notified that the scanned Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can scanned with resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the scanned Resource at Route Step.</p><p>If login by batch tag name, the MA will follow the MA configured in route step.</p></td></tr><tr><td colspan="1" class="confluenceTd">Station</td><td colspan="1" class="confluenceTd"><p>This field is shown after the route step is selected. The field will list the valid stations for user to select if there are more than 1 station. If only 1 station is valid, system will go into the station directly. For example, if the "<span style="color: rgb(23,43,77);">Allow Manual Test Override" is turned On for Manual Inspection Entry step, user can decide if they wanted to perform Manual Inspection or Manual Test.</span></p></td></tr></tbody></table>





#### Attachments

[image2016-7-4 15:55:49.png](/.attachments/29920086.png)
[image2016-7-4 15:54:10.png](/.attachments/29920087.png)
[image2018-11-1_13-38-12.png](/.attachments/36962729.png)
[image2018-11-1_13-39-22.png](/.attachments/36962730.png)
[image2020-4-28_8-47-25.png](/.attachments/69632516.png)
[image2020-11-29_21-5-27.png](/.attachments/82903661.png)
[image2020-11-29_21-8-54.png](/.attachments/82903662.png)
[image2020-11-29_21-8-12.png](/.attachments/82903663.png)
[image2020-11-29_22-13-41.png](/.attachments/82903664.png)
