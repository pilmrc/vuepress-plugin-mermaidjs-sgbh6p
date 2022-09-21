# Introduction


- The material appears in the assemble screen but no need to be assembled


*CAUSE* 
Assemble point was wrongly included the problem material 
or incorrect assemble type was configured for the problem material

*SOLUTION* 

- Go to BOM Maintenance. Load the BOM for the top level material to see whether the problem material is in BOM or not and make sure the bom is correct.


- Go to Assemble Point, search the top level material to load its assemble point, refresh assemble point,

make sure correct assemble type is configured for the problem material and save.
. For more details, see [Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md). 
- Notify planner to cancel the Planned Order/Production Order.

- Notify planner to create new Planned Order/Production Order and release WIP base on the correct assemble point.




- The material needs to be assembled but not appear in the assemble screen


*CAUSE* 
Assemble point was not included the problem material or incorrect assemble type was configured for the problem material

*SOLUTION* 
- Go to BOM Maintenance. Load the BOM for the top level material to see whether the problem material is in BOM or not and make sure the bom is correct.


- Go to Assemble Point, search the top level material to load its assemble point, refresh assemble point, make sure correct assemble type is configured for the problem material and save. For more details, see

[Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md). 
- Notify planner to cancel the Planned Order/Production Order.

- Notify planner to create new Planned Order/Production Order and release WIP base on the correct assemble point.





- When assemble Language Kits at Fru Assemble screen, all the components under this TLA is configured as auto assemble, the assemble button is unable


*CAUSE* 
At lease one component should be configured as manual assemble

*SOLUTION* 
- Go to Material Maintenance-"Assemble, change the Assemble Actions to Manual assemble.


- Refresh the assemble screen


![1.JPG](/.attachments/29920258.jpg)






#### Attachments

[1.JPG](/.attachments/29920258.jpg)
