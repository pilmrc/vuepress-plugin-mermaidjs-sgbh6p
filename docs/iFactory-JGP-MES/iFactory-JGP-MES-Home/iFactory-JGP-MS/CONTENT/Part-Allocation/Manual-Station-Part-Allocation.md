# Introduction

Manual Station Part Allocation
is a screen to allocate component information for Manual steps to allow trace-ability.
The component allocation is based on the [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)selected.

### How to get there?



::: mermaid
graph LR
A("PART ALLOCATION")-->0("MANUAL STATION PART ALLOCATION")

:::


#### **Permission** 


Manual Part Allocation 
1) Can Access NG - Can Access Part Allocation -  Can Access Customer Configuration 

2) Can Access NG - Can Access Part Allocation -  Can Access Equipment Part Allocation 3) Can Access NG - Can Access Part Allocation -  Can Access Manual Station Part Allocation 
3) Can Access NG - Can Access Setup Sheet -  Can Access Manual Station Setup Sheet

#### Screen Activity


Manual Station Part Allocation enables user to perform the following activity:

- Load/Remove component for trace-ability

- Install/Uninstall Setup


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Manual Station Part Allocation

- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)

- GRN




#### Screen Dependency


Following screens have direct dependency with Manual Station Part Allocation:

- [Manual Station Setup Sheet](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)


- [GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)


- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)


![image2020-4-14_16-13-7.png](/.attachments/69632091.png)


If the setup sheet contains WIP Material (assembled in Assemble station) the system is not asking to allocate GRN at this time and allows to install the setup sheet even if GRN info for WIP material is missing. In this case the column "Action" will show "Add in Assemble" instead of "OK" or "Add", to show that the part won't be installed during Part Allocation phase, but during Assemble phase (when WIP is scanned).
Setup Sheet ID with some deviated setup: when a deviated setup is configured (see 
[Setup Sheet Deviation](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)) and the user is scanning the Original Setup Sheet ID, the system will prompt to select if the user wants to work with original setup or with existing deviated setup, so that the user is aware that a valid deviation setup is available for that product.![image2017-7-31 13:57:12.png](/.attachments/29919189.png)


If the 
**Deviated Setup Sheet ID** is directly scanned into the field, the system will retrieve the setup sheet info and will provide a small notification saying that the setup selected is a deviated setup from the original.![image2017-7-31 13:57:34.png](/.attachments/29919188.png)


Following chart is to define if the GRN is enforced during the part allocation. If a particular material has both "Enforce GRN" configured in Material Maintenance & "Enforce GRN for Serialized Material" in Part Allocation's Customer configured, then the configuration in  "Enforce GRN" configured in Material Maintenance at Material level will take precedence (to be effective).
<table class="confluenceTable"><colgroup><col /><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><h5 id="ManualStationPartAllocation-No">No</h5></td><td class="confluenceTd"><h5 id="ManualStationPartAllocation-CustomerConfiguration(PA)-EnforceGRN">Customer Configuration (PA) - Enforce GRN</h5></td><td class="confluenceTd"><h5 id="ManualStationPartAllocation-Material-EnforceGRN">Material - Enforce GRN</h5></td><td class="confluenceTd"><h5 id="ManualStationPartAllocation-Promptforscanserializedmaterial">Prompt for scan serialized material</h5></td></tr><tr><td class="confluenceTd">1</td><td class="confluenceTd">Yes (default)</td><td class="confluenceTd">Blank (default)</td><td class="confluenceTd">Yes</td></tr><tr><td class="confluenceTd">2</td><td class="confluenceTd">Yes (default)</td><td class="confluenceTd">Yes</td><td class="confluenceTd">Yes</td></tr><tr><td class="confluenceTd">3</td><td class="confluenceTd">Yes (default)</td><td class="confluenceTd">No</td><td class="confluenceTd">No</td></tr><tr><td class="confluenceTd">4</td><td class="confluenceTd">No</td><td class="confluenceTd">Blank (default)</td><td class="confluenceTd">No</td></tr><tr><td class="confluenceTd">5</td><td class="confluenceTd">No</td><td class="confluenceTd">Yes</td><td class="confluenceTd">Yes</td></tr><tr><td class="confluenceTd">6</td><td class="confluenceTd">No</td><td class="confluenceTd">No</td><td class="confluenceTd">No</td></tr></tbody></table>

