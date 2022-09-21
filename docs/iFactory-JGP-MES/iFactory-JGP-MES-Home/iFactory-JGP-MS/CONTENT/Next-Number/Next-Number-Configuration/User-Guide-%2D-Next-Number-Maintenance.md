# Introduction



## ***Introduction to Next Number Maintenance***  



**Next Number Maintenance** 
is used to generate **WIP IDs** , **Container IDs** and **Batch IDs** .   A **User** is required to associate **Next Number Maintenance** in the respective screens (**[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)** , **[Container Type Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number/Next-Number-Configuration/User-Guide-%2D-Next-Number-Maintenance.md)** , **[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)** ) in order for system to generate the **Next Number** based on the format configured in **Next Number Maintenance** .

## ***How to navigate to Next Number Maintenance***  


Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Why is this screen important?***  




**Next Number Maintenance** is used to generate:
- WIP Ids (Serial Numbers)


- Container IDs


- Batch IDs

*Topic 1: How to create a Next Number* 
The 
**Next Number Maintenance** screen contains the following tabs: **Next Number, Sequence Generator, Current Increments,**  and **Consignment List.** 

## ***Next Number***  


tab
**Next Number**  
allows a user to create or modify a **Next Number**  configuration**.** Click to enlarge the image!
![2018-04-04_11-05-07.png](/.attachments/29918750.png)




- **Enter**

the  **Next Number Name** (If you are searching for an existing 
**Next Number Name** , you will type in part of the name of the **Next Number** in the **Next Number**  
Searchbox. This box will also be used in the creation of a **Next Number** )


- **Enter data**
to complete the following fields:
- **Description**

(
additional information about your
**Next Number)** 

- **Type**

(used to display and filter where it is used.  This field is a drop down and you will chose one of 7 types.  To learn more in detail about  the types you can find that on the **WIKI** ).  **(Note:**   
This is a required field**)** 
- **Sequence Type**

(used to determine if the Next Number would be system generated or consigned.  This is also a drop down field. You can get more detailed description  of the Sequence Type . Notes: If the type is Consigned/ ConsignedByAssemblyRevision, the next fields are not required and you can proceed to save.The Sequence Generator Tab will be disabled and Consigment List tab can be used) **(Note:**   
This is a required field**)** 
- **Base Number**

(used to generate the next Number sequence. See the WIKI for the complete list of base numbers).**(Note:**   
This is a required field**)** 
- **Sequence**

With (Next Number character length)**(Note:**   
This is a required field**)** 
- **Increment**

(the increment count of the next number)**(Note:**   
This is a required field**)** 
- **Starting Sequence**

(the first Next Number sequence to be generated).**(Note:**   
This is a required field**)** 
- **Ending Sequence**

(the last Next Number sequence to be generated).**(Note:**   
This is a required field**)** 
- **Sequence Mask**

(the Next Number sequence generated)**(Note:**   
This is a required field**)** 
- **Is Active**

(the availability for the Next Number to be in use).**(Note:**   
This is a required field**)** 3. Add 
**New Segment** (used to format your label
)
**Click to enlarge the image!** 
![image2018-5-22_10-52-40.png](/.attachments/29918742.png)




- **Click**

in the
**Segment Order**  
field and enter the appropriate
**Segment Order.** 

**(Note:**  

This is a required field
**)** 

- **Click**

the
**Drop Down**  
arrow in the
**Segment Type fie** 
ld and select you
r
**Segment Type** 
**.**   
**(Note:**   
This is a required field
**)** 

- **Set**

the**Toggle Switch**  for**Partition On Change**  to either**On**  or**Off.** 
- **Click**

