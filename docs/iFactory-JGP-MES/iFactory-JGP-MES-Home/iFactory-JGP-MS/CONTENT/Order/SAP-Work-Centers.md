# Introduction

The SAP Work Centers screen is used to associate Phoenix Route Steps to SAP Work Centers. This will allow a correlation of activity between the two systems (example back flush).

**How to get there?** 

::: mermaid
graph LR
A("ADMINISTRATION")-->0("SAP")
0-->1("SAP WORK CENTERS")

:::
![image2013-5-13 14:49:11.png](/.attachments/29918869.png)




This display characterizes a visualization of the primary screen that shows when an end user selects 
**“add new records.”** After choosing the **“add new records”** function, work center information is filled in by end user. The fields that require data materializes immediately underneath the filter area. 
![image2013-5-13 14:51:13.png](/.attachments/29918868.png)



Team members have the capability to modify or remove SAP work center records being presented on the screen. After entering accurate data into the SAP work center fields; selecting the 
**“insert”** function to submit a new SAP work center record. This screen also permits end users to **“cancel”** any record during or after data entry into the **“add new record”** form.  If a SAP work center has been associated with a route step, the system will block the end user from 
**“deleting”** a work center. 
![image2013-5-13 14:56:50.png](/.attachments/29918864.png)



A work center 
**plant code** is a distinctive Jabil customer 4-digit alpha-numeric designation for example (i.e. TN01 = Memphis, TN plant code). Operations are carried out at the **work center** . Business objects such as machines, machine groups, production lines, assembly work centers, employees or groups of employees represent a work center.Together with bill of materials and routings, 
**work centers** belong within production planning and control systems. Work centers are used in task list operations and work orders. Task lists are for example routings, maintenance task lists, inspection plans and standard networks. Work orders including their **descriptions and categories** which are created for production, quality assurance, plant maintenance and project systems as a network. 
![image2013-5-13 14:53:38.png](/.attachments/29918866.png)



The phoenix system displays a work centers 
**key usage** data. This SAP ERP central component (or SAP ECC) data (task list) is being used by a team member. SAP ECC uses standard values as parameters with origin **“standard value”** within formulas to calculate execution time, capacity requirements and costs. SAP ECC uses the **“control key”** **(i.e. ctrl key)**  to determine which business transactions are executed for an object that belongs to the task list, orders, scheduling or costing. 
![image2013-5-13 14:54:48.png](/.attachments/29918865.png)





### Category/Usage/Standard Value Key and Control Key



SAP work centers encompass several attributes regarding categories, key for controlling task types, parameters with standard values and business transactions. 
<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Category</strong></p></td><td class="confluenceTd"><p> </p></td></tr><tr><td class="confluenceTd"><p>0001</p></td><td class="confluenceTd"><p>Machine</p></td></tr><tr><td class="confluenceTd"><p>0005</p></td><td class="confluenceTd"><p>Plant Maintenance</p></td></tr><tr><td colspan="1" class="confluenceTd">0007</td><td colspan="1" class="confluenceTd">Work Center on Prod Line (TN01)</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Usage</strong></p></td><td class="confluenceTd"><p>Key to control which type of task list a team member can use.  </p></td></tr><tr><td class="confluenceTd"><p>004</p></td><td class="confluenceTd"><p>Only maintenance task lists</p></td></tr><tr><td class="confluenceTd"><p>007</p></td><td class="confluenceTd"><p>Only rate routing</p></td></tr><tr><td colspan="1" class="confluenceTd">008</td><td colspan="1" class="confluenceTd">Master recipe + process order</td></tr><tr><td colspan="1" class="confluenceTd">009</td><td colspan="1" class="confluenceTd">All task list types (TN01)</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Standard Value Key</strong></p></td><td class="confluenceTd"><p>The system uses standard values as parameters with origin "standard value" in formulas to calculate execution time, capacity and costs.  </p></td></tr><tr><td class="confluenceTd"><p>SAP0</p></td><td class="confluenceTd"><p>No standard value</p></td></tr><tr><td class="confluenceTd"><p>SAP1</p></td><td class="confluenceTd"><p>Normal production</p></td></tr><tr><td colspan="1" class="confluenceTd">Z001</td><td colspan="1" class="confluenceTd">Production line with efficiency (TN01)</td></tr><tr><td colspan="1" class="confluenceTd">Z003</td><td colspan="1" class="confluenceTd">Tempe production</td></tr><tr><td colspan="1" class="confluenceTd">Z004</td><td colspan="1" class="confluenceTd">HP standard value key</td></tr><tr><td colspan="1" class="confluenceTd">ZAP1</td><td colspan="1" class="confluenceTd">Production line - Belo</td></tr><tr><td colspan="1" class="confluenceTd">ZAP2</td><td colspan="1" class="confluenceTd">Production with efficiency +overh</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Ctrl Key</strong></p></td><td class="confluenceTd"><p>Determines which business transaction should be executed for the object that belongs task list or order (for example: scheduling or costing.)  </p></td></tr><tr><td class="confluenceTd"><p>PP01</p></td><td class="confluenceTd"><p>Routing/Ref. op set - internal proc.</p></td></tr><tr><td class="confluenceTd"><p>SM01</p></td><td class="confluenceTd"><p>Service intern.</p></td></tr><tr><td colspan="1" class="confluenceTd">Z001</td><td colspan="1" class="confluenceTd">Routing/schedule & capacity only - no cost (TN01)</td></tr><tr><td colspan="1" class="confluenceTd">Z002</td><td colspan="1" class="confluenceTd">Routing/no schedule, capacity or costing.</td></tr><tr><td colspan="1" class="confluenceTd">ZC0S</td><td colspan="1" class="confluenceTd">Tempe mfg. routing: costing/confirmation</td></tr><tr><td colspan="1" class="confluenceTd">ZP04</td><td colspan="1" class="confluenceTd">Routing - in house prod. no mile stone.</td></tr><tr><td colspan="1" class="confluenceTd">ZP06</td><td colspan="1" class="confluenceTd"><p>Routing - for capacity, no confirmation</p></td></tr></tbody></table>



