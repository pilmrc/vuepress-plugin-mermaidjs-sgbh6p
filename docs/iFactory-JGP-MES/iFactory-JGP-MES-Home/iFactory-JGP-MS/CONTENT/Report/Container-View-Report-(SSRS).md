# Introduction

The Container View report is used to view WIP container details and contents packed into the container in real time.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("Containerview")

:::
![2021-07-06 10_18_42-Window.png](/.attachments/94405275.png)




#### **Selection Criteria** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);"><span style="color: rgb(23,43,77);">Specify the Start Date, only container created on/after Start Date will be included in the report. </span></span><p>All Customers, Routes and Route Steps are selected by default when Start date is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">End Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Specify the End Date, only<span> </span></span><span style="color: rgb(23,43,77);">container created on</span><span style="color: rgb(23,43,77);">/before End Date will be included in the report. Current date is selected by default once a Start Date is selected.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Customer</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Specify the Customer. Multiple selection is available.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Route</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Specify the Route. Multiple selection is available.</span></p><p><span style="color: rgb(51,51,51);">If Customer is selected, only the Route(s) associated to the Customer is available for selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Filter By</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">"CurrentRouteStep" and "PackRouteStep" are available for selection. "CurrentRouteStep" is selected by default.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Route Step</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Specify the Route. Multiple selection is available. Values are filtered by the route selected.</span></td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">Manufacturing Area. Multiple selection is available. Values are filteed by route step selected.</td></tr><tr><td colspan="1" class="confluenceTd">Parent Container</td><td colspan="1" class="confluenceTd">Optional field to specify the Parent Container number(s). Text field that can support multiple values. Can either search by Parent Container or Container (cannot be both)</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Optional field to specify the Container number(s). Text field that can support multiple values.<br /></span></p><p><span style="color: rgb(51,51,51);">If there is no Container number provided, Start Date and End Date should be within 15 days only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Attribute</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Yes/No value. Default is 'No'.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Attribute Name</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Text field. Mandatory if “Container Attribute” = Yes. User can only search for 1 container attribute name at one time.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Attribute Values</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Optional text field that can support multiple values.</span></p><p><span style="color: rgb(51,51,51);">If “Container Attribute” = Yes but Container Attribute Values is not provided, Start Date and End Date should be within 15 days only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">View Report</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">To view the report once all mandatory fields are selected.</span></td></tr></tbody></table>


Yes/No value. Default is ‘No’.
Container Attribute Name
Text field. Mandatory if “Container Attribute” = Yes. User can only search for 1 container attribute name at one time.
Container Attribute Values
Optional text field that can support multiple values.
If “Container Attribute” = Yes but Container Attribute Values is not provided, Start Date and End Date should be within 15 days only.
View Report
To view the report once all mandatory fields are selected.



#### Report Fields


If “Container Attribute” = No

![image2021-3-5_15-58-14.png](/.attachments/88113528.png)



If “Container Attribute” = Yes , “Container Attribute Name “ and “Container Attribute Value “ are added as the first two columns of the report.

![image2021-3-5_15-59-52.png](/.attachments/88113529.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Attribute Name</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The attribute name input by user when “Container Attribute” = Yes.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Attribute Value</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The attribute value(s) for the attribute name provided.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Name</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The unique name given to the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Parent Container</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">If the container has a parent (packed in another container), the parent container number will be shown.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Type</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The <a class="createlink" href="/pages/createpage.action?spaceKey=IJM&title=Container+Type+%283.0%29&linkCreation=true&fromPageId=88113521">container type</a> for the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Customer</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The customer where the container belongs.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Product Family</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The product family where the packed item belongs.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Assembly</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The assembly where the packed item belongs.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Capacity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The maximum quantity allowed for the material packed.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Item Count</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The total count of items packed into the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Creation Date</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The date and time when the container was created.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Container Status</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Displays the container status whether it is currently "Opened", "Closed", "Scrapped" or "Shipped".</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Is On Hold</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Yes/No. Displays whether the container is on hold.</span></td></tr><tr><td colspan="1" class="confluenceTd">Pack Route</td><td colspan="1" class="confluenceTd">The Route which the item was packed.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Pack Route Step</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The Route Step where the item was packed.</span></td></tr><tr><td colspan="1" class="confluenceTd">Pack MA</td><td colspan="1" class="confluenceTd">The Manufacturing Area which the item was packed.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Event</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Displays the container event whether it was "Packed" or "UnPacked".</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Material</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The material packed into the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Serial Number</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Displays the WIP's Serial Number.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Quantity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The quantity of the serial number packed into the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Material Type</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material type of the serial number packed into the container.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Current Route</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Current route of the container.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Current Route Step</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Current route step of the container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Current MA</td><td colspan="1" class="confluenceTd">Current Manufacturing Area of the container.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Packed/Unpacked Date</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The date time when the item was packed/unpacked.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Packed/Unpacked By</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The user that packed/unpacked the item.</span></td></tr></tbody></table>




#### Attachments

[image2021-3-5_14-4-42.png](/.attachments/88113522.png)
[image2021-3-5_14-5-41.png](/.attachments/88113523.png)
[image2021-3-5_14-8-49.png](/.attachments/88113524.png)
[image2021-3-5_15-51-42.png](/.attachments/88113526.png)
[image2021-3-5_15-56-2.png](/.attachments/88113527.png)
[image2021-3-5_15-58-14.png](/.attachments/88113528.png)
[image2021-3-5_15-59-52.png](/.attachments/88113529.png)
[2021-07-06 10_18_42-Window.png](/.attachments/94405275.png)
