# Introduction

The Customer Carrier Configuration is used to define the way to create the unique identifier for carriers by the user assigned or system generate. This unique identifier will use to track the materials transported by carriers throughout the manufacturing process.


### How to get there?



::: mermaid
graph LR
A("CUSTOMER")-->0("CUSTOMER CARRIER CONFIGURATION")

:::


#### Screen Activity


Customer Carrier Configuration enables user to perform the following activity:

- Assign Next Number to a customer for system generate carrier number

- Assign Validation Mask to a customer for user assigned carrier number


#### Pre Condition


The following data needs to be pre-configured (if used) before configuration

- Customer

- Next Number

- Validation Mask


#### Screen Dependency


The following screen has direct dependency on this screen

- Create Carrier





#### Process


The process for Customer Carrier Configuration starts off with a search to a Customer. 
![image2016-12-13 11:12:10.png](/.attachments/29917824.png)


Select Validation Mask for a user assigned carrier number.
![image2016-12-13 11:14:0.png](/.attachments/29917823.png)


Select Next Number for a system generate carrier number
![image2016-12-13 11:16:4.png](/.attachments/29917822.png)


The system will display the configured next number / validation mask if the customer has been configured with a next number or validation mask.
![image2016-12-13 11:22:53.png](/.attachments/29917821.png)


![image2016-12-13 11:23:33.png](/.attachments/29917820.png)




#### Fields


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p> </p></td><td class="confluenceTd"><p><strong>Customer Carrier Configuration</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Select Customer</p></td><td class="confluenceTd"><p>Customer Name to be selected. The only<span style="color: rgb(0,0,0);"> Customer assigned to the user will display at the drop down list.</span></p></td></tr><tr><td class="confluenceTd"><p>Validation Mask</p></td><td class="confluenceTd"><p>Validation mask to be selected.</p></td></tr><tr><td class="confluenceTd"><p>Next Number</p></td><td class="confluenceTd"><p>Next Number to be selected</p></td></tr><tr><td class="confluenceTd">Submit</td><td class="confluenceTd">Save the configuration</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Clear the screen without saving the configuration or changes</td></tr></tbody></table>



#### Attachments

[image2016-12-13 11:23:33.png](/.attachments/29917820.png)
[image2016-12-13 11:22:53.png](/.attachments/29917821.png)
[image2016-12-13 11:16:4.png](/.attachments/29917822.png)
[image2016-12-13 11:14:0.png](/.attachments/29917823.png)
[image2016-12-13 11:12:10.png](/.attachments/29917824.png)
