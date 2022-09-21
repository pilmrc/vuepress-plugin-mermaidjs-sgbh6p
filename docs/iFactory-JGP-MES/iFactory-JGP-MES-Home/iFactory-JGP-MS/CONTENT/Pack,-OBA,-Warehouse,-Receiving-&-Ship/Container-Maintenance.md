# Introduction

Container maintenance permits users to manage container attribute and provide an audit trail on container attribute changes. As this is a powerful screen that modifies vital details of the attribute, this screen should be restricted to users with permission only. 



### How to get there?



::: mermaid
graph LR
A("Packout")-->0("container maintenance")

:::


#### Permission


1) Packout - Container Maintenance (grant the necessary permission) 
- Can Access Container Maintenance 

- Can Modify Container Maintenance 2) Can Access NG → Can Reprocess Containers


#### Screen Activity


Container Maintenance enables user to perform the following activity: 

- Manually off hold OR on Hold the container

- Manually maintain container Attributes


- View audit log related to container attribute changes.


#### Screen Dependency


The following screen(s) has direct dependency with Container Maintenance.

- [C](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Container-View-Report.md)
[o](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)[ntainer View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Container-View-Report.md)
- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)

- [Container Reprocessing](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Reprocessing.md)

- [Container Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide-%2D-Container-Rules.md)



#### Add Container Hold



- Once the user scan's a container is shown with the correct hold info of the container. And allow adding a new hold.(Can multiple holds)


![image2021-12-2_13-42-36.png](/.attachments/103253037.png)



- If a user tries to add hold, (s)he has to enter the comment mandatorily.


![image2021-12-2_13-51-10.png](/.attachments/103253040.png)



- On entering a comment, user can add hold to that scanned container manually


![image2021-12-2_13-52-6.png](/.attachments/103253041.png)



- If a box container is already packed into a pallet

，when it is set as hold，will auto-trigger hold for the pallet

#### Release Container Hold



- If the Container is on hold, the system shows the info.

![image2021-12-2_13-55-11.png](/.attachments/103253042.png)


1. Select check box, "Release Container" button can be used.
2. Click 
"Release Container" button, the system will show "Release Comment", add comment then can release.
![image2021-12-2_13-58-46.png](/.attachments/103253043.png)


3. Release hold action should be reflected in Container View → General → Is on Hold
4. Release hold record is tracked in the Audit log tab


- If there is any on-hold content in the container

，
release container hold is not allowed
，
error shall prompt in toaster accordingly




#### Batch Upload Container Hold/Release



![image2021-12-16_15-56-29.png](/.attachments/104923453.png)


![image2021-12-16_15-57-10.png](/.attachments/104923454.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p>Batch Upald</p></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Container</td><td class="confluenceTd">Requires Hold's Container Number</td></tr><tr><td class="confluenceTd">Hold Comment</td><td class="confluenceTd">Record hold comment(for hold or select which need to release.)</td></tr><tr><td class="confluenceTd">Release Comment</td><td class="confluenceTd">Record release comment(for release.)</td></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd">Add/Release (<span style="color: rgb(0,0,0);">Single csv file can contains only single Action, Add or Release</span>)</td></tr></tbody></table>



#### Add Container Attribute



- Click the "Add Container Attribute" under the "Container Attribute" tab then pop up screen will show up

- Fill up all the required field (
**) and click "Submit" button** 
- New attribute will add into the grid table under the "Container Attribute" tab
![image2021-12-16_15-57-10.png](/.attachments/35357563.png)




#### Update Container Attribute



- Click the Pencil icon under the "Actions" field of the attribute in the grid table you need to update

- Fill up the required field (
**) and click "Submit" button** 
- Updated attribute will show in the grid table
![image2021-12-16_15-57-10.png](/.attachments/35357564.png)




#### Delete Container Attribute



- Click the Recycle bin icon under the "Actions" field of the attribute in the grid table you need to delete

- Fill up the required field (
**) and click "OK" button** 
- Attribute will remove from the grid table


#### WIP Audit Log 


System contains an internal audit log for examining modifications performed on a Container Attribute. 

- Click the "Audit Log" to view the list of Container Attribute tracking
![image2021-12-16_15-57-10.png](/.attachments/35357566.png)


Hold related info in Audit Log
![image2021-12-16_15-57-10.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/12115261-e32e-423e-92fd-c652791174dc?fileName=image.png)



**File Upload** 
User has option to perform bulk Add, Update or Delete the container attribute.

- Only allow to bulk upload in .csv file format.

- System will validate each row of the container number must exist in the system.

- If there is any error in the file, system will upload the pass container number and return error.

When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- The Add, Update or Delete events will be shown at Audit Log tab

- The system will create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is container.csv, the output file will be container.out.csv).


