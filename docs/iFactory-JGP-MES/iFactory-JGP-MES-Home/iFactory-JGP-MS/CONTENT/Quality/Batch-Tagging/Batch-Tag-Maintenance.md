# Introduction

Batch Tag Maintenance screen allow user to create batch tag name and its properties in order to facilitate new batch tagging feature. Batch Tag number will be capture under this batch tag name once it assigned either by manual or auto generate by system during attribute assignment prompt runtime (e.g. WIP Release or operation completion.). 


### How to get there?



::: mermaid
graph LR
A("QUALITY")-->0("BATCH TAG MAINTENANCE")

:::

**Precondition** 

- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)
needs to be configured before user can configure if the batch tag is auto generate by next number
- [Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)
needs to be configured before user can configure if the bath tag required to validate it mask when prompt for user entry.


#### Screen Activity


Batch Tag Maintenance enables user to perform the following activity:
*Configuration Tab* 

- Create, copy, update and delete batch tag records. Batch Tag cannot be deleted if following condition.

- Used in Attribute Assignement

- Used in Sample Plan Assignment

- Any Batch Tag Number created for this Batch tag.

- Manually change the batch tag status to complete, so that all the batch tag number under this batch tag name no longer be used to assign to WIP.
*Detail Tab* 

- Search and view the batch tag number assigned to WIPs.

- Manually change the batch tag number status to complete, so that this particular batch tag number no longer be used to assign to WIP.




#### Screen Dependency


The following screen(s) has direct dependency with User

- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)

- [Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)


#### Fields



