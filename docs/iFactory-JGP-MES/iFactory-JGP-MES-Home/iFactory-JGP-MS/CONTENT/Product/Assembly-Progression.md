# Introduction

Assemble Progression c
onfiguration screen will be used to define a progression from an Assembly to another one. This is used in production when a product starts and due to some linked materials during the production flow it will become a new product with same WIP serial number. The progression can also be required if no material is linked but just because the WIP will get a different firmware at test phase.This configuration can be done only in Repetitive production ("Repetitive/Board Build" route Process Type) when an assembly will be "upgraded" to an upper level assembly for same BOM. The Assembly progression can be performed only if the material associated to the "target" assembly is configured in the BOM with the related sub-level material (Assembly "source"). This is applicable for Route type 'Production' or 'RMA'. If user configures assembly progression against RMA route, assembly progression happens accordingly.
We have categorized the progression activity into three parts:

- Progression: Progress from Child to Parent hierarchy in the same BOM. One one child item can be progressed to parent assembly. Once associated, no other child for the same top level target assembly can be progressed after that.

- Example:

- MAT B is a top level in a BOM with Material A sub-level. Assembly B is associated to Material B and Assembly A is associated to Material A.The user will be able to configure an assembly progression from A to B on the Route Step of Route that Material A and B associated.

- Conversion: Convert from Different BOM (Top Material must be different) but sub level child must be the same. e.g. Revert the product from Transmitter to the Receiver. Conversion is possible only when the sub-level assembly progression configuration available against two same level parent assemblies. Conversion can happen between two progressed assembly.

- Upgrade: Revision Upgrade which different Assemblies (can be same BOM but different Version only) but direct child must be the same. Upgrade is one way and hence once user upgrade an assembly to different assembly, the configuration can not be made opposite.
![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/dabe0e50-fe6c-4b84-9ad6-31a5a595f133?fileName=image.png)





### How to get there?


From main menu select Manufacturing Suite
![image2018-2-7 11:42:12.png](/.attachments/66093115.png)



Then go to
![image2020-2-14_7-58-43.png](/.attachments/66093117.png)



::: mermaid
graph LR
A("PRODUCT")-->0("ASSEMBLY PROGRESSION MAINTENANCE")

:::


#### Screen Activity


Assembly Progression enables user to perform the following activity:

- Create, view, update and delete assembly progression

- Configure assembly progression in a specific route or cross Route




#### Pre Condition



- Assembly Progression is required to be have BOM configured with sub-levels (
*[BOM Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Progression.md)* ) and Assembly created for WIP materials in the BOM ([Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md))
- Route must be Repetitive



#### Post Condition


1. Assembly configured as "target"  in Assembly Progression cannot be relased in WIP Release screen (
[WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)).2. In the same way, for a WIP it is not possible to manually change the assembly to a "target" assembly configured in Assembly Progression using the WIP Maintenance screen (
[WIP Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Progression.md))


#### Screen Dependency


The following screen(s) has dependency with Assembly Progression:

- Manual Assemble Station

- Manual Inspection Entry (Both single and Batch mode)

- Manual Test Entry (Both single and Batch mode)

- Manual Operation Entry (Both single and Batch mode)

- Inspection and Rework

- Wip View

- Container View

- Assembly Progression APIs



#### Fields



