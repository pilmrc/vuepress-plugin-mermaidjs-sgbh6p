# Introduction

In Jabil's manufacturing world, it is not uncommon to receive materials from manufactures and/or customers that are defective, or suspected to be defective. Sometimes Jabil is notified of this situation before materials are received and used, and other times the material is already in use on the factory floor. Serial Numbers, a range of Serial Numbers, Lot Code, or a Date Code can be used to identify the suspect materials. 

When materials are already in use, a 'Purge' process is initiated which is intended to identify and isolate the materials and place them in a special location away from normal production on 'Hold' for validation of the 'suspect materials'. The Purge process is effective at performing a one-time sweep of these materials that are in process. 


If the materials have not been received, or have been partially received or are mixed with raw inventory then a Purge process is not enough to prevent the usage of suspect materials. When the material is a serialize material, it is very common for the manufacture of the material to send Jabil a list and or a range of serial numbers. With this list Jabil is able to identify specific materials and take action. 


The common actions that occur when the material is located are to:

A) Immediately Reject the material 

B) Inspect the material with a Accept, Reject, Rework and Accept

C) Immediately Rework material 

D) Perform additional testing (If required)

E) Send the material and the unit being processed to a special area for processin
Allow Retest On Failure
g


### How to get there?




::: mermaid
graph LR
A("PRODUCTION")-->0("PURGE")

:::


#### **Pre-Condition** 



- Purge route has been created


- In Route Maintenance, set the following configurations (see sample from the screen shots below):


" Route Type = Purge
" Route status = Active
" Material required to be processed in purge route is associated
" Create a purge route step where with the following route step flags checked:
Is Initial Route Step, Allow Retest On Failure and Defect, Allow Completed WIP Start & Is WIP Completion Step (if this is the last step in the purge route)
" For the last step in the purge route, ensure it has the "WIP Completion Step" flag checked. In purge routes, checking this flag does not modify the WIP status and change the WIP status to "Completed". It simply signifies the WIP has completed the purge route and can be released from the active purge. In addition, ensure that the Default Pass Rule (routing rule) for this step is not set to any route step so that the WIP will be routed and enqueued at the last route step where it was at before it was pulled into the purge process. ![](/.attachments/29918431.png)



![](/.attachments/29918430.png)





#### **Screen Dependency** 



- ***Route***

[Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Purge.md)
- *[Purge](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Purge.md)*




#### **Purge Process** 




::: mermaid
graph LR
A("PURGE EXECUTED")-->0("PURGE ARRIVAL (OPTIONAL)")
0-->1("COMPLETE IN PURGE ROUTE")
1-->2("PURGE RELEASE")
2-->3("ROUTE BACK TO PRODUCTION ROUTE")

:::


## **Serial Number Search tab** 




### Screen Activity




- Search WIP to view/analyze its assembled materials prior to purge activity

- Search child material serial number to view/analyze its parent data prior to purge activity

- Export the search result to Excel

