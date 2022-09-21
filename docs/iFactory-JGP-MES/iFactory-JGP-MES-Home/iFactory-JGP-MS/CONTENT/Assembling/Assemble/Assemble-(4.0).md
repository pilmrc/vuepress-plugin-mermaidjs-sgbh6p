# Introduction

The Assemble station enables users to assemble materials such as sub-assemblies, serialized materials and unserialized materials to a WIP. 
In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area. 
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step

- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:


### **How to get there?** 




Method 1: Using Generic Workstation

::: mermaid
graph LR
A("1. GENERIC WORKSTATION")-->0("2. SCAN RESOURCE NAME")
0-->1("3. SCAN SERIAL NUMBER THAT IS ENQUEUED AT ASSEMBLE STEP")

:::
![](/.attachments/29917701.png)


**Method 2: Using Stations Login** 

::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK ASSEMBLE ICON")

:::
![](/.attachments/29917700.png)




#### Permission


1) Can Access Manual Station Part Allocation 

2) Can Access Manual Station Setup Sheet 
3) Can Access Assembly Configuration 
4) Can Assemble 
5) Can Configure Tooling

#### Screen Activity



Assemble station enables user to perform the following activity:

- Assemble Sub-Assemblies, Serialized Material and Unserialized Material


#### Pre Condition



The following data needs to be pre-configured (if used)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)

- [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM.md)

- [Assemble Point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)

- [Assemble Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assembly-Type.md)


#### Screen Dependency



The following screen(s) has direct dependency with Assemble Station
- [WIP View Dashboard](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-View.md)

- [Genealogy Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Genealogy-Report.md)

- [As Built Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/As%2DBuilt-Report.md)


#### Assemble Station Interface



Assemble screen will show how many units Completed/Started at current session. 


- Re-entering the station or selecting the Refresh button will reset the Counter to Zero

- Abort Operation will not increase the Counter