- Only limit to 1000 records per upload.

If the file has more than 1000 containers then prompt toaster message: “The file has exceed the 1000 limit.”Here is the sample file for container attribute bulk upload :
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Input file</p></th><th style="text-align: left;" class="confluenceTh"><p>Output file</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/35357561/45974122.csv" data-linked-resource-id="45974122" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Container-with fail data.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="35357561" data-linked-resource-container-version="13">Container-with fail data.csv</a></p></div></td><td style="text-align: left;" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/35357561/45974123.csv" data-linked-resource-id="45974123" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Container-with fail data.out.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="35357561" data-linked-resource-container-version="13">Container-with fail data.out.csv</a></p></div></td></tr></tbody></table>

Container_with fail data.csv
[Container_with fail data.out.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Maintenance.md)

![image2019-4-3_13-33-28.png](/.attachments/45974121.png)





#### Container Reprocessing


Permission needed for this functionality: 
Can Access NG → Can Reprocess Containers
Container Reprocessing allows to reverse the packaging activities so that the packed WIP/lot can be reprocessed in the shop floor 
due to incorrect packaging, shipping issue, customer order changes or cancellation. This is applicable to WIP Container (Box and Pallet) and Lot Container (Box and Pallet).
User will be able to see all the tabs if a WIP container is scanned.
![image2020-3-27_14-6-30.png](/.attachments/67569691.png)



![image2020-3-27_14-10-22.png](/.attachments/67569692.png)


When user scans container number which belongs to Lot, they will only see the Container Reprocessing tab.
![image2020-3-27_14-14-58.png](/.attachments/67569697.png)



![image2020-3-27_14-14-26.png](/.attachments/67569696.png)


The "Set Containers to Closed" button is disabled if the container is not in "Shipped" status. Clicking on the "Set Containers To Closed" button will prompt a dialog to allow the user to enter comments and then system will update the container status to "Closed".

- WIP Box:
System will update the status of the WIPs in the container to "Completed".
- WIP Pallet: System will update the status of the containers in the pallet to "Closed" and update all the WIPs to "Completed".

- Lot Box: System will update all the lot status in the container to "Complete".

- Lot Pallet: System will update the status of the containers in the pallet to "Closed" and all the lot status in the containers to "Complete".
User is able to view the event in Audit Log at Container View (WIP) or Container View-Lot (Lot).



