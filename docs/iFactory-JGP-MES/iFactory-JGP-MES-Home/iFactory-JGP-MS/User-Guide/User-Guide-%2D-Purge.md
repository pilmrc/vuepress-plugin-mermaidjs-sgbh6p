# Introduction

***Introduction to Purge***  

In 
**Jabil's** manufacturing world, it is not uncommon to receive materials from manufactures and/or customers that are **defective** , or suspected to be defective. Sometimes **Jabil** is notified of this situation before materials are received and used, and other times the material is already in use on the factory floor. **Serial Numbers** , a **range of Serial Numbers** , **Lot Code** , or a **Date Code** can be used to identify the suspect materials. 
When 
**materials** are already in use, a '**Purge** ' process is initiated which is intended to identify and isolate the **materials** and place them in a special location away from normal production on '**Hold** ' for validation of the 'suspect materials'. The **Purge** process is effective at performing a one-time sweep of these **materials** that are in process. 

If the 
**materials** have not been received, or have been partially received or are mixed with raw inventory then a **Purge** process is not enough to prevent the usage of suspect **materials** . When the **material** is a **serialize material** , it is very common for the **manufacture** of the **material** to send **Jabil** a list and or a range of **serial numbers** . With this list Jabil is able to identify specific **materials** and take action. 

The common actions that occur when the material is located are to:

A) Immediately 
**Reject** the **material.** 
B) 
**Inspect** the **material** with a **Accept** , **Reject** , **Rework** and **Accept** 
C) Immediately 
**Rework** **material**  
D) Perform additional 
**testing** (If required)
E) Send the 
**material** and the **unit** being processed to a special area for processing

## ***How to navigate to Purge***  



Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***The following screens should be configured as predecessors to Purge***  



