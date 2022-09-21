# Introduction

Organization Unit Maintenance is a configuration screen where authorized user is able to associate organizational units (OU) with alternative name‘s scope. Based on the association , the alternative name will be available for selection in Inspection Plan ( e.g . field : Production Process )  and Inspection Registration ( e.g field : Submission Unit and Production Process ).


### How to get there?



::: mermaid
graph LR
A("Route")-->0("organization Units maintenance")

:::


#### **Screen Activity** 


Organization Unit Maintenance enables user to perform the following activity:

- Create, view, update and delete Organization Maintenance records

- Associate Organization Units to
[Scope](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)and [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md).


#### **Permission ( ifactory Application)** 



- Organization Units Maintenance (iFactory)


- Can Access Organization Units Maintenance


- Can Modify Organization Units Maintenance



#### **Pre-conditions** 



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)
needs to be configured and assigned to current user, before user configures Organization Units.
- Scope against
[Route Step Alternative Name](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)should be configured as set as Active
- Selected
[Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)must have the customer associated against added materials
- User must have proper activity
[permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Permissions.md)on OU Maintenance screen

#### **Screen Dependency**  



- [Inspection plan](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Plan.md)


- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)


- [Route Step Alternative Name](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)



#### **Screen Specification** 



- System validates unique
configuration combination of customer, scope and organization unit. If duplicates, throws error and new data does not get created

- System restricts selection of a customer against which no active scope is associated

- System restricts the same scope name configured for different customer.


#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Actions</p></td><td style="text-align: left;" class="confluenceTd"><p>User can Edit / Delete each record against each Organization Unit grid records</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Customer</p></td><td style="text-align: left;" class="confluenceTd"><p>Organization Unit needs to be associated with an active customer. System allows to select only the customer which (s)he selected at the time of login.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Scope</p></td><td style="text-align: left;" class="confluenceTd"><p>Organization Unit needs to belong to a specific Scope against Route step's alternate name. This field populates after user selects the customer as per Customer partitioning criteria.</p><p>Scope is unique and can't be duplicated even if different customer.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Organization Unit</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>This field allows user to choose the any unit type among three predefined values:</p><ul><li><span style="color: rgb(0,0,0);">Business Unit</span></li><li><span style="color: rgb(0,0,0);">Operation Unit</span></li><li><span style="color: rgb(0,0,0);">Production Unit</span></li></ul></td></tr></tbody></table>





#### Attachments

[image2019-7-31_11-10-34.png](/.attachments/53772695.png)
[image2019-7-31_11-11-51.png](/.attachments/53772696.png)
[image2019-10-18_15-21-54.png](/.attachments/59441178.png)
