# Introduction

Failure Label Maintenance is used to create preset (predefined) Failure Labels that will appear at Manual Test station and OBA station. Instead of manually entering a Failure Label, user chooses to place a failure on the WIP by the predefined list of Failure Labels in MTE station operation. Although in OBA inspection, the failure is being selected as Failure/Defect so that Site user can see their customized Failures and assign the same to the product. Failure Label can be assigned by Route Step Type so that only relevant Failure Labels are displayed for user selection. 

How to get there?

::: mermaid
graph LR
A("CONFIGURE")-->0("Quality")
0-->1("FAILURE LABEL MAINTENANCE")

:::
![image2020-8-17_6-50-21.png](/.attachments/77136068.png)



Screen Activity
Failure Label Maintenance enables user to perform the following activity:

- Create, view, update and delete Failure Labels

- Assign failure label by route step type

- Copy over the failure to other assigned Customers
![image2020-8-17_6-51-56.png](/.attachments/77136069.png)




### **Screen Dependency** 




- ***[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)***


- *[Route Step Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*



- *[Failure Category Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure/Failure-Category-Maintenance.md)*


#### **Fields** 




<table class="relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 13.4236%;" /><col style="width: 86.6328%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer/Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">The<span> </span><span>Customer/Division is auto-populated as per Customer Data Partitioning. This is where this Failure Label will be associated</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure Category</td><td colspan="1" class="confluenceTd">Al the failure category under the selected Customer to be available in Dropdown option</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Failure Label</p></td><td style="text-align: left;" class="confluenceTd"><p>The name given to the preset failure (symptom). The same Failure Label can be created for the same Customer/Division provided the Failure Message is different</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Failure Description</p></td><td style="text-align: left;" class="confluenceTd">The complete message to describe the symptom</td></tr><tr><td style="text-align: left;" class="confluenceTd">Route Step Type</td><td style="text-align: left;" class="confluenceTd">If configured, only the route steps grouped under this route step type will display the Failure Label. If route step type is not configured for the failure label, the failure label will be displayed in any station that allows user to add failures (unrestricted display).</td></tr><tr><td colspan="1" class="confluenceTd">Copy Failure to Customer/Division</td><td colspan="1" class="confluenceTd"><p>This field will show all the customer/Division where:</p><ol><li>Current user is assigned to</li><li>Select Failure category available against the Customers</li></ol></td></tr></tbody></table>



#### Attachments

[image2020-8-17_6-50-21.png](/.attachments/77136068.png)
[image2020-8-17_6-51-56.png](/.attachments/77136069.png)