<table class="wrapped confluenceTable"><colgroup><col style="width: 91.0px;" /><col style="width: 1232.0px;" /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="BatchTagMaintenance-ConfigurationTab"><strong>Configuration Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Batch Tag Name*</p></td><td class="confluenceTd"><p><span style="color: black;">The Identifier of this configuration. Disable mode after saved. (Note: The name also will be used to configure for Attribute Assignment.)</span></p></td></tr><tr><td class="confluenceTd"><span>Customer*<br /></span></td><td class="confluenceTd"><span style="color: black;">This Batch Tag can be use by customer. Disable mode after saved.</span> </td></tr><tr><td colspan="1" class="confluenceTd">Batch Tag Type*</td><td colspan="1" class="confluenceTd"><p>Is a system predefined selection value base on the functionality as per below. Disable mode after saved. </p><ul><li>Generic (This type has no special functionality, just a grouping)</li><li>OBA (This type is reserved for OBA Sampling operation)</li><li><span>Sampling (This type is reserve for Sampling functionality)</span></li><li><span>Manual Sampling(This type is reserve for Manual Sampling functionality )</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Batch Tag Next Number</td><td colspan="1" class="confluenceTd"><span style="color: black;">Optional if not Sampling/Manual Sampling type. If this configuration is using Sampling/Manual Sampling type, system will enforce to configure batch tag Next Number.</span> Selection value only available for next number with batch tag type (new type). Only enable to change when Batch Tag Status is set as New.</td></tr><tr><td colspan="1" class="confluenceTd">Batch Tag Validation Mask</td><td colspan="1" class="confluenceTd"><p>Optional.  Selection value for Validation Mask. Disable with blank if Batch Tag Next Number is entered with value.</p>(Note: only either Batch Next Number or Validation Mask can be configured with value, cannot both field configured with value.)</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span style="color: black;">A description for this Batch Tag configuration.</span></td></tr><tr><td colspan="1" class="confluenceTd">Valid From and To Date Time</td><td colspan="1" class="confluenceTd"><p><span style="color: black;">Optional; The period that this Batch Tag is valid to assigned the Batch Tag Number for a WIP. Blank configuration on these fields means no constraints on period to use this Batch Tag.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Build Quantity</td><td colspan="1" class="confluenceTd"><p><span style="color: black;">Defaulted as 0; A quantity to define next new Batch Tag Number to the WIP. For example, if configure as 2, then 2 WIPs will have same Batch Tag Number (KKW-BTAG-0001), and the next WIP will assigned next number to following WIP (KKW-BTAG-0002, if this number already been use up by other Batch tag name due to sharing same next number configuration, then system should generate KKW-BTAG-0003). Value 0 means no limit to generate same Batch Tag Number assign to WIP.</span></p><p><span style="color: black;">If this configuration is using Manual Sampling, system will disable it with default value 0.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Batch Tag Status</td><td colspan="1" class="confluenceTd"><p><span style="color: black;">Available value New, Active, Complete. If set to Complete, All the batch tag number belong to this name will not allow to use for new assignment to the WIP anymore (Even the batch tag number not yet met it's max qty or batch tag number status not set to “Complete”.).</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Is Resource Restricted</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(45,46,47);">Is Resource Restricted Off: </span><span> New sampling batch tag number will generate when it is no more available batch tag for assignment (all batch tag number in complete state). </span></p><p><span style="color: rgb(45,46,47);">Is Resource Restricted ON: Same Batch Tag name can auto generate multiple Batch Tag Number in different resources.</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="BatchTagMaintenance-DetailTab"><span style="color: rgb(51,51,51);">Detail Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Batch Tag Number<br /></span></td><td colspan="1" class="confluenceTd"><span style="color: black;">Allow partial search feature. This batch tag number is unique by customer. </span><span>If the batch tag name at configuration tab is selected, then only the batch tag number that belong it should be shown to select. Otherwise all batch tag numbers that allow by the user will be shown (base on the allow customer) and once the batch tag number selected, the appropriate batch tag name info should be display at configuration tab accordingly.</span><br /><p><br /></p></td></tr><tr><td colspan="1" class="confluenceTd"><span><span style="color: black;">Batch Tag Number Status</span><br /></span></td><td colspan="1" class="confluenceTd"><p>The batch tag number's current status. Disable if Max Build Qty is = Released Quantity. Available selection value as per below</p><ul><li>Active - Default value before user manually change it to complete or system auto change it to complete)</li><li><span>Complete - Can be manually change by user or auto set by system when the Max Build Qty is = Released Quantity.</span></li></ul><p><span>Notes: for the manual sampling type, user can't update the status of batch tag number. It will automated switch to 'Complete' after the 'New Sampling' of Manual Sampling be completed.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: black;">Max Build Quantity</span></td><td colspan="1" class="confluenceTd"><span style="color: black;">Same value set in configuration tab. Disable for display only.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: black;">Released Quantity</span></td><td colspan="1" class="confluenceTd"><p><span style="color: black;">The number of WIP assigned to the selected Batch Tag Number. Should tally with number or row will be shown on the below grid table. Disable for display only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: black;">Grid table</span></td><td colspan="1" class="confluenceTd"><p>The grid table that will show all the WIPs that assigned to the selected batch tag number. The table consist of the following items:</p><ul><li>Batch Tab Number</li></ul><ul><li>Serial Number (show WIP Serial Number value that assigned with this batch tag number)</li><li>Material Number (show the WIP's Material Name)</li><li>BOM (show the WIP's BOM)</li><li>Order Number (if any)</li><li>Date Released (show the WIP Released Date)</li><li><span>Date Assigned (show the date assigned for this batch tag number to WIP)</span></li></ul><p><span>Notes: for the Manual Sampling the grid will display both sampled WIP and affected WIP.</span></p></td></tr></tbody></table>



- Available value New, Active, Complete. If set to Complete, All the batch tag number belong to this name will not allow to use for new assignment to the WIP anymore (Even the batch tag number not yet met it’s max qty or batch tag number status not set to “Complete”.).

Is Resource Restricted
Is Resource Restricted Off: 
New sampling batch tag number will generate when it is no more available batch tag for assignment (all batch tag number in complete state). Is Resource Restricted ON: Same Batch Tag name can auto generate multiple Batch Tag Number in different resources.
Detail Tab
**Field** **Description** Batch Tag Number
Allow partial search feature. This batch tag number is unique by customer. 
If the batch tag name at configuration tab is selected, then only the batch tag number that belong it should be shown to select. Otherwise all batch tag numbers that allow by the user will be shown (base on the allow customer) and once the batch tag number selected, the appropriate batch tag name info should be display at configuration tab accordingly.

Batch Tag Number Status

The batch tag number’s current status. Disable if Max Build Qty is = Released Quantity. Available selection value as per below

- Active - Default value before user manually change it to complete or system auto change it to complete)

- Complete - Can be manually change by user or auto set by system when the Max Build Qty is = Released Quantity.
Notes: for the manual sampling type, user can't update the status of batch tag number. It will automated switch to 'Complete' after the 'New Sampling' of Manual Sampling be completed.
Max Build Quantity
Same value set in configuration tab. Disable for display only.
Released Quantity
The number of WIP assigned to the selected Batch Tag Number. Should tally with number or row will be shown on the below grid table. Disable for display only.
Grid table
The grid table that will show all the WIPs that assigned to the selected batch tag number. The table consist of the following items:

- Batch Tab Number

- Serial Number (show WIP Serial Number value that assigned with this batch tag number)

- Material Number (show the WIP’s Material Name)

- BOM (show the WIP’s BOM)

- Order Number (if any)

- Date Released (show the WIP Released Date)

- Date Assigned (show the date assigned for this batch tag number to WIP)
Notes: for the Manual Sampling the grid will display both sampled WIP and affected WIP.
![image2019-4-8_14-31-31.png](/.attachments/45974453.png)


![image2019-4-8_14-31-48.png](/.attachments/45974454.png)




#### Attachments

[image2019-4-8_14-31-31.png](/.attachments/45974453.png)
[image2019-4-8_14-31-48.png](/.attachments/45974454.png)
