# Introduction

Custom Defect List
screen is used to configure the list of visible defects during the inspection and/or repairing activities. The user will have the ability to indicate a defect code in Defect List that shall be disabled for a customer/division so that he/she can predetermine what defects are available for the inspector to select when inspection is performed.
By default the system is providing a list of standard defect (
[Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)) that contains all possible defects to use in the factory. Since it is a global list, it is very huge and the user can have some problem searching for the correct defect. Moreover, some defects are totally useless for some type of business, so with Custom Defect List screen it will be possible to reduce the number of defects available in inspection screens, configuring the list by customer.

### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("QUALITY")
0-->1("CUSTOM DEFECT LIST")

:::
![image2018-4-26 15:48:52.png](/.attachments/29919490.png)




#### **Precondition** 


*[Defect Category](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Category.md)* 
and [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)need to be configured before user can configure Custom Defect List.
Screen Activity

Custom Defect List enables user to perform the following activity:

- Enable/Disable
by customerthe view of a defect in [I&R](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)and [MIE ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Custom-Defect-List-(4.4).md)station



#### **Screen Dependency** 




- **Inspection and Rework Station (**
[I&R](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md))
- Manual Insoection Entry Station (
[MIE](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Custom-Defect-List-(4.4).md))![image2018-4-26 15:52:19.png](/.attachments/29919489.png)




#### **Fields** 



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>General Screen</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division</p></td><td class="confluenceTd"><p>The Customer/Division where the configuration will be applied to. <span style="color: rgb(34,34,34);">The customer/division list will show only values associated to the logged on user</span></p></td></tr><tr><td class="confluenceTd"><p>Defect Category</p></td><td class="confluenceTd"><p>The <a href="Defect-Category-29919498.html">Defect Category</a> to filter the configuration</p></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Customer Defects Grid</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Enabled Flag</span></td><td colspan="1" class="confluenceTd"><span>Flag to Enable/Disable the defect for the selected customer. If Disabled the defect won't be available inMIE and I&R stations</span></td></tr><tr><td colspan="1" class="confluenceTd">Defect</td><td colspan="1" class="confluenceTd">The Defect that needs to be hide/unhide in MIE and I&R</td></tr><tr><td colspan="1" class="confluenceTd">Defect Category Name</td><td colspan="1" class="confluenceTd">The defect Category where the defect belong to. It can be filtered from General Screen field to restrict the list of defect to configure</td></tr></tbody></table>



#### **Runtime functionality** 


In MIE and I&R station the user will be able to select only the defects enabled for the customer
For example, disabling ABRASION defect for "swab_customer" customer, the user will have following configuration and related runtime at MIE and I&R for any WIP of  "swab_customer"
![image2018-4-26 17:8:4.png](/.attachments/29919488.png)



At MIE:
![image2018-4-26 17:10:28.png](/.attachments/29919487.png)



At I&R:
![image2018-4-26 17:13:47.png](/.attachments/29919486.png)



Once the configuration is restored, the defect is available in MIE and I&R stations:
![image2018-4-26 17:15:16.png](/.attachments/29919485.png)


![image2018-4-26 17:19:30.png](/.attachments/29919483.png)



![image2018-4-26 17:18:2.png](/.attachments/29919484.png)





#### Attachments

[image2018-4-26 17:19:30.png](/.attachments/29919483.png)
[image2018-4-26 17:18:2.png](/.attachments/29919484.png)
[image2018-4-26 17:15:16.png](/.attachments/29919485.png)
[image2018-4-26 17:13:47.png](/.attachments/29919486.png)
[image2018-4-26 17:10:28.png](/.attachments/29919487.png)
[image2018-4-26 17:8:4.png](/.attachments/29919488.png)
[image2018-4-26 15:52:19.png](/.attachments/29919489.png)
[image2018-4-26 15:48:52.png](/.attachments/29919490.png)
[image2012-7-23 11:3:43.png](/.attachments/29919491.png)
[image2012-7-23 11:4:56.png](/.attachments/29919492.png)
[image2012-7-23 11:5:22.png](/.attachments/29919493.png)
[image2012-7-23 11:5:28.png](/.attachments/29919494.png)
[image2012-7-23 11:6:17.png](/.attachments/29919495.png)
[image2012-7-23 11:9:10.png](/.attachments/29919496.png)
[image2012-7-23 11:10:17.png](/.attachments/29919497.png)
