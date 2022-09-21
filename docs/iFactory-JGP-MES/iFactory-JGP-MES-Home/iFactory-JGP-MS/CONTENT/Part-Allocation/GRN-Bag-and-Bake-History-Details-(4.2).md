# Introduction

GRN Bag and Bake History Details
screen is used to get the information of the MES component GRN life.The screen will provide the history of 
[Bag Open/Closed](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Storage-Manager-(4.2).md)activities and the [Bake In/Out](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)activities. The Remaining Exposure Time (time for staying outside the bag before the part expires) is also showed close to the GRN value.The GRN field can support up to 50 chars to be used by Non-Unique Identifier.

How to get there?

![image2017-9-4 12:12:21.png](/.attachments/29919148.png)


![image2017-9-4 12:12:21.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("GRN BAG AND BAKE DETAILS")

:::


### Screen Activity


GRN Bag and Bake History Details 
enables user to perform the following activity:
- show all activities performed with the GRN. Activities are bag
[Open/Close](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Storage-Manager-(4.2).md)and [Bake In/Out](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)


#### Pre Condition


The GRN must exists as MSD component. The history is available if any movement has done in 
[GRN Storage Manager (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Storage-Manager-(4.2).md)or GRN [Bake In/Out](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)screens

#### Post Condition


N/A


#### Screen Dependency


N/A

![image2017-11-23 10:5:48.png](/.attachments/29919144.png)





#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>The GRN that need to know the history (only GRN related to MSD material can be used in this screen)</p></td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd">The material related to GRN scanned</td></tr><tr><td colspan="1" class="confluenceTd">Exposure Level</td><td colspan="1" class="confluenceTd"><span> It is the exposure level defined in Material configuration</span></td></tr><tr><td colspan="1" class="confluenceTd">Remaining Time</td><td colspan="1" class="confluenceTd">It is the remaining exposure time before expiration of the GRN scanned</td></tr><tr><td colspan="1" class="confluenceTd">Details Data Grid</td><td colspan="1" class="confluenceTd"><p>It will show all history of selected GRN for bag open/close or bake in/out activities</p><ul><li>Activity --> the action performed (i.e. Bag Opened/Bag Closed, Bake In/Bake Out). If activity is still ongoing it will show only the "entry" status (i.e. Bag Opened)</li><li>Start Time --> the time when the activity has started ("entry" status)</li><li>End Time --> the time when the activity has completed ("exit" status). It can be blank if the activity is ongoing</li><li>Bake Temperature --> the temperature of the bake process, if inserted during the process</li><li>Elapsed Time --> the time passed in the Activity phase</li><li>User Name --> user that performed the Activity</li></ul></td></tr></tbody></table>



#### Attachments

[image2017-11-23 10:5:48.png](/.attachments/29919144.png)
[image2017-11-23 9:49:59.png](/.attachments/29919145.png)
[image2017-11-23 9:46:8.png](/.attachments/29919146.png)
[image2017-11-23 9:39:5.png](/.attachments/29919147.png)
[image2017-9-4 12:12:21.png](/.attachments/29919148.png)
[image2017-6-29 16:18:42.png](/.attachments/29919149.png)
[image2017-5-26 16:37:20.png](/.attachments/29919150.png)
[image2017-6-29 15:50:54.png](/.attachments/29919151.png)