the 
**Confirm** 
button
to 
**Save** your entries. 

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuideNextNumberMaintenance-NextNumberTab"><strong>Next Number Tab</strong></h4></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Next Number<p> </p></td><td class="confluenceTd">The unique name given to the next number</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional information for the next number is entered here</td></tr><tr><td colspan="1" class="confluenceTd">Type</td><td colspan="1" class="confluenceTd"><p>Next Number is filtered and displayed according to its type for user selection. There are multiple types of Next Numbers:</p><ul><li>Batch Number (all next number with this type will appear in customer's auto batch screen for user selection)</li><li>Container ID (all next number with this type will appear in container type screen for user selection)</li><li>Delivery Substitution Next Number</li><li>WIP/Material Serial Number (all next number with this type will appear in material screen for user selection)</li><li>Product Order Substitution Next Number</li><li>WIP Substitution Next Number</li><li>Material Carrier (all numbers with this type will appear in the Customer's Carrier Configuration for Carrier Next Number selection)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Sequence Type</td><td colspan="1" class="confluenceTd"><p>Indicates whether the Next Number shall be system generated or consigned. Sequence Type available:</p><ul><li>System Generated<br />The Next Number is generated by the system based on the Next Number configuration</li><li>Consigned<br />Serial Numbers are pre-loaded for the Next Number. The Serial Number will be assigned to the Assembly using this Next Number.</li><li><span>Consigned by Assembly Revision .<br /></span><span>Serial Numbers are pre-loaded for the Next Number. The Serial Number will only be assigned to the Assembly that was defined during the upload.</span><br /><span><br /> Note: The Next Number configuration does not apply for Consigned and Consigned by Assembly Revision since the Serial Numbers are preloaded for the Next Number.</span></li></ul><p> </p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Base Number</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The base number used to generate the next number sequence</span>. <span style="color: rgb(0,0,0);">Refer to the list of <a href="http://alfrdcmesdoc01:8090/display/PB/Next+Number+Base+Numbers" class="external-link" rel="nofollow">base numbers</a></span></td></tr><tr><td colspan="1" class="confluenceTd">Sequence Width</td><td colspan="1" class="confluenceTd">The next number character length<br />Example: Sequence Width = 4 <br />Next Number = 0001, 0002, 0003  </td></tr><tr><td colspan="1" class="confluenceTd">Increment</td><td colspan="1" class="confluenceTd">The increment count of the next number<br />Example: Increment = 2<br />Next Number = 0001, 0003, 0005 </td></tr><tr><td colspan="1" class="confluenceTd">Starting Sequence</td><td colspan="1" class="confluenceTd">The first next number sequence to be generated. Can be possible to increase the Starting Sequence.<br />Example: Starting Sequence = 0012, first generated next number is 0012</td></tr><tr><td colspan="1" class="confluenceTd">Ending Sequence</td><td colspan="1" class="confluenceTd">The last next number sequence to be generated. System will generate an error if user attempts to generate a sequence exceeding the Ending Sequence<br />Example: Ending Sequence = 1111, last generated next number is 1111.</td></tr><tr><td colspan="1" class="confluenceTd">Sequence Mask</td><td colspan="1" class="confluenceTd">The Next Number sequence generated shall be required to comply to the Sequence Mask if configured. <br />For example, if [0-9] [0-9] <span>[0-9]  is configured as the Sequence Mask, then, the Next Number sequence shall only generate numeric values from 0 to 9</span></td></tr><tr><td colspan="1" class="confluenceTd">Is Active</td><td colspan="1" class="confluenceTd">If checked, the next number is available for use</td></tr><tr><td colspan="1" class="confluenceTd">Segment Order</td><td colspan="1" class="confluenceTd">A next number may comprise of many segments. For the example below, the possible next number generated will be <strong>JBL<span style="color: rgb(255,0,0);">0001</span><span style="color: rgb(0,0,255);">0713</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0002</span><span style="color: rgb(0,0,255);">0713</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0003</span><span style="color: rgb(0,0,255);">0713</span></strong><br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="http://alfrdcmesdoc01:8090/download/attachments/1245274/image2013-2-15+18%3A20%3A47.png?version=1&modificationDate=1360923652867" data-image-src="http://alfrdcmesdoc01:8090/download/attachments/1245274/image2013-2-15+18%3A20%3A47.png?version=1&modificationDate=1360923652867" /></span> </td></tr><tr><td colspan="1" class="confluenceTd">Segment Types and Values + related configuration</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Below are the details of all the Segment Type List available for all Next Number Types:</span></p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th colspan="2" class="confluenceTh">ASSEMBLYREVISION PROPERTIES</th></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><span>Allow user to include Assembly-Revision properties into the Next Number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Batch Number, WIP/Material Serial Number</td></tr><tr><td class="confluenceTd">Partition On Change</td><td class="confluenceTd"><span>Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</span></td></tr><tr><td class="confluenceTd">Segment Value</td><td class="confluenceTd"><p>Allow user to select the exact property to be included:</p><ol><li>ASSEMBLYNUMBER - the Number of the Assembly</li><li>ASSEMBLYREVISION - the Revision of the Assembly</li><li>ASSEMBLYVERSION - the Version of the Assembly</li><li>CUSTOMERNUMBER - the Customer Number of the Assembly</li><li>CUSTOMERREVISION - the Customer Revision of the Assembly</li><li>MATERIALNAME - the Name of the Material that the Assembly is associated to</li><li>PRODUCTFAMILY - the Product Family of the Material that the Assembly is associated to</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>BOM SUBCOMPONENT CUSTOM DATA BY CUSTOM DATA AND VALUE</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include a custom data of a BOM sub-component into the <span>Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to specify the custom data of the BOM sub-component to be included. Specify the material custom data name. E.g. "Model Name"</p></td></tr><tr><td colspan="1" class="confluenceTd">Segment Filter</td><td colspan="1" class="confluenceTd"><p>Allow user to specify which BOM sub-component to look for to retrieve the custom data specified in Segment Value. Specify the material custom data name and value. <span>E.g."FRU-Type[Chassis]"</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Remarks</td><td colspan="1" class="confluenceTd"><p>This feature was developed to cater for NetApp IBM scenario where it is required to retrieve the Model Name of the chassis component to be included into the Next Number for the Product. A material is identified as a chassis by having the material configured material custom data "FRU Type" with value "Chassis", and Model Name is configured as material custom data "Model Name" for all chassis.</p><p>When configure the Next Number, to identify the sub-component, "FRU-Type[Chassis] is configured in Segment Filter. To include the actual Model Name into the Next Number, "Model Name" is configured in the Segment Value.</p></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>CONSTANTS</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to configure a constant value for current Next Number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the constant value</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>CONTAINER PROPERTIES</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include container type name in the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Container ID</td></tr><tr><td colspan="1" class="confluenceTd"><span>Partition On Change</span></td><td colspan="1" class="confluenceTd"><span>Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</span></td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the Container Type</td></tr><tr><td colspan="1" class="confluenceTd">Remarks</td><td colspan="1" class="confluenceTd"><ol><li>User configures container ID next number = BigBoxNextNumber</li><li>Container Type Name = BigBoxType. The next number selected in Container Type Maintenance = BigBoxNextNumber</li><li>In Packout, user clicks "Create Handling Unit". The possible container next number generated are BigBoxType1, BigBoxType2, BigBoxType3</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">CONTAINER TYPE CUSTOM DATA</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include container type custom data value in the Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Container ID</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the container custom data name to retrieve the value</td></tr><tr><td colspan="2" class="confluenceTd">  </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>DATECODE</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include date code of the current date into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="1" class="confluenceTd">Reset On Change</td><td colspan="1" class="confluenceTd"><p>Reset the incremental number to the Starting Sequence when a new value is detected for the selected date code.</p><p>E.g. if Date Code selected is ww for Work Week, when the next number is generated for a new Work Week, running number is reset to the Starting Sequence</p></td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the required date code format. <span style="color: rgb(0,0,0);">Refer to the list of </span><a href="http://alfrdcmesdoc01:8090/display/PB/Next+Number+Date+Codes" class="external-link" rel="nofollow">date codes</a></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>MATERIAL CUSTOM DATA</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to include material custom data value into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Batch Number, Planned Order Number, WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own <span>incremental </span>number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the required material custom data. All available material custom data is listed here for selection.</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">MATERIAL/BOM PROPERTIES</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include material or BOM properties into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd"><span>Batch Number, Planned Order Number, WIP/Material Serial Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own <span>incremental </span>number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required properties as listed below:</p><ol><li>BOMNAME - Name of the BOM for the material</li><li>MATERIALNAME - name of the material</li><li>PLANTCODE - plant code of the material</li><li>PRODUCTFAMILY - product family of the material</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>NEXT NUMBER INCREMENT</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><p>Place the incremental number into the Next Number.</p><p>Generate based on the configuration in Base Number, Sequence Width, Increment, Starting Sequence, Ending Sequence and Sequence Mask</p></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">PRODUCTION ORDER HEADER</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include Production Order field into the Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Production Order Substitution Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required Production Order field</p><ol><li>CUSTOMER - name of the customer</li><li>CUSTOMERALIAS - alias of the customer</li><li>PRODUCTIONORDER - production order number</li><li>SALESORDER - sales order number</li><li>TOPLEVELMATERIALNAME - name of the top level material</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">SERIALIZED MATERIAL DATACOLLECTION</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include the content of a data collection during material serialization into the Next Number generated during the same material serialization process</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the label of the data collection with the content to be included into the Next Number.</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">SYSTEM PROPERTIES</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to include system properties into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd"><p>All Next Number Types</p><p> </p></td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required properties as listed below:</p><ol><li>GLOBALSITEID</li><li>ISOCOUNTRYCODE2</li><li>ISOCOUNTRYCODE3</li><li>ISOCOUNTRYNAME</li><li>ISOCOUNTRYNUMBER</li><li>SITEID - id of the site</li><li>SITENAME - name of the site</li><li>USER - name of the current logged in user<br /><br /></li></ol></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Reset On Change (Extra Notes)</td><td colspan="1" class="confluenceTd"><p>The check box will only be activated when segment type selected = DATECODE<br />If the DATECODE is set to ww and the "Reset On Change" is checked, once the work week has ended, the next number increment will reset back to the Starting Sequence</p><p>Example:</p><p>Last Work Week = Work Week 7<br />Possible next number generated: <strong>JBL<span style="color: rgb(255,0,0);">0001</span><span style="color: rgb(0,0,255);">0713</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0002</span><span style="color: rgb(0,0,255);">0713</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0003</span><span style="color: rgb(0,0,255);">0713</span></strong></p><p><strong><span style="color: rgb(0,0,255);"> </span></strong>Current Work Week = Work Week 8<br />Possible next number generated: <strong>JBL<span style="color: rgb(255,0,0);">0001</span><span style="color: rgb(0,0,255);">0813</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0002</span><span style="color: rgb(0,0,255);">0813</span></strong>, <strong>JBL<span style="color: rgb(255,0,0);">0003</span><span style="color: rgb(0,0,255);">0813</span></strong></p><p><span style="color: rgb(0,0,0);">Notice that the next number has been reset back to 0001 when a new work week starts</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Partition on change (Extra Notes)</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>When Partition On Change is enabled for the Segment Type / Segment Type Value, when there's a change in the value of the Segment Value (also known as Partition Key), the next number will be restarted from its Starting Sequence. <br /><span><br />Example for Next Number XYZ:</span></p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+23%3A4%3A12.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+23%3A4%3A12.png&$format=octetStream" /></span></p><p>For the configuration above, the Segment Value is "Agency Label". There could be multiple values for "Agency Label" where each of these values are called as "Partition Key"</p><p><br />Material-A uses Next Number XYZ to generate Serial Number. Material-A's Agency Label Custom Data value (Partition Key) = X200<br />Release 2 WIPs Serial Number for Material-A<br />Result: <strong><span style="color: rgb(0,0,128);">X200</span><span style="color: rgb(255,0,0);">0001, <strong><span style="color: rgb(0,0,128);">X200</span>0002<br /><br /></strong></span></strong><span style="color: rgb(255,0,0);"><span style="color: rgb(0,0,0);">Material-B uses Next Number XYZ to generate Serial Number. Material-B's Agency Label Custom Data value (Partition Key) = X410</span></span><span style="color: rgb(255,0,0);"><br /></span><span style="color: rgb(255,0,0);"><span style="color: rgb(0,0,0);">Release 3 WIPs Serial Number for Material-B</span></span><strong><span style="color: rgb(255,0,0);"><strong><br /></strong></span></strong><span style="color: rgb(0,0,0);">Result: </span><strong><span style="color: rgb(255,0,0);"><strong><span style="color: rgb(0,0,128);">X410</span>0001, <strong><span style="color: rgb(0,0,128);">X410</span>0002, <strong><strong><strong><strong><span style="color: rgb(0,0,128);">X410</span>0003</strong></strong></strong></strong></strong></strong> </span></strong></p><p><span style="color: rgb(255,0,0);"><span style="color: rgb(0,0,0);">The result above shows with Partition on Change set to <strong>TRUE</strong>, when there's a change of Agency Label's Custom Data Value the Next Number will restart from 0001 (starting sequence). <br />Although Material-A and Material-B are using the same Next Number, both of them have different Segment Value (different Agency Label Value). Therefore when there's a different Segment Value detected, Material-B's Next Number restarts from the first sequence of the next number. In other words, each of them will maintain their set of Next Number without affecting each other. <br /><br />If Partition On Change was set to <strong><span style="color: rgb(255,0,0);">FALSE</span></strong>, Material-B's Next Number would have continued where Material-A's Next Number left off where the WIP Serial Number will be <strong><span style="color: rgb(255,0,0);"><strong><strong><span style="color: rgb(0,0,128);">X410</span>0003, <strong><span style="color: rgb(0,0,128);">X410</span>0004, <strong><strong><strong><strong><span style="color: rgb(0,0,128);">X410</span>0005</strong></strong></strong></strong></strong></strong></strong></span></strong></span></span></p></div></td></tr></tbody></table>















