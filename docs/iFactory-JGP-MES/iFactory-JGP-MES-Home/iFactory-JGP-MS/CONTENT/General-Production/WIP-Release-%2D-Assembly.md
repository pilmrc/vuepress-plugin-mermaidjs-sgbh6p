# Introduction


For Repetitive production it is needed to created the WIP to start production for the order. The WIP release screen allows user to release WIP that belongs to an assembly into the first step of the specified route or create a WIP without release to a route for panelized and later on release to a Route. A unique WIP ID is created for each of released WIP. 


### How to get there?


In the module of Manufacturing Suite. 
![image2017-8-24 14:3:56.png](/.attachments/29918645.png)


Go to: 


::: mermaid
graph LR
A("CONFIGURE ")-->0("WIP RELEASE - ASSEMBLY")

:::


#### Screen Activity


WIP Release - Assembly enables user to perform the following activity:

- Release WIP without specifying an order / Releasing WIP with SAP Work Order with Material Process Type = Repetitive with Work Order.

- Release WIP into an existing batch (choose Existing Batch option)

- Release WIP into a system generated batch ID (choose Auto Batch Id option)

- Release WIP once it is panelized

- Specify the Route to release the WIP

- Specify the quantity of WIP to release

- Generate labels on release


#### Pre Condition


The following data needs to be pre-configured (if used) before user use WIP Release - Assembly 

- Assembly must exist

- BOM must exist for the material

- Material must be associated to the route in
[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
- WIP Release Type must be pre-configured in
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md). This will specify if the WIP ID created during WIP release is generated by the system or manually assigned by user
- If user intends to release WIP in panel, the panel type must first be pre-configured in
[Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md). 
Panel Type is created in Panel Type Maintenance
- If user intends to use "Auto Batch Id" option, Batch Next Number must be pre-configured in
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)'s Configuration Options tab 
Only Next Number with "Batch" type is available for selection in Customer Maintenance.
- If document assigned to the WIP, it must exist and a valid printer must be configured.

- If user intends to use the "Existing Batch" option, a batch associated to the related customer must be pre-configured in
[Batch Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production.md)
- If user wants to associate Work order with WIP, a material of type 'Repetitive with Work Order' to be selected



#### Screen Dependency


The following screen(s) has direct dependency with WIP Release

- [Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)

- *[Batch Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production.md)*

- *[Next Number Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)*
(for next number created for batch)
- [Validation Mask Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)

- *[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)*

- *[BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM.md)*

- *[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)*

- *[Panel Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panel-Type.md)*

- [Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)


*USING AUTOBATCH ID* 


#### Steps To Release when Material Release Type is "Generate Serial Number" and not using Panels: 



There are 3 types of the same option:

- Generate and Release (Default option where the WIPs will get generate at the same time)

- Generate (User can select this option if (s)he wants to generate only but not release yet)

- Release Already generated Serial Number (User can select this option if (s)he has generated SN but needs to be release against Route and step)
![image2022-5-5_9-40-34.png](/.attachments/113771295.png)




- Select the customer/Division

- Select Material (based on material selection, Generate or Assignment of SN options to be appeared)

- Select the Assembly/Revision/Version

- 'Generate and Release' option is selected by default

- Select Route and Route step where WIP to be release after getting generated

- User has to select Manufacturing area in case selected step has more than one Manufacturing area configured in Route Maintenance

- Printer option will appear only if the selected Material has Release Document configured

- Enter the quantity to Release

- Click in "Submit" or press 'Enter' key from keyboard


![image2022-5-5_9-47-48.png](/.attachments/113771297.png)



- If User wants generating only, they can select 'Generate' option. User does not have to enter Route details in that case


![image2022-5-5_10-3-19.png](/.attachments/113771303.png)



- Submit after entering the Qty

![image2022-5-5_10-4-59.png](/.attachments/113771306.png)



- If User wants to release existing generated SN, they can select 'Release already Generated Serial Number' option. Users have to enter Route details in that case


- SAP Work Order field is mandatory to enter during WIP release if the Material belongs to type: "Repetitive with Work Order". If Only 'Repetitive / Board Build', SAP Work Order field is not available

![image2022-5-5_10-6-51.png](/.attachments/113771307.png)



d. Submit it to release in the Route![image2022-5-5_10-8-3.png](/.attachments/113771308.png)



- Once release, user can cross-check over WIP View screen

![image2022-5-5_10-11-0.png](/.attachments/113771309.png)



- Steps To Release when Material Release Type is

"GENERATE SERIAL NUMBER" 
and using Panels:

- Follow the steps for "GENERAL SERIAL NUMBER" and not using Panels from 1 to 5

- Click in "Geneate WIP without Releasing"

![1.png](/.attachments/29918621.png)



- Confirm the message by clicking Okay


![image2018-3-12 11:47:4.png](/.attachments/29918620.png)



- System will display a summary about what was released. Please note that the Release Route and Release Route Step are in blank



![image2018-3-12 11:47:27.png](/.attachments/29918619.png)



- Perform

[Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)[Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)[Panelizatio](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)n
- Select the Customer/Division

- Select the Assembly/Revision/Version

- Select "Scan Label"


![image2017-8-24 14:47:10.png](/.attachments/29918629.png)



- Enter one Serial Number of the Panel.


- Click on "Scan". The system will then display the other serial numbers in the panel.

![image2017-8-24 14:53:47.png](/.attachments/29918628.png)



- Click on "Select Release Route"



