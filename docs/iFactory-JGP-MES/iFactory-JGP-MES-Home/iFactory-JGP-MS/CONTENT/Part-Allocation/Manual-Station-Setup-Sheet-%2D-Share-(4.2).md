# Introduction

Manual Station Setup Sheet - Share is a module to share Manual Station setup sheets
The setup sharing is a functionality that allows user to work with multiple setup sheets using the same details, so that a change in one setup sheet details will be reflected to all setups in the share group.
In this way it is possible to create same setup sheet for different stations (i.e. parallel steps) and change them quickly managing only one setup, instead of apply the change one by one to all setups. The system will take care to replicate the change to all setups in the share group.



### How to get there?



![](/.attachments/29919218.png)


![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then



::: mermaid
graph LR
A("SHARE SETUP SHEETS")-->0("MANUAL STATION")

:::


#### Screen Activity


Manual Station Setup Sheet - Share enables user to perform the following activity:

- Create a Share Group

- Add/Remove more setups to the group, referencing one setup sheet

Pre Condition
The following data needs to be pre-configured before user configures 
Manual Station Setup Sheet - Share if the share is created referencing an existing setup sheet:
- Manual Station
Setup Sheet(the reference setup must exists) The share can be created without any existing setup as reference, in that case is not required to have a pre-configured setup sheet for using the 
Manual Station Setup Sheet - Share screen

#### Screen Dependency


Following screens have direct dependency with 
Manual Station Setup Sheet - Share
Manual Station Part Allocation
Manual Station Setup Sheet
![image2020-4-14_15-57-35.png](/.attachments/69632084.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualStationSetupSheetShare(4.2)-ConfigurationTab"><strong>Configuration Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field </strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Shared Setup Name</p></td><td class="confluenceTd"><p>It is the name that will be used to refer to the share. The name is unique, so that is not possible to have two different shares with the same name</p></td></tr><tr><td class="confluenceTd"><p>Active toggle button</p></td><td class="confluenceTd"><p>It is a flag to define if the setup sheet in the share is active or not. All setups that belong to the share will have the same flag active (or inactive). If a setup needs to have a different status than other setups, then it must be removed from the share.</p></td></tr><tr><td colspan="1" class="confluenceTd">Program Name</td><td colspan="1" class="confluenceTd">Name of the program used by engineers. This value (if not changed) will be assigned to all setup sheet added in the share.</td></tr><tr><td colspan="1" class="confluenceTd">Comments</td><td colspan="1" class="confluenceTd">Generic comment field (not mandatory)</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet ID</td><td colspan="1" class="confluenceTd">It is the setup selected from existing setup sheets. It can be used as reference setup</td></tr><tr><td class="confluenceTd">Setup Number</td><td class="confluenceTd">The setup number related to the setup Sheet ID. This value is defined by engineers<span> (it will be auto-filled if the setup is selected from existing setups)</span></td></tr><tr><td class="confluenceTd">Setup Version</td><td class="confluenceTd">The setup number version related <span>to the setup Sheet ID. This value is defined by engineers. It's not possible to have two normal setups with same Setup number and version<span> (it will be auto-filled if the setup is selected from existing setups)</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Pull List toggle button</td><td colspan="1" class="confluenceTd">It is a flag to Activate/Deactivate the possibility to send setup information to SAP for the Pull List creation. Default value is OFF. When set to ON the system will send the information of current setup sheet to SAP for managing the pull list. At the configuration, all setups will have the same Pull List flag configuration.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce<span> (it will be auto-filled if the setup is selected from existing setups)</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span><span>The route/version where the setup sheet has to be used<span> (it will be auto-filled if the setup is selected from existing setups). </span></span></span>Only active route version are available for selection.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the setup sheet will be used.<span> (it will be auto-filled if the setup is selected from existing setups)</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Add to List button</td><td colspan="1" class="confluenceTd">This button will add the selected setup to the list of shared setups. The first setup added will be the "reference setup". All other setups will retrieve the reference setup details. If the reference setup is a New setup the share will be created with empty Details and the engineer will have to update the details from the Manual Station Setup Sheet screen. <span>It's not possible to add a setup sheet that already exists (except for reference: </span><em>1st row</em><span>), it is required to change at least one parameter (i.e. setup version)</span></td></tr><tr><td colspan="1" class="confluenceTd">Clear button</td><td colspan="1" class="confluenceTd"><span>To clear the selection fields</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span>Edit Icon </span><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="download/attachments/17236042/97561897811805612654" data-image-src="http://usplnd0wiki01:8090/download/attachments/17236042/image2017-7-10+15%3A8%3A27.png?version=1&modificationDate=1499692107182" /></span></p><p><span>(</span><em>Action</em><span> column)</span></p></td><td colspan="1" class="confluenceTd"><span>To modify the row</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span>Delete icon </span><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="download/attachments/17236042/50176344203671522206" data-image-src="http://usplnd0wiki01:8090/download/attachments/17236042/image2017-7-10+15%3A9%3A10.png?version=1&modificationDate=1499692149823" /></span></p><p><span>(</span><em>Action</em><span> column)</span></p></td><td colspan="1" class="confluenceTd"><span>To delete the row (and remove the setup from the share)</span></td></tr></tbody></table>






#### Attachments

[image2017-9-4 12:14:59.png](/.attachments/29919218.png)
[image2017-7-10 15:19:44.png](/.attachments/29919219.png)
[image2017-5-26 16:18:24.png](/.attachments/29919220.png)
[image2017-5-18 14:47:30.png](/.attachments/29919221.png)
[image2017-5-17 15:7:31.png](/.attachments/29919222.png)
[image2017-5-17 15:13:48.png](/.attachments/29919223.png)
[image2017-5-17 15:22:37.png](/.attachments/29919224.png)
[image2017-5-17 13:29:56.png](/.attachments/29919225.png)
[image2017-5-17 14:46:54.png](/.attachments/29919226.png)
[image2017-5-17 14:59:32.png](/.attachments/29919227.png)
[image2017-5-26 16:4:46.png](/.attachments/29919228.png)
[image2017-5-17 13:31:28.png](/.attachments/29919229.png)
[image2020-4-14_15-57-35.png](/.attachments/69632084.png)
