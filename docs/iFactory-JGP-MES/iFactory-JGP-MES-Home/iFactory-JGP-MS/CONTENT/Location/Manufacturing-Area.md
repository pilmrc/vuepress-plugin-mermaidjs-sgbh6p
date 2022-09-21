# Introduction

Manufacturing Area or also known as bays in shop floor is a physical area where the production takes place. A Manufacturing Area holds a group of 
*[Manufacturing Area](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)* that will build the *[Manufacturing Area](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)* . A *[Manufacturing Area](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)* can contain multiple Manufacturing Areas and normally Manufacturing Area is segregated by [Manufacturing Area](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md). 


### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("LOCATION")
0-->1("MANUFACTURING AREA")

:::


#### **Screen Activity** 


Manufacturing Area Maintenance enables user to perform the following activity:

- Create, view, update and delete manufacturing area records

- Associate Manufacturing Area to
[Manufacturing Area](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)


#### **Precondition** 


*[Factory ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)* 
, [Building](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Building.md), [Produciton Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Production-Area.md)needs to be configured before user configures Manufacturing Area.


#### **Screen Dependency** 


The following screen(s) has dependency with Manufacturing Area

- *[Factory Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)*

- *[Route Maintenance ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)*

- *[Resource Maintenance ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)*

- *[Feeder Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)*



#### **Screen Specification** 


System validates unique
configuration combination of  Manufacturing Area Name ,Building, Floor , Production Area and Factory. If duplicates, throws error and new data does not get created.
![image2019-10-3_10-20-27.png](/.attachments/57639539.png)




#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Manufacturing Area Name</p></td><td class="confluenceTd"><p>The name given to the Manufacturing Area</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Factory</p></td><td colspan="1" class="confluenceTd"><p>Manufacturing Area needs to belong to a specific Factory. This field allows Manufacturing Area to be associated to a <u><a href="http://usplnd0wiki01:8090/pages/viewpage.action?pageId=31391751">Factory.</a></u></p></td></tr><tr><td colspan="1" class="confluenceTd">Building </td><td colspan="1" class="confluenceTd">Manufacturing Area needs to belong to a specific Building and building type. This field allows Manufacturing Area to associate to a <a href="Building-53772314.html">Building</a>.</td></tr><tr><td class="confluenceTd">Production Area</td><td class="confluenceTd">Manufacturing Area needs to belong to a specific Production area. This field allows Manufacturing Area to be associate to a <a href="Production-Area-95813773.html">Production Area</a>.</td></tr><tr><td class="confluenceTd"><p>Is Offline</p></td><td class="confluenceTd"><p>If this option is enabled, the Manufacturing Area will be set to Offline mode where it cannot be used for material production. <br />The screens stated in <strong>Screen Dependency</strong> section above will not be able to view the offline Manufacturing Area from the Search window.</p></td></tr></tbody></table>




#### Attachments

[image2019-10-3_10-11-4.png](/.attachments/57639537.png)
[image2019-10-3_10-20-27.png](/.attachments/57639539.png)
