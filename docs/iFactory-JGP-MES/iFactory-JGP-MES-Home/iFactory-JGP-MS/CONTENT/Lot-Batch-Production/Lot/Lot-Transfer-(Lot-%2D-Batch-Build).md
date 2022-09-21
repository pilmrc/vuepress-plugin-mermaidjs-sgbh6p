# Introduction

Lot Transfer is intended to provide a means to move Items of a Lot that are being transported on a Carrier to another Carrier. These apply to inspected lots, uninspected lots, scrapped lots.  There are several reasons to perform such a transfer.

- All items from Carrier to another Carrier because a Carrier is damaged and needs to be replaced


- All items from Carrier to another Carrier because all items on a Carrier have failed and need to be moved to a specialized Carrier used in the repair loop ( ie. different color carrier than regular production)


- All items from Carrier to another Carrier because all items on a Carrier have been repaired and need to be moved back to a production Carrier


- One or more items have passed or failed and need to be split from the current Lot and placed on another Carrier of the same Planned Order and the same Pass / Fail status



- Only scrapped Lot can be merged from different Planned Order

Each of these different scenarios has their validation rules. For Lot / Batch Build processing there are a number of items on a Carrier that are non-serialized, to preserve all that we know of the lot we must capture and maintain processing history for the Lot. Moving all Items from Carrier to Carrier is a simple transaction retaining the full Lot history and verifying that the new Carrier is Available, for the same Customer, and is large enough the accept all the items from the source Carrier. When a full lot transfer (all Items of the Lot from a Carrier)  is completed the following will occur:

- Lot View General tab will reflect the new Carrier being used to transport the Lot


- An Audit Log transaction is recorded and viewable in Lot View - Audit Log tab


- The Carrier View will reflect the changes in the Carrier status, 'Unassigned' for source, Assigned for destination


- If the source Carrier has reached the maximum uses, the Carrier status will be set to 'Retired'


- The Carrier View Lot Assignments tab will present the Carrier assignment / un-assignment  History for both the source and destination Carriers

Moving Partial quantities involve Spiting Lots and or Merging Lots these processes is more complicated as new Lot numbers are created and Lot histories can be joined (merged) when multiple Lots are mixed together. Merging Multiple Lots can be implemented to provide efficiencies by filling Carriers. But, in doing this resolution is lost for individual items as the histories of multiple previous lots are retained as one history. 
For Transfer/Merge these are the rules:

- Can not be mixed uninspected lots with inspected lots


- Can not be mixed scrapped lots with unscrapped lots


- If a lot was not inspected by default all the items are considered as good items


- Can not be possible mix bad items with good items in Merge lots


- In order to transfer bad units needs to cover these points:



- The Lot (for both sources and destination) Fail qty shall be "= Max(Defect Qty grouping per defect and material)


- Total Defect Qty (for both sources and destination) shall be "= Lot Fail Quantity


- Lots belong to the same planned order if 'Restrict To Same Planned Orders' (
[Container Type - Packout Configurations](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)) is turned ON
- Can not mix Lot Attribute with different value if "Allowed Multiple Value" = NO at Attribute Assignment Screen.


- Can not Transfer/Merge if the Lot associated to an On hold Planned Order


- Can not Transfer/Merge if the Lot is on hold


- Can not Transfer/Merge if the Lot is packed into Container


- Can not Transfer/Merge if the Lot has been completed


- Source and destination lots must have the same assembly if one of the lots has assembly



- If one of the lots has CRD configured (setup sheet installed), source and destination lots must have the same assembled material at the same CRD (example: if lot A has CRD1 assembled with Material1, lot B must also have CRD1 assembled with Material1)


- Source and destination lots must have the same open defect(s)



When a Transfer is completed the following will occur:

- New Lots are created for the remaining items and the items that are split


- An Audit log Transaction is recorded and viewable in Lot View - Audit Log Tab


- If the items that were split have defect(s), the defect will move to the destination carrier


- Pass Lots will enqueue at default Pass Route Step

- Failed Lots will enqueue at default Faile Route Step

