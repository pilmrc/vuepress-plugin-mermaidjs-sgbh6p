# Introduction

GRN Storage Manager
screen is used to manage GRN for TSM/MSD components (Time Sensitive Material/Moisture Sensitive Device) opening/closing the related bag and puting in/take out from drybox.The MSD components are sensitive device that have to stay in a safe bag/drybox to avoid part damage. Each MSD component has a Maximum Exposure Time configured that indicates how many time the part can stay outside the bag/drybox before become unusable.
Every time the part is removed from the bag/drybox a timer will start and if the part stayed outside the bag a time that exceed the Maximum Exposure Time then the system won't allow to use the part in production and force it to perform the 
[Bake process](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)to reset its status.The timer will stop when the part is put again in the bag/drybox. The total time the part stays outside the bag is the sum of all time the user removed the part from the bag/drybox.
For instance, if the bag/drybox has been opened 2 times for 10 minutes each, the part reduced is life by 20 minutes and the remaining time, before expiration, is Maximum Exposure Time less 20 minutes.
<table class="wrapped confluenceTable"><colgroup><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Main configurations for an MSD component are the following:</p><p>Maximum Exposure Time (or Life) (Mandatory for an MSD Component) --> Material Maintenance / SAP<br />Minimum Bake Time (optional) --> Material Maintenance <br />Maximum Bake Time (optional) --> Material Maintenance <br />Maximum Bake cycle (optional) --> Material Maintenance <br />Alert Threshold (default value 30 minutes) --> Part Allocation Configuration</p><p><br /></p><p>When the part expired (Maximum Exposure Time reached) it cannot be used in production. An alert appears if scanned in Part Allocation screens and the part cannot be loaded.</p><p>An alert appears also when Threshold is configure in <a href="29919066.html">Customer Configuration (4.2)</a> screen. In that case the part can be loaded until it will expire.</p><p>When a loaded part will expire the system automatically will remove the expired component and the related setup sheet will be uninstalled (if it was installed).</p></th></tr></tbody></table>






The GRN field can support up to 50 chars to be used by Non-Unique Identifier.



### How to get there?


![image2021-6-16_13-32-40.png](/.attachments/94404688.png)




![image2021-6-16_13-35-28.png](/.attachments/94404689.png)




#### Allow to Manage GRN for Drybox Permission


User has to be 
granted 
this permission to using inside drybox and outside drybox funtion. 

#### Screen Activity


GRN Storage Manager enables user to perform the following activity:

- Open/Close the bag where the MSD component is stored. The result is a status change.

- Inside/outside GRNs from drybox if user has the permission (Allow to Manage GRN for Drybox
). The result is a status change.

- Select printer to print the labels of each operations.


#### Post Condition


GRN Storage Manager is required to have the part (GRN) ready to be used in 
[Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md),  [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)screens. Only GRN with status bag OPEN and outside drybox can be allocated for production. GRN with bag CLOSED and inside drybox will be requested to be opened before usage.

#### Screen Dependency


The following screen(s) has dependency with GRN Storage Manager:

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


#### GRN Storage Manager Screen


![image2021-6-16_15-25-16.png](/.attachments/94404690.png)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>The GRN that need to change the bag status (only GRN related to MSD material can be used in this screen)</p></td></tr><tr><td class="confluenceTd"><p>Bag Status</p></td><td class="confluenceTd"><p>Current status of the GRN bag. Read Only Value</p></td></tr><tr><td class="confluenceTd"><p>Opened Time/ Closed Time</p></td><td class="confluenceTd"><p>It is the last time the bag has been opened/closed. If the GRN is scanned for the first time these values can be undefined</p></td></tr><tr><td colspan="1" class="confluenceTd">Remaining Exposure Time on Status</td><td colspan="1" class="confluenceTd">It is the remaining time for the GRN scanned</td></tr><tr><td colspan="1" class="confluenceTd">Inside/Outside DryBox Time</td><td colspan="1" class="confluenceTd">It is the last time the bag has been putted into drybox or taked out from drybox. if the GRN is scanned for the first time these values can be undefined.</td></tr><tr><td colspan="1" class="confluenceTd">Open/Close button</td><td colspan="1" class="confluenceTd">It is the button used for changing the status from Open to Closed and vice versa.</td></tr><tr><td colspan="1" class="confluenceTd">Inside/Outside DryBox button</td><td colspan="1" class="confluenceTd">It is the button used for put the GRN into drybox or take out from drybox.</td></tr></tbody></table>






#### Attachments

[image2017-9-4 12:14:6.png](/.attachments/29919183.png)
[image2017-6-29 15:50:54.png](/.attachments/29919184.png)
[image2017-5-26 16:37:20.png](/.attachments/29919185.png)
[image2021-6-16_13-32-40.png](/.attachments/94404688.png)
[image2021-6-16_13-35-28.png](/.attachments/94404689.png)
[image2021-6-16_15-25-16.png](/.attachments/94404690.png)