<table class="confluenceTable"><tbody><tr><th colspan="2" class="confluenceTh">ASSEMBLYREVISION PROPERTIES</th></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><span>Allow user to include Assembly-Revision properties into the Next Number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Batch Number, WIP/Material Serial Number</td></tr><tr><td class="confluenceTd">Partition On Change</td><td class="confluenceTd"><span>Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</span></td></tr><tr><td class="confluenceTd">Segment Value</td><td class="confluenceTd"><p>Allow user to select the exact property to be included:</p><ol><li>ASSEMBLYNUMBER - the Number of the Assembly</li><li>ASSEMBLYREVISION - the Revision of the Assembly</li><li>ASSEMBLYVERSION - the Version of the Assembly</li><li>CUSTOMERNUMBER - the Customer Number of the Assembly</li><li>CUSTOMERREVISION - the Customer Revision of the Assembly</li><li>MATERIALNAME - the Name of the Material that the Assembly is associated to</li><li>PRODUCTFAMILY - the Product Family of the Material that the Assembly is associated to</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>BOM SUBCOMPONENT CUSTOM DATA BY CUSTOM DATA AND VALUE</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include a custom data of a BOM sub-component into the <span>Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to specify the custom data of the BOM sub-component to be included. Specify the material custom data name. E.g. "Model Name"</p></td></tr><tr><td colspan="1" class="confluenceTd">Segment Filter</td><td colspan="1" class="confluenceTd"><p>Allow user to specify which BOM sub-component to look for to retrieve the custom data specified in Segment Value. Specify the material custom data name and value. <span>E.g."FRU-Type[Chassis]"</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Remarks</td><td colspan="1" class="confluenceTd"><p>This feature was developed to cater for NetApp IBM scenario where it is required to retrieve the Model Name of the chassis component to be included into the Next Number for the Product. A material is identified as a chassis by having the material configured material custom data "FRU Type" with value "Chassis", and Model Name is configured as material custom data "Model Name" for all chassis.</p><p>When configure the Next Number, to identify the sub-component, "FRU-Type[Chassis] is configured in Segment Filter. To include the actual Model Name into the Next Number, "Model Name" is configured in the Segment Value.</p></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>CONSTANTS</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to configure a constant value for current Next Number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the constant value</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>CONTAINER PROPERTIES</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include container type name in the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Container ID</td></tr><tr><td colspan="1" class="confluenceTd"><span>Partition On Change</span></td><td colspan="1" class="confluenceTd"><span>Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</span></td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the Container Type</td></tr><tr><td colspan="1" class="confluenceTd">Remarks</td><td colspan="1" class="confluenceTd"><ol><li>User configures container ID next number = BigBoxNextNumber</li><li>Container Type Name = BigBoxType. The next number selected in Container Type Maintenance = BigBoxNextNumber</li><li>In Packout, user clicks "Create Handling Unit". The possible container next number generated are BigBoxType1, BigBoxType2, BigBoxType3</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">CONTAINER TYPE CUSTOM DATA</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include container type custom data value in the Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Container ID</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the container custom data name to retrieve the value</td></tr><tr><td colspan="2" class="confluenceTd">  </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>DATECODE</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include date code of the current date into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="1" class="confluenceTd">Reset On Change</td><td colspan="1" class="confluenceTd"><p>Reset the incremental number to the Starting Sequence when a new value is detected for the selected date code.</p><p>E.g. if Date Code selected is ww for Work Week, when the next number is generated for a new Work Week, running number is reset to the Starting Sequence</p></td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the required date code format. <span style="color: rgb(0,0,0);">Refer to the list of </span><a href="http://alfrdcmesdoc01:8090/display/PB/Next+Number+Date+Codes" class="external-link" rel="nofollow">date codes</a></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>MATERIAL CUSTOM DATA</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to include material custom data value into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Batch Number, Planned Order Number, WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own <span>incremental </span>number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to select the required material custom data. All available material custom data is listed here for selection.</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">MATERIAL/BOM PROPERTIES</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allow user to include material or BOM properties into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd"><span>Batch Number, Planned Order Number, WIP/Material Serial Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own <span>incremental </span>number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required properties as listed below:</p><ol><li>BOMNAME - Name of the BOM for the material</li><li>MATERIALNAME - name of the material</li><li>PLANTCODE - plant code of the material</li><li>PRODUCTFAMILY - product family of the material</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"><strong>NEXT NUMBER INCREMENT</strong></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><p>Place the incremental number into the Next Number.</p><p>Generate based on the configuration in Base Number, Sequence Width, Increment, Starting Sequence, Ending Sequence and Sequence Mask</p></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">All Next Number Types</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">PRODUCTION ORDER HEADER</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include Production Order field into the Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">Production Order Substitution Next Number</td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required Production Order field</p><ol><li>CUSTOMER - name of the customer</li><li>CUSTOMERALIAS - alias of the customer</li><li>PRODUCTIONORDER - production order number</li><li>SALESORDER - sales order number</li><li>TOPLEVELMATERIALNAME - name of the top level material</li></ol></td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">SERIALIZED MATERIAL DATACOLLECTION</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Allow user to include the content of a data collection during material serialization into the Next Number generated during the same material serialization process</td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd">WIP/Material Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd">Allow user to specify the label of the data collection with the content to be included into the Next Number.</td></tr><tr><td colspan="2" class="confluenceTd"> </td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey">SYSTEM PROPERTIES</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Allows user to include system properties into the Next Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number Type</td><td colspan="1" class="confluenceTd"><p>All Next Number Types</p><p> </p></td></tr><tr><td colspan="1" class="confluenceTd">Partition On Change</td><td colspan="1" class="confluenceTd">Allow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting Sequence</td></tr><tr><td colspan="1" class="confluenceTd">Segment Value</td><td colspan="1" class="confluenceTd"><p>Allow user to select the required properties as listed below:</p><ol><li>GLOBALSITEID</li><li>ISOCOUNTRYCODE2</li><li>ISOCOUNTRYCODE3</li><li>ISOCOUNTRYNAME</li><li>ISOCOUNTRYNUMBER</li><li>SITEID - id of the site</li><li>SITENAME - name of the site</li><li>USER - name of the current logged in user<br /><br /></li></ol></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>


