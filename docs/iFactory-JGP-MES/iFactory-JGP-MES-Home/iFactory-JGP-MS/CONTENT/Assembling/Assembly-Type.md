# Introduction

Assemble Type Maintenance will be used to define the different types of assembly that will happen during the production process.  These assemble types will then be associated to both a Route Step and BOM Items (configured in Assemble Point).  The system will use these associations to determine the route step to prompt the operator to assemble the material. When the material arrives at an assembly route step, system will prompt operator to assemble the material if the Assemble Type on the route step and the Assemble Type configured in Assemble Point for the Bom Item match.



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("ASSEMBLE")
0-->1("ASSEMBLE TYPE")

:::


#### Screen Activity


Certification Maintenance enables user to perform the following activity:

- Create, view, update and delete assembly type

- Configure assembly type as unique in a specific route

- Activate or deactivate assembly type



#### Post Condition


Assembly Type is required to be associated to the assembling route step and BOM component in order for the system to prompt the component to assemble in production. These associations are performed in 
*[Route Step Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)* and *[BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)* screens.


#### Screen Dependency


The following screen(s) has dependency with Assembly Type:

- [Route Step Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)
(specifically for route steps involving component/material assembly)
- [Assemble Point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)



#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Assembly Type Name</p></td><td class="confluenceTd"><p>The unique name given to the Assembly Type</p></td></tr><tr><td class="confluenceTd"><p>Assembly Type Description</p></td><td class="confluenceTd"><p>Additional description for the Assembly Type can be entered in this field</p></td></tr><tr><td class="confluenceTd"><p>Enforce Unique on Route</p></td><td class="confluenceTd"><p>Enforce one Assembly Type to be associated to only one Route Step per Route. This can help to prevent the user from configuring<br /> a component (IE: CPU) to be assembled at more than one route steps in the same route.</p></td></tr><tr><td class="confluenceTd"><p>Is Active</p></td><td class="confluenceTd"><p>If “Is Active” is enabled, the Assembly Type is available for association and usage in Production</p><p>If “Is Active” is disabled, the Assembly Type is not available for association and components with this assembly type will not be prompted <br />for assembly in production.</p></td></tr></tbody></table>