![](/.attachments/29918448.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="Purge-HeaderSection">Header Section</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Search By</td><td class="confluenceTd"><p>Allows user to search Serial Number for a WIP or Serialized Material</p></td></tr><tr><td colspan="1" class="confluenceTd">Export To Excel</td><td colspan="1" class="confluenceTd">Export the search result to excel</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Displays the Serial Number's material</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Displays the Serial Number's material description</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><span>Displays the status of the WIP/Serialized Material. Applicable for WIP Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer where the Serial Number belongs</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd"><span>Division where the Serial Number belongs</span></td></tr><tr><td colspan="1" class="confluenceTd">Last Scan</td><td colspan="1" class="confluenceTd">The last scan route step for the Serial Number. <span>Applicable for WIP Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">In Queue</td><td colspan="1" class="confluenceTd">Displays the current route step where the Serial Number is being queued for processing. <span>Applicable for WIP Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">Current Route</td><td colspan="1" class="confluenceTd">Displays the current route of the Serial Number. <span>Applicable for WIP Serial Number search only. </span></td></tr><tr><td colspan="2" class="confluenceTd"><h4 style="text-align: center;" id="Purge-DetailsSection">Details Section</h4></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material P/N</td><td colspan="1" class="confluenceTd">For WIP Serial Number search, this field displays the child material name<br /><span>For Part Serial Number search, this field displays the parent material name</span> </td></tr><tr><td colspan="1" class="confluenceTd"><span>Material S/N</span></td><td colspan="1" class="confluenceTd"><span>For WIP Serial Number search, this field displays the Serial Number of the assembled child material</span><br /><span>For Part Serial Number search, this field displays the Serial Number of its parent</span></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>The corresponding material description</span></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><span>For WIP Serial Number search, this field displays the child material's assembled location (CRD)</span><br /><span>For Part Serial Number search, this field displays the searched part's CRD</span><span> </span></td></tr><tr><td colspan="1" class="confluenceTd">Manufacturer</td><td colspan="1" class="confluenceTd"><span>For WIP Serial Number search, this field displays the child material's manufacturer</span><br /><span>For Part Serial Number search, this field displays the searched part's manufacturer</span></td></tr><tr><td colspan="1" class="confluenceTd">MPN</td><td colspan="1" class="confluenceTd"><span>For WIP Serial Number search, this field displays the child material's MPN</span><br /><span>For Part Serial Number search, this field displays the searched part's MPN</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembled Date Time</td><td colspan="1" class="confluenceTd">The date/time where material is assembled</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The route where the material was assembled</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the material was assembled</span></td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd">If checked, the assembled material is on hold<br />If unchecked, the assembled material is not on hold </td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">The batch of the searched material. <span>Applicable for Part Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">Order #</td><td colspan="1" class="confluenceTd"><span>The order number of the searched material. </span><span>Applicable for Part Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of the searched material. <span>Applicable for Part Serial Number search only. </span></td></tr><tr><td colspan="1" class="confluenceTd">Last Scan</td><td colspan="1" class="confluenceTd"><span>The route step where the searched material was last scanned. </span><span>Applicable for Part Serial Number search only. </span></td></tr></tbody></table>









#### Screen Activity




- Purge by Material (Child)

- Purge by Material (Top Level)

- Purge by MPN

- Purge by GRN

- Purge by Batch

- Upload multiple Serial Numbers in \*
.csv (Comma Separated Value format) to purge

Steps to execute a purge:

- Go to Purge

- Select Purge Type

- Select the material (child) / material (top level) / GRN or Batch number

- Select the From Date and To Date where the WIP material is build/created

- Click Generate Report button. The list of Serials matching the selection criteria is displayed

- Select the Serial desired for purge

- Enter purge route (purge route must be created)

- Enter purge route step

- Enter purge reason

- Click on the Execute Purge button

- A message "Changes saved" is displayed to signify the Serial has been purged

- Note the system generated Purge ID at the bottom of the screen
A WIP can only have 1 'Active' purge. 
After the 'Active' purge on the WIP has been 'Released' from the 'Purge Release' screen is when another purge can be initiated. 

A WIP that is in the purge route is not allowed to be modified in WIP Maintenance. Once a WIP is in an active purge, it needs to be completed in the purge route before it's allowed to be released from the purge.  
**Purge By Material** 
![image2020-4-14_11-51-32.png](/.attachments/69632070.png)



**Purge By MPN** 
![image2020-4-14_11-51-32.png](/.attachments/29918429.png)


**Purge By Batch** 
![image2020-4-14_11-51-32.png](/.attachments/29918428.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="Purge-HeaderSection.1">Header Section</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Purge Type</td><td class="confluenceTd"><p>Allows purges by the following types</p><ul><li>Purge by Material (Child)</li><li>Purge by Material (Top Level)</li><li>Purge by MPN</li><li>Purge by GRN</li><li>Purge by Batch</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The selected material to purge</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>The selected material description to purge</span></td></tr><tr><td colspan="1" class="confluenceTd">From Date/To Date</td><td colspan="1" class="confluenceTd">The date range where the material is created/birthed</td></tr><tr><td colspan="1" class="confluenceTd">Upload List</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allows user to upload Serial Numbers<span style="color: rgb(0,0,0);">/MPN/GRN/Batch number</span> in .csv or .txt format to perform multi WIP purges</p><p><span style="color: rgb(0,0,0);">User shall have the ability to upload a list </span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Material(Top Level), series of serial numbers (WIP Serials) without selecting a WIP Material Part Number or Material Part Number.</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Material(Child), series of serial numbers (consumed material Serials) without selecting a Material Part Number.</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = MPN, lists of MPN's without selecting an MPN</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = GRN, lists of GRN's without selecting a GRN</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Batch, lists of Batches without selecting a Batch</span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Selecting 'Generate Report' shall return:</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Material(Top Level or Child), WIP serials of Material(Top Level) or WIP serials that have the Material(Child) consumed</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = MPN, WIP serials that have the MPN's consumed</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = GRN, WIP serials that have the GRN's consumed</span><br /><span style="color: rgb(0,0,0);">- For Purge Type = Batch, WIP serials that are associated to the listed batches</span></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><br /></span></span></p><ol><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Upload the .txt or .csv file containing the Serial Number/MPN/GRN/Batch number. Each row containing only a single Serial Number<span style="color: rgb(0,0,0);">/MPN/GRN/Batch number. </span></span></span></li><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Select required field</span></span></span></li><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Click the Generate Report button</span></span></span></li><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">System will display the WIP Serials related to the uploaded <span style="color: rgb(0,0,0);">Serial Number/MPN/GRN/Batch number.<br /></span></span></span></span><br /><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Note: For successful Purge by file upload, the <span style="color: rgb(0,0,0);">Serial Number/MPN/GRN/Batch Number in the upload file must be valid (Exist & In Process). The required field must also match the file upload data. The WIP must has WIP assemble history. Otherwise, user will not see any purge happening and the information uploaded will not reflect in the screen on clicking the "Generate Report" button.<br /></span></span></span></span></span></li></ol><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918426.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918422/image2014-5-12%2021%3A33%3A40.png?version=1&modificationDate=1530103805880&api=v2" /></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><br /></span></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918427.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918422/image2014-5-12%2021%3A31%3A47.png?version=1&modificationDate=1530103805897&api=v2" /></span></span></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="338" width="1117" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918425.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918422/image2014-5-12%2021%3A38%3A15.png?version=1&modificationDate=1530103805863&api=v2" /></span></span></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">WIP Serial</td><td colspan="1" class="confluenceTd">The WIP Serials returned from the search. Check the check box next to the desired WIP Serial to perform purge</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">The WIP's batch number</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The current route and route version of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Last Scanned</td><td colspan="1" class="confluenceTd">The last route step where the WIP was processed</td></tr><tr><td colspan="1" class="confluenceTd">In Queue</td><td colspan="1" class="confluenceTd">The current route step where the WIP is in queued</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The current status of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Is Purged?</td><td colspan="1" class="confluenceTd">If checked, the WIP is currently on an active purge<br />If unchecked, the WIP is not in any purge </td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold?</td><td colspan="1" class="confluenceTd"><span>If checked, the WIP is currently on an active hold</span><br /><span>If unchecked, the WIP is not in any hold</span></td></tr><tr><td colspan="1" class="confluenceTd">Purge to Route</td><td colspan="1" class="confluenceTd">The route/version to send the WIP for purge activities. Only displays route/version which are of purge type</td></tr><tr><td colspan="1" class="confluenceTd">Purge to Route Step</td><td colspan="1" class="confluenceTd"><span>The route step to send the WIP for purge activities. Dispays route steps associated to the selected purge route/version</span></td></tr><tr><td colspan="1" class="confluenceTd">Purge Reason</td><td colspan="1" class="confluenceTd">Allows user to enter the purge reason</td></tr><tr><td colspan="1" class="confluenceTd">Execute Purge</td><td colspan="1" class="confluenceTd">Click the Execute Purge button to purge the selected WIPs</td></tr><tr><td colspan="1" class="confluenceTd">Purge Id</td><td colspan="1" class="confluenceTd">The Purge Id will be auto generated and displayed once the WIPs are purged successfully</td></tr><tr><td colspan="1" class="confluenceTd">Recall tab</td><td colspan="1" class="confluenceTd"><p>The recall tab allows user to purge WIPs that were shipped out to customer. <span style="color: rgb(0,0,0);">No routing action to occur as these WIP(s) are shipped.<br /><span style="color: rgb(0,0,0);">An External RMA must be completed for the shipped WIP's to return to the site and re-enter the system.</span><br /><span style="color: rgb(0,0,0);">During the receiving of the 'returning' (recalled) WIP through 'External RMA', system shall check for an 'Active' purge on the WIP(s) serial.</span><br /><span style="color: rgb(0,0,0);">This shall flag the receiver that the WIP(s) has a 'Active' purge tied to it if the WIP is being returned for another reason.</span> </span></p></td></tr></tbody></table>






















- Purge on success message


![image2020-4-14_11-51-32.png](/.attachments/29918446.png)


Purge ID generated on successful purge
![image2020-4-14_11-51-32.png](/.attachments/29918444.png)


The WIP will have an active purge record as seen in WIP View dashboard. The WIP is currently enqueued in the Purge Route/Purge Rework step as set during Purge execution.

![image2020-4-14_11-51-32.png](/.attachments/29918441.png)



In Purges tab, the WIP has an added Purge Id = P1002

![image2020-4-14_11-51-32.png](/.attachments/29918443.png)




## Purge Arrival Tab




### Screen Activity




- Make the WIP to arrive at the Purge Rework route step.

This step is optional but is required if users need to track the arrival time of the WIP in the route step prior to it being started for processing in the route step.
Steps to execute a purge:

- Go to Purge Arrival tab

- Select all mandatory fields

- Scan or enter the WIP Serial Number to arrive it at the route step as displayed in the header section.

The WIP Serial Number should be displayed in the Arrived WIP Serial Number section on the right column 
- Click the Confirm button

- On success, system will display a "Changes Saved" message
![image2020-4-14_11-51-32.png](/.attachments/29918439.png)


If the material is not associated to the route, user will see the error below. 

![image2020-4-14_11-51-32.png](/.attachments/29918438.png)


Going back to WIP View dashboard, you will see a new WIP Process History is added where the WIP has arrived in Purge Rework route step. 
![image2020-4-14_11-51-32.png](/.attachments/29918437.png)





## Purge Release



### Screen Activity




- Release WIP from purge. The WIP is required to complete in the purge route before it's allowed to be released from its purge.

If the WIP has not been completed in the purge route, the WIP is not available in this tab to perform purge release. 
Steps to execute a purge:

- Go to Purge Release

- Search by Purge Id

- Select the WIP Serial to release from the active purge

- Enter purge release notes

- Click on the Purge Release button

- On success purge release, system will display a "Changes Saved" message

- Note the Purge Id status is changed from "Active" to "Released"
![image2020-4-14_11-51-32.png](/.attachments/29918436.png)


In WIP View dashboard, note the WIP is enqueued back at the previous step where it is queued before it was pulled into purge. The purge status is also "Released"

![image2020-4-14_11-51-32.png](/.attachments/29918435.png)


In the Purges tab, system displays the purge release details for Purge ID: P1002

![image2020-4-14_11-51-32.png](/.attachments/29918434.png)




## Purge Details




### Screen Activity




- View purge activities by Purge Id

- Filter the purge result by Active & Released, Active or Released status
Steps to execute a purge:

- Go to Purge Details

- Enter Purge Id

- Filter the result by Active & Released, Active or Released status (optional)
![image2020-4-14_11-19-47.png](/.attachments/69632067.png)





#### Attachments

[test.docx](/.attachments/29918423.docx)
[Purge SN Upload - SAMPLE.txt](/.attachments/29918424.txt)
[image2014-5-12 21:38:15.png](/.attachments/29918425.png)
[image2014-5-12 21:33:40.png](/.attachments/29918426.png)
[image2014-5-12 21:31:47.png](/.attachments/29918427.png)
[image2014-5-12 21:24:8.png](/.attachments/29918428.png)
[image2014-5-12 21:22:17.png](/.attachments/29918429.png)
[image2014-5-10 18:44:57.png](/.attachments/29918430.png)
[image2014-5-10 18:37:28.png](/.attachments/29918431.png)
[image2014-5-10 18:36:22.png](/.attachments/29918432.png)
[image2014-5-10 18:32:50.png](/.attachments/29918433.png)
[image2014-5-10 18:31:24.png](/.attachments/29918434.png)
[image2014-5-10 18:29:49.png](/.attachments/29918435.png)
[image2014-5-10 18:25:43.png](/.attachments/29918436.png)
[image2014-5-10 17:51:46.png](/.attachments/29918437.png)
[image2014-5-10 17:47:43.png](/.attachments/29918438.png)
[image2014-5-10 17:40:28.png](/.attachments/29918439.png)
[image2014-5-10 17:33:55.png](/.attachments/29918440.png)
[image2014-5-10 17:28:55.png](/.attachments/29918441.png)
[image2014-5-10 17:27:8.png](/.attachments/29918442.png)
[image2014-5-10 17:25:17.png](/.attachments/29918443.png)
[image2014-5-9 15:47:9.png](/.attachments/29918444.png)
[image2014-5-9 15:46:9.png](/.attachments/29918445.png)
[image2014-5-9 15:45:16.png](/.attachments/29918446.png)
[image2014-5-9 15:42:39.png](/.attachments/29918447.png)
[image2014-5-9 14:21:57.png](/.attachments/29918448.png)
[image2014-5-9 14:21:25.png](/.attachments/29918449.png)
[image2020-4-14_11-19-47.png](/.attachments/69632067.png)
[image2020-4-14_11-23-55.png](/.attachments/69632068.png)
[image2020-4-14_11-51-32.png](/.attachments/69632070.png)
