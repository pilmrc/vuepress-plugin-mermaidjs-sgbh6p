# Introduction

Material serialization allows user to create up-front/pre-birth serialized materials in the system for them to be assembled to a WIP at a later stage. Serialized Material can be created in the system either by using
the assigned or generate serial number method. Serial Number normally exist for purchase part and 
if the requirement was to reuse the manufacturer's serial number, the assigned serial number method is used where the operator will scan the Serial Number in this screen to birth the Serial Numbers. Generate Serial Number method as the name describes is to birth Serial Number using the configured Next Number. User is required to define the quantity of Serial Numbers to generate and the system will auto-generate them based on the Next Number for the selected Serialized Material.



### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("MATERIAL SERIALIZATION")

:::


#### Screen Activity


Material serialization enables user to perform the following activities:

- Create/Birth serialized materials using the Assigned Serial Number method

- Create/Birth serialized materials using the Generate Serial Number method

- Preview Serial Numbers to be generated for Generate Serial Number method

Note: When user enters 20 Serial Numbers to be generated, user may want to preview and validate them before they are being created in the system to prevent waste due to incorrect Serial Number generation and printing. For Assigned Serial Number method, user would be able to view all Serial Numbers scanned prior to them being created.  
- Print labels for Generate Serial number method


Note: This is only applicable for Generate Serial Number method as material birthed using Assigned Serial Number method already has existing labels on the material where the Serial Number was obtained
- Collect data using Data Collection that will be incorporated to the Serial Number



Pre Condition

- Material status needs to be "Active" in Material Maintenance. User will not be able to load other material types for material serialization

- Material that requires serialization needs to be configured with Material Type = Serialized Material in Material Maintenance. User will not be able to load other material types for material serialization

- Material needs to be configured with Release Type = Assigned Serial Number or Generate Serial Number in Material Maintenance

- Release Document needs to be configured if there is a label to be printed when the Serial Number is generated. This is configured in Material Maintenance

- Next Number needs to be configured when the Release Type = Generate Serial Number in Material Maintenance

- Validation Mask needs to be configured
when the Release Type = Assigned Serial Number in Material Maintenance
- Configure Data Collection in Next Number using Segment Type
SERIALIZED MATERIAL DATACOLLECTION 
if certain value needs to be collected as part of the Serial Number generation. As the data collections are prompted and collected from Next Number's data collection, the same Data Collection Segment TypeandSegment Valueneed to be configured in Document Maintenance if the Data Collection is required to be printed. Otherwise, an error will occur as there's no matching data collection value to feed the printing. 

Example: 

![image2016-6-26 23:9:5.png](/.attachments/29919446.png)





***Material Serialization - Generate Serial Number method***  ![image2016-6-27 0:17:49.png](/.attachments/29919445.png)


***Material Serialization - Assigned Serial Number method***  


![image2016-6-27 0:20:24.png](/.attachments/29919444.png)





#### Screen Dependency


The following screen(s) have direct dependency with material serialization

- Material

- Next Number

- Data Collection

- Document




#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="MaterialSerialization(4.0)-Fields/Functions.1"><strong>Fields/Functions</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Fields/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Material</span></td><td colspan="1" class="confluenceTd">Enter the material to perform material serialization. Refer to Pre Conditions above that the material must meet for it to be loaded for material serialization</td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">Enter the Printer Name or Printer Number that will be printing the material's labels. This is only applicable and visible if the material using the Generate Serial Number method</td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">When a printer is selected, the printer number will be auto-populated for user's reference. <span>This is only applicable and visible if the material using the Generate Serial Number method</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Quantity</td><td colspan="1" class="confluenceTd"><span>Enter the quantity of Serial Numbers to generate. This is only applicable and visible if the material using the Generate Serial Number method</span></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>For Generate Serial Number method, system will display the preview of Serial Number(s) in this area <br />For Assigned Serial Number method, system will display the Serial Number(s) scanned in this area. User has the ability to remove Serial Numbers from being created by clicking on the trash can icon </p></td></tr><tr><td class="confluenceTd"><p>Data Collection</p></td><td class="confluenceTd"><span>If there are Data Collection(s) configured in Next Number to collect certain values to be part of the material's Serial Number, the data collection will be prompted in this area.<br /><span>Refer to Pre Conditions above. <span>This is only applicable and visible if the material using the Generate Serial Number method</span></span></span></td></tr></tbody></table>





#### Attachments

[image2016-6-27 0:20:24.png](/.attachments/29919444.png)
[image2016-6-27 0:17:49.png](/.attachments/29919445.png)
[image2016-6-26 23:9:5.png](/.attachments/29919446.png)
