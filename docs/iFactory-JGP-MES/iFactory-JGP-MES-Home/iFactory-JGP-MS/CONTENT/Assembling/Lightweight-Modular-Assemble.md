# Introduction

The Lightweight Modular Assemble station is a web-based station that enables users to assemble and disassemble materials on a WIP. The materials displayed for assemble in an assembly route step is defined in Assemble Point and the Route Step's Assemble tab. 


### **How to get there?** 



::: mermaid
graph LR
A("PRODUCTION")-->0("STATION LOGIN")

:::
![image2013-5-16 15:48:1.png](/.attachments/29919703.png)


Select the “
**Assemble"**  Station Type operation. This includes choosing the correct factory, routes, resources and route steps then selecting the **“login** ” button. ![image2014-5-18 14:38:34.png](/.attachments/29917722.png)





#### **Pre-Condition** 



- A route step type configured with Station Type = Assemble is created. Any route step that is associated to this route step type will bring up the Assemble User Interface when user logs in.


Example: Route Step Type Name = Assemble

- Assemble route step was created in Route Maintenance.


Example: Go to Route Maintenance. Create a route step name "Node Assemble 2". In Edit Route Step window " General tab, this route step is to be configured with the route step type created above (Route Step Type Name = Assemble)


- Assemble Type created in Assemble Type Maintenance


Example:  Assemble Type Name = Assemble 2


- Assemble Type has been configured for the route step in Route Maintenance


Example: For top level material 400-0034-03, materials 055-0032-01 & 415-0035-01 are to appear for assembly in the route step created above. 

Go to Route Maintenance, double click on the route step name "Node Assemble 2". In Edit Route Step window " Assemble Types tab, add the assemble type "Assemble 2"



- Assemble Point is configured for the material.


Example: In Assemble Point Maintenance, load the assemble point for top level material 400-0034-03, locate the valid materials 055-0032-01 & 415-0035-01. Right click on each of them and click "Edit". In the Assemble Point Item Edit window, assign assemble type 
"Assemble 2". Configure data collection on assemble if required for this material. Configure assemble sequence for this material if required. Save the assemble point configuration. 
When user logs into 
"Node Assemble 2", both materials 
055-0032-01 & 415-0035-01 shall appear for assembly in this route step.


- If material name (part number) scan is required for the material, this has to be pre-configured in Material Maintenance's Assemble Tab. Ensure the "Enforce Material Name" is checked


- If MPN scan is required for the material,

this has to be pre-configured in Material Maintenance's Assemble Tab " Material Matching

- Visual Aid is configured for the top level material (if any)




#### **Screen Activities** 



- Assemble materials as defined in the route step and assemble point



- Disassemble materials. Only able to disassemble materials that has been assembled at this route step


- Scan material name (part number), Serial Number, MPN and Data Collection during assembly according to the material configuration


- Display visual aid as configured for the top level material





#### **Assemble** 



- Login to the assemble station


- To begin, scan the WIP Serial Number in Scan WIP Field. WIP Details will be displayed right next to the WIP


- In the "Items to Assemble" tab, system will display the materials to be assembled in this route step. Scan/enter Part Number, Serial Number, MPN and Data Collection as prompted by the system.


- **Once the material is successfully assembled to the WIP, it will be moved to the "Already Assembled" tab**


![image2014-5-18 14:38:34.png](https://mail.google.com/mail/ca/u/0/?ui=2&ik=f03a5dcb1a&view=att&th=1460b47ffc5a5e11&attid=0.1&disp=emb&realattid=ii_1460b29c46e578ad&zw&atsh=1)





#### **Disassemble** 





- Go to the "Already Assembled" tab


- Select the material to disassemble


- Click the "Disassemble" button


- System will prompt a confirmation message to disassemble. Click "OK"


- The material will be disassembled from the WIP and reappear back at the "Items to Assemble" tab for reassembly.


Note: Disassemble of materials is restricted by the Assemble Type of the route step. If route step's Assemble Type = Assemble 2, only materials in assemble point with 
Assemble Type = Assemble 2 can be diassembled in this route step.

![image2014-5-16 11:3:0.png](/.attachments/29917723.png)




#### Attachments

[image2014-5-18 14:38:34.png](/.attachments/29917722.png)
[image2014-5-16 11:3:0.png](/.attachments/29917723.png)
