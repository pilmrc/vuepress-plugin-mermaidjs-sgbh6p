# Introduction

Customer Configuration
screen is used to configure a specific functionality at customer level.For Part Allocation screens the customer configuration is related to:

- Force Slot Scanning in
[Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)screens (ModuleID and TrackID will become mandatory fields)
- Set the AutoTransport GRN Removal (to automatically remove a
*not installed* Feeder/GRN from previous location and put it in the new location)
- Set an Alert Threshold different than default value to use for MSD component (see
[ GRN Storage Manager ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Storage-Manager-(4.2).md)and [GRN Bake In/Out (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)for details)


### How to get there?



::: mermaid
graph LR
A("PART ALLOCATION")-->0("CUSTOMER CONFIGURATION")

:::


#### Screen Activity


Customer Configuration enables user to perform the following activity:

- change customer setting different than default functionality



#### Post Condition


Customer Configuration is required to get different behavior on some functionality: MSD component alert (for Bake Process and Expiration), forcing slot scanning at
[ Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md), automatically replace/remove a feeder/GRN from old location when scanned in different location


#### Screen Dependency


The following screen(s) has dependency with GRN:

- [Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)
(if MSD component)
- [Block GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Block-GRN.md)
(if MSD component)
- [GRN Restrictions](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Restrictions.md)
(if MSD component)
- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)

- [GRN Storage Manager (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Storage-Manager-(4.2).md)

- [GRN Exposure Time Reduction (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Exposure-Time-Reduction-(4.2).md)

- [GRN Bag and Bake Details](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bag-and-Bake-History-Details-(4.2).md)

- [GRN Bake In/Out (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)
![image2017-7-4 16:8:55.png](/.attachments/29919072.png)


![image2018-11-22_15-36-54.png](/.attachments/38273292.png)


![image2018-11-22_15-37-41.png](/.attachments/38273293.png)



![image2018-11-22_15-38-12.png](/.attachments/38273294.png)




#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division</p></td><td class="confluenceTd"><p>It is the customer/division that will be affected by the configuration. "All Customers/Divisions" option is the default configuration</p></td></tr><tr><td class="confluenceTd"><p>Is Slot Scan Required</p></td><td class="confluenceTd"><p>It is forcing to scan the slot (Module ID and TrackID) when the part is allocated in <a href="Equipment-Part-Allocation-29919074.html">Equipment Part Allocation</a> screen</p><p>When OFF the system is not asking to scan the slot, but take the slot directly from <a href="Equipment-Setup-Sheet-29919084.html">Equipment Setup Sheet</a> configuration</p><p>When ON the system force to scan the slot that must reflect the setup sheet configuration. This is a check to be sure the user is putting the feeder/GRN in the correct slot.</p></td></tr><tr><td class="confluenceTd"><p>Is AutoTransport GRN Removal</p></td><td class="confluenceTd"><p>It is the key to configure the auto removal functionality in part allocation.</p><p>When OFF the system will alert with duplicate value when same feeder/GRN appears in two different location.</p><p>When ON the tool doesn't provide any alert, but will automatically remove the Feeder/GRN from old location and put it in the new location.</p><p>This setting is not checked when the setup sheet with the feeder/GRN scanned is already installed. In that case the behavior is always like key OFF.</p></td></tr><tr><td colspan="1" class="confluenceTd">TSM/MSD Alert Threshold</td><td colspan="1" class="confluenceTd"><p>It is the time (in minutes) used to provide the alert before the MSD component expires or the <a href="29919154.html">Bake Process</a> Maximum Bake Time is reached (when configured). Default Value: 30 mins</p><p>For example, if the MSD Component has 2 hrs as Maximum Exposure Time, an alert appears (by default) at GRN scanning when the part stays out of the bag for 1h30m</p><p>If the Maximum Bake Time is 4 hours and 20 minutes, a notification will be sent after 3h50m saying that the part will complete the bake process in 30 mins</p></td></tr><tr><td colspan="1" class="confluenceTd">Enforce GRN for Serialized Material</td><td colspan="1" class="confluenceTd">This to enforce the user to fill up the GRN during the part allocation if it is turn ON whereas the GRN is not required during part allocation. By default the option will set to "YES".</td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:9:33.png](/.attachments/29919067.png)
[Screen Shot 2017-07-10 at 1.55.08 PM.png](/.attachments/29919068.png)
[image2017-7-4 16:10:50.png](/.attachments/29919069.png)
[image2017-7-4 16:10:8.png](/.attachments/29919070.png)
[image2017-7-4 16:9:33.png](/.attachments/29919071.png)
[image2017-7-4 16:8:55.png](/.attachments/29919072.png)
[image2017-5-26 16:37:20.png](/.attachments/29919073.png)
[image2018-11-22_15-36-54.png](/.attachments/38273292.png)
[image2018-11-22_15-37-41.png](/.attachments/38273293.png)
[image2018-11-22_15-38-12.png](/.attachments/38273294.png)