- **E.g."FRU_Type[Chassis]"**

RemarksThis feature was developed to cater for NetApp IBM scenario where it is required to retrieve the Model Name of the chassis component to be included into the Next Number for the Product. A material is identified as a chassis by having the material configured material custom data "FRU Type" with value "Chassis", and Model Name is configured as material custom data "Model Name" for all chassis.
When configure the Next Number, to identify the sub-component, "FRU_Type[Chassis] is configured in Segment Filter. To include the actual Model Name into the Next Number, "Model Name" is configured in the Segment Value.
**CONSTANTS** DescriptionAllows user to configure a constant value for current Next Number.Next Number TypeAll Next Number TypesSegment ValueAllow user to specify the constant value**CONTAINER PROPERTIES** DescriptionAllow user to include container type name in the Next NumberNext Number TypeContainer IDPartition On ChangeAllow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting SequenceSegment ValueAllow user to select the Container TypeRemarks
- User configures container ID next number = BigBoxNextNumber

- Container Type Name = BigBoxType. The next number selected in Container Type Maintenance = BigBoxNextNumber

- In Packout, user clicks "Create Handling Unit". The possible container next number generated are BigBoxType1, BigBoxType2, BigBoxType3
CONTAINER TYPE CUSTOM DATADescriptionAllow user to include container type custom data value in the Next NumberNext Number TypeContainer IDSegment ValueAllow user to specify the container custom data name to retrieve the value**DATECODE** DescriptionAllow user to include date code of the current date into the Next NumberNext Number TypeAll Next Number TypesReset On ChangeReset the incremental number to the Starting Sequence when a new value is detected for the selected date code.
E.g. if Date Code selected is ww for Work Week, when the next number is generated for a new Work Week, running number is reset to the Starting Sequence
Segment ValueAllow user to select the required date code format. Refer to the list of 
[date codes](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number/Next-Number-Date-Codes.md)**MATERIAL CUSTOM DATA** DescriptionAllows user to include material custom data value into the Next NumberNext Number TypeBatch Number, Planned Order Number, WIP/Material Serial NumberPartition On ChangeAllow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting SequenceSegment ValueAllow user to select the required material custom data. All available material custom data is listed here for selection.MATERIAL/BOM PROPERTIESDescriptionAllow user to include material or BOM properties into the Next NumberNext Number TypeBatch Number, Planned Order Number, WIP/Material Serial NumberPartition On ChangeAllow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting SequenceSegment ValueAllow user to select the required properties as listed below:

