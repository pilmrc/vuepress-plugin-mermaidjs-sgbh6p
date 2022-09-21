# Introduction

Associate to existing sites the customer, divisions and project on which applying the data security.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("DATA PARTITIONS")

:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.


#### Screen Activity


This screen is purely showing the available partition for a Site when iFactory's Customer,Division and project is add. A job will be run to sync this at backend every 1 minute base on changes in iFactory (Customer, Division and Project) and update it to Security (Data Partition).


#### Pre Condition


Customer ,Division and Project is already created in iFactory.


#### Screen Dependency



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)


- [Division](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Division.md)


- [Project](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Project-Maintenance.md)


- Site


#### Data Partitions Interface



![image2021-9-27_11-33-1.png](/.attachments/99223059.png)


![image2021-9-27_11-32-35.png](/.attachments/99223058.png)




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Site</td><td class="confluenceTd">List of sites available for current installation. It can be used also to filter the list.</td></tr><tr><td class="confluenceTd">Customer/Division</td><td class="confluenceTd">List of Customer/Divisions available in current installation.</td></tr><tr><td colspan="1" class="confluenceTd">Project</td><td colspan="1" class="confluenceTd">List of Project available in current installation.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Clear <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639258/57639262" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639258/image2019-9-21-13-31-3.png?version=1&modificationDate=1569043863991&api=v2" /></span></p></div></td><td class="confluenceTd">Clear associated value</td></tr></tbody></table>





#### Attachments

[image2019-9-21_13-25-21.png](/.attachments/57639308.png)
[image2019-9-21_17-4-3.png](/.attachments/57639309.png)
[image2020-1-23_10-51-12.png](/.attachments/64422125.png)
[image2021-6-16_13-12-15.png](/.attachments/94404687.png)
[image2021-9-27_11-32-35.png](/.attachments/99223058.png)
[image2021-9-27_11-33-1.png](/.attachments/99223059.png)
