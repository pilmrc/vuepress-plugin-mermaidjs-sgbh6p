# Introduction


Reference Unit is sometimes known as golden boards. They are commonly used to validate test processes, calibrate test equipment or as an inspection aid in quality control process. Reference Unit are not counted as WIP and does not affect production yield. There are three categories of reference unit; time-based, counter-based and use-till-die. For use-till-die category, user just needs to enter the Serial Number and does not need to configure effectivity dates or its actuation.

There could be more than one category configured for a reference unit. Whichever category rule that is met first will deem the reference unit unusable. Example: SN001has a time-based configuration where its validity is from 31-Jan-2012 until 31-Jan-2013. SN001also has a counter-based configuration where it can be used for a maximum of 100 times. On 21-Dec-2012, SN001was used 100 times. Even though SN001is valid until 31-Jan-2012, it can no longer be used as a reference unit as one of its category rule is met.



### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("REFERENCE UNIT")

:::


#### Permission


1) Can Configure Reference Units 

2) Can Reference Unit Assemble 
3) Can Access Print Server 
4) Can Access Printer 

5) Can Access Printer Type 
6) Can Access Reference Unit 
7) Can Modify Reference Unit 
8) Create Reference Unit 
9) Delete Reference Unit 
10) Read Reference Unit 
11) Update Reference Unit

#### Screen Activity


Reference Unit Maintenance enables user to perform the following activity:

- Create, view, update and delete reference unit records

- Configure the reference unit as time-based, counter-based or use-till-die




#### Screen Dependency


The following screen(s) has direct dependency with Visual Aid

- *[Reference Unit](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Reference-Unit.md)*





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Reference Type Unit</span></td><td colspan="1" class="confluenceTd"><ul><li>Production - Note: This reference unit can be packed into container.</li><li>Temporary - Note: This reference unit cannot be packed into container.</li><li>Permanent - Note : This reference unit cannot be packed into container.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">WIP / Serialized Material Radio Button</td><td colspan="1" class="confluenceTd">This radio button enable user to select which material type to be searched for configuration. If WIP is selected, WIP Serial Number shall be entered for searching. If Serialized Material is selected, serialized material's serial number shall be entered for searching.</td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>The Serial Number to be made as reference unit</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The customer for this reference unit. The customer will auto-populate according to the scanned serial number</td></tr><tr><td class="confluenceTd">Division</td><td class="confluenceTd">The division for this reference unit. <span>The division will auto-populate according to the scanned <span>serial number</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span>The product family for this reference unit. <span>The product family will auto-populate according to the scanned <span>serial number</span></span></span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span>The material and material version for this reference unit. <span>The material and material version will auto-populate according to the scanned <span>serial number</span></span></span></td></tr><tr><td colspan="1" class="confluenceTd">Effective Date From</td><td colspan="1" class="confluenceTd">The start date where this reference unit is effective. This is to configure a time-based reference unit</td></tr><tr><td colspan="1" class="confluenceTd">Effective Date To</td><td colspan="1" class="confluenceTd"><span>The end date where this reference unit is effective. <span>This is to configure a time-based reference unit</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Actuation</td><td colspan="1" class="confluenceTd">The maximum time (counter) the reference unit can be used. <span>This is to configure a counter-based reference unit</span></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Elapsed Time (Hours)</td><td colspan="1" class="confluenceTd">Time in hours since this Serial Number became a reference unit</td></tr><tr><td colspan="1" class="confluenceTd">Current Actuation</td><td colspan="1" class="confluenceTd">Displays the number of times the Serial Number has been used as a reference unit. This is related to a counter-based reference unit. If the current<br />actuation exceeds the maximum actuation, the reference unit can no longer be used </td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">If the Active flag is enabled, the reference is ready for use in production<br />If the Active flag is disabled, the reference unit cannot be scanned in production </td></tr></tbody></table>


- **This radio button enable user to select which material type to be searched for configuration. If WIP is selected, WIP Serial Number shall be entered for searching. If Serialized Material is selected, serialized material’s serial number shall be entered for searching.**

Serial Number
The Serial Number to be made as reference unit
CustomerThe customer for this reference unit. The customer will auto-populate according to the scanned serial numberDivisionThe division for this reference unit. The division will auto-populate according to the scanned serial numberProduct FamilyThe product family for this reference unit. The product family will auto-populate according to the scanned serial numberMaterialThe material and material version for this reference unit. The material and material version will auto-populate according to the scanned serial numberEffective Date FromThe start date where this reference unit is effective. This is to configure a time-based reference unitEffective Date ToThe end date where this reference unit is effective. This is to configure a time-based reference unitMaximum ActuationThe maximum time (counter) the reference unit can be used. This is to configure a counter-based reference unitMaximum Elapsed Time (Hours)Time in hours since this Serial Number became a reference unitCurrent ActuationDisplays the number of times the Serial Number has been used as a reference unit. This is related to a counter-based reference unit. If the current
actuation exceeds the maximum actuation, the reference unit can no longer be used ActiveIf the Active flag is enabled, the reference is ready for use in production
If the Active flag is disabled, the reference unit cannot be scanned in production 