# Introduction

A Work Cell is for the data (Product / Equipment / Tools) configuration so that can know the data is belong to which work cell. It will sync to MDO.


### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("WorkCell Maintenance")

:::


#### **Permission** 



- Work Cell Maintenance


- Can Modify Work Cell Maintenance



#### **Screen Activity** 


Work Cell Maintenance enables user to perform the following activity:

- Create, view, update and delete Work Cell records

- Associate Production Area to
[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)


#### **Precondition** 


[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)
needs to be configured before user configures Work Cell.


#### **Screen Dependency** 


The following screen(s) has dependency with Work Cell.

- *[Factory Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)*



#### **Screen Specification** 


System validates unique
configuration combination of Work Cell and Factory. If duplicates, throws error and new data does not get created.
![image2021-9-15_11-38-3.png](/.attachments/99221695.png)




#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Work Cell</td><td style="text-align: left;" colspan="1" class="confluenceTd">The unique name given to the Work Cell.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Factory</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Work Cell can belong to a specific Factory. This field allows Work Cell to be associated to a<span> </span><u><a href="http://usplnd0wiki01:8090/display/IJM/Factory" rel="nofollow" style="text-decoration: none;">Factory.</a></u></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Description</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description for the Work Cell can be entered in this field.</p></td></tr></tbody></table>



#### ***Synchronization***  


Data can be synchronized to MDO


#### Attachments

[image2021-7-14_9-56-30.png](/.attachments/99221692.png)
[image2021-9-15_11-38-3.png](/.attachments/99221695.png)