![](/.attachments/29917690.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>1.Route Step Name</p></td><td colspan="1" class="confluenceTd">Display Route Step Name for the Assemble Station</td></tr><tr><td colspan="1" class="confluenceTd">2.Scan Serial Number</td><td colspan="1" class="confluenceTd"><p>Look up or Scan Serial Number at this field to start</p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span>3.WIP Serial Number</span></p></td><td colspan="1" class="confluenceTd"><span>Display WIP Serial Number being started.  Clicking on the Serial Number brings up the WIP View window that provide details of the WIP</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span>4.</span><span>Completed/Started</span></p></td><td colspan="1" class="confluenceTd"><span>The number of started and completed lot for the current session. Restart a new session or Refresh button will restart the counter.</span></td></tr><tr><td colspan="1" class="confluenceTd"><p>5.Material</p></td><td colspan="1" class="confluenceTd">Display Material Name of the WIP being started</td></tr><tr><td colspan="1" class="confluenceTd">6.Items to Assemble</td><td colspan="1" class="confluenceTd"><p>All Items required to assembled will be displayed in "Items to Assemble" tab. User can select the Material to assemble.<span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;"> </span></p><p>Enhancement has been done for </p><ul><li>auto complete the assemble process if no item to be assemble (All require assemble item already assembled).</li><li>Material Validation Mask will be use to match with provided assembling WIP serial number if NO validation mask configured at Assembly level. But if Assembly's validation mask also configured, system will base on Assembly Validation Mask to verify provided WIP serial number pattern is match. (ignore Material Validation Mask pattern)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">7.Already Assemble</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>All Items that has been assembled to the WIP and allow user to disassemble them</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="500" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917696.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917684/image2016-7-5%2015%3A56%3A16.png?version=1&modificationDate=1530103780143&api=v2" /></span></p><p>User can select the assembled item from the list and click Disassemble button to disassemble.<br />User can click on Disassemble All button to disassemble all items in the list </p></div></td></tr><tr><td colspan="1" class="confluenceTd">8.Right Panel</td><td colspan="1" class="confluenceTd"><p>Display the information that the user required to scan for the assembly for "Items to Assemble" tab. Display Disassemble and Disassemble All for "Already Assembled" tab</p></td></tr><tr><td colspan="1" class="confluenceTd">9. Abort Button</td><td colspan="1" class="confluenceTd"><p>User can clicks on the Abort button to Abort the WIP and re-enqueue the WIP to the current Route Step</p></td></tr></tbody></table>



- #### Assembling Materials


- A list of required to assemble items for the WIP is display in a sequence configured in Assemble Points.

In Assemble station, this is the order of assemble items:
i. Display all assemble items with in order of the sequence sequences before sequence '9999'. Smallest sequence to appear first in the list. 
ii. Followed by un-sequenced assemble items
iii. Followed by assemble items with sequence '9999'
iv. Followed by Auto-Assemble items

- Auto Assemble Items will display and grayed out at the bottom of the list. User will not need to manual assemble the item. System will auto consumed the auto assemble items when all required assemble items has completed assembled. This depends on the Assemble Actions configured at Material Maintenance

- If the Quantity of the assemble items is more than one and the Automatically split items is unchecked at Material Maintenance, system will display the item to assemble as a single item

![](/.attachments/29917695.png)



- System will based on the configuration to display the information required for user to perform assembly


![](/.attachments/29917688.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>1.Material</p></td><td colspan="1" class="confluenceTd">Display Material field If "Enforce Material Name" is configured at Material Maintenance. User required to scan the Material Name matched with the assemble item</td></tr><tr><td colspan="1" class="confluenceTd">2.Serial Number</td><td colspan="1" class="confluenceTd">Display Serial Number field if the assemble item Material Type is WIP or Serialized Material.<br />System will not accept an incomplete sub-assembly serial number to scan.</td></tr><tr><td colspan="1" class="confluenceTd">3.Manufacturer Part Number (MPN)</td><td colspan="1" class="confluenceTd">Display MPN field if the assemble item required to match with a Manufacturing Part Number configured in Material Maintenance</td></tr><tr><td colspan="1" class="confluenceTd">4. UPD</td><td colspan="1" class="confluenceTd">Display the UPD Name field if the assemble item is configured to enter UPD Value at Unique Product Data</td></tr><tr><td colspan="1" class="confluenceTd">5.Data Collection</td><td colspan="1" class="confluenceTd">Display Data Collection field if the assemble item is configured to collect data from user at Assemble Points. If the Data Collection is required, "!" will be displayed.</td></tr><tr><td colspan="1" class="confluenceTd">7.Assemble Button</td><td colspan="1" class="confluenceTd">After user scan all the required and valid information, user can clicks on Assemble Button to complete assemble the items, system will move the assemble item to "Already Assembled" tab</td></tr></tbody></table>



- System will highlight the scan field in red if invalid value is entered.

![](/.attachments/29917692.png)






#### Disassembling Materials




- In the “Already Assembled” tab, the system displays all items that have been assembled. To disassemble items, users can click on "Disassemble" or  “Disassemble All” button to disassembled items.


![](/.attachments/29917687.png)





- System will prompt confirmation window when user clicks on Disassemble or Disassemble All button.


![](/.attachments/29917685.png)





- User can clicks on "OK" to disassemble and the assembled items will move to "Items to Assemble" tab.


- User can clicks on "Cancel" to discard the disassemble action.




#### Completing WIP


When all items have been assembled successfully, the system will complete the assembly by remaining at the Assemble Station (Access through Method 2) or returning to Generic Workstation (Access though Method 1).
System will display the following messages:

- WIP Completed Successfully with a status of Pass. If Is a WIP Completion Route Step, WIP Status will change to Completed.


- WIP has been routed to the following steps: "Next Route Step the WIP has been en-queued at"



- Display the Printer and Document Print if Document configured to print on WIP Complete or on WIP Pass

.

#### Assembly Progression


When all the units are assembled successfully as per installed set-up sheet (applicable only for repetitive Route step station), assembly progression happens. If there are multiple configuration against same occurrence step, system populates window providing option to select one progression option to proceed with station operation completion. Once rogression completes, WIP gets enqueued in following way:

- If there is only default configuration, WIP follows Default PASS rule of that step

- If there is only cross route configuration available, WIP follows only the assembly progression destination step(s)

- If both default and cross route configuration available, WIP follows both Default PASS destination step(s) and Progression cross route step(s) available in progression configuration
Note: If user opts for document printing after assembly Progression (or at the same station of assembly progression configured), user has to assign the Document as per progressed assembly. Also system has feasibility to print both Original and Current assembly after progression.


#### Material Re-consumption


When Material consumption quantity is turned on and Manual Station Part Allocation is setup for the Resource, system will not deduct the material GRN quantity if the CRD has material consumed before at a previous route step so that the material quantity consumption is accurate. 
Material will be consumed and quantity deducted if the CRD does not have material consumed before.![image2019-4-12_9-58-2.png](/.attachments/45974747.png)


![image2019-4-12_9-58-28.png](/.attachments/45974748.png)


![image2019-4-12_9-58-56.png](/.attachments/45974749.png)


![image2019-4-12_9-59-14.png](/.attachments/45974750.png)


If the WIP returns to the same route step but with a different setup sheet/setup sheet version installed:

- If there are additional CRD configured, the material of the new CRD will be consumed and deducted.


- If there is no new CRD configured, no material is consumed/assembled and the WIP is auto completed.

At WIP View - Genealogy tab, all the materials consumed at the route step is displayed.
![image2019-4-12_10-8-32.png](/.attachments/45974752.png)



Manual Assemble Station is supporting for Panel or unit board (WIP unit) processing. User can scan the Panel or unit board SN to view the list of the unit board associated on the Panel.
If Panel SN scanned, a Panel screen to prompt for selection, user can click on the unit board SN showed to start the operation. User can also scan the unit board SN barcode to start the operation.
![image2020-5-8_16-53-57.png](/.attachments/69632872.png)


![image2020-5-8_16-54-38.png](/.attachments/69632873.png)


Assemble, Disassemble and Complete unit board are exactly same with the behavior of WIP process type. Following to list the expected behavior of each unit board to be processed:

- User can select other Panel WIP to continue for processing when previous Panel WIP has assembled/disassembled the required part(s).
User have option to scan other unit board to continue the sub-sequence.
- All unit board of the same panel to be enqueued only when All unit boards are completed at the operation.

- Started a unit board and other unit board from the same Panel should not be able to start in other operation screen (Is pull Step).

- A
bort operation of a unit board is to abort all the unit boards of the Panel.


#### Link UPD value for sub assembled material


System allow link UPD for sub assembled material at manual assemble station. System will assign UPDs for sub assembled material station when:

- a: Sub material has configured to link some UPDs without Route & RouteStep and it's Active status.

There are three Assignment Types in UPD maintenance screen, as below:
1: UserAssigned
![image2020-12-23_14-46-56.png](/.attachments/84705467.png)


![image2020-12-23_14-34-32.png](/.attachments/84705461.png)


After scan WIP SN system will show enough text boxes to collect UPD value for sub assembled material.  UPD is mandatory field.
![image2020-12-23_14-36-4.png](/.attachments/84705463.png)



After user scan the sub assembled material SN and UPD, system will automated completed the WIP.
![image2020-12-23_14-39-34.png](/.attachments/84705464.png)


And link this UPD value for sub assembled material.
![image2020-12-23_14-40-0.png](/.attachments/84705465.png)



2: SystemGenerated
Not support at this moment.
3: AutoSelectFromList
![image2020-12-23_14-46-8.png](/.attachments/84705466.png)


![image2020-12-23_14-47-54.png](/.attachments/84705468.png)


After scan WIP SN system system will load the sub assembled material without any UPD text box. User can scan the sub assembled material SN and system will automated select an available UPD for sub assembled material.



#### Attachments

[image2018-6-13_17-48-23.png](/.attachments/29917685.png)
[image2018-6-13_17-47-35.png](/.attachments/29917686.png)
[image2018-6-13_17-46-49.png](/.attachments/29917687.png)
[image2017-7-27 10:10:43.png](/.attachments/29917688.png)
[image2017-7-27 8:50:44.png](/.attachments/29917689.png)
[image2016-7-5 15-48-55.png](/.attachments/29917690.png)
[image2016-7-6 11:49:54.png](/.attachments/29917691.png)
[image2016-7-6 11:42:44.png](/.attachments/29917692.png)
[image2016-7-6 11:30:47.png](/.attachments/29917693.png)
[image2016-7-6 11:28:48.png](/.attachments/29917694.png)
[image2016-7-5 16:25:18.png](/.attachments/29917695.png)
[image2016-7-5 15:56:16.png](/.attachments/29917696.png)
[image2016-7-5 15:51:59.png](/.attachments/29917697.png)
[image2016-7-5 15:49:25.png](/.attachments/29917698.png)
[image2016-7-5 15:48:55.png](/.attachments/29917699.png)
[image2016-7-5 14:44:2.png](/.attachments/29917700.png)
[image2016-7-5 14:43:22.png](/.attachments/29917701.png)
[image2019-4-12_9-58-2.png](/.attachments/45974747.png)
[image2019-4-12_9-58-28.png](/.attachments/45974748.png)
[image2019-4-12_9-58-56.png](/.attachments/45974749.png)
[image2019-4-12_9-59-14.png](/.attachments/45974750.png)
[image2019-4-12_10-6-16.png](/.attachments/45974751.png)
[image2019-4-12_10-8-32.png](/.attachments/45974752.png)
[image2020-5-8_16-53-57.png](/.attachments/69632872.png)
[image2020-5-8_16-54-38.png](/.attachments/69632873.png)
[image2020-10-23_15-48-47.png](/.attachments/84705457.png)
[image2020-12-17_20-58-24.png](/.attachments/84705458.png)
[image2020-10-23_15-56-2.png](/.attachments/84705459.png)
[image2020-10-23_16-1-45.png](/.attachments/84705460.png)
[image2020-12-23_14-34-32.png](/.attachments/84705461.png)
[image2020-12-23_14-35-30.png](/.attachments/84705462.png)
[image2020-12-23_14-36-4.png](/.attachments/84705463.png)
[image2020-12-23_14-39-34.png](/.attachments/84705464.png)
[image2020-12-23_14-40-0.png](/.attachments/84705465.png)
[image2020-12-23_14-46-8.png](/.attachments/84705466.png)
[image2020-12-23_14-46-56.png](/.attachments/84705467.png)
[image2020-12-23_14-47-54.png](/.attachments/84705468.png)
[image2020-12-23_14-48-13.png](/.attachments/84705469.png)
