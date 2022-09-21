# Introduction

Package Type describes the material's shape, size, orientation and dimension. 
Packages can be grouped into three general categories; Dual In-line Packages, Chip Carriers and Grid Arrays. When defining a 
[Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md), user can associate the material to a package type. 



### **How to get there?** 



::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("PACKAGE TYPE")

:::


#### **Screen Activity** 


Package Type Maintenance enables user to perform the following activity:

- Create, view, update and delete Package Type

- Upload the package image for easier identification




#### **Screen Dependency** 




- *Material*

[ Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/GRN-Hold-Data-Importer.md)


**Fields** 
<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Package Type Name</p></td><td class="confluenceTd"><p>The unique name given to the package type</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Data Sheet URL</span></td><td colspan="1" class="confluenceTd">Allows user to enter a path or URL to the package type Data Sheet. <br />The data sheet contains the location and orientation of pins to help the Analysis and Rework operators to perform their work.</td></tr><tr><td colspan="1" class="confluenceTd">JEDEC Code</td><td colspan="1" class="confluenceTd">JEDEC Codes is a set of standardized packaging codes provided and governed by the JEDEC body</td></tr><tr><td colspan="1" class="confluenceTd">JEDEC Orientation</td><td colspan="1" class="confluenceTd">JEDEC Orientation is a standardized package orientation provided and governed by the JEDEC body</td></tr><tr><td colspan="1" class="confluenceTd">Package Image File</td><td colspan="1" class="confluenceTd">Allows user to upload an image for this package type. Only image file format will be accepted by the system. </td></tr></tbody></table>