- BOMNAME - Name of the BOM for the material

- MATERIALNAME - name of the material

- PLANTCODE - plant code of the material

- PRODUCTFAMILY - product family of the material
**NEXT NUMBER INCREMENT** DescriptionPlace the incremental number into the Next Number.
Generate based on the configuration in Base Number, Sequence Width, Increment, Starting Sequence, Ending Sequence and Sequence Mask
Next Number TypeAll Next Number TypesPRODUCTION ORDER HEADERDescriptionAllow user to include Production Order field into the Next NumberNext Number TypeProduction Order Substitution Next NumberPartition On ChangeAllow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting SequenceSegment ValueAllow user to select the required Production Order field

- CUSTOMER - name of the customer

- CUSTOMERALIAS - alias of the customer

- PRODUCTIONORDER - production order number

- SALESORDER - sales order number

- TOPLEVELMATERIALNAME - name of the top level material
SERIALIZED MATERIAL DATACOLLECTIONDescriptionAllow user to include the content of a data collection during material serialization into the Next Number generated during the same material serialization processNext Number TypeWIP/Material Serial NumberSegment ValueAllow user to specify the label of the data collection with the content to be included into the Next Number.SYSTEM PROPERTIESDescriptionAllows user to include system properties into the Next NumberNext Number TypeAll Next Number Types

