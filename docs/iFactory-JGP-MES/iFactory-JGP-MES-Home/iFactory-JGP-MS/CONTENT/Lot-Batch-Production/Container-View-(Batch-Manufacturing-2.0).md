# Introduction

The Container View is used to view container details, history, and contents packed into the container for a Carrier/Container.



### How to get there?




::: mermaid
graph LR
A("packout ")-->0("container view-lot")

:::


#### Permission


To access the screen and able to view container details:
View Container Details - Allows the user to view detailed container information (packed items, history, etc.)



#### Screen Activity


Container View enables the user to perform the following activity:

- Review the details of Container.

- The ability to link to Carrier View, Lot View and Planned Order View for the Lot/Container packed into a Container.



#### Pre Condition


The process needs to be done before user is able to use view the container information

- Lot/Container must be packed into a Container




#### Process


User can search container by entering partial or exact match of Container number. Partial match will prompt search results window.
Search Window Example (
Results that contains the filtering value will be displayed):
![image2020-12-14_17-56-40.png](/.attachments/84705296.png)





#### ***General Tab***  

Lower level (box) container:

![image2020-12-16_11-20-1.png](/.attachments/84705380.png)


Overpack (pallet) container:

![image2021-3-5_10-43-4.png](/.attachments/88113516.png)


Fields:

<table class="relative-table wrapped confluenceTable" style="width: 67.9639%;"><colgroup><col style="width: 18.0143%;" /><col style="width: 81.8833%;" /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>General Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><p>The Container status (Opened, Closed, Scrapped, Consumed, Shipped).</p></td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd"><span>The Customer of the Container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">The Container Type Name of the Container.</td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">On Hold status for the Container. "Yes" if Container is On Hold, "No" if it's not.</span></td></tr><tr><td colspan="1" class="confluenceTd">Parent Container</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The link to parent container number if the container is over packed in another container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Created By</td><td colspan="1" class="confluenceTd">The user who created the Container.</td></tr><tr><td colspan="1" class="confluenceTd">Created On</td><td colspan="1" class="confluenceTd"><span>The date that the Container was created.</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Usage</td><td colspan="1" class="confluenceTd">The Container Usage Type of container: Box/Pallet</td></tr><tr><td colspan="1" class="confluenceTd">Total Quantity</td><td colspan="1" class="confluenceTd">The total quantity of items packed into a container. Total up all Lot Quantity packed if it is a lower level (box) container, total number of boxes packed if it is an overpack container.</td></tr><tr><td colspan="1" class="confluenceTd">Current Route</td><td colspan="1" class="confluenceTd">The name of Route and Route Version that the container is currently at.</td></tr><tr><td colspan="1" class="confluenceTd">Current Route Step</td><td colspan="1" class="confluenceTd">The name of Route Step that the container is currently at.</td></tr></tbody></table>


***Contents Tab***  
Lower level (box) container:

![image2020-12-14_18-18-41.png](/.attachments/84705298.png)



Overpack (pallet) container:

![image2021-3-8_9-59-50.png](/.attachments/88113555.png)



Fields:

<table class="relative-table wrapped confluenceTable" style="width: 71.1605%;"><colgroup><col style="width: 16.0313%;" /><col style="width: 83.9101%;" /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Contents Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Carrier Number</td><td class="confluenceTd">The serial number of Carrier that packed in the container. A hyperlink to Carrier View.</td></tr><tr><td colspan="1" class="confluenceTd">Internal Batch Number</td><td colspan="1" class="confluenceTd">The Internal Batch Number of Lot that is packed in the container. A hyperlink to Lot View by Lot ID.</td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">The Planned Order of the item packed in the container. A hyperlink to Planned Order View.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The Material name of the item packed in the container.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The Quantity of items (number of units in the carrier). If overpack container, it is the total quantity in the lower level container (box).</td></tr><tr><td colspan="1" class="confluenceTd">Container Number</td><td colspan="1" class="confluenceTd"><span>The serial number of Container that packed in the container. A hyperlink to Container View-Lot. Only visible for overpack container.</span></td></tr><tr><td colspan="1" class="confluenceTd">Usage Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Determines if the container is a box or pallet.</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Container Type used to create the Container.</span></td></tr></tbody></table>


***History Tab***  
Lower level (box) container:

![image2020-12-16_11-23-6.png](/.attachments/84705381.png)



Overpack container:

![image2021-3-5_11-18-9.png](/.attachments/88113519.png)


Fields: 

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>History Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Event</td><td class="confluenceTd"><p>This section displays the activities for the container (Created, Opened, Closed, Packed, Unpacked, Hold, Release Hold) </p></td></tr><tr><td colspan="1" class="confluenceTd">Event Details</td><td colspan="1" class="confluenceTd"><p>This section displays the details of the event. <br />Open, Closed, Created Event will display Container Number.<br />Hold and Release Hold will show fixed comment.<br /><span style="background-color: transparent;font-size: 10.0pt;">Packed and Unpacked events will display Carrier# (Link to Carrier View), Lot# (Link to Lot View), Material and Quantity in the carrier<br /></span><span style="background-color: transparent;font-size: 10.0pt;">If overpack container, <span style="color: rgb(34,34,34);">'Packed' and 'Unpacked' events will display the </span>Container# (Link to Container View-Lot).</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Performed Date Time</td><td colspan="1" class="confluenceTd">The date time when the activity was performed.</td></tr><tr><td colspan="1" class="confluenceTd">Performed By</td><td colspan="1" class="confluenceTd">The user that performed the activity.</td></tr><tr><td colspan="1" class="confluenceTd">Route / Route Step</td><td colspan="1" class="confluenceTd">The name of Route / Route Step where the activity was performed.</td></tr></tbody></table>





‘Packed’ and ‘Unpacked’ events will display the 
Container# (Link to Container View-Lot).Performed Date TimeThe date time when the activity was performed.Performed ByThe user that performed the activity.Route / Route StepThe name of Route / Route Step where the activity was performed.
***Audit Log Tab***  
This is to show the event that happens when Container Reprocessing is done. Container Reprocessing for lot containers at Container Maintenance screen is not in BM2.0 Phase 1 scope.



#### Attachments

[image2019-2-20_15-45-54.png](/.attachments/84705285.png)
[image2019-2-20_15-22-31.png](/.attachments/84705286.png)
[image2019-2-20_15-5-31.png](/.attachments/84705287.png)
[image2019-2-20_15-4-22.png](/.attachments/84705288.png)
[image2016-12-16 21:55:53.png](/.attachments/84705289.png)
[image2016-12-16 22:4:40.png](/.attachments/84705290.png)
[image2016-12-16 22:35:48.png](/.attachments/84705291.png)
[image2017-7-19 11:15:58.png](/.attachments/84705292.png)
[image2020-12-14_17-56-40.png](/.attachments/84705296.png)
[image2020-12-14_17-59-5.png](/.attachments/84705297.png)
[image2020-12-14_18-18-41.png](/.attachments/84705298.png)
[image2020-12-14_18-30-7.png](/.attachments/84705299.png)
[image2020-12-16_11-20-1.png](/.attachments/84705380.png)
[image2020-12-16_11-23-6.png](/.attachments/84705381.png)
[image2021-3-5_10-43-4.png](/.attachments/88113516.png)
[image2021-3-5_10-45-42.png](/.attachments/88113517.png)
[image2021-3-5_10-48-58.png](/.attachments/88113518.png)
[image2021-3-5_11-18-9.png](/.attachments/88113519.png)
[image2021-3-8_9-59-50.png](/.attachments/88113555.png)
