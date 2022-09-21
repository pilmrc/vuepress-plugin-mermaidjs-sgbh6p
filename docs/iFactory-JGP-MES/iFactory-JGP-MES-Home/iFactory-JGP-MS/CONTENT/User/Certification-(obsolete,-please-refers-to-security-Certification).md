# Introduction


User Certification is required to ensure the user is qualified to handle certain resource, material or capable to perform the tasks in certain operation. 

Three steps to configure certification
- Create certification records in Certification Maintenance

- The certification required for the
[resource type,](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)[resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md), [material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)are configured in their respective maintenance screens in the Certification tab
- The user will take the certifications required and all their completed certification will be added in their user account through
[User Maintenance " Certification tab](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)or [User Group Maintenance " Certification tab](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)
- When operator tries to access a resource, material or operation, system will check if a certification is required (as configured in step 2 above). If certification is required, system will check whether the operator has the required certification that is still active (as configured in step 3 above). Once system found the operator has the valid certification in either User or User Group Certification tab, the operator is allowed the access. If the required certification is not found, system
will block the operator from proceeding with their task.



### How to get there?





::: mermaid
graph LR
A("ADMINISTRATION")-->0("USER")
0-->1("CERTIFICATIONS")

:::


#### **Screen Activity** 


Certification Maintenance enables user to perform the following activity:

- Create, view, update and delete certification records



#### **Screen Dependency** 


The following screen(s) has dependency with Certification:

- [Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)

- *[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)*



#### **Fields** 


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Certification</p></td><td class="confluenceTd"><p>The unique name given to the Certification</p></td></tr><tr><td class="confluenceTd"><p>Certification Description</p></td><td class="confluenceTd"><p>Additional description for the Certification can be entered in this field</p></td></tr></tbody></table>