If the serialized material is not required prompt for scan GRN, the Action column should show "Add in Assemble" and GRN column should show as blank and disabled.
![image2020-4-14_16-17-50.png](/.attachments/69632093.png)





#### Online Material Loading


In the setup sheet for 
Lot Batch Assembly, if
the part number has “Online Material Loading” toggle turned ON in 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md):
- GRN, Bin and Quantity fields are disabled. User does not need to provide GRN and quantity in Part Allocation screen.

- GRN column will be empty.

- "Add in Station" will be shown in Action column.
When all other part numbers which do not have “Online Material Loading” turned ON have GRN provided, the setup sheet is allowed to be installed.
![image2020-4-14_16-20-41.png](/.attachments/69632094.png)





#### Fields 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualStationPartAllocation-SelectionCriteriamenu"><strong>Selection Criteria menu</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Setup Sheet ID</p></td><td class="confluenceTd"><p>The unique ID that refer to the setup to use for allocating components</p></td></tr><tr><td class="confluenceTd"><p>Manual Station</p></td><td class="confluenceTd"><p>Manual Station Name. This value is selected by the user. The list is coming from Resources configured for the route/route step</p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce (value from Setup Sheet Configuration), This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route/version where the setup sheet has been configured. This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step where the setup sheet is used. This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Setup Number</td><td colspan="1" class="confluenceTd">The setup number related to the setup Sheet ID. This is a value coming from the setup configuration. This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Setup Version</td><td colspan="1" class="confluenceTd">The setup number version related to the setup Sheet ID. This is a value coming from the setup configuration. This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd">This field shows the deviation associated to the setup sheet used. If the setup sheet selected doesn't have any deviation the field is empty. This value is read only</td></tr><tr><td colspan="1" class="confluenceTd">Original Setup ID</td><td colspan="1" class="confluenceTd">This field show the original setup sheet where the deviated setup is coming from. If the setup sheet selected doesn't have any deviation the field is empty. This value is read only</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ManualStationPartAllocation-Associationfields">Association fields</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">User has to insert the GRN number related to the material in the setup sheet (same GRN cannot be used in same setup sheet ID for different Station at same time). The GRN field can support up to 50 chars to be used by Non-Unique Identifier.</td></tr><tr><td colspan="1" class="confluenceTd">Bin</td><td colspan="1" class="confluenceTd"><p>The user has to insert the Bin. Usually the system is able to retrieve the related values from the setup sheet, so that the user doesn't have to insert any value.</p><p>The Bin is required when same material is located in different Bin</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The user has to insert the Quantity. Depends on configuration this information is not always required (activated by <a href="Manual-Station-Setup-Sheet-29919193.html">Manual Station Setup Sheet</a> when the quantity consumption is required). <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="100" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919191.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919191.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919191" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-5-17 13:35:15.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919186" data-linked-resource-container-version="7" /></span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ManualStationPartAllocation-Generalmenu">General menu</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">Install Setup</td><td class="confluenceTd"><p>Allow to install the Setup. It is active only when all required information are filled</p></td></tr><tr><td colspan="1" class="confluenceTd">Clear Selection</td><td colspan="1" class="confluenceTd">Allow to remove the row selected in data grid. The system will ask confirmation to remove</td></tr><tr><td colspan="1" class="confluenceTd">Clear Setup</td><td colspan="1" class="confluenceTd">Allow to remove all components from the setup</td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:14:29.png](/.attachments/29919187.png)
[image2017-7-31 13:57:34.png](/.attachments/29919188.png)
[image2017-7-31 13:57:12.png](/.attachments/29919189.png)
[image2017-7-11 12:15:42.png](/.attachments/29919190.png)
[image2017-5-17 13:35:15.png](/.attachments/29919191.png)
[image2017-5-17 13:33:34.png](/.attachments/29919192.png)
[image2018-11-22_15-59-34.png](/.attachments/38273297.png)
[image2018-11-22_16-0-34.png](/.attachments/38273298.png)
[image2019-5-7_13-49-56.png](/.attachments/48169579.png)
[image2020-4-14_16-13-7.png](/.attachments/69632091.png)
[image2020-4-14_16-16-32.png](/.attachments/69632092.png)
[image2020-4-14_16-17-50.png](/.attachments/69632093.png)
[image2020-4-14_16-20-41.png](/.attachments/69632094.png)
