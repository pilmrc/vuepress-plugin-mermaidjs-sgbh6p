# Introduction

GRN Exposure Time Reduction
screen is used to manipulate the GRN exposure time for TSM/MSD components (Time Sensitive Material/Moisture Sensitive Device). This screen shall be accessible by limited people.The purpose of this screen is to reduce the remaining time for an MSD component because, for any reason, the system value is not reflecting the real value.
Typically this happens when a part is received and stored with its default Exposure Time (coming from MSD component standardization), but vendor opened the bag before the shipping. Usually the vendor stick on the bag a label saying the amount of time the bag has been opened.
To align the real Exposure Time with the standard Exposure Time the user will access to this screen and will insert the amount of time defined by the vendor.
For example:
Component ABC belong to an MSD category that has 200 hrs as Exposure Level Time
The GRN1 of component ABC is received with a notification from the vendor that the bag for this GRN has been opened for 2 hrs.
The Remaining Exposure time for GRN1 won't be 200 hrs, but 200-2=198 hrs
The user will have to enter 2 hrs into GRN Exposure Time Reduction screen to align the system to the correct GRN1 exposure time.

<table class="confluenceTable"><colgroup><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Main configurations for an MSD component are the following:</p><p>Maximum Exposure Time (or Life) (Mandatory for an MSD Component) --> Material Maintenance / SAP<br />Minimum Bake Time (optional) --> Material Maintenance <br />Maximum Bake Time (optional) --> Material Maintenance <br />Maximum Bake cycle (optional) --> Material Maintenance <br />Alert Threshold (default value 30 minutes) --> Part Allocation Configuration</p><p> </p><p>When the part expired (Maximum Exposure Time reached) it cannot be used in production. An alert appears if scanned in Part Allocation screens and the part cannot be loaded.</p><p>An alert appears also when Threshold is configure in <a href="29919066.html">Customer Configuration (4.2)</a> screen. In that case the part can be loaded until it will expire.</p><p>When a loaded part will expire the system automatically will remove the expired component and the related setup sheet will be uninstalled (if it was installed).</p></th></tr></tbody></table>





The GRN field can support up to 50 chars to be used by Non-Unique Identifier.



### How to get there?



![image2017-9-4 12:13:14.png](/.attachments/29919160.png)


![image2017-9-4 12:13:14.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("GRN EXPOSURE TIME REDUCTION")

:::


#### Screen Activity


GRN Exposure Time Reduction screen 
enables user to perform the following activity:
- Reduce the remaining exposure time



#### Post Condition


GRN Exposure Time Reduction screen
is required to have the part (GRN) ready to be used with correct Remaining Exposure Time in [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md),  [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)screens. 

#### Screen Dependency


The following screen(s) has dependency with 
GRN Exposure Time Reduction screen:
- [Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)

- [Block GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Block-GRN.md)

- [GRN Restrictions](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Restrictions.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)

- [GRN Exposure Time Reduction (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Exposure-Time-Reduction-(4.2).md)

- [GRN Bag and Bake Details](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bag-and-Bake-History-Details-(4.2).md)

- [GRN Bake In/Out (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)

![image2017-7-3 14:28:1.png](/.attachments/29919161.png)





#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>The GRN that need to reduce the Remaining Exposure Time (only GRN related to MSD material can be used in this screen)</p></td></tr><tr><td class="confluenceTd"><p>Exposure Level Time</p></td><td class="confluenceTd"><p>It is the current default value for the component. Read Only value.</p></td></tr><tr><td class="confluenceTd"><p>Remaining Exposure Time</p></td><td class="confluenceTd"><p>It is the remaining time before GRN expiration. Once expired the GRN cannot be used in production, but has to perform the <a href="29919154.html">Bake process</a>. Read Only value.</p></td></tr><tr><td colspan="1" class="confluenceTd">Elapsed Time</td><td colspan="1" class="confluenceTd">It is the time to enter and that will be used to reduce and calculate the new remaining time. The value must be in hours and minutes (47:02 means 1 day, 23 hrs, 2 minutes)</td></tr><tr><td colspan="1" class="confluenceTd">Update Exposure Time button</td><td colspan="1" class="confluenceTd">It is the button used to update the Remaining Time with the new value calculated based on the Elapsed Time entered</td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:13:14.png](/.attachments/29919160.png)
[image2017-7-3 14:28:1.png](/.attachments/29919161.png)
[image2017-5-26 16:37:20.png](/.attachments/29919162.png)
[image2017-6-29 15:50:54.png](/.attachments/29919163.png)
