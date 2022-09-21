# Introduction

Failure Label Maintenance is used to create preset (predefined) Failure Labels that will appear at Manual Test station. Instead of manually entering a Failure Label, user chooses to place a failure on the WIP by the predefined list of Failure Labels. In version 4.0 and above, Failure Label can be assigned by Route Step Type so that only relevant Failure Labels are displayed for user selection.

How to get there?

::: mermaid
graph LR
A("CONFIGURE")-->0("FAILURE LABEL MAINTENANCE")

:::

Screen Activity
Failure Label Maintenance enables user to perform the following activity:

- Create, view, update and delete Failure Labels

- Assign failure label by route step type





### **Screen Dependency** 




- ***[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)***


- *[Route Step Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*






#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd">The <span>Customer/Division where this Failure Label will be associated</span></td></tr><tr><td class="confluenceTd"><p>Failure Label</p></td><td class="confluenceTd"><p>The name given to the preset failure (symptom). The same Failure Label can be created for the same Customer/Division provided the Failure Message is different</p></td></tr><tr><td class="confluenceTd"><p>Failure Message </p></td><td class="confluenceTd">The complete message to describe the symptom</td></tr><tr><td class="confluenceTd">Route Step Type</td><td class="confluenceTd">If configured, only the route steps grouped under this route step type will display the Failure Label. If route step type is not configured for the failure label, the failure label will be displayed in any station that allows user to add failures (unrestricted display).</td></tr></tbody></table>