#### Screen Activity


SAP work centers package enables end user to perform the following activities:

- Configure SAP work centers

- Add, delete or modify SAP work center records

- Determine and review plant codes, work centers, descriptions and categories

- Establish and monitor usage, standard value keys and control keys

Pre Condition
The following data needs to be pre-configured (if used) before user configures SAP work centers 

- The phoenix system should contain plant codes, work centers, descriptions and categories

- The end user should have access to usage, standard value key and control key information



#### Screen Dependency


The following screen(s) have direct dependency with SAP work center

- [Production Order / Work Order Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Custom Controls](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/SAP-Work-Centers.md)
[WIP Maintenance (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)
- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="SAPWorkCenters-Fields/Functions.1">Fields/Functions</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Plant Code</p></td><td class="confluenceTd"><p>SAP and Phoenix Identifier of plant location.</p></td></tr><tr><td colspan="1" class="confluenceTd">Work Center</td><td colspan="1" class="confluenceTd"><span>Work centers are used in task list operations and work orders or a</span><span>n area in a site where inventory is manufactured or processed. </span><span>Work centers are also used to divide the portions of a routing along functional work lines.</span></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Description of Work Center.</p></td></tr><tr><td class="confluenceTd"><p>Category</p></td><td class="confluenceTd"><p>SAP Work Center Categories include: 001 Machine; 005 Plant Maintenance; 007 Work Center on Prod Line.</p></td></tr><tr><td colspan="1" class="confluenceTd">Usage</td><td colspan="1" class="confluenceTd">Controls the following task types to be used: 004 equipment maintenance task list; 007 Rate Routing; Master recipe + process order; 009 All task list types.</td></tr><tr><td colspan="1" class="confluenceTd">Standard Value Key</td><td colspan="1" class="confluenceTd">Used to calculate execution time, capacity and costs: SAP0 (no standard value); SAP1 (normal production); Z001 (production line with efficiency); Z003 (Tempe production); Z004 (HP standard value key); ZAP1 (production line BELO); ZAP2 (production with efficiency+overh)</td></tr><tr><td colspan="1" class="confluenceTd">Ctrl Key</td><td colspan="1" class="confluenceTd">Determines which business transactions should be executed for the object that belongs to the task list or order: PP01 (Routing/Ref. op set - internal proc); SM01 (Service intern); Z001 (Routing/schedule & capacity only - no cost); Z002 (Routing/no schedule, capacity or costing); ZC0S (Tempe mfg. routing: costing/confirmation); ZP04 (Routing - in house prod. no milestone); ZP06 (Routing - for capacity, no confirmation)</td></tr></tbody></table>



#### Attachments

[image2013-5-13 14:56:50.png](/.attachments/29918864.png)
[image2013-5-13 14:54:48.png](/.attachments/29918865.png)
[image2013-5-13 14:53:38.png](/.attachments/29918866.png)
[image2013-5-13 14:52:35.png](/.attachments/29918867.png)
[image2013-5-13 14:51:13.png](/.attachments/29918868.png)
[image2013-5-13 14:49:11.png](/.attachments/29918869.png)
[image2013-5-13 14:47:29.png](/.attachments/29918870.png)
[image2013-4-1 16:6:14.png](/.attachments/29918871.png)
[image2013-4-1 15:52:8.png](/.attachments/29918872.png)
[image2013-4-1 15:20:34.png](/.attachments/29918873.png)
[image2013-4-1 13:33:2.png](/.attachments/29918874.png)
[image2013-4-1 13:30:21.png](/.attachments/29918875.png)
[image2013-4-1 13:26:45.png](/.attachments/29918876.png)
[image2013-4-1 13:21:12.png](/.attachments/29918877.png)
[image2013-4-1 13:20:7.png](/.attachments/29918878.png)
[image2013-4-1 13:8:21.png](/.attachments/29918879.png)
