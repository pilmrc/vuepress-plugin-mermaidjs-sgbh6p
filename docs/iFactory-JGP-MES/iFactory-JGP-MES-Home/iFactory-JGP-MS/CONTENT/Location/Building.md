# Introduction

A building is a physical block located in a 
*[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)* . Building contains a group of 
[manufacturing area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)and [production area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Production-Area.md)

### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("buILDING")

:::


#### **Permission** 



- Building (iFactory)


- Can Access Building


- Can Modify Building



#### **Screen Activity** 


Building Maintenance enables user to perform the following activity:

- Create, view, update and delete building records

- Associate Building to
[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)


#### **Precondition** 


*Factory* 
needs to be configured before user configures Building.


#### **Screen Dependency** 


The following screen(s) has dependency with Building.

- *[Factory Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*

- *[Manufacturing Area Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*

- *[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*

- *[Resource Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)*



#### **Screen Specification** 


System validates unique
configuration combination of Building, Floor and Factory. If duplicates, throws error and new data does not get created.
![image2019-10-3_10-11-4.png](/.attachments/57639534.png)




#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col style="width: 104.0px;" /><col style="width: 643.0px;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Building</p></td><td style="text-align: left;" class="confluenceTd"><p>The name given to the Building.</p><p>The Building is unique by floor , building and factory</p></td></tr><tr><td colspan="1" class="confluenceTd">Floor</td><td colspan="1" class="confluenceTd">Floor needs to belong to a specific Building. This field allows Floor to be associated to a<span> Building</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Factory</p></td><td style="text-align: left;" class="confluenceTd"><p>Building needs to belong to a specific Factory. This field allows Building to be associated to a<span> </span><u><a href="http://usplnd0wiki01:8090/display/IJM/Factory" style="text-decoration: none;" rel="nofollow">Factory.</a></u></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Description</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description for the building can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Building Type</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allows user to define the purpose of building.</span></p><p><span style="color: rgb(23,43,77);"> </span><span style="color: rgb(23,43,77);">User is allowed to configure one or multiple building type.</span></p><p><span style="color: rgb(23,43,77);">The available building types for selection are general, measuring, testing and production. <br /></span></p><p><span style="color: rgb(23,43,77);">User is allowed to configure additional building type to the existing records but not allowed to remove the existing building type.</span></p></td></tr></tbody></table>




#### **Synchronization** 


Data can be synchronized to MDO


#### Attachments

[image2019-10-3_10-11-4.png](/.attachments/57639534.png)
