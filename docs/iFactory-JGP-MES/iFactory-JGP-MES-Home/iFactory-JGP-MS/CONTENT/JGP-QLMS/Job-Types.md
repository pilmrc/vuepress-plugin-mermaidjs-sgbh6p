# Introduction

Job Types is a quality methods such as FAI , Sampling , SPC , CPK , GR&R and etc that will take place in laboratory . 

- FAI is stand for  First Article Inspection

- SPC is stand for  Statistical Process Control

- GRR is stand for Gage Repeatability and Reproducibility

- CPK is stand for Process capability index


### How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("JOB Type")

:::


#### **Permission ( Ifactory Application)** 



- Job Type (iFactory)


- Can Access Job Type


- Can Modify Job Type



#### **Screen Activity** 


Job Type Maintenance enables user to perform the following activity:

- Create, view, update and delete Job Type records

- Associate Job Type to
[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)and [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md).


#### **Precondition** 


[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home.md)
and [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)needs to be configured before user configures Job Type.


#### **Screen Dependency** 


The following screen(s) has dependency with Job Type.

- *[Part Cycle Time Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)*

- *[Dimension Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Dimension-Maintenance.md)*

- *[Inspection Plan](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Plan.md)*

- *[Inspection Regisrtation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)*

- *[Task Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation.md)*

- QLMS Reports



#### **Screen Specification** 


System validates unique
configuration combination of Job Type, Factory and customer. If duplicates, throws error and new data does not get created.


#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Job Type</p></td><td style="text-align: left;" class="confluenceTd"><p>The operation name given to the Job Type.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Factory</p></td><td style="text-align: left;" class="confluenceTd"><p>Job Type needs to belong to a specific Factory. This field allows Job Type to be associated to a factory.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Customer</p></td><td style="text-align: left;" class="confluenceTd"><p>Job Type needs to belong to a specific customer. This field allows Job Type to be associated to a customer.</p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type Description </td><td colspan="1" class="confluenceTd"><p>Additional description for the Job Type can be entered in this field</p></td></tr></tbody></table>



#### Attachments

[image2019-10-3_9-59-26.png](/.attachments/57639532.png)