- New Lots will contain the Lot Attribute and Data Collection from the Source Lot
When a Merge is completed the following will occur:

- New Lots are created for the remaining items in the destination and the source, a new lot of the items that are merge


- An Audit log Transaction is recorded and viewable in Lot View - Audit Log Tab


- If the items that merged have defect(s), the defect will move to the new destination carrier


- Lot will enqueue as per the existing destination lot

- If "Allowed Multiple Value" = YES, store the Lot Attribute value with separator, e.g. Value1 | Value2

- If "Allowed Multiple Value" = NO, Do not allow Lot Merge when Lot Attribute have different value
After a transfer/merge is completed, t
he genealogy of the source
lot will be transferred to the destination lot. The genealogy quantity of the source lot will be deducted.
Example:
LotA (source):

CRD1, assembled 29/11 - 3 (genealogy quantity)
CRD2, assembled 29/11 - 3
CRD3, assembled 29/11 - 3
LotB (destination):

CRD1, assembled 30/11 - 12
CRD2, assembled 30/11 - 12
CRD3, assembled 30/11 - 12
1 unit of LotA is merged to LotB: 

LotA (source):
CRD1, assembled 29/11 - 2
CRD2, assembled 29/11 - 2
CRD3, assembled 29/11 - 2
LotB (destination):

CRD1, assembled 30/11 - 12
CRD2, assembled 30/11 - 12
CRD3, assembled 30/11 - 12
CRD1, assembled 29/11 - 1
CRD2, assembled 29/11 - 1
CRD3, assembled 29/11 - 1If partial quantity of LotB is then merged to another lot, the unit with the oldest assembled date time will be transferred out first (FIFO).


How to get there?


::: mermaid
graph LR
A("LOT")-->0("LOT TRANSFER")

:::


### Permission


1) Can Access Lot/Batch Build - Lot - Transfer Lot 


#### Screen Activity


Lot Transfer enables the user to perform the following activity:

- Full Transfer of a Lot from a source Carrier to a destination Carrier

- Partial Transfer for bad or good units


- Merge Lots




#### Pre-Condition


The following data needs to be pre-configured (if used) before user configures Lot Transfer

- Create
Carrier  - Both source and destination Carriers must exist for the Same Customer to perform a transfer
- Lot Release  - A Lot must have been released to the source Carrier to perform a transfer



#### Screen Dependency



- Carrier View - General Tab

- Carrier View - Assignment Tab

- Lot View - General Tab

- Lot View - Audit Tab


![](/.attachments/42106900.png)





#### Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p class="p4"><span class="s1"><strong>Field</strong></span></p></td><td class="confluenceTd"><p class="p4"><span class="s1"><strong>Description</strong></span></p></td></tr><tr><td class="confluenceTd"><p class="p3"><span class="s1">Source Carrier</span></p></td><td class="confluenceTd"><p class="p3"><span class="s1">The serial number of the Source Carrier</span></p></td></tr><tr><td class="confluenceTd"><p class="p3"><span class="s1">Destination Carrier</span></p></td><td class="confluenceTd"><p class="p3"><span>The serial number of the Destination Carrier</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Pass or Fail</td><td colspan="1" class="confluenceTd"><p>It is possible to select Pass or Fail items. If Fail items are selected must select the Defects (Defect | Material | CRD), following the rules:</p><ul><li><p>The Lot (for both sources and destination) Fail qty shall be >= Max(Defect Qty grouping per defect and material)</p></li><li><p>Total Defect Qty (for both sources and destination) shall be >= Lot Fail Quantity</p></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Transfer/Merge</td><td colspan="1" class="confluenceTd">The type of transaction that needs to occur which will be automatically enabled by the system</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Will cancel the operation</td></tr></tbody></table>



#### Attachments

[image2017-7-19 10:53:6.png](/.attachments/29917842.png)
[image2017-1-24 16:4:25.png](/.attachments/29917843.png)
[Lot Transfer Screen.png](/.attachments/29917844.png)
[image2019-1-28_14-41-4.png](/.attachments/42106900.png)
