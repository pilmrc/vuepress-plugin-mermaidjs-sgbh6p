# Introduction

Submission Unit Maintenance is a configuration screen where authorized user is able to configure submission unit to indicate which unit submitted unit submitted the work order for measurement. Based on the association , the submission unit will be available for selection in Inspection Registration ( e.g field : Submission Unit )


### How to get there?



::: mermaid
graph LR
A("QLMS CONFIGURATION")
:::
![wiki arrow.png](/.attachments/71369265.png)



::: mermaid
graph LR
A("SUBMISSION UNIT MAINTENANCE")
:::


#### Screen Activity


Submission Unit Maintenance enables user to perform the following activity:

- Create, view, update and delete Submission Unit Maintenance records


#### Permission



- Submission Unit Maintenance


- Can access submission unit maintenance.


- Can modify submission unit maintenance



#### Pre Condition



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)

and 
[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)needs to be configured and assigned to current user, before user configures Submission Units.
- User must have proper activity

[permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Permissions.md)
on OU Maintenance screen

#### Screen Dependency



- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)



#### Screen Specification (Level 1)


User is able to Add/Edit/Delete the Submission Unit Name, Type, Description, Customer and Factory.
System validates unique configuration combination of submission unit name, type, customer and factory. If duplicates, system will prompt error and the data will not be created.
If there is any iFactory configuration has been soft deleted in Dimension Maintenance, the entire Level 1 will not be showing on the screen. 
Only if the iFactory configuration has been restored in Dimension Maintenance, then the entire Level 1 will shows on the screen.


#### Screen Specification (Level 2)


User is able to Add or Delete the user in the user list.
If there is any user has been deactivated in the iFactory security, the user will be removed from the user list. If the user is activated again in iFactory Security, the user will not be restored in the user list


#### Field


<table class="relative-table wrapped confluenceTable" style="width: 99.9155%;"><colgroup><col style="width: 15.2848%;" /><col style="width: 84.7716%;" /></colgroup><tbody><tr><th style="width: 15.3001%;" class="confluenceTh">Field</th><th style="width: 84.6154%;" class="confluenceTh">Description</th></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Actions</td><td style="width: 84.6154%;" class="confluenceTd">User can Edit / Delete each record against each Submission Unit grid records</td></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Submission Unit Name</td><td style="width: 84.6154%;" class="confluenceTd"><p>This field is a free text field for user to enter the submission unit name</p><p>Submission unit name must be unique</p></td></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Type</td><td style="width: 84.6154%;" class="confluenceTd">This field allow user to choose the type for the submission unit</td></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Description</td><td style="width: 84.6154%;" class="confluenceTd">This field is a free text field for user to enter the description for the submission unit</td></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Customer</td><td style="width: 84.6154%;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">System allows to select only the customer which (s)he selected at the time of login.</span></p></td></tr><tr><td style="width: 15.3001%;" class="confluenceTd">Factory</td><td style="width: 84.6154%;" class="confluenceTd">System allows to select only the factory which is associated to the customer</td></tr><tr><td style="text-align: center;width: 99.9155%;" colspan="2" class="confluenceTd"><strong>User Configuration</strong></td></tr><tr><td style="text-align: left;width: 15.3001%;" class="confluenceTd">Search Name</td><td style="text-align: left;width: 84.6154%;" class="confluenceTd"><p>Allow user to search by NTID or user name. The search will display user name, NTID and email.</p><p>Once the name have been configured, system is not going to allow the user name again.</p><p>Note: Only the user list to be available against which partitioned Customer is assigned to user through iFactory Security</p></td></tr><tr><td style="text-align: left;width: 15.3001%;" class="confluenceTd">Actions</td><td style="text-align: left;width: 84.6154%;" class="confluenceTd">Allow user to delete the approver from the list</td></tr><tr><td style="text-align: left;width: 15.3001%;" class="confluenceTd">Name</td><td style="text-align: left;width: 84.6154%;" class="confluenceTd"><p>Added approver's Name will display in this field.</p></td></tr><tr><td style="text-align: left;width: 15.3001%;" class="confluenceTd">Employee ID</td><td style="text-align: left;width: 84.6154%;" class="confluenceTd">Added approver's Employee ID will display in this field</td></tr><tr><td style="text-align: left;width: 15.3001%;" class="confluenceTd">Email</td><td style="text-align: left;width: 84.6154%;" class="confluenceTd">Added approver's Email address will display in this field</td></tr></tbody></table>



#### Attachments

[wiki arrow.png](/.attachments/71369265.png)