Partition On ChangeAllow each unique value of the Segment to retain its own incremental number. Each new Segment running number always starts from configured Starting SequenceSegment ValueAllow user to select the required properties as listed below:

- GLOBALSITEID

- ISOCOUNTRYCODE2

- ISOCOUNTRYCODE3

- ISOCOUNTRYNAME

- ISOCOUNTRYNUMBER

- SITEID - id of the site

- SITENAME - name of the site

- USER - name of the current logged in user


Reset On Change (Extra Notes)The check box will only be activated when segment type selected = DATECODE

If the DATECODE is set to ww and the "Reset On Change" is checked, once the work week has ended, the next number increment will reset back to the Starting SequenceExample:
Last Work Week = Work Week 7

Possible next number generated: **JBL** 0001
0713
, **JBL** 0002
0713
, **JBL** 0003
0713

Current Work Week = Work Week 8
Possible next number generated: **JBL** 0001
0813
, **JBL** 0002
0813
, **JBL** 0003
0813
Notice that the next number has been reset back to 0001 when a new work week starts
Partition on change (Extra Notes)When Partition On Change is enabled for the Segment Type / Segment Type Value, when there's a change in the value of the Segment Value (also known as Partition Key), the next number will be restarted from its Starting Sequence. 


Example for Next Number XYZ:![image2018-5-22_10-52-40.png](http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-4+23%3A4%3A12.png?version=1&modificationDate=1467648250877&effects=drop-shadow)


For the configuration above, the Segment Value is "Agency Label". There could be multiple values for "Agency Label" where each of these values are called as "Partition Key"

Material_A uses Next Number XYZ to generate Serial Number. Material_A's Agency Label Custom Data value (Partition Key) = X200
Release 2 WIPs Serial Number for Material_A
Result: **X200** 
0001, 
**X200** 
0002

Material_B uses Next Number XYZ to generate Serial Number. Material_B's Agency Label Custom Data value (Partition Key) = X410

Release 3 WIPs Serial Number for Material_B

Result: 
**X410** 
0001, **X410** 
0002, **X410** 
0003The result above shows with Partition on Change set to 
**TRUE** , when there's a change of Agency Label's Custom Data Value the Next Number will restart from 0001 (starting sequence). 
Although Material_A and Material_B are using the same Next Number, both of them have different Segment Value (different Agency Label Value). Therefore when there's a different Segment Value detected, Material_B's Next Number restarts from the first sequence of the next number. In other words, each of them will maintain their set of Next Number without affecting each other. 

