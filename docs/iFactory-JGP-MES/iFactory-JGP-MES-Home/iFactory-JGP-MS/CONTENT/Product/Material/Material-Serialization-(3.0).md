# Introduction

The material serialization screen produces and assigns serial numbers at the component level. This method of generating or assigning serialization does not apply to materials being constructed or examined. Reference the work-in-process (WIP) release screen for assembled or tested material serialization. 

**How to get there?** 

::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("MATERIAL SERIALIZATION")

:::
![image2013-5-13 15:35:4.png](/.attachments/29919429.png)



The material serialization display permits end users to enter or investigate for valid material names and identify a release quantity. Description, release type and client fields are auto-fill fields based on the information in the material maintenance screen. 
![image2013-5-13 15:36:40.png](/.attachments/29919428.png)


In this example the 
**material maintenance** screen currently retains the material name **“000-0002-01”,** plant name **“TN01”** and **"component** **ZROH.”**  ![image2013-5-13 15:37:40.png](/.attachments/29919427.png)



When a team member chooses the 
**search icon** a table of available materials is shown. The **material name** is linked to the components part number and material plant with active material. If a phantom material is selected the box would be checked. The unit of measurement is either each (EA), carton (CR) or piece (PCE). A drop down box listing with material types and associated SAP material types are shown below:
- Assemblies (FERT)

- Sub-assemblies (HALB)

- Components (ZROH)

- Prep parts (ZPRP)

- RMA parts (ZRMA)

- Packaging parts (ZVRP)

- MRO (HIBE)

- Others
![image2013-4-2 11:54:36.png](/.attachments/29919439.png)



The description field auto-populates with data previously configured in the material maintenance screen based on the data entered by the end user in the material field. 
![image2013-5-13 15:39:34.png](/.attachments/29919426.png)



The 
**release quantity** field requires a numeric value; this represents material being released to the shop floor and requiring serialization. The material quantity is based on orders ready for production and quantity must be greater than one. ![image2013-5-13 15:40:39.png](/.attachments/29919425.png)


Based on data entered into the material field, the 
**release type** will auto populate with information previously configured in the material maintenance screen. 
![image2013-5-13 15:42:1.png](/.attachments/29919424.png)



The phoenix system will either:

- **Generate serial number**
- if material is configured without a serial number in the material maintenance screen, the system generates a serial number for that item when it is a work-in-process (WIP).
- **Assign serial number**
- if material is configured as having an existing supplier serial number in the material maintenance screen, the system permits a team member to assign an existing serial number to the material.
![image2013-5-13 15:43:7.png](/.attachments/29919423.png)


The 
**customer field** auto populates with data previously configured in the material maintenance screen based on the material selected.  
![image2013-5-13 15:44:20.png](/.attachments/29919422.png)


Clicking 
**“generate”** created the message **“material 000-0002-01 quantity generated 10”;** “**01910 – 01919”.**  This example shows 10 serial numbers being creating and labels can be printed. ![image2013-5-13 15:45:14.png](/.attachments/29919421.png)





### Screen Activity


Material serialization enables user to perform the following activities:

- Product or assign serial numbers

- Enter or search for valid material names and specify release quantity

- Review material types, unit of measurements (each, carton or piece)

- Determine SAP material types, assign and generate serial numbers

Pre Condition
The following data needs to be pre-configured (if used) before user configures the material serialization package. 

- Ensure the phoenix system contains updated material types and customer identification

- SAP material types and release quantity are funcational and operational

- The phoenix system generates serial numbers successfully

- The material maintenance screen is configured and functioning properly



#### Screen Dependency


The following screen(s) have direct dependency with material serialization

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Material Vendor](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Vendor.md)

- [Material Manufacturer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)

- [WIP Material View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-Material-View.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release.md)


#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="MaterialSerialization(3.0)-Fields/Functions.1"><strong>Fields/Functions</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Fields/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Material Type</p></td><td class="confluenceTd"><p>A grouping together of materials with the same basic attributes such as raw materials, semi-finished products or finished products.</p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">A </span>serial number<span style="color: rgb(0,0,0);"> (also manufacturer's serial number or MSN) is a unique code assigned for<span style="color: rgb(0,51,102);"> identification</span></span><span style="color: rgb(0,0,0);"> of a single unit. Although usually called a number, it may include letters, though ending with digits.</span></p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</p></td></tr><tr><td colspan="1" class="confluenceTd">Bill of Material</td><td colspan="1" class="confluenceTd">Bill of material (BOM) is a list of raw material, sub-assemblies, intermediate assemblies, sub-components, parts and quantities of each needed to manufacturer an end product.</td></tr><tr><td colspan="1" class="confluenceTd">Work-In-Process (WIP)</td><td colspan="1" class="confluenceTd"><span style="color: rgb(17,17,17);">Material that has entered the production process but is not yet a finished product. Work in progress (WIP) therefore refers to all materials and partly finished products that are at various stages of the production process. WIP excludes inventory of raw materials at the start of the production cycle and finished products inventory at the end of the production cycle.</span></td></tr></tbody></table>



#### Attachments

[image2013-5-13 15:45:14.png](/.attachments/29919421.png)
[image2013-5-13 15:44:20.png](/.attachments/29919422.png)
[image2013-5-13 15:43:7.png](/.attachments/29919423.png)
[image2013-5-13 15:42:1.png](/.attachments/29919424.png)
[image2013-5-13 15:40:39.png](/.attachments/29919425.png)
[image2013-5-13 15:39:34.png](/.attachments/29919426.png)
[image2013-5-13 15:37:40.png](/.attachments/29919427.png)
[image2013-5-13 15:36:40.png](/.attachments/29919428.png)
[image2013-5-13 15:35:4.png](/.attachments/29919429.png)
[image2013-4-2 13:9:38.png](/.attachments/29919430.png)
[image2013-4-2 12:58:57.png](/.attachments/29919431.png)
[image2013-4-2 12:47:53.png](/.attachments/29919432.png)
[image2013-4-2 12:28:27.png](/.attachments/29919433.png)
[image2013-4-2 12:24:55.png](/.attachments/29919434.png)
[image2013-4-2 12:17:3.png](/.attachments/29919435.png)
[image2013-4-2 12:7:54.png](/.attachments/29919436.png)
[image2013-4-2 12:1:49.png](/.attachments/29919437.png)
[image2013-4-2 11:58:14.png](/.attachments/29919438.png)
[image2013-4-2 11:54:36.png](/.attachments/29919439.png)
[image2013-4-2 11:29:42.png](/.attachments/29919440.png)
[image2013-4-2 11:17:54.png](/.attachments/29919441.png)
[image2013-4-2 10:45:57.png](/.attachments/29919442.png)