- [Material.](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Route ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)
(**Purge Route** should be created and  the **Route Type** 
= **Purge** ,  **Route status** 
= **Active** **where with the following route step flags checked:** 

**Is Initial Route Step** , **Allow Retest On Failure and Defect** , **Allow Completed WIP Start** & **Is WIP Completion Step** (if this is the last step in the purge route). 
**(Notes:**  
For the last step in the purge route, ensure it has the "WIP Completion Step" flag checked. In purge routes, checking this flag does not modify the WIP status and change the WIP status to "Completed". It simply signifies the WIP has completed the purge route and can be released from the active purge. In addition, ensure that the Default Pass Rule (routing rule) for this step is not set to any route step so that the WIP will be routed and enqueued at the last route step where it was at before it was pulled into the purge process.)

***Topic 1: How to purge a Serial WIP***  


## ***Present tab***  


**Click** 
to enlarge the image!![2018-06-20_12-46-28.png](/.attachments/29920352.png)



- **Enter**

and **select**  the**Purge** Information required  (see **gold** 
rectangle). (
**Note** :  Many of these fields are required!) The user can **purge** by **Material(Top Level), Material (Child), MPN,  GRN or Batch** .
- **Click**

on **Generate Report** 
- **Check**

the appropriate
**WIP Serial numbers** 

- **Select Purge to Route**

and**Route Step**   (Note:  
These are required fields!
**)** 
- **Enter Purge Reason**

(
**Note** :  This is a required fields!)

- **Click**

on the **Execute Purge** button to generate**Purge ID.**  A 
**WIP** can only have one '**Active' purge** . After the '
**Active' purge** on the **WIP** has been '**Released** ' from the '**Purge Release'** screen is when another **purge** can be initiated. 
A **WIP** that is in the **purge route** is not allowed to be modified in **WIP Maintenance** . Once a **WIP** is in an **active purge** , it needs to be completed in the **purge route** before it's allowed to be released from the **purge** .  

Notes: The user can  uploa
d a list of multiple **Serial Numbers** in **Comma Separated Value** 
format (.csv) to **purge** (see **red** circle)

## ***Packed Tab***  




## **Click**  

to enlarge the image!![2018-06-20_13-14-59.png](/.attachments/29920351.png)



- **Enter**

and **select**  the**Purge** Information required  (see **gold** 
circle) (
**Note** :  Many of these fields are required!).The user can  **purge** by **Material(Top Level), Material (Child), MPN,  GRN or Batch** .
- **Click**

on **Generate Report**  

- **Click**

the appropriate
**Check Box**  
to select the
**WIP Serial(s)** 

- **Click**
on **Open Container(s),**  to**open the** **WIP Serial Container.**  
Notes: The user can uploa
d a list  of multiple **Serial Numbers** in \*.csv (Comma Separated Value format) to **purge** (see **red** circle).  To export to Excel. **Click** on **Export to Excel button** . 
***Recall tab***  
The 
**recall** tab allows a user to **purge WIPs** that were shipped out to **customer** . No routing action is required as these **WIP(s)** have shipped.
An **External RMA** must be completed for the **shipped WIP's** to return to the **site** and be  re-enter into the system.
During the **receiving** of the '**returning' (recalled) WIP** through '**External RMA** ',  the system will check for an '**Active' purge** on the **WIP(s) serial number** .
The system will flag the receiver that the **WIP(s)** has a '**Active' purge** tied to it if the **WIP** is being returned for another reason. 


## ***Screen Messages***  


The following screen messages may appear when configuring the Purge

**Click**  
to enlarge the image!![image2018-6-20_12-43-25.png](/.attachments/29920353.png)



- This screen is displayed when the user click on

**Execute Purge** and the **Package ID** is generated.

## ***The following screens are dependent on information from Purge***  




- [Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)


- [Purge Details](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide-%2D-Purge-Details.md)


- Purge Arrival




## ***Fields***  



<table class="relative-table wrapped confluenceTable" style="width: 65.0498%;"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuidePurge-PurgeTab-HeaderSection">Purge Tab - Header Section</h4></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Purge Type</td><td class="confluenceTd"><p>Allows purges by the following types</p><ul><li>Purge by Material (Child)</li><li>Purge by Material (Top Level)</li><li>Purge by MPN</li><li>Purge by GRN</li><li>Purge by Batch</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The selected material to purge</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">The selected material description to purge</td></tr><tr><td colspan="1" class="confluenceTd">From Date/To Date</td><td colspan="1" class="confluenceTd">The date range where the material is created/birthed</td></tr><tr><td colspan="1" class="confluenceTd">Upload List</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allows user to upload Serial Numbers<span style="color: rgb(0,0,0);">/MPN/GRN/Batch number</span> in .csv or .txt format to perform multi WIP purges</p><p><span style="color: rgb(0,0,0);">User shall have the ability to upload a list </span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Material(Top Level), series of serial numbers (WIP Serials) without selecting a WIP Material Part Number or Material Part Number.</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Material(Child), series of serial numbers (consumed material Serials) without selecting a Material Part Number.</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = MPN, lists of MPN's without selecting an MPN</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = GRN, lists of GRN's without selecting a GRN</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Batch, lists of Batches without selecting a Batch</span></p><p><span style="color: rgb(0,0,0);">Selecting 'Generate Report' shall return:<br />- For Purge Type = Material(Top Level or Child), WIP serials of Material(Top Level) or WIP serials that have the Material(Child) consumed<br />- For Purge Type = MPN, WIP serials that have the MPN's consumed<br />- For Purge Type = GRN, WIP serials that have the GRN's consumed<br />- For Purge Type = Batch, WIP serials that are associated to the listed batches</span></p><p><span style="color: rgb(0,0,0);"><br /></span></p><ol><li><span style="color: rgb(0,0,0);">Upload the .txt or .csv file containing the Serial Number/MPN/GRN/Batch number. Each row containing only a single Serial Number/MPN/GRN/Batch number. </span></li><li><span style="color: rgb(0,0,0);">Select required field</span></li><li><span style="color: rgb(0,0,0);">Click the Generate Report button</span></li><li><span style="color: rgb(0,0,0);">System will display the WIP Serials related to the uploaded Serial Number/MPN/GRN/Batch number.<br /></span><br /><span style="color: rgb(0,0,0);">Note: For successful Purge by file upload, the Serial Number/MPN/GRN/Batch Number in the upload file must be valid (Exist & In Process). The required field must also match the file upload data. The WIP must has WIP assemble history. Otherwise, user will not see any purge happening and the information uploaded will not reflect in the screen on clicking the "Generate Report" button.<br /></span></li></ol><p><span class="confluence-embedded-file-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920358.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920358.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920358" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2014-5-12 21:33:40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920350" data-linked-resource-container-version="2" /></span></span></p><p><span style="color: rgb(0,0,0);"><br /></span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-content-image-border" width="750" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920357.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920357.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920357" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2014-5-12 21:31:47.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920350" data-linked-resource-container-version="2" /></span></span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-content-image-border" width="750" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920356.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920356.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920356" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2014-5-12 21:38:15.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920350" data-linked-resource-container-version="2" /></span></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">WIP Serial</td><td colspan="1" class="confluenceTd">The WIP Serials returned from the search. Check the check box next to the desired WIP Serial to perform purge</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">The WIP's batch number</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The current route of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Last Scanned</td><td colspan="1" class="confluenceTd">The last route step where the WIP was processed</td></tr><tr><td colspan="1" class="confluenceTd">In Queue</td><td colspan="1" class="confluenceTd">The current route step where the WIP is in queued</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The current status of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Is Purged?</td><td colspan="1" class="confluenceTd">If checked, the WIP is currently on an active purge<br />If unchecked, the WIP is not in any purge </td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold?</td><td colspan="1" class="confluenceTd">If checked, the WIP is currently on an active hold<br />If unchecked, the WIP is not in any hold</td></tr><tr><td colspan="1" class="confluenceTd">Purge to Route</td><td colspan="1" class="confluenceTd">The route to send the WIP for purge activities. Only displays route which are of purge type</td></tr><tr><td colspan="1" class="confluenceTd">Purge to Route Step</td><td colspan="1" class="confluenceTd">The route step to send the WIP for purge activities. Dispays route steps associated to the selected purge route</td></tr><tr><td colspan="1" class="confluenceTd">Purge Reason</td><td colspan="1" class="confluenceTd">Allows user to eneter the purge reason</td></tr><tr><td colspan="1" class="confluenceTd">Execute Purge</td><td colspan="1" class="confluenceTd">Click the Execute Purge button to purge the selected WIPs</td></tr><tr><td colspan="1" class="confluenceTd">Purge Id</td><td colspan="1" class="confluenceTd">The Purge Id will be auto generated and displayed once the WIPs are purged successfully</td></tr></tbody></table>



















#### Attachments

[2018-06-20_13-14-59.png](/.attachments/29920351.png)
[2018-06-20_12-46-28.png](/.attachments/29920352.png)
[image2018-6-20_12-43-25.png](/.attachments/29920353.png)
[image2018-6-20_12-43-5.png](/.attachments/29920354.png)
[2018-06-19_16-01-08.png](/.attachments/29920355.png)
[image2014-5-12 21:38:15.png](/.attachments/29920356.png)
[image2014-5-12 21:31:47.png](/.attachments/29920357.png)
[image2014-5-12 21:33:40.png](/.attachments/29920358.png)