If Partition On Change was set to **FALSE** 
, Material_B's Next Number would have continued where Material_A's Next Number left off where the WIP Serial Number will be **X410** 
0003, **X410** 
0004, **X410** 
0005


## ***Sequence Generator Tab***  


Click to enlarge the image!
![image2018-5-22_11-11-7.png](/.attachments/29918738.png)




**Click**  
on the**Sequence Generator**  tab to open the  **Sequence Generator window.**  (Note:  
See Red Rectangle
**)**  
- Verify that the correct
**Name**  appears in the**Name**  field**.** 
- **Enter or Search for the correct Assembly Revision Number.**
**(Note:**  

This is a required field
**)** 

- **Enter**
the**Start Date**  in the**Start Date f** ield**(Note:**   you can use the Calendar tool**)**  **(Note:**  

This is a required field
**)** 

- **Enter**
the **Number of Results** **(Note:**  

This is a required field
**)** 

- **Click**
the**Test**  button**.**   
- The results will be displayed in the box under the
**Test** button.
- **Click**
the **Save** icon to **Save** your settings. (See Red Circle)


## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuideNextNumberMaintenance-SequenceGeneratorTab.1"><strong>Sequence Generator Tab</strong></h4></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">Select the BOM to preview the next number generation</td></tr><tr><td colspan="1" class="confluenceTd">Start Date</td><td colspan="1" class="confluenceTd">Applicable if Datecode Segment Type is part of the next number. System will display the next number sequence starting from the selected date</td></tr><tr><td colspan="1" class="confluenceTd">Number of Results</td><td colspan="1" class="confluenceTd">Define the quantity of next numbers to preview</td></tr><tr><td colspan="1" class="confluenceTd">Test button</td><td colspan="1" class="confluenceTd">Click this button to generate a preview of the next number</td></tr><tr><td colspan="1" class="confluenceTd">Preview area</td><td colspan="1" class="confluenceTd">List the next numbers</td></tr></tbody></table>




## ***Current Increments Tab***  


**Current Increments** 
allows the user to modify the last issued **Next Number** (the **Next Number** to skip and start at a different sequence from its last issued **Next Number** .) Normally, this request comes from the customer indicating  a certain range of **Serial Numbers** not to use. This is only applicable if the **Segment Type** has "**Partition On Change** " enabled. Click to enlarge the image!
![image2018-5-22_11-2-8.png](/.attachments/29918739.png)


**Click**  
on the**Current Increments**  tab to open the  **Current Increments** **window** **.** 
**(Note:**   
See Red Rectangle
**)**  

- Verify that the correct
**Name**  appears in the**Name**  field**.** 
- **Enter**
the **Partition Key** in the **Partition Key** field.  **(Note:**  

This is a required field
**)** 

- Enter the
**Sequence** in the **Sequence** field.  **(Note:**  

This is a required field
**)** 

- **Click**

on “+”
button to add your new **Sequence** data.
- **Click**

on the **Save** icon to **Save** your changes.

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h4 style="text-align: center;" id="UserGuideNextNumberMaintenance-CurrentIncrements"><strong>Current Increments</strong></h4><p>Current Increments will only be configurable if "Partition On Change" is set to True for the Segment Type<strong style="text-align: center;">. <br /></strong>Current Increments allows user to modify the last issued next number sequence for each partition key. Each partition key that was used to generate the Next Number will be listed separately for configuration. <br />Going back to the Partition On Change example above, two partition keys were introduced for the next number on WIP Release: X200 & X410. Each of them will be listed separately for configuration.</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-5+0%3A5%3A50.png?version=1&modificationDate=1467651948733" data-image-src="http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-5+0%3A5%3A50.png?version=1&modificationDate=1467651948733" /></span></p><p>User can also pre-configure the Last Issued Next Number for Partition Key that has yet to be used to generate any Next Number. In the Add New Partition section, enter the Partition Key and the Sequence. <br />In the example below, Partition Key is set as S210 (have not been used to generate any next number before) and Sequence 0002. In the upcoming Next Number generation where Agency Label value = S210, <strong><span style="color: rgb(0,0,128);">S210</span><span style="color: rgb(255,0,0);">0003</span></strong> will be generated <br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-5+0%3A8%3A34.png?version=1&modificationDate=1467652112843" data-image-src="http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-5+0%3A8%3A34.png?version=1&modificationDate=1467652112843" /></span> </p><p> </p></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Minimum Sequence</td><td colspan="1" class="confluenceTd"><p>This is the starting sequence of the next number</p></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Sequence</td><td colspan="1" class="confluenceTd">This is the ending sequence of the next number</td></tr><tr><td colspan="1" class="confluenceTd">Last Issued</td><td colspan="1" class="confluenceTd">The last next number sequence generated. <br />If the last issued next number was 0006, on the upcoming next number generation with next number increment of 1, 0007 will be generated</td></tr><tr><td colspan="1" class="confluenceTd">Update Last Issued Sequence</td><td colspan="1" class="confluenceTd">Allows user to change the last issued next number so the upcoming next number generated based on this change. <br />Example:  <span>If the last issued next number was 0006, user can modify the last issued next number to 0010. The upcoming next number generation with increment of 1 will be from 0011 onwards</span></td></tr><tr><td colspan="1" class="confluenceTd">Add New Partition section:<br /><br />Partition Key</td><td colspan="1" class="confluenceTd"><p>To pre-configure a partition key that has yet to be used to generate the next number. See example above</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Add New Partition section:</p><p>Sequence</p></td><td colspan="1" class="confluenceTd">Similar to the "Last Issued" field, i<span>f the sequence was 0006, on the upcoming next number generation with next number i</span></td></tr></tbody></table>











