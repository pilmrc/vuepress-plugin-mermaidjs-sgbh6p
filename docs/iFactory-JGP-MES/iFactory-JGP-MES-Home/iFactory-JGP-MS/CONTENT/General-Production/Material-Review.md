# Introduction

Material Review station enable user to scrap materials such as WIP and Serialized Material. In Material Review station, user can select WIP / Serialized Material to review the assemble history and perform scrap or unscrap. 
Another usage is to move Hold items in segregated area (MRB)
In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area. 
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:

- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step


### How to get there?



::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK Material review ICON")

:::
![image2019-4-4_19-2-27.png](/.attachments/45974206.png)


![image2021-8-24_13-47-33.png](/.attachments/97354647.png)




#### Permission


MRB (Scrap WIP, Scrap Serialized Material, Scrap Panel) 
1) Quality - Can Perform Scrap


#### Certification


This station is supporting
certificationcontrol (Resource Type Maintenance ( only support user required certification) , Resource Maintenance ( only support user required certification ), Route Step Type Maintenance (certification) and Route Step (certification).



#### Screen Activity


The station can be used mainly for 2 scopes:

- Segregating material that requires quality review

- Scrapping material not suitable for production


#### Pre Condition


There aren't precondition for using the station, if not to have configured it in current route and  optionally defines as pull step (typical configuration)


#### Screen Dependency


No screen dependency


#### Interface


In Material Review station, there are 3 selections for user to search for Serialized Material or WIP or Panelized items. A third option allows to load a list of WIP from a text file. If the valid Panel, WIP or Serialized Material is entered or scanned in, system will display the information of the material.

![image2021-8-24_13-47-43.png](/.attachments/97354648.png)


![image2021-8-24_13-48-6.png](/.attachments/97354649.png)


The following the fields visible selecting the WIP radio button (rest of screen remains the same).
![image2020-4-29_7-3-4.png](/.attachments/69632553.png)


![image2019-4-4_19-19-18.png](/.attachments/45974211.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Search Tab  and Material Details tab</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>WIP / Serialized Material Radio Button</p></td><td class="confluenceTd"><p>This radio button enable user to select which material type to be searched for review.</p><ul><li>If WIP is selected, WIP Serial Number shall be entered for searching.</li><li>If Serialized Material is selected, serialized material's serial number shall be entered for searching. when user selected 'Serialized Material', system will display below items:<ol><li>'Is Defected' toggle</li><li>'UnDefected' button</li></ol></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Multiple WIP Radio Button</td><td colspan="1" class="confluenceTd">This radio button enable user to scan a list of serial numbers to scrap</td></tr><tr><td class="confluenceTd"><p>Clear Button</p></td><td class="confluenceTd"><p>This button will trigger the system to clear all entries</p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>This is a search field for user to enter serial number</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name of the WIP or Serialized Material</p></td></tr><tr><td class="confluenceTd"><p>Is Scrapped</p></td><td class="confluenceTd"><p>Indicate the status of the WIP. If it has been scrapped, this check box will be checked.</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Defected</td><td colspan="1" class="confluenceTd"><p>For 'Serialized Material' type only. By default is turn off, If current searched serialized material 'Is Defected' flag is true(refer to this field in Serialized Material View), this toggle will be turn on.</p><p>Otherwise, turn off. It's just for displaying, not allow user turn on/off it by manual.</p></td></tr><tr><td class="confluenceTd"><p>BOM</p></td><td class="confluenceTd"><p>Display the BOM of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Shop Floor Order</p></td><td class="confluenceTd"><p>Display the Shop Floor Order that is associated to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Planned Order</p></td><td class="confluenceTd"><p>Display the Planned Order that is associated to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>Display the batch number of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Parent WIP</p></td><td class="confluenceTd"><p>If the WIP is a sub assembly and has been assembled to a parent, this will display the parent WIP serial number.</p></td></tr><tr><td class="confluenceTd"><p>Current Route</p></td><td class="confluenceTd"><p>Display the current route of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Current Route Step</p></td><td class="confluenceTd"><p>Display the current route step of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><p>Display the WIP status. Status could be In Progress or Completed.</p></td></tr></tbody></table>


- **If Serialized Material is selected, serialized material’s serial number shall be entered for searching. when user selected 'Serialized Material', system will display below items:**


- 'Is Defected' toggle

- 'UnDefected' button
Multiple WIP Radio ButtonThis radio button enable user to scan a list of serial numbers to scrapClear Button
This button will trigger the system to clear all entries
Serial Number
This is a search field for user to enter serial number
Material
Display the material name of the WIP or Serialized Material
Is Scrapped
Indicate the status of the WIP. If it has been scrapped, this check box will be checked.
Is DefectedFor 'Serialized Material' type only. By default is turn off, If current searched serialized material 'Is Defected' flag is true(refer to this field in Serialized Material View), this toggle will be turn on.
Otherwise, turn off. It's just for displaying, not allow user turn on/off it by manual.
BOM
Display the BOM of the WIP
Shop Floor Order
Display the Shop Floor Order that is associated to the WIP
Planned Order
Display the Planned Order that is associated to the WIP.
Batch
Display the batch number of the WIP
Parent WIP
If the WIP is a sub assembly and has been assembled to a parent, this will display the parent WIP serial number.
Current Route
Display the current route of the WIP
Current Route Step
Display the current route step of the WIP
Status
Display the WIP status. Status could be In Progress or Completed.

The genealogy of the WIP will be displayed in “Assembled” tab. This tab will display all items that are assembled to the WIP such as Serialized Material, WIP or Unserialized Material.
![image2021-8-24_13-54-57.png](/.attachments/97354650.png)


![image2021-8-24_13-55-14.png](/.attachments/97354651.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Assembled Tab Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Display the serial number of the assembled items. The first serial number is the top level WIP serial number.</p></td></tr><tr><td class="confluenceTd"><p>Material Name</p></td><td class="confluenceTd"><p>Display the Material Name of the assembled items</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the description of the material</p></td></tr><tr><td class="confluenceTd"><p>Material Type</p></td><td class="confluenceTd"><p>Display the Material Type of the assembled items. It could be WIP, Serialized Material or Unserialized Material.</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>This text box allow user to enter the comments when scrapping a material</p></td></tr><tr><td class="confluenceTd"><p>Arrive Button</p></td><td class="confluenceTd"><p>This button will trigger the system to move the WIP to the Material Review station</p></td></tr><tr><td class="confluenceTd"><p>Scrap Button</p></td><td class="confluenceTd"><p>This button will trigger the system to scrap the selected materials.</p></td></tr><tr><td colspan="1" class="confluenceTd">UnDefected</td><td colspan="1" class="confluenceTd"><p>This button will trigger the system to update the 'Is Defected' from Yes to No. below conditions should be meet when it's enable:</p><ul><li>only for Serialized Material</li><li>current serialized material 'Is Defected' is Yes.</li><li>current serialized material didn't associate with any parent WIP</li></ul></td></tr></tbody></table>



- If the WIP or Serialized Material has been scrapped / unscrapped before, the history of the material review will be displayed in the “History” tab.

![image2019-4-4_19-24-15.png](/.attachments/45974214.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>History Tab Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Date</p></td><td class="confluenceTd"><p>Display the date and time when the material is scrapped</p></td></tr><tr><td class="confluenceTd"><p>From Status</p></td><td class="confluenceTd"><p>Display the original status of the material</p></td></tr><tr><td class="confluenceTd"><p>To Status</p></td><td class="confluenceTd"><p>Display the changed status of the material</p></td></tr><tr><td class="confluenceTd"><p>Last Route Step</p></td><td class="confluenceTd"><p>Display the route step name where the material is being scrapped at.</p></td></tr><tr><td class="confluenceTd"><p>Changed By</p></td><td class="confluenceTd"><p>Display the user who scrapped the material</p></td></tr><tr><td class="confluenceTd"><p>Comment</p></td><td class="confluenceTd"><p>Display the remarks entered by user</p></td></tr></tbody></table>



#### **Scrap WIP** 


In Material Review station, user can select “WIP” radio button to indicate that WIP’s serial number will be entered to be review. When a valid WIP’s serial number is entered / scanned in, system will display the WIP’s information at “Material Details” section and the assemble history at “Assembled” tab. User can make selection on assembled items to be scrapped by checking the check box. If the check box is not selected, the assembled items will not be scrapped. 
![image2019-4-4_19-25-40.png](/.attachments/45974215.png)



To scrap the WIP and selected items, user can click on the “Scrap” button. A confirmation message will be prompted. If user makes confirmation by clicking “OK”, system will scrap the WIP entered by user and the selected items. All assembled items will be disassembled from the scrapped WIP. The “Is Scrapped” indicator will be changed from unchecked to true. “Scrap” button will be changed to “Unscrap”.
![image2019-4-4_19-29-4.png](/.attachments/45974216.png)


the system raises the message
![image2019-4-4_19-33-4.png](/.attachments/45974217.png)


![image2019-4-4_19-34-40.png](/.attachments/45974219.png)





#### Un-scrap WIP

To un-scrap WIP, user enters / scans in a scrapped WIP’s serial number and click on the “Unscrap” button. Confirmation will be prompted. If user selects “OK” for confirmation, the system will change the WIP “Is Scrapped” status from true to false.
![image2019-4-4_19-35-5.png](/.attachments/45974220.png)




#### Scrapping Serialized Material


Besides WIP, user is also able to perform scrapping on Serialized Material. In Material Review station, user can select “Serialized Material” radio button to indicate that Serialized Material’s serial number will be entered to be review. When a valid Serialized Material’s serial number is entered / scanned in, system will display the serialized material’s information at “Material Details” section. If the material has not been consumed, nothing will be displayed in “Assembled” tab. User can clicks on “Scrap” button to scrap the serialized material.
![image2019-4-4_19-38-39.png](/.attachments/45974223.png)



If the Serialized Material has been consumed and assembled to a WIP, “Assembled” tab will display the genealogy. User has to click on the serialized material to scrap the material. If no selection has been made, system will only disassemble the serialized material from the Parent WIP. If user selects the checkbox, system will disassemble the serialized material and scrap it. The Parent WIP will not be scrapped.
![image2019-4-4_19-36-17.png](/.attachments/45974222.png)





#### Un-scrap Serialized Material

To un-scrap Serialized Material, user enters / scans in a scrapped Serialized Material’s serial number and click on the “Unscrap” button. The system will change the Serialized Material’s “Is Scrapped” status from true to false.
![image2019-4-4_19-39-13.png](/.attachments/45974224.png)




#### **Scrapping a WIP with a 'Hold'** 


If a WIP has been placed on a 'Hold', system will bypass on hold validation. This is to prevent users from doing extra step to release the WIP before scrapping the WIP and avoid the WIP from being misuse in production after releasing it since it can be scrap directly. 
System will: 

- Scrap the WIP & disassemble all assembled items from the WIP


- Only scrap the selected assembled items (if users checked on the checkbox)


- WIP will remains it's Hold status even after scrap




#### **Scrapping an assembled Child-WIP or an assembled Serialized Material with a 'Hold'**  

If a Child-WIP or Serialized Material has been assembled into a Top-Level WIP, and a 'Hold' is placed on either Child-WIP or assembled item, system will bypass on hold validation. 
This is to prevent users from doing extra step to release the Child-WIP or Serialized Material before scrapping the WIP or Serialized Material and avoid the WIP or Serialized Material from being misuse in production after releasing it since it can be scrap directly. 

System will: 


- Scrap the selected Child-WIP or Serialized Material (checked on Serialized Material serial number checkbox) & disassemble it from parent WIP


- Only disassemble the Child-WIP or Serialized Material (if user did not checked on any serial number)

- Both assemble Child-WIP & Serialized Material will remain its's Hold status even after scrap



#### **Scrapping a Non-Assembled**  

**Serialized material with a 'Serialized Material Hold'** If a a 'non-assembled' Serialized material has been placed on a 'Serialized Material Hold', 
system will bypass on hold validation. This is to prevent users from doing extra step to release the Serialized Material before scrapping the 
Serialized Material 
and avoid the Serialized Material 
from being misuse in production after releasing it since it can be scrap directly. 
**Scrap Multiple WIP** 
In Material Review station, user can select “Multiple WIP” radio button to indicate that a list of serial number will be entered to be review.If user switch to this mode, Arrive button is invisible and user is able to scan multiple WIPs or batch WIP upload ( limited to 1000 WIPs per upload) to scrap. The WIPs scan must not be scrapped, not linked with any components and it is a "WIP" material type. If the validation failed, system will return error message. User can make selection on the WIPs scanned to be scrapped by checking the check box(by default it is checked). If the chek box is not selected, the WIPs will not be scrapped. 
![image2019-4-4_19-43-9.png](/.attachments/45974225.png)


![image2019-4-4_19-43-42.png](/.attachments/45974226.png)





#### Scrap Panel / Panelized Items

In Material Review station, user can select “Multiple WIP / Panel” radio button to indicate that Panel Serial Number or Panelized WIP’s serial number will be entered to be reviewed. When a valid WIP’s serial number is entered / scanned in, system will display all the WIP’s information of the associated Panel. System will select all the Panelized units by default. Although, User can make de-select the WIPs for partial scrap of the Panel. If the check box is not selected, the assembled items/whole board will not be scrapped. 
![image2020-4-29_7-9-16.png](/.attachments/69632554.png)



To scrap the WIP and selected items, user can click on the “Scrap” button. A confirmation message will be prompted. If user makes confirmation by clicking “OK”, system will scrap the WIP entered by user and the selected items. All assembled items will be disassembled from the scrapped WIP. If selected WIPs in Panel, the WIPs will be detached from Panel and Panel will contain only non-scrapped WIPs.The “Is Scrapped” indicator will be changed from unchecked to true. In WIP View screen, selected station to be shown as 'De-paneled Route Step".
the system raises the message
![image2019-4-4_19-33-4.png](/.attachments/45974217.png)


![image2020-4-29_7-13-11.png](/.attachments/69632555.png)





#### Un-scrap Panel or Panelized WIP

Un-scrapping Panel or Panelized WIP is not possible as de-paneling is associated with scrap process. To unscrap the WIP (depanelized), user may opt for 'WIP' option, scan the WIPs one by one and unscrap it. This operation will NOT associate the depaneled WIPs to the Panel again.



#### WIP Bulk Upload

Here is the sample file for WIP bulk upload :
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Input file</th><th class="confluenceTh">Output file</th></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><a class="confluence-embedded-file" href="/download/attachments/29918374/MRB-SNs-MIXED-CSV.csv?version=1&modificationDate=1547009986737&api=v2" data-nice-type="null" data-file-src="/download/attachments/29918374/MRB-SNs-MIXED-CSV.csv?version=1&modificationDate=1547009986737&api=v2" data-linked-resource-id="39649660" data-linked-resource-type="attachment" data-linked-resource-container-id="29918374" data-linked-resource-default-alias="MRB-SNs-MIXED-CSV.csv" data-mime-type="text/csv" data-has-thumbnail="false" data-linked-resource-version="1" data-can-edit="true" aria-label="MRB-SNs-MIXED-CSV.csv"><img src="download/resources/com.atlassian.confluence.plugins.confluence-view-file-macro:view-file-macro-resources/images/placeholder-medium-file.png" height="250" /><span class="title">MRB-SNs-MIXED-CSV.csv</span></a><span class="companion-edit-button-placeholder edit-button-overlay" data-linked-resource-container-id="29918374" data-linked-resource-id="39649660" data-template-name="companionEditIcon" data-source-location="embedded-attachment"></span></span></p></div></td><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><a class="confluence-embedded-file" href="/download/attachments/29918374/MRB-SNs-MIXED-CSV.out%20%283%29.csv?version=1&modificationDate=1547010023433&api=v2" data-nice-type="null" data-file-src="/download/attachments/29918374/MRB-SNs-MIXED-CSV.out%20%283%29.csv?version=1&modificationDate=1547010023433&api=v2" data-linked-resource-id="39649661" data-linked-resource-type="attachment" data-linked-resource-container-id="29918374" data-linked-resource-default-alias="MRB-SNs-MIXED-CSV.out (3).csv" data-mime-type="text/csv" data-has-thumbnail="false" data-linked-resource-version="1" data-can-edit="true" aria-label="MRB-SNs-MIXED-CSV.out (3).csv"><img src="download/resources/com.atlassian.confluence.plugins.confluence-view-file-macro:view-file-macro-resources/images/placeholder-medium-file.png" height="250" /><span class="title">MRB-SNs-MIXED-CSV.out (3).csv</span></a><span class="companion-edit-button-placeholder edit-button-overlay" data-linked-resource-container-id="29918374" data-linked-resource-id="39649661" data-template-name="companionEditIcon" data-source-location="embedded-attachment"></span></span></p></div></td></tr></tbody></table>

MRB_SNs_MIXED_CSV.csv


[MRB_SNs_MIXED_CSV.out (3).csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Material-Review.md)




#### Attachments

[image2018-2-21 11:6:42.png](/.attachments/29918375.png)
[image2018-2-21 10:53:36.png](/.attachments/29918376.png)
[image2013-7-24 10:43:40.png](/.attachments/29918377.png)
[image2013-7-24 10:42:22.png](/.attachments/29918378.png)
[image2013-7-24 10:41:12.png](/.attachments/29918379.png)
[image2013-7-24 10:38:44.png](/.attachments/29918380.png)
[image2013-7-24 10:37:40.png](/.attachments/29918381.png)
[image2013-7-24 10:37:6.png](/.attachments/29918382.png)
[image2013-7-24 10:36:9.png](/.attachments/29918383.png)
[image2013-7-24 10:33:19.png](/.attachments/29918384.png)
[image2013-7-24 9:19:35.png](/.attachments/29918385.png)
[image2013-7-24 9:17:59.png](/.attachments/29918386.png)
[image2013-7-23 16:54:2.png](/.attachments/29918387.png)
[image2013-7-23 16:31:31.png](/.attachments/29918388.png)
[image2018-12-28_10-0-50.png](/.attachments/39649522.png)
[MRB_SNs_MIXED_CSV.csv](/.attachments/39649660.csv)
[MRB_SNs_MIXED_CSV.out (3).csv](/.attachments/39649661.csv)
[image2019-4-4_19-2-27.png](/.attachments/45974206.png)
[image2019-4-4_19-2-59.png](/.attachments/45974207.png)
[image2019-4-4_19-12-16.png](/.attachments/45974208.png)
[image2019-4-4_19-12-42.png](/.attachments/45974209.png)
[image2019-4-4_19-18-54.png](/.attachments/45974210.png)
[image2019-4-4_19-19-18.png](/.attachments/45974211.png)
[image2019-4-4_19-21-16.png](/.attachments/45974212.png)
[image2019-4-4_19-21-44.png](/.attachments/45974213.png)
[image2019-4-4_19-24-15.png](/.attachments/45974214.png)
[image2019-4-4_19-25-40.png](/.attachments/45974215.png)
[image2019-4-4_19-29-4.png](/.attachments/45974216.png)
[image2019-4-4_19-33-4.png](/.attachments/45974217.png)
[image2019-4-4_19-33-57.png](/.attachments/45974218.png)
[image2019-4-4_19-34-40.png](/.attachments/45974219.png)
[image2019-4-4_19-35-5.png](/.attachments/45974220.png)
[image2019-4-4_19-35-50.png](/.attachments/45974221.png)
[image2019-4-4_19-36-17.png](/.attachments/45974222.png)
[image2019-4-4_19-38-39.png](/.attachments/45974223.png)
[image2019-4-4_19-39-13.png](/.attachments/45974224.png)
[image2019-4-4_19-43-9.png](/.attachments/45974225.png)
[image2019-4-4_19-43-42.png](/.attachments/45974226.png)
[image2020-4-29_7-0-1.png](/.attachments/69632550.png)
[image2020-4-29_7-1-56.png](/.attachments/69632551.png)
[image2020-4-29_7-2-15.png](/.attachments/69632552.png)
[image2020-4-29_7-3-4.png](/.attachments/69632553.png)
[image2020-4-29_7-9-16.png](/.attachments/69632554.png)
[image2020-4-29_7-13-11.png](/.attachments/69632555.png)
[image2021-8-24_13-47-33.png](/.attachments/97354647.png)
[image2021-8-24_13-47-43.png](/.attachments/97354648.png)
[image2021-8-24_13-48-6.png](/.attachments/97354649.png)
[image2021-8-24_13-54-57.png](/.attachments/97354650.png)
[image2021-8-24_13-55-14.png](/.attachments/97354651.png)
