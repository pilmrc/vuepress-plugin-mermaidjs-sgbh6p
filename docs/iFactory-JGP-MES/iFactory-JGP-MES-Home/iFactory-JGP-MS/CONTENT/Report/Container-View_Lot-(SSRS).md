# Introduction

The Container View_Lot Report 

is used to view lot container details and contents packed into the lot container in real time.
**How to get there?** 


::: mermaid
graph LR
A("IFACTORY-STANDARD-REPORT")-->0("Container View")

:::


### Screen Activity


Container View Lot Report enables user to perform the following activities:

- Allow user to see lower level containers

- User can filter by filter condition to see relative Lot productivity


#### **Filter Criteria** 


![image2021-3-16_15-21-44.png](/.attachments/89587805.png)


<table class="relative-table confluenceTable" style="width: 70.1591%;"><colgroup><col style="width: 13.6933%;" /><col style="width: 86.3067%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Start Date<span style="color: rgb(255,0,0);">*</span></span></p></td><td style="text-align: left;" class="confluenceTd"><p>Specify the Start Date, only container created on/after Start Date will be included in the report.</p><p><span style="color: rgb(23,43,77);">Note: Start and End value range can be maximum of 15 days if t<span style="color: rgb(51,51,51);">here is no Container number provided</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">End Date<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p>Specify the End Date, only container created on/after End Date will be included in the report. <span style="color: rgb(23,43,77);">Current date is selected by default once a Start Date is selected.</span></p><p><span style="color: rgb(23,43,77);">Note: Start and End value range can be maximum of 15 days if t<span style="color: rgb(51,51,51);">here is no Container number provided</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer<span style="color: rgb(255,0,0);">*</span></span></p></td><td colspan="1" class="confluenceTd"><p>All the available Customer which the existing is using Container between the start date to end date to available here for user's selection. This filter <span style="color: rgb(23,43,77);">allows multiple selection</span>.</p></td></tr><tr><td colspan="1" class="confluenceTd">Route<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Route against with selected Customer that the existing is using Container between the start date to end date to be available here for user's selection. This filter <span style="color: rgb(23,43,77);">allows multiple selection</span>.</td></tr><tr><td colspan="1" class="confluenceTd">Filter By<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user has the option to set 'CurrentRouteStep' and 'PackedRouteStep'. This filter default value set as 'CurrentRouteStep'.</span></p><p><span style="color: rgb(23,43,77);"><strong>Note: </strong> Filter By has be used with Route Step. </span></p><p><span style="color: rgb(23,43,77);">'CurrentTouteStep' means the Container is in queue in Route Step which user selected in Route Step column. 'PackoutedRouteStep' is means the Container is packed in Route Step which user selected in Route Step column.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Route Step which Route Step Type is Planned Order Packout against with selected Route that the existing is using Container between the start date to end date to be available here for user's selection. This filter <span style="color: rgb(23,43,77);">allows multiple selection</span>.</td></tr><tr><td colspan="1" class="confluenceTd">Container Number</td><td colspan="1" class="confluenceTd"><p>Allow user to insert any available Container Number for report generation. This filter <span style="color: rgb(23,43,77);">allows multiple input, using enter(<span style="color: rgb(77,81,86);">↵)</span> to separate</span>.</p><p>Note: <span style="color: rgb(51,51,51);">If there is no Container number provided, Start Date and End Date should be within 15 days only.</span></p></td></tr></tbody></table>

**Available field detail in Report** 
If Filter By = "CurrentRouteStep" and Route Step = "Packout"(first packed).
Container is in queue in Route Step Packout (first packed Step).
![image2021-3-16_15-32-43.png](/.attachments/89587811.png)


If Filter By = "CurrentRouteStep" and Route Step = "Palletization"(over packed).
Container is in queue in Route Step Palletization (over packed Step).
![image2021-3-16_15-31-31.png](/.attachments/89587810.png)


If Filter By = "PackRouteStep" and Route Step = "Packout"(first packed).
Container is packed in Route Step Packout (first packed Step).
![image2021-3-16_15-28-31.png](/.attachments/89587808.png)


If Filter By = "PackRouteStep" and Route Step = "Palletization"(over packed).
Container is packed in Route Step Palletization (over packed Step). Report only display the lower level Container information, Palletization Step is over packed Step will be blank when it filter PackRouteStep.
![image2021-3-16_15-29-41.png](/.attachments/89587809.png)


<table class="relative-table confluenceTable" style="width: 70.4334%;"><colgroup><col style="width: 15.1988%;" /><col style="width: 84.8012%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Container Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Container Number which is in/packed in Route Step.</span></td></tr><tr><td colspan="1" class="confluenceTd">Parent Container</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The field showed the parent Container Name if Container is packed in another container and it will be blank if there is no parent Container.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Contain Type Name </span><span style="color: rgb(23,43,77);">for Container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Customer where the container belongs.</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Product Family Name of the item packed in the container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Assembly Name of the item packed in the container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Item Count (total quantity)</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This fields shows the total quantity of items packed into a container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Creation Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the actual date where the container was created.</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Status</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Container status (Opened, Closed, Scrapped, Consumed, Shipped).</span></td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The field shows On Hold status for the Container. "Yes" if Container is On Hold, "No" if it's not.</span></td></tr><tr><td colspan="1" class="confluenceTd">Pack Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">Total </span>internal lot quantity that released into the Route.</span></td></tr><tr><td colspan="1" class="confluenceTd">Event</td><td colspan="1" class="confluenceTd">This field shows the activities for the container. (Only shows p<span style="color: rgb(0,0,0);">acked & Unpacked events).</span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Material of the item packed in the container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Carrier Number</td><td colspan="1" class="confluenceTd">This fields shows the Carrier Number of the item packed in the container. (show the the latest packed material and all unpacked material)</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd"><p>This fields shows the Carrier quantity of items </p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material Type</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Material Type of the item packed in the container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Current Route</td><td colspan="1" class="confluenceTd">This field shows the name of Route that the container in queue.</td></tr><tr><td colspan="1" class="confluenceTd">Current Route Step</td><td colspan="1" class="confluenceTd">This field shows the Container is in queue in which Route Step.</td></tr><tr><td colspan="1" class="confluenceTd">Packed/Unpacked Date</td><td colspan="1" class="confluenceTd">This field shows the date time when packed/unpacked container. (show the latest packed/unpacked record)</td></tr><tr><td colspan="1" class="confluenceTd">Packed/Unpacked By</td><td colspan="1" class="confluenceTd">This field shows the user who packed/unpacked container.</td></tr></tbody></table>



#### Attachments

[image2021-3-5_15-13-24.png](/.attachments/88113525.png)
[image2021-3-11_13-51-36.png](/.attachments/88113677.png)
[image2021-3-16_15-21-44.png](/.attachments/89587805.png)
[image2021-3-16_15-23-25.png](/.attachments/89587806.png)
[image2021-3-16_15-24-5.png](/.attachments/89587807.png)
[image2021-3-16_15-28-31.png](/.attachments/89587808.png)
[image2021-3-16_15-29-41.png](/.attachments/89587809.png)
[image2021-3-16_15-31-31.png](/.attachments/89587810.png)
[image2021-3-16_15-32-43.png](/.attachments/89587811.png)
