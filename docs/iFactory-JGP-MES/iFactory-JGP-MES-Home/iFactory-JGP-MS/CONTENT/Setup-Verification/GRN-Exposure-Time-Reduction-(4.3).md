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

<table class="wrapped confluenceTable"><colgroup><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Main configurations for an MSD component are the following:</p><p>Maximum Exposure Time (or Life) (Mandatory for an MSD Component) --> Material Maintenance / SAP<br />Minimum Bake Time (optional) --> Material Maintenance <br />Maximum Bake Time (optional) --> Material Maintenance <br />Maximum Bake cycle (optional) --> Material Maintenance <br />Alert Threshold (default value 30 minutes) --> Part Allocation Configuration</p><p><br /></p><p>When the part expired (Maximum Exposure Time reached) it cannot be used in production. An alert appears if scanned in Part Allocation screens and the part cannot be loaded.</p><p>An alert appears also when Threshold is configure in Customer Configuration (4.2) screen. In that case the part can be loaded until it will expire.</p><p>When a loaded part will expire the system automatically will remove the expired component and the related setup sheet will be uninstalled (if it was installed).</p></th></tr></tbody></table>






The GRN field can support up to 50 chars to be used by Non-Unique Identifier.



### How to get there?




::: mermaid
graph LR
A("SETUP VERIFICATION")-->0("GRN EXPOSURE TIME REDUCTION")

:::


#### Precondition



- The following permissions required for access GRN Exposure Time Reduction screen.

- SV Application with permission “GRN Exposure Time” set to ON

- Option for “Vendor Programming Time” set to ON (if require none exist GRN exposure time entry)



#### Screen Activity


GRN Exposure Time Reduction screen 
enables user to perform the following activity:
- Reduce the remaining exposure time

- Default feature with only allow exist MSD GRN in iFactory to enter exposure time value

- Enable Vendor Programming Time feature to allow none exist MSD GRN (yet to upload from SAP) to enter exposure time value.


#### Post Condition


GRN Exposure Time Reduction screen
is required to have the part (GRN) ready to be used with correct Remaining Exposure Time in Equipment Part Allocation,  Manual Station Part Allocation, Preload screens. 

#### Screen Dependency


The following screen(s) has dependency with 
GRN Exposure Time Reduction screen:
- Split GRN

- Block GRN

- GRN Restrictions

- GRN Association

- GRN Bag and Bake Details

- GRN Bake In/Out

- Setup Verification

- Preload
![image2021-4-29_14-52-6.png](/.attachments/91128143.png)


Enable Vendor Programming Time feature to allow none exist MSD GRN (yet to upload from SAP) to enter exposure time value
![image2021-4-29_14-52-50.png](/.attachments/91128144.png)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Vendor Programming Time toggle</p></td><td class="confluenceTd"><p>Control by<strong> </strong>“Vendor Programming Time” permission:</p><ul><li>Set to OFF (deault) only allow for existing MSD GRN entry.</li><li>Set to ON will allow none exist MSD GRN entry (yet to upload from SAP)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The GRN that need to reduce the Remaining Exposure Time (only GRN related to MSD material can be used in this screen)</td></tr><tr><td class="confluenceTd"><p>Exposure Level Time</p></td><td class="confluenceTd"><p>It is the current default value for the component. Read Only value.</p></td></tr><tr><td class="confluenceTd"><p>Remaining Exposure Time</p></td><td class="confluenceTd"><p>It is the remaining time before GRN expiration. Once expired the GRN cannot be used in production, but has to perform the Bake process. Read Only value.</p></td></tr><tr><td colspan="1" class="confluenceTd">Elapsed Time</td><td colspan="1" class="confluenceTd">It is the time to enter and that will be used to reduce and calculate the new remaining time. The value must be in hours and minutes (47:02 means 1 day, 23 hrs, 2 minutes)</td></tr><tr><td colspan="1" class="confluenceTd">Save button</td><td colspan="1" class="confluenceTd">It is the button used to update the Remaining Time with the new value calculated based on the Elapsed Time entered. For none exist MSD GRN, remaining time will only able to show once the GRN is uploaded from SAP.</td></tr></tbody></table>






#### Attachments

[image2017-6-29 15:50:54.png](/.attachments/91127948.png)
[image2017-5-26 16:37:20.png](/.attachments/91127949.png)
[image2017-7-3 14:28:1.png](/.attachments/91127950.png)
[image2017-9-4 12:13:14.png](/.attachments/91127951.png)
[image2021-4-29_14-52-6.png](/.attachments/91128143.png)
[image2021-4-29_14-52-50.png](/.attachments/91128144.png)
