# Introduction


SAP Storage Location enables user to maintain and create SLOC records. SLOC configurations will be used to associate to Route and Route Steps for backflush messages needed by SAP. 




### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("SAP")
0-->1("SAP STORAGE LOCATIONS")

:::

Screen Activity
SAP Storage Location Maintenance enables user to perform the following activity:

- Create, view, update and delete storage location records

- Activate or deactivate the storage locations



#### Screen Dependency


The following screen(s) has direct dependency with SAP Storage Location

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="SAPStorageLocations-MainTab"><strong>Main Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Storage Location Name</p></td><td class="confluenceTd"><p>The name entered here should match exactly the SLOC name in SAP</p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><p>Additional description for the storage location can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Active</td><td colspan="1" class="confluenceTd">If the storage location is active, then it will be visible for user selection in Phoenix configuration screens<br /><br /></td></tr></tbody></table>