![image2017-8-24 14:56:55.png](/.attachments/29918626.png)



- Select the Route to Release


- Click Release to Route

- Confirm the message by clicking Okay

- System will display a summary about what was released

There is the option to Remove the WIP scanned before to release. If the mouse pass over the Serial Number will appear the option
![image2017-8-24 15:21:13.png](/.attachments/29918622.png)




#### **Steps To Release when Material Release Type is**  


"ASSIGNED SERIAL NUMBER" 
and using Panels:
**As prerequisite the WIP have to be**  
[panelized ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)![image2017-8-24 15:3:50.png](/.attachments/29918625.png)



- Select the customer/Division


- Select the Assembly/Revision/Version

- Click in "Scan Labels"

- Enter The Serial Numbers needs to match with the mask of the materials

- Click on "Select Release Route"

- Select the Route to Release

- Click Release to Route

- Confirm the message by clicking Okay

- System will display a summary about what was released.



#### Steps To Release when Material Release Type is 


"ASSIGNED SERIAL NUMBER" 
and not using Panels:

- Select the customer/Division


- Select the Assembly/Revision/Version

- Click in "Scan Labels"

- Enter The Serial Numbers needs to match with the mask of the materials

- Click on "Select Release Route"

- Select the Route to Release

- Click Release to Route

- Confirm the message by clicking Okay

- System will display a summary about what was released.


#### *USING EXISTING BATCH NUMBER* 


If using an existing batch 
number 
(i.e. customer is not configured with auto batch) then the user needs to search and assign to an existing batch number before continuing with the process.The following configuration parameters are enforced:-
1) System will filter the batch numbers to only display those associated to the configured material. 
2) System will not allow the maximum build Qty to be exceeded, so those not configured to be unlimited (set to 0), will not be selectable if the maximum build Qty is reached or the wip release qty would exceed the maximum configured value.
3) For those assemblies that were already generated without release, when they are entered for release, the user will not be prompted to enter a batch. 
![image2017-8-24 15:16:18.png](/.attachments/29918624.png)




#### *Printers and label handling on WIP Release* 


If a single printer is configured to the intial route step and the material has a document assigned, the label will be automatically printed on release of WIP to the route (Note: applies only when WIP not previously generated).
If the WIP has a document assigned, but no printer configured, an error will be thrown and the user is prevented from generating or releasing the WIP:-
![image2018-4-9 12:59:15.png](/.attachments/29918618.png)


If there is a document assigned and there is more than 1 configured printer, the user will be presented with a modal to select the desired printer:-
![image2018-4-9 13:1:26.png](/.attachments/29918617.png)


If the generate or release is validated, the label is printed and the WIP is generated/released successfully:-
![image2018-4-9 13:8:43.png](/.attachments/29918616.png)






#### *Release WIP with SAP Work Order when Material's Process Type = Repetitive with Work Order* 



- Configured Data for WIP Released with Generate Serial Number

- Condition: Material Process Type = Repetitive with Work Order
![image2022-2-16_13-55-45.png](/.attachments/108429383.png)


![image2022-2-16_13-55-59.png](/.attachments/108429384.png)





- Available SAP Work Order for Testing:
![image2022-2-16_13-56-11.png](/.attachments/108429385.png)





- Access into WIP Release - Assembly screen and Enter Material which Material Process Type = Repetitive with Work Order, Release Action = Generate and Release. Expected screen to show SAP Work Order field and it is Mandatory. Successfully Generate & Release WIP.
![image2022-2-16_14-1-7.png](/.attachments/108429391.png)


![image2022-2-16_14-1-21.png](/.attachments/108429392.png)


![image2022-2-16_14-1-33.png](/.attachments/108429393.png)





- Access into WIP Release - Assembly screen and Enter Material which Material Process Type = Repetitive with Work Order, Release Action = Generate. Expected screen to show SAP Work Order field and it is Mandatory. Successfully Generate WIP and the WIP will not assign to any route / route steps.
![image2022-2-16_14-2-33.png](/.attachments/108429394.png)



![image2022-2-16_13-57-51.png](/.attachments/108429386.png)


![image2022-2-16_14-2-49.png](/.attachments/108429395.png)






- Access into WIP Release - Assembly screen and Enter Material which Material Process Type = Repetitive with Work Order, Release Action = Release already Generate. Expected screen does not show SAP Work Order field. Successfully Release the WIP and assign the WIP to the selected route and route steps.
![image2022-2-16_13-58-23.png](/.attachments/108429387.png)




- Release in Batch
![image2022-2-16_13-58-37.png](/.attachments/108429388.png)



- Single Release

![image2022-2-16_13-58-50.png](/.attachments/108429389.png)






- Configured Data for WIP Released with Assigned Serial Number

- Condition: Material Process Type = Repetitive with Work Order

![image2022-2-16_14-3-16.png](/.attachments/108429396.png)



![image2022-2-16_14-3-33.png](/.attachments/108429397.png)




- Access into WIP Release - Assembly screen and Enter Material which Material Process Type = Repetitive with Work Order, Expected screen to show SAP Work Order field, WIP field and they are Mandatory. Successfully Assigned Serial Number for the WIP.

![image2022-2-16_14-3-51.png](/.attachments/108429398.png)




![image2022-2-16_14-4-5.png](/.attachments/108429399.png)









#### Attachments

[image2018-4-9 13:8:43.png](/.attachments/29918616.png)




























































