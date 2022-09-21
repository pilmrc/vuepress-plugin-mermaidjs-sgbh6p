# Introduction

This function links to a security users to a data partition. A user has access to all data partition available for the customers, division and project associated with Site.
Note: service account user not require to assigned data partition. By default the service account will control by api param to return the relative customer data.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("Users")
0-->1("EDIT User")
1-->2("PARTITIONS")

:::


#### **Permission** 



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Users” permission to allow user to make changes such as add, edit and remove partition from a user.


#### Screen Activity


The screen allows to maintain the association of data partition to the individual user.
Since a user can be associated to multiple customers, division and project against the Site, the user will have access to all partitions assigned in iFactory security.


#### Pre-Condition


User, Sites and Data Partition configured.


#### Screen Dependency



- [Users](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance.md)


- [Data Partition](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Data-Partitions.md)



#### User's Data Partition Interface


![image2021-9-27_11-36-47.png](/.attachments/99223061.png)




#### Users-Data Partitions Fields:


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field/Icon</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Partition</td><td style="text-align: left;" class="confluenceTd">List of Data Partitions available in current installed system. Allow search to add single or multiple partitions. Partial search available on customer.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Site</td><td style="text-align: left;" class="confluenceTd">List of sites currently associated to the user. Typing the value in the grid table header will filter the list.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Customer/Division</td><td style="text-align: left;" class="confluenceTd"><p>List of customer/division currently assigned to the selected User. Typing the value in the grid table header will filter the list.</p><ul><li><span>Assign ALL - user will be able to access ALL customers/division including the newly added customer.</span></li><li><span>User will be able to view all the customers/divisions including newly added customers/divisions in the data partition dropdown list.</span></li><li><span>User still need to select one site and one customer/division at a time during application login.</span></li></ul><p><span>Note: User only able to add ALL or Specific Customer/Division. Not allowed user to select ALL and Specific Customer/Division at the same time.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Project </td><td colspan="1" class="confluenceTd"><p>List of Project currently assigned to the selected User. Typing the value in the grid table header will filter the list.</p><p>Allow user to assign ALL OR specific project in data partition. </p><ol><ul><li><span>Assign ALL - user will be able to access ALL the projects including the newly added project in application and data without project assignment.</span></li><li><span>Assign specific project - user will be able to access to the specific project in application and data without project assignment.</span></li></ul></ol><p><span>Note: </span></p><ul><li><span>User only able to add ALL or Specific Project. Not allowed user to select ALL and Specific Project at the same time.</span></li><li><span>Currently , only the data in SMS application is filtering by project data partition.</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><div class="content-wrapper"><p>Clear <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639258/57639262" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639258/image2019-9-21-13-31-3.png?version=1&modificationDate=1569043863991&api=v2" /></span></span></p></div></td><td style="text-align: left;" class="confluenceTd">Clear the current value (related to Partition list, Site and Customer/Division).</td></tr><tr><td style="text-align: left;" class="confluenceTd"><div class="content-wrapper"><p>Delete Partition <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639258/57639264" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639258/image2019-9-21-13-33-12.png?version=1&modificationDate=1569043992296&api=v2" /></span></span></p></div></td><td style="text-align: left;" class="confluenceTd">Remove a partition from current selected User.</td></tr></tbody></table>



#### Attachments

[image2019-9-21_17-22-49.png](/.attachments/62423450.png)
[image2019-9-21_17-25-51.png](/.attachments/62423451.png)
[image2020-1-10_8-21-21.png](/.attachments/62423452.png)
[image2020-1-10_8-23-50.png](/.attachments/62423453.png)
[image2020-1-23_11-18-9.png](/.attachments/64422127.png)
[image2020-1-23_11-23-6.png](/.attachments/64422128.png)
[image2021-9-27_11-36-47.png](/.attachments/99223061.png)
