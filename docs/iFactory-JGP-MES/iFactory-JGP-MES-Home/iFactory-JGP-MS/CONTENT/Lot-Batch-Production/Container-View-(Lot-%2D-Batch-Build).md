# Introduction


The Container View is used to view container details, history, and contents packed into the container for a Carrier / Lot Number.


### How to get there?



::: mermaid
graph LR
A("CONTAINER")-->0("CONTAINER VIEW")

:::


#### Permission


Can Access NG " Packout " Can Access Container View


#### Screen Activity


Container View enables the user to perform the following activity:

- Review the details of Container.

- The ability to link to Carrier View, Lot View and Planned Order for the Lot/container packed into a container.



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Container View

- Lot/Container must be packed into a Container




#### Search by 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Container Number</td><td colspan="1" class="confluenceTd"><p>The search box allows user to search container by entering partial or exact match of Container Number. Partial match will prompt search window.<br />Display the selected Container Number to view.</p></td></tr></tbody></table>


Search Window Example:

- Result that contains the filtering value will be displayed
![](/.attachments/29917815.png)




#### Fields



<table class="relative-table wrapped confluenceTable" style="width: 67.9639%;"><colgroup><col style="width: 18.0143%;" /><col style="width: 81.8833%;" /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>General Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><p>The Container Status (Opened, Closed)</p></td></tr><tr><td class="confluenceTd">Customer<p><br /></p></td><td class="confluenceTd"><span>The Customer of the Container</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">The Container Type Name of the Container</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The material packed into the container (only visible if the container is a box which is not an overpack container)</span></td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">On Hold status for the Container. "Yes" if Container is On Hold, "No" if it's not.</span></td></tr><tr><td colspan="1" class="confluenceTd">Parent Container</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The link to parent container name if the container is over packed in another container</span></td></tr><tr><td colspan="1" class="confluenceTd">Created By</td><td colspan="1" class="confluenceTd">The user created the Container</td></tr><tr><td colspan="1" class="confluenceTd">Created On</td><td colspan="1" class="confluenceTd"><span>The Date that the Container was created</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Usage</td><td colspan="1" class="confluenceTd">The Container Usage Type of container: Box/Pallet</td></tr><tr><td colspan="1" class="confluenceTd">Total Quantity</td><td colspan="1" class="confluenceTd">The total quantity of items packed into a container. Total up all Lot Quantity packed if it is a lower level (box) container, total number of boxes packed if it is an overpack container.</td></tr><tr><td colspan="1" class="confluenceTd">Current Route</td><td colspan="1" class="confluenceTd">The name of Route that the container is currently at</td></tr><tr><td colspan="1" class="confluenceTd">Current Route Step</td><td colspan="1" class="confluenceTd">The name of Route Step that the container is currently at</td></tr></tbody></table>


**General Tab Example** 
![image2019-2-20_15-5-31.png](/.attachments/44761218.png)





#### Fields



<table class="relative-table wrapped confluenceTable" style="width: 71.1605%;"><colgroup><col style="width: 16.0313%;" /><col style="width: 83.9101%;" /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Contents Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Carrier Number</td><td class="confluenceTd">The serial number of Carrier that packed in the container. A hyperlink to Carrier View</td></tr><tr><td colspan="1" class="confluenceTd">Container Number</td><td colspan="1" class="confluenceTd"><p><span style="letter-spacing: 0.0px;">The serial number of Container that packed in the container. A hyperlink to Container View-Lot. Only visible for overpack container.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Lot Number</td><td colspan="1" class="confluenceTd">The serial number of Lot that packed in the container</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The Quantity of items (Lot Quantity). If over pack container, it is the total lot quantity in the lower level container (box).</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The Material Name of the item packed in the container</td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">The Planned Order of the item packed in the container</td></tr><tr><td colspan="1" class="confluenceTd">Usage Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Determines if the container is a box or pallet</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Container Type used to create the Container</span></td></tr></tbody></table>

**Contents Tab Example** 
![image2019-2-20_15-5-31.png](/.attachments/29917817.png)


For overpack container:
![image2019-2-20_15-22-31.png](/.attachments/44761219.png)





#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>HistoryTab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Event</td><td class="confluenceTd"><p>This section displays the activities for the container. For example Created, Opened, Closed, Packed, Unpacked </p></td></tr><tr><td colspan="1" class="confluenceTd">Event Details</td><td colspan="1" class="confluenceTd"><p>This section displays the details of the event. <br />Open, Closed, Created Event will display Container Number. <br /><span style="background-color: transparent;font-size: 10.0pt;">Pack, UnPacked Event will display Carrier# (Link to Carrier View), Lot# (Link to Lot View), Material, Quantity for box. </span></p><p><span style="background-color: transparent;font-size: 10.0pt;">If overpack container, <span style="color: rgb(34,34,34);">'Packed' and 'Unpacked' events will display the </span>Container# (Link to Container View-Lot).</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Performed Date Time</td><td colspan="1" class="confluenceTd">The Date time when the activity is performed</td></tr><tr><td colspan="1" class="confluenceTd">Performed By</td><td colspan="1" class="confluenceTd">The user that perform the activity</td></tr><tr><td colspan="1" class="confluenceTd">Route / Route Step</td><td colspan="1" class="confluenceTd">The name of Route / Route Step where the activity is performed</td></tr></tbody></table>



‘Packed’ and ‘Unpacked’ events will display the 
Container# (Link to Container View-Lot).Performed Date TimeThe Date time when the activity is performedPerformed ByThe user that perform the activityRoute / Route StepThe name of Route / Route Step where the activity is performed
**History Tab Example** 
![image2019-2-20_15-22-31.png](/.attachments/29917816.png)



**History Tab Example(just for TOT&Nag)** 
For the Box container, add a pallet field to display the packaged pallet number，For event types Packed and Unpacked
![image2022-7-8_10-26-18.png](/.attachments/120750929.png)




**For overpack container:** 
![image2019-2-20_15-45-54.png](/.attachments/44761224.png)




#### Attachments

[image2017-7-19 11:15:58.png](/.attachments/29917815.png)
[image2016-12-16 22:35:48.png](/.attachments/29917816.png)
[image2016-12-16 22:4:40.png](/.attachments/29917817.png)
[image2016-12-16 21:55:53.png](/.attachments/29917818.png)
[image2019-2-20_15-4-22.png](/.attachments/44761217.png)
[image2019-2-20_15-5-31.png](/.attachments/44761218.png)
[image2019-2-20_15-22-31.png](/.attachments/44761219.png)
[image2019-2-20_15-45-54.png](/.attachments/44761224.png)
[image2022-7-8_10-25-42.png](/.attachments/120750928.png)
[image2022-7-8_10-26-18.png](/.attachments/120750929.png)