![image2020-5-8_6-43-11.png](/.attachments/69632864.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Source Assembly</p></td><td style="text-align: left;" class="confluenceTd"><p>This is the assembly which user wants to be progressed. The assembly customer serial number constraint must be 'Unique By Customer' and the selected assembly must be valid, active and non-alias.</p></td></tr></tbody></table>


Once the assembly has been selected the system will show the current Assembly Progression configuration (if previously configured) and relative Edit/Delete (if not used yet) options for further active. Add option will be available all the time though.
![image2020-5-8_6-43-59.png](/.attachments/69632865.png)


While selecting the target assembly, system will show as per BOM structure availability on different event type progression. User can select multiple steps as to progress and at the same time user can opt for one/multiple cross Route destination upgrade.
![image2020-2-14_8-23-43.png](/.attachments/66093132.png)



Condition on following action
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Remove the configuration</td><td style="text-align: left;" colspan="1" class="confluenceTd">User can delete the configuration only if it is not being used in production yet</td></tr><tr><td style="text-align: left;" class="confluenceTd">Modify the configuration</td><td style="text-align: left;" class="confluenceTd">User can modify status anytime. Other details can be modified only when the configuration is not in use</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Search a configuration</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper">Search can happen anytime</span></td></tr></tbody></table>



The configuration depends on this way:
![image2020-2-14_10-54-0.png](/.attachments/66093133.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Target Assembly</p></td><td style="text-align: left;" class="confluenceTd"><p>Assembly to be Progressed/Converted/Upgraded. System shows all Parent Assembly that have the same Source Assembly as Sub level assembly e.g. Part A is a source Material with Assembly of Mat B (Parent) and Mat C (Parent). Show both the Mat B and C as the Target Assembly.<br />If Source Assembly is associated to a Phantom (no Assembly is associated), System to show next level of the Assembly as selection or until an upper level BOM with Assembly. e.g. Part F is the Top level Assembly of the BOM and have a Phantom E as the sub level which has Part B as the Child material with Assembly. Part B (Source) has option to choose Part F as the Target Assembly</p><ul style="list-style-type: square;"><li><em>Conditions t be appeared in this search:</em></li></ul><ul><li>Assembly from the list should be showed with Revision and Version</li><li>Filter to show Assembly that have same source material (with Assembly)</li><li>Assembly must be active and valid</li><li>Target material associated to an active Route</li><li>Only Material configured with “Progression Serial Number” release type</li><li>Assembly is NOT defined as "Alias Assembly"</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Event type</td><td colspan="1" class="confluenceTd"><p>The field is auto-populated as per relation available against BOM structure.</p><ul><li>Assembly Progression</li><li>Assembly Conversion</li><li>Assembly Upgradation</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Occurrence Route</td><td colspan="1" class="confluenceTd">This field will populate<strong> from</strong> where user want progression of the assembly. The field populates all repetitive route where the Source assembly material is tied to.</td></tr><tr><td colspan="1" class="confluenceTd">Occurrence Route Step</td><td colspan="1" class="confluenceTd">All the route steps against selected Occurrence Route to be available. User can select multiple steps at a time.</td></tr><tr><td colspan="1" class="confluenceTd">Destination Route</td><td colspan="1" class="confluenceTd">This field will populate where user want the assembly<strong> to</strong> be progressed. The field populates all repetitive route where the Source assembly material is tied to except selected Occurrence Route.<br />Allow setting same with "Occurrence Route & Route Step", when setting by this way, it can assembly progress in current route step, so it can meet the assembly progression twice at the same route step.</td></tr><tr><td colspan="1" class="confluenceTd">Destination Route Step</td><td colspan="1" class="confluenceTd">All the route steps against selected Destination Route to be available. User can select multiple steps at a time.<br />Allow setting same with "Occurrence Route & Route Step", when setting by this way, it can assembly progress in current route step, so it can meet the assembly progression twice at the same route step.</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">A flag to define whether the configuration is active or not.</td></tr></tbody></table>






- **Assembly Progression Diagram:**

This tab shows user the relational diagram of the configuration against selected Source assembly. 
Diagram shows the relation (Progression/Conversion/Upgrade) between the source Assembly with other target Assembly(ies) against which at-least one configuration is available

- Default diagram to show Source Assembly configuration available 1 level up and 1 level down. Although user can expand the diagram clicking each sub-assembly and their relation (available Configuration) against other assemblies. Although user can click on the tree icon to see the further level configurations.

- Different colour code is differentiating the event type as (Assembly Progression / Conversion / Upgrade).

- Progression bypasses the phantom BOM and user can configure the progression to the another level up till it finds non-phantom BOM so the diagram does.

- If any rule is deleted, system does not show up the related any more.

- In other scenario, if the rule is deactivated by any reason, system shows dotted line to highlight about the configuration status.
![image2020-5-8_6-52-47.png](/.attachments/69632866.png)


User can also view the associated BOM structure by clicking BOM structure icon:

- BOM configuration shows the Current Top level material MATERIAL associated to the selected Assembly

- From the BOM, showing one level down all materials type HALB (semifinished) or FERT (finished) including the ones with Phantom flag (highlighted in different colour). User can further drill down to see the configurations.

- If current material has no child of type HALB, FERT and no phantom or basically no child assembly associated, then the diagram ends there and user is not able to drill down further more.

- If user hovers over a material, system shows below information:

- Material

- BOM Name

- Alternative BOM

- Revision and Version

- Material Type

- BOM Items
![image2020-5-8_6-58-46.png](/.attachments/69632867.png)



![image2020-5-8_7-0-2.png](/.attachments/69632868.png)





#### Attachments

[image2018-2-7 11:42:12.png](/.attachments/66093115.png)
[image2018-2-7 11:45:28.png](/.attachments/66093116.png)
[image2020-2-14_7-58-43.png](/.attachments/66093117.png)
[image2018-2-7 11:56:8.png](/.attachments/66093118.png)
[image2018-2-7 11:59:40.png](/.attachments/66093119.png)
[image2018-2-7 12:1:54.png](/.attachments/66093120.png)
[image2018-2-7 12:4:4.png](/.attachments/66093121.png)
[image2018-2-7 12:5:22.png](/.attachments/66093122.png)
[image2018-2-7 12:7:23.png](/.attachments/66093123.png)
[image2018-2-7 12:7:59.png](/.attachments/66093124.png)
[image2018-2-7 12:10:21.png](/.attachments/66093125.png)
[image2018-2-7 12:12:57.png](/.attachments/66093126.png)
[image2018-2-7 12:12:33.png](/.attachments/66093127.png)
[image2018-2-7 12:13:46.png](/.attachments/66093128.png)
[image2018-2-7 12:16:55.png](/.attachments/66093129.png)
[image2020-2-14_8-12-1.png](/.attachments/66093130.png)
[image2020-2-14_8-16-13.png](/.attachments/66093131.png)
[image2020-2-14_8-23-43.png](/.attachments/66093132.png)
[image2020-2-14_10-54-0.png](/.attachments/66093133.png)
[image2020-5-8_6-43-11.png](/.attachments/69632864.png)
[image2020-5-8_6-43-59.png](/.attachments/69632865.png)
[image2020-5-8_6-52-47.png](/.attachments/69632866.png)
[image2020-5-8_6-58-46.png](/.attachments/69632867.png)
[image2020-5-8_7-0-2.png](/.attachments/69632868.png)
