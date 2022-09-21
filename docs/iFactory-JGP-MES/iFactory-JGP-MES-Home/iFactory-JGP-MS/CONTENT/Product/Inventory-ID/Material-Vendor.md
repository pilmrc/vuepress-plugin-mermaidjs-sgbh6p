# Introduction

Material vendor maintenance functionality permits entering supplier codes and vendor names. This screen allows team members to store vendor code names, specifications, examine supplier descriptions and investigate current vendor codes. 



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("MATERIAL VENDOR")

:::
![image2013-5-13 15:10:48.png](/.attachments/29919398.png)





#### General 


Functionality
The Phoenix system allows team members to
**create or update material vendor** codes and names. This integrated manufacturing system confirms no identical information exist before saving a new record. ![image2013-5-13 15:16:23.png](/.attachments/29919397.png)


If a 
**duplicate record** exists the system will display an error message "**material vendor entered already exists.** "![image2013-5-13 15:17:38.png](/.attachments/29919396.png)



If a vendor code or name is manually entered incorrectly the system will generate an error code "
**no record to display.** "![image2013-5-13 15:18:59.png](/.attachments/29919395.png)



The search function 
![image2013-3-19 10:56:39.png](/.attachments/29919406.png)


permits end users to browse a pop-up window for locating material vendor codes or names. The grid below provides team members with data entry fields limiting inquiry results to supplier codes and names. 
![image2013-5-13 15:22:0.png](/.attachments/29919394.png)




The 
**clear function** allows end users to eliminate all information in the material vendor code and name field. This function does not discard saved records, it will only clear unsaved changes in the current field. ![image2013-5-13 15:23:28.png](/.attachments/29919393.png)



The 
**delete function** indefinitely eliminates selected material vendor codes and names from the material vendor data table. This activity will show a confirmation message to the end user before deleting a material vendor record. "**Are you sure you want to delete item** **number 0000xxxxxxx** ." This confirmation message displays the vendor code before being removed. If a record requires deletion, the Phoenix manufacturing system will display a message after a record has been removed "**material vendor deleted** ." Select**"OK** " for deleting a record or "**cancel** " for terminating this function.![image2013-5-13 15:24:33.png](/.attachments/29919392.png)





#### Screen Activity


Material Vendor enables end user to perform the following activities:

- Create, store, update or delete material vendor codes and names.

- Monitors the phoenix system for duplicate or incorrect vendor codes and names.

- Search for vendor codes and names.


#### Pre Condition


The following data needs to be pre-configured (if used) before end user configures material vendor maintenance module. 

- Provide end user with a list of current material vendor codes and names.

- Populate current material vendor codes and names in the Phoenix system.



#### Screen Dependency


The following screen(s) have direct dependency with material vendor maintenance 

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Material Manufacturer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [WIP Material View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-Material-View.md)



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="MaterialVendor-Field/Functions">Field/Functions</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>BOM</p></td><td class="confluenceTd"><p>Bill of materials (BOM) is a list of raw materials, sub-assemblies, intermediate assemblies, sub-components, parts and quantities of each needed to manufacturer an end product.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</p></td></tr><tr><td class="confluenceTd"><p>Material Vendor Code</p></td><td class="confluenceTd"><p>The vendor code function allows team member to enter a new vendor codes or search for existing vendor codes.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material Vendor Name</td><td colspan="1" class="confluenceTd">The vendor name function allows end user to enter a new vendor description or view descriptions of an existing vendor code.</td></tr><tr><td colspan="1" class="confluenceTd">Search</td><td colspan="1" class="confluenceTd">The Phoenix systems permits a end user to locate current material vendor codes and names.</td></tr><tr><td colspan="1" class="confluenceTd">Save</td><td colspan="1" class="confluenceTd"><span>The act of committing entered data to the phoenix system database. Any additional data validations should be done immediately prior to saving. If validation fails, data should not be committed to the database and an error will be displayed to the end user. </span></td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd">This function allows team members to indefinitely eliminate selected material vendor codes and names from the material vendor data table.</td></tr></tbody></table>



#### Attachments

[image2013-5-13 15:24:33.png](/.attachments/29919392.png)
[image2013-5-13 15:23:28.png](/.attachments/29919393.png)
[image2013-5-13 15:22:0.png](/.attachments/29919394.png)
[image2013-5-13 15:18:59.png](/.attachments/29919395.png)
[image2013-5-13 15:17:38.png](/.attachments/29919396.png)
[image2013-5-13 15:16:23.png](/.attachments/29919397.png)
[image2013-5-13 15:10:48.png](/.attachments/29919398.png)
[image2013-3-20 8:52:9.png](/.attachments/29919399.png)
[image2013-3-19 13:53:34.png](/.attachments/29919400.png)
[image2013-3-19 13:38:14.png](/.attachments/29919401.png)
[image2013-3-19 13:37:2.png](/.attachments/29919402.png)
[image2013-3-19 11:49:2.png](/.attachments/29919403.png)
[image2013-3-19 11:48:6.png](/.attachments/29919404.png)
[image2013-3-19 11:24:8.png](/.attachments/29919405.png)
[image2013-3-19 10:56:39.png](/.attachments/29919406.png)
[image2013-3-19 10:55:50.png](/.attachments/29919407.png)
[image2013-3-19 10:43:18.png](/.attachments/29919408.png)
[image2013-3-19 10:30:10.png](/.attachments/29919409.png)
[image2013-3-19 9:54:42.png](/.attachments/29919410.png)
[image2013-3-19 9:13:25.png](/.attachments/29919411.png)
[image2013-3-19 9:5:9.png](/.attachments/29919412.png)
[image2013-3-19 9:3:18.png](/.attachments/29919413.png)
[image2013-3-19 8:59:13.png](/.attachments/29919414.png)
[image2013-3-19 8:58:52.png](/.attachments/29919415.png)
[image2013-3-18 15:51:2.png](/.attachments/29919416.png)
