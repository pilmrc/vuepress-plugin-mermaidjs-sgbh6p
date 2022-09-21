# Introduction

Assemble Progression c
onfiguration screen will be used to define a progression from an Assembly to another one. This is used in production when a product starts and due to some linked materials during the production flow it will become a new product with same WIP serial number. The progression can also be required if no material is linked but just because the WIP will get a different firmware at test phase.This configuration can be done only in Repetitive production ("Repetitive/Board Build" route Process Type) when an assembly will be "upgraded" to an upper level assembly for same BOM. The Assembly progression can be performed only if the material associated to the "target" assembly is configured in the BOM with the related sub-level material (Assembly "source").
For Example:
Material A is a top level in a BOM with Material B sub-level. Assembly A is associated to Material A and Assembly B is associated to Material B.
The user will be able to configure an assembly progression from B to A on Step1.
At runtime, when a WIP release for Assembly B will complete the Step1 the WIP will becomes Assembly A. The previous history for Assembly B can be anyway visible in WIP View scanning the WIP serial number, so that in WIP View the user will be able to see what was the original assembly (B) and in which step it has "progressed" to assembly A.
Since Assembly A is the "target" assembly for an Assembly Progression Configuration the system is restricting the user to release a WIP for it. The WIP can reach the Assembly A status only via Assembly Progression.


### How to get there?


From main menu select Manufacturing Suite
![image2018-2-7 11:42:12.png](/.attachments/29917719.png)



Then go to
![image2018-2-7 11:45:28.png](/.attachments/29917718.png)



::: mermaid
graph LR
A("ROUTE")-->0("ASSEMBLY PROGRESSION")

:::


#### Screen Activity


Assembly Progression enables user to perform the following activity:

- Create, view, update and delete assembly progression

- Configure assembly progression in a specific route




#### Pre Condition


Assembly Progression is required to be have BOM configured with sub-levels (
*[BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)* ) and Assembly created for WIP materials in the BOM ([Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md))


#### Post Condition


Assembly configured as "target"  in Assembly Progression cannot be relased in WIP Release screen (
[WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)). In the same way, for a WIP it is not possible to manually change the assembly to a "target" assembly configured in Assembly Progression using the WIP Maintenance screen ([WIP Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md))


#### Screen Dependency


The following screen(s) has dependency with Assembly Progression:

- [WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)

- [WIP Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)



#### Fields



![image2018-2-7 11:56:8.png](/.attachments/29917716.png)


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Search Division</p></td><td class="confluenceTd"><p>The division that assembly belong to</p></td></tr><tr><td class="confluenceTd"><p>Search Assembly revision</p></td><td class="confluenceTd"><p>Enter the "target" assembly number and revision. It is possible to have different assembly progression based on revision</p></td></tr></tbody></table>

**Once the assembly has been selected the system will showthe current Assembly Progression configuration (if previously configured) and/or the "BOM" structure to allow user to configure the new Assembly Progression** 
![image2018-2-7 11:59:40.png](/.attachments/29917715.png)


Selecting the top level asswembly te system will show the BOM Assembly items and a dropdown field with the list of sub-level assemblies to see the related configuration.
![image2018-2-7 12:1:54.png](/.attachments/29917714.png)



User can also select the sub-level asemblies to see the related configuration for each of them:
![image2018-2-7 12:4:4.png](/.attachments/29917713.png)



To create a new assembly progression user has to select the icon "+" 
![image2018-2-7 12:5:22.png](/.attachments/29917712.png)


The ROUTE and STEP where the progression will take effect are required
![image2018-2-7 12:7:23.png](/.attachments/29917710.png)



At confirmation (
![image2018-2-7 12:7:59.png](/.attachments/29917709.png)


) the systen will create the related assembly progression. It is possible to create more assembly progression for different steps and for different "source" assembly.
![image2018-2-7 12:10:21.png](/.attachments/29917708.png)


It is always possible to 
<table class="confluenceTable"><tbody><tr><td colspan="1" class="confluenceTd">Remove the configuration</td><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917705.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917705.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917705" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2018-2-7 12:12:57.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917702" data-linked-resource-container-version="1" /></span></td></tr><tr><td class="confluenceTd">Modify the configuration</td><td class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917706.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917706.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917706" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2018-2-7 12:12:33.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917702" data-linked-resource-container-version="1" /></span></td></tr><tr><td colspan="1" class="confluenceTd">Search a configuration</td><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917704.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917704.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917704" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2018-2-7 12:13:46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917702" data-linked-resource-container-version="1" /></span></td></tr></tbody></table>

In the above picture, the user has configured an assembly progression from Low Level assembly to Top Level Assembly that will take effect at runtime when the WIP (with Low Level Assembly) will complete the related configured Step
![image2018-2-7 12:16:55.png](/.attachments/29917703.png)








#### Attachments

[image2018-2-7 12:16:55.png](/.attachments/29917703.png)
[image2018-2-7 12:13:46.png](/.attachments/29917704.png)
[image2018-2-7 12:12:57.png](/.attachments/29917705.png)
[image2018-2-7 12:12:33.png](/.attachments/29917706.png)
[image2018-2-7 12:12:6.png](/.attachments/29917707.png)
[image2018-2-7 12:10:21.png](/.attachments/29917708.png)
[image2018-2-7 12:7:59.png](/.attachments/29917709.png)
[image2018-2-7 12:7:23.png](/.attachments/29917710.png)
[image2018-2-7 12:6:13.png](/.attachments/29917711.png)
[image2018-2-7 12:5:22.png](/.attachments/29917712.png)
[image2018-2-7 12:4:4.png](/.attachments/29917713.png)
[image2018-2-7 12:1:54.png](/.attachments/29917714.png)
[image2018-2-7 11:59:40.png](/.attachments/29917715.png)
[image2018-2-7 11:56:8.png](/.attachments/29917716.png)
[image2018-2-7 11:55:28.png](/.attachments/29917717.png)
[image2018-2-7 11:45:28.png](/.attachments/29917718.png)
[image2018-2-7 11:42:12.png](/.attachments/29917719.png)