***Consignment***  
***List Tab***   
Create 
**Consignment list** where user can upload predefined **Serial Numbers** for the **Next Number** . Instead of generating new **Next Number** , the system will  uploaded the **Serial Number** to be assigned to the **WIP** . Normally, these **Serial Numbers** are provided by the **Customer** .Click to enlarge the image!

![image2018-5-22_11-31-56.png](/.attachments/29918737.png)



**Click**  
on the**Consignment List**  tab to open the  **Consignment List** 
**window** **.** 
**(Note:**   
See Red Rectangle**)**  
- **Click**
on **Search** button and select the **Next Number** 
- **Click**
on **Browse** button
- **Click**
on **Upload**  button

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h4 style="text-align: center;" id="UserGuideNextNumberMaintenance-ConsigmentList"><strong>Consigment List</strong></h4></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Search Assembly Revision</td><td colspan="1" class="confluenceTd">This applies for Segment Type "Consigment by Assembly Revision" as it is required to provide the Assembly Revision that is allowed to use the uploaded serial numbers.</td></tr><tr><td colspan="1" class="confluenceTd">Browse</td><td colspan="1" class="confluenceTd">Search for the Serial Number upload file. File format accepted are *.csv or *.txt</td></tr><tr><td colspan="1" class="confluenceTd">Upload</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Uploads the list of serial numbers to the system.<br />For Consigned upload, we do not know which material the Serial Number will be assigned. Therefore, Serial Number duplication shall be validated during run-time.</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+21%3A57%3A8.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+21%3A57%3A8.png&$format=octetStream" /></span></p><p> </p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+21%3A57%3A49.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/image2016-7-4+21%3A57%3A49.png&$format=octetStream" /></span></p><p> </p></div></td></tr></tbody></table>

**Search for the Serial Number upload file. File format accepted are \*.csv or \*.txt** UploadUploads the list of serial numbers to the system.

For Consigned upload, we do not know which material the Serial Number will be assigned. Therefore, Serial Number duplication shall be validated during run-time.![image2018-5-22_11-31-56.png](http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-4+21%3A57%3A8.png?version=1&modificationDate=1467644226593&effects=drop-shadow)



![image2018-5-22_11-31-56.png](http://alfrdcmesdoc01:8090/download/attachments/14221380/image2016-7-4+21%3A57%3A49.png?version=1&modificationDate=1467644267670&effects=drop-shadow)





## ***Additional Notes: Important thing to know about Next Number***  



- Updating is limited to the ”Active” check box and Description if the Number has been used to generate next number sequence.

- Generate and preview the next number is in the Sequence Generator tab.

- You can modify the last issued Next Number by using “Current Increments”.

- You can create Consignment list where user can upload Serial Numbers to be assigned to WIP.


## ***Screen Messages***  


The following screen messages may appear when configuring the Next Number Maintenance

Click to enlarge the image!

- For Uploaded Serial Numbers in Consigment tab.

After Serial Numbers are imported , this message will be displayed.

![2018-05-21_16-36-26.png](/.attachments/29918744.png)




## ***The following screens are dependent on information from Next Number Maintenance***  




- Material Maintenance (To configure next number for WIP release & Manual Birth WIP)

- Customer Maintenance (To configure next number for auto batch)

- Container Type Maintenance (To configure next number for box creation)

- WIP Release

- Production Order Packout (old)


#### Attachments

[image2018-5-22_11-31-56.png](/.attachments/29918737.png)
[image2018-5-22_11-11-7.png](/.attachments/29918738.png)
[image2018-5-22_11-2-8.png](/.attachments/29918739.png)
[image2018-5-22_11-0-44.png](/.attachments/29918740.png)
[image2018-5-22_10-59-24.png](/.attachments/29918741.png)
[image2018-5-22_10-52-40.png](/.attachments/29918742.png)
[image2018-5-22_10-46-21.png](/.attachments/29918743.png)
[2018-05-21_16-36-26.png](/.attachments/29918744.png)
[2018-04-04_13-03-57.png](/.attachments/29918745.png)
[2018-04-04_12-31-37.png](/.attachments/29918746.png)
[2018-04-04_12-06-39.png](/.attachments/29918747.png)
[2018-04-04_11-55-28.png](/.attachments/29918748.png)
[2018-04-04_11-26-13.png](/.attachments/29918749.png)
[2018-04-04_11-05-07.png](/.attachments/29918750.png)
