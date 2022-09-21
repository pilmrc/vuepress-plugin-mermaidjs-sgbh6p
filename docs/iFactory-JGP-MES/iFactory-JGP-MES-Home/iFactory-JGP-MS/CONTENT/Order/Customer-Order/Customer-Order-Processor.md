# Introduction

Customer order processor module permits end users to transfer data from a dynamic link library (DLL) file. This data contains import logic for constructing a specific line item from a customer order and generate a BOM which differs from client to client. This screen specifies new importing modules regarding assignment scope, tasks, and edit existing modules. The customer order processor screen provides filtering and display's customer information once entered into this screen.


### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("CUSTOMER ORDER PROCESSOR")

:::
![image2013-5-13 13:40:29.png](/.attachments/29918766.png)





#### General Functionality


This display characterizes a visualization of the primary screen that shows when an end user selects "
**add new records** ." After choosing the "**add new records** " function, the customers information materializes immediately underneath the filter area. This permits end users to indicate a new assignment scope, assignment and importing module. 
![image2013-5-21 15:41:7.png](/.attachments/29918758.png)



Team members have the capability of modifying or removing customer order processor records being presented on screen. 
After entering accurate data into the assignment scope, assignment or importing module fields; selecting the 
**“insert”** function submits a new record into the customer order processor maintenance field. This screen also permits end users to 
**“cancel”**  any records during or after data entry into the 
**“add new record”** form.  
![image2013-5-13 13:49:58.png](/.attachments/29918764.png)



An end user decision regarding 
**"assignment scope"** selections determine system conditions for controlling Phoenix's search field.![image2013-5-21 15:42:17.png](/.attachments/29918757.png)


The Phoenix system alerts end users by-way-of drop-down choices offering one of the following:

- Product Family

- Material

- Customer


Based on a team member choices regarding assignment scope; the Phoenix system will control its search depending on comparable entries in the
**assignment field** regarding similar scope choices.If a team member selects:

- **Product Family**
- search is limited to valid family names.
- **Material**
- search is limited to valid material names. 
- **Customer**
- search is limited to valid customer names. ![image2013-5-13 14:9:19.png](/.attachments/29918762.png)



The 
**importing module** field permits end users to designate dynamic link library (DLL) file names for an assignment scope. All associated DLLs will be saved in folder /../bin/Plug-inAssemblies/[DLLs Go Here]. Because clients have distinctive specifications, the DLL file incorporates logic for each customer; product family and material for converting a sales order into manufactured goods. In this case the DLL file includes logic for determining and creating a BOM from a client's order line item and begin manufacturing products. ![image2013-5-13 14:11:14.png](/.attachments/29918761.png)



The customer order processor screen permits end users to filter regarding assignment scope, importing modules or assignment. Column headers may be dragged-and-dropped into groupings which allow grid record assembly by category.
![image2013-5-13 14:18:54.png](/.attachments/29918760.png)


The footer permits end users to scroll and view available pages. By selecting a number of existing records; team members can and view the total number of accessible items, grid objects and pages. 
![image2013-5-13 14:20:24.png](/.attachments/29918759.png)





#### Screen Activity


Customer Order Processor enables end users to perform the following activity:

- Provides a functionality for adding new records.

- Modify or remove customer order processor records.

- Select assignment scope for choosing product families, materials and customers.

- Control search regarding assignment fields and comparable entries.

- End users are permitted to designate dynamic link library (DLL) files names for an assignment scope.

Pre Condition
The following data needs to be pre-configured (if used) before end users configure the customer order processor module. 

- The Phoenix system makes sure drop-down choices (product family, material and customer) are available.

- Make sure assignment scope, assignment, importing modules and filtering functioning are accessible.

- Provide end users with access to existing records, total pages and grid objects.



#### Screen Dependency


The following screen(s) has direct dependency with Customer Order Processor 

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="CustomerOrderProcessor-Fields/Functions.1">Fields / Functions</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Function</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Assignment Scope</td><td colspan="1" class="confluenceTd">Team members determine system conditions by selecting product family, material or customers characteristics.</td></tr><tr><td colspan="1" class="confluenceTd">Assignment</td><td colspan="1" class="confluenceTd">The Phoenix system is capable of searching for authentic product families, materials or customer names.</td></tr><tr><td colspan="1" class="confluenceTd">Importing Module</td><td colspan="1" class="confluenceTd">Allow end users to determine DLL file names regarding assignment scope.</td></tr></tbody></table>



#### Attachments

[image2013-5-21 15:42:17.png](/.attachments/29918757.png)
[image2013-5-21 15:41:7.png](/.attachments/29918758.png)
[image2013-5-13 14:20:24.png](/.attachments/29918759.png)
[image2013-5-13 14:18:54.png](/.attachments/29918760.png)
[image2013-5-13 14:11:14.png](/.attachments/29918761.png)
[image2013-5-13 14:9:19.png](/.attachments/29918762.png)
[image2013-5-13 13:51:54.png](/.attachments/29918763.png)
[image2013-5-13 13:49:58.png](/.attachments/29918764.png)
[image2013-5-13 13:46:9.png](/.attachments/29918765.png)
[image2013-5-13 13:40:29.png](/.attachments/29918766.png)
[image2013-3-15 15:31:11.png](/.attachments/29918767.png)
[image2013-3-15 14:51:40.png](/.attachments/29918768.png)
[image2013-3-15 13:47:22.png](/.attachments/29918769.png)
[image2013-3-15 13:18:53.png](/.attachments/29918770.png)
[image2013-3-15 13:18:6.png](/.attachments/29918771.png)
[image2013-3-15 12:53:20.png](/.attachments/29918772.png)
[image2013-3-15 12:52:36.png](/.attachments/29918773.png)
[image2013-3-15 12:12:42.png](/.attachments/29918774.png)
[image2013-3-15 12:5:8.png](/.attachments/29918775.png)
[image2013-3-15 11:59:29.png](/.attachments/29918776.png)
[image2013-3-15 11:14:3.png](/.attachments/29918777.png)
[image2013-3-15 11:12:35.png](/.attachments/29918778.png)
[image2013-3-15 8:55:5.png](/.attachments/29918779.png)
[image2013-3-15 8:54:16.png](/.attachments/29918780.png)
[image2013-3-15 8:33:35.png](/.attachments/29918781.png)
[image2013-3-15 8:32:24.png](/.attachments/29918782.png)
[image2013-3-15 8:30:31.png](/.attachments/29918783.png)
[image2013-3-14 16:0:58.png](/.attachments/29918784.png)
[image2013-3-14 16:0:10.png](/.attachments/29918785.png)
[image2013-3-14 15:59:13.png](/.attachments/29918786.png)
[image2013-3-14 15:44:21.png](/.attachments/29918787.png)
[image2013-3-14 15:28:30.png](/.attachments/29918788.png)
[image2013-3-14 15:24:59.png](/.attachments/29918789.png)
[image2013-3-14 15:18:33.png](/.attachments/29918790.png)
[image2013-3-14 15:12:37.png](/.attachments/29918791.png)
[image2013-3-14 15:8:6.png](/.attachments/29918792.png)
[image2013-3-14 14:47:1.png](/.attachments/29918793.png)
[image2013-3-14 14:35:59.png](/.attachments/29918794.png)
[image2013-3-14 11:43:49.png](/.attachments/29918795.png)
