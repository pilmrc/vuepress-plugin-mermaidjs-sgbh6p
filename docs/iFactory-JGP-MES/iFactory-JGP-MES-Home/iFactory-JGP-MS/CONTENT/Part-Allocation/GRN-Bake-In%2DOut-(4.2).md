# Introduction

GRN Bake In/Out
screen is used to manage GRN for MSD components (Time Sensitive Material) in the bake process.When an MSD component is expired (exceeded maximum exposure time) the only way to restore it (and use it in production line) is to do the Bake process. The bake process rules are defined by international standards that indicate how long a part must stay in the bake flow to be restored.
The user will be able to use this screen to put the expired component into the process and monitor it.
It is possible to define an alert threshold to receive a notification before the bake process has complete (see 
[Customer Configuration (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Customer-Configuration-(4.2).md)). This can avoid the part stays into the process for longtime (exceeding the bake process it can permanently damage the part). When the alert is set the notification is received via email.The user can anytime force to exit from the Bake process. In that case the process can be considered 
Completedor Not Completedbased on the Minimum Timedefined for the part (see [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)screen to get the Max and Min time defined for the bake process and the Maximum Exposure Level).When the part completed the Bake process (Bake Out state) the 
Maximum Exposure Timeis reset. This can be valid only if the bake has completed, otherwise the Maximum Exposure Timeis not reset and the part still cannot be used in production.If the Min Time of bake process is not reached the process is considered 
Not Completed.If the Max Time of bake process is exceeded (even if a notification has been received based on threshold) the part is not usable and the quality department can define the proper action.
It is possible to configure the 
Maximum Bake Cyclethat is the number of time a GRN can do the bake process. If this value is reached an alert appear, but user is still able to continue to bake.
<table class="wrapped confluenceTable"><colgroup><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Main configurations for an MSD component are the following:</p><p>Maximum Exposure Time (or Life) (Mandatory for an MSD Component) --> Material Maintenance / SAP<br />Minimum Bake Time (optional) --> Material Maintenance <br />Maximum Bake Time (optional) --> Material Maintenance <br />Maximum Bake cycle (optional) --> Material Maintenance <br />Alert Threshold (default value 30 minutes) --> Part Allocation Configuration</p><p><br /></p><p>When the part expired (Maximum Exposure Time reached) it cannot be used in production. An alert appears if scanned in Part Allocation screens and the part cannot be loaded.</p><p>An alert appears also when Threshold is configure in <a href="29919066.html">Customer Configuration (4.2)</a> screen. In that case the part can be loaded until it will expire.</p><p>When a loaded part will expire the system automatically will remove the expired component and the related setup sheet will be uninstalled (if it was installed).</p></th></tr></tbody></table>






The GRN field can support up to 50 chars to be used by Non-Unique Identifier.


### How to get there?



![image2021-6-16_16-20-52.png](/.attachments/94404733.png)





![image2021-6-16_16-43-30.png](/.attachments/94404734.png)





#### Screen Activity


GRN Bake In/Out
enables user to perform the following activity:
- Enter a GRN into the Bake Process.

- Remove a GRN from the Bake process.

- Enter bake temperature.

- Select printer to print labels of operations.


#### Post Condition


GRN Bake In/Out
is required to have the part (GRN) ready to be used in [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md),  [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)screens. Only GRN of MSD components not expired can be allocated for production. GRN with expired Exposure Time will be requested to go to the Bake process.

#### Screen Dependency


The following screen(s) has dependency with GRN Bake InOut:

- [Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)

- [Block GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Block-GRN.md)

- [GRN Restrictions](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Restrictions.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)

- [GRN Exposure Time Reduction (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Exposure-Time-Reduction-(4.2).md)

- [GRN Bag and Bake Details](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bag-and-Bake-History-Details-(4.2).md)

- [GRN Bake In/Out (4.2)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bake-In%2DOut-(4.2).md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)


#### Screen


![image2021-6-16_16-46-57.png](/.attachments/94404735.png)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>The GRN that need to be managed in the bake process</p></td></tr><tr><td colspan="1" class="confluenceTd">Temperature</td><td colspan="1" class="confluenceTd">In Celsius. It is the value of temperature used for the bake process. It's an optional field and doesn't have any effect on the Bake Process functionality. It is just stored for any reference.</td></tr><tr><td class="confluenceTd"><p>Bag Status</p></td><td class="confluenceTd"><p>Current status of the Bake Process for the GRN (Bake In or Bake Out). Read Only Value.</p></td></tr><tr><td class="confluenceTd"><p>Bake In Time/ Bake Out Time</p></td><td class="confluenceTd"><p>It is the time the bake process started/completed. If the GRN is scanned for the first time these values can be undefined</p></td></tr><tr><td colspan="1" class="confluenceTd">Remaining Exposure Time on Status</td><td colspan="1" class="confluenceTd">It is the remaining time for the GRN scanned. Once the Bake process has completed, the time will be equal to the Maximum Exposure Time</td></tr><tr><td colspan="1" class="confluenceTd">Change Bake Status button</td><td colspan="1" class="confluenceTd"><p>It is the button used for changing the status from Bake In to Bake Out and vice versa.</p><p>Based on MSD component configuration the user can received several notification (i.e. Max bake cycle reached, Min Bake Time not reached, etc.)</p></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">It is the printer which user want to be used for print labels.</td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Loftware server's printer number.</td></tr><tr><td colspan="1" class="confluenceTd">Printer toggle</td><td colspan="1" class="confluenceTd">Default as turn on.</td></tr></tbody></table>






#### Attachments

[image2017-9-4 12:12:47.png](/.attachments/29919155.png)
[image2017-6-30 16:32:31.png](/.attachments/29919156.png)
[image2017-5-26 16:37:20.png](/.attachments/29919157.png)
[image2017-6-29 15:50:54.png](/.attachments/29919158.png)
[image2021-6-16_16-20-19.png](/.attachments/94404732.png)
[image2021-6-16_16-20-52.png](/.attachments/94404733.png)
[image2021-6-16_16-43-30.png](/.attachments/94404734.png)
[image2021-6-16_16-46-57.png](/.attachments/94404735.png)
