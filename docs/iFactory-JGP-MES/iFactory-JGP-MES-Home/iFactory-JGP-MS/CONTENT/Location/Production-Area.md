# Introduction

A Production Area is a physical block located in a 
*[B](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)* [uilding](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Building.md). Production Area contains a group of
[manufacturing area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md).

### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("Production AREA")

:::


#### **Permission** 



- Production Area (iFactory)


- Can Access Production Area


- Can Modify Production Area



#### **Screen Activity** 


Production Area Maintenance enables user to perform the following activity:

- Create, view, update and delete Production Area records

- Associate Production Area to
[Building](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Building.md)


#### **Precondition** 


*[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)* 
and [Building](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Building.md)needs to be configured before user configures Production Area.


#### **Screen Dependency** 


The following screen(s) has dependency with Production Area.

- *[Factory Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*

- *[Building Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Building.md)*

- *[Manufacturing Area Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*



#### **Screen Specification** 


System validates unique
configuration combination of Production Area, Building, Floor and Factory. If duplicates, throws error and new data does not get created.
![image2021-7-14_9-56-30.png](/.attachments/95813775.png)




#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Production Area</td><td colspan="1" class="confluenceTd">The unique name given to the Production Area.</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd"><p>Production Area needs to belong to a specific Factory. This field allows Production Area to be associated to a<span> </span><u><a rel="nofollow" style="text-decoration: none;" href="http://usplnd0wiki01:8090/display/IJM/Factory">Factory.</a></u></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Building</p></td><td style="text-align: left;" class="confluenceTd"><p>Production Area needs to belong to a specific Building. This field allow Production Area to be associated to a Building and Floor. Base on the selected Factory.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Description</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description for the Production Area can be entered in this field.</p></td></tr></tbody></table>



#### Attachments

[image2019-10-3_10-11-4.png](/.attachments/95813774.png)
[image2021-7-14_9-56-30.png](/.attachments/95813775.png)
