# Introduction


Feeder contains materials mounted by the production operator. These feeders will be installed into SMT machines to begin the high velocity material placement. Placement of the materials into the product are pre-configured in 
[resource setup sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md). Every time new feeders are purchased, information related to the manufacturer, model and the feeder itself are entered in this screen.



### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("PART ALLOCATION")
0-->1("FEEDER")

:::


#### Screen Activity


Feeder Maintenance enables user to perform the following activity:

- Create, view, update and delete feeder

- Change status for the feeder




#### **Screen Dependency** 




- [Resource Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Resource-Setup-Sheet.md)



**Fields** 

<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Feeder Name</p></td><td class="confluenceTd"><p>The unique name given to the feeder</p></td></tr><tr><td colspan="1" class="confluenceTd">Feeder Manufacturer</td><td colspan="1" class="confluenceTd">The manufacturer that builds this feeder</td></tr><tr><td colspan="1" class="confluenceTd">Feeder Model</td><td colspan="1" class="confluenceTd">Model of the feeder</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturer Serial Number</td><td colspan="1" class="confluenceTd"><p>The manufacturer serial number must be unique by feeder name, feeder manufacturer and feeder model. Duplicate manucturer serial number is allowed for the configuration below</p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh"><strong>Feeder Name</strong></th><th class="confluenceTh"><strong>Feeder Manufacturer </strong></th><th class="confluenceTh"><strong>Feeder Model </strong></th><th colspan="1" class="confluenceTh"><strong>Manufacturer Serial Number</strong></th></tr><tr><td class="confluenceTd"><span>Feeder-A </span></td><td class="confluenceTd"><span>Fuji </span></td><td class="confluenceTd"><span>Fuji-012 </span></td><td colspan="1" class="confluenceTd"><span>F012</span></td></tr><tr><td class="confluenceTd"><span>Feeder-B </span></td><td class="confluenceTd"><span>HP</span></td><td class="confluenceTd"><span>HSP3900</span></td><td colspan="1" class="confluenceTd"><span>F012</span></td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Asset Tag</td><td colspan="1" class="confluenceTd">The Jabil asset identifier</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>A feeder can be in one of the statuses below:</p><ul><li>Available (The feeder is available for use or transfer)</li><li>In Maintenance (The <span>feeder</span> is currently in maintenance)</li><li>In Use (The <span>feeder</span> is currently being used in production)</li><li>Obsolete (The feeder is no longer used in production)</li><li>On Hold for Transfer (The feeder is on hold to be transferred to another site)</li><li>Transferred (The feeder has been transferred to another site)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Allows user to enter the reason for the feeder status change</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><strong>Feeder Name</strong></th><th class="confluenceTh"><strong>Feeder Manufacturer </strong></th><th class="confluenceTh"><strong>Feeder Model </strong></th><th colspan="1" class="confluenceTh"><strong>Manufacturer Serial Number</strong></th></tr><tr><td class="confluenceTd"><span>Feeder-A </span></td><td class="confluenceTd"><span>Fuji </span></td><td class="confluenceTd"><span>Fuji-012 </span></td><td colspan="1" class="confluenceTd"><span>F012</span></td></tr><tr><td class="confluenceTd"><span>Feeder-B </span></td><td class="confluenceTd"><span>HP</span></td><td class="confluenceTd"><span>HSP3900</span></td><td colspan="1" class="confluenceTd"><span>F012</span></td></tr></tbody></table>

**Feeder_A**  Fuji Fuji_012 F012Feeder_B HPHSP3900F012Asset TagThe Jabil asset identifierStatusA feeder can be in one of the statuses below:

- Available (The feeder is available for use or transfer)

- In Maintenance (The
feederis currently in maintenance)
- In Use (The
feederis currently being used in production)
- Obsolete (The feeder is no longer used in production)

- On Hold for Transfer (The feeder is on hold to be transferred to another site)

- Transferred (The feeder has been transferred to another site)
CommentAllows user to enter the reason for the feeder status change