Fields
<table class="wrapped confluenceTable" style="width: 596.0px;"><colgroup><col /><col /></colgroup><tbody><tr><td style="width: 596.0px;" colspan="2" class="confluenceTd">Container Hold</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 181.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 415.0px;" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">Add/Release</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Hold/Release Comment</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Hold Comment</span></td><td colspan="1" class="confluenceTd">Hold's remarks</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Held By</span></td><td colspan="1" class="confluenceTd">Who operated this hold</td></tr><tr><td colspan="1" class="confluenceTd">Date</td><td colspan="1" class="confluenceTd">What date to hold</td></tr><tr><td style="width: 596.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ContainerMaintenance-ContainerAttributeTab">Container Attribute Tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 181.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 415.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Actions</td><td style="width: 415.0px;" class="confluenceTd">Update or Delete container attribute name and value</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Container Attribute Name</td><td style="width: 415.0px;" class="confluenceTd">Display attribute name associated to a box/container</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Container Attribute Value</td><td style="width: 415.0px;" class="confluenceTd">Attribute Value for the corresponding Container Attribute Name</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Comment</td><td style="width: 415.0px;" class="confluenceTd">Comment to the action taken to the Container Attribute</td></tr><tr><td style="text-align: center;width: 596.0px;" colspan="2" class="confluenceTd"><h5 id="ContainerMaintenance-AuditLogTab">Audit Log Tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 181.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 415.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Event</td><td style="width: 415.0px;" class="confluenceTd">Event happen to the attribute. E.g Attribute</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Original Value</td><td style="width: 415.0px;" class="confluenceTd">Value prior to change</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">New Value</td><td style="width: 415.0px;" class="confluenceTd">Value after change</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Action</td><td style="width: 415.0px;" class="confluenceTd">action of the change</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Modified</td><td style="width: 415.0px;" class="confluenceTd"><p>Date and time when the attribute change occurs</p></td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Modified By</td><td style="width: 415.0px;" class="confluenceTd"><p>User performed the change</p></td></tr><tr><td style="width: 181.0px;" class="confluenceTd"><span>Comment</span></td><td style="width: 415.0px;" class="confluenceTd"><span>Comment to the action taken to the Container Attribute</span></td></tr><tr><td style="text-align: center;width: 596.0px;" colspan="2" class="confluenceTd"><span style="color: rgb(122,134,154);"><strong>File Upload Tab</strong></span></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 181.0px;" title="Background colour : Grey" data-highlight-colour="grey">Field </td><td class="highlight-grey confluenceTd" style="width: 415.0px;" title="Background colour : Grey" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Choose File</td><td style="width: 415.0px;" class="confluenceTd">Allow user to choose file from local device.</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Upload</td><td style="width: 415.0px;" class="confluenceTd">Allow user to upload the selected file.</td></tr><tr><td style="text-align: center;width: 596.0px;" colspan="2" class="confluenceTd"><span style="color: rgb(102,102,153);"><strong>Container Reprocessing</strong></span></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 181.0px;" title="Background colour : Grey" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 415.0px;" title="Background colour : Grey" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 181.0px;" class="confluenceTd">Set Containers to Closed</td><td style="width: 415.0px;" class="confluenceTd">Allow user to update the container status to "Closed".</td></tr></tbody></table>



#### Attachments

[image2018-10-3_12-53-10.png](/.attachments/35357563.png)
[image2018-10-3_12-58-35.png](/.attachments/35357564.png)
[image2018-10-3_13-4-31.png](/.attachments/35357566.png)
[image2019-4-3_13-33-28.png](/.attachments/45974121.png)
[Container_with fail data.csv](/.attachments/45974122.csv)
[Container_with fail data.out.csv](/.attachments/45974123.csv)
[image2020-3-27_14-6-30.png](/.attachments/67569691.png)
[image2020-3-27_14-10-22.png](/.attachments/67569692.png)
[image2020-3-27_14-11-37.png](/.attachments/67569693.png)
[image2020-3-27_14-12-0.png](/.attachments/67569694.png)
[image2020-3-27_14-13-27.png](/.attachments/67569695.png)
[image2020-3-27_14-14-26.png](/.attachments/67569696.png)
[image2020-3-27_14-14-58.png](/.attachments/67569697.png)
[image2020-8-24_7-24-44.png](/.attachments/77136372.png)
[image2020-8-24_7-25-33.png](/.attachments/77136373.png)
[image2020-8-24_7-26-16.png](/.attachments/77136374.png)
[image2020-8-24_7-28-13.png](/.attachments/77136375.png)
[image2021-12-2_13-42-36.png](/.attachments/103253037.png)
[image2021-12-2_13-50-21.png](/.attachments/103253038.png)
[image2021-12-2_13-50-48.png](/.attachments/103253039.png)
[image2021-12-2_13-51-10.png](/.attachments/103253040.png)
[image2021-12-2_13-52-6.png](/.attachments/103253041.png)
[image2021-12-2_13-55-11.png](/.attachments/103253042.png)
[image2021-12-2_13-58-46.png](/.attachments/103253043.png)
[image2021-12-16_15-55-35.png](/.attachments/104923452.png)
[image2021-12-16_15-56-29.png](/.attachments/104923453.png)
[image2021-12-16_15-57-10.png](/.attachments/104923454.png)
