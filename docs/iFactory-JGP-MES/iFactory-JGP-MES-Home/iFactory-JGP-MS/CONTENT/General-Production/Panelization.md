# Introduction

Panelization helps to group the WIP  that are physical together in the system


### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("PANELIZATION")

:::


#### Screen Activity


Panelization enables user to perform the following activity:

- Create Panels  (Associate the WIP in the system)


#### Pre Condition


The following data needs to be pre-configured before user use Panelization

- [Panel Type Maintance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panel-Type.md)

- [Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)


#### Screen Dependency



- [WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)



#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Assembly Number*</p></td><td class="confluenceTd"><p><span>The Assembly Number, the unique name for the assembly is the combination of the Number + Revision + Version</span></p></td></tr><tr><td class="confluenceTd"><p>Assembly Revision</p></td><td class="confluenceTd">To indicate the Assembly Revision</td></tr><tr><td class="confluenceTd"><p>Assembly Version</p></td><td class="confluenceTd"><p><span>To indicate the Assembly Version</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd"><span>To indicate the assembly belongs to specific Customer/Division. Autopopulated </span></td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd"><span>To indicate the assembly belongs to specific BOM</span></td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd"><span>To indicate the Materials's Barcode </span></td></tr><tr><td colspan="1" class="confluenceTd">Numer of Available Serial Numbers</td><td colspan="1" class="confluenceTd">To indicate the WIP that have been released without route. Applies only if the Material Release Type = "Generate Serial Number"</td></tr><tr><td colspan="1" class="confluenceTd"><span>Panel Serial Number</span></td><td colspan="1" class="confluenceTd">It helps to identify the entire Panel. It is not validated vs any mask.</td></tr></tbody></table>


Process
- Select the Assembly Number


- Enter the Serial numbers


- Save



![image2017-8-29 10:45:59.png](/.attachments/29918392.png)



Sometimes could happen that a board from panel is damage, it will not be used, in order to not scrap the entire panel can be disabled in the system. For doing it can be uncheck the flag.

![image2017-8-29 10:48:15.png](/.attachments/29918391.png)





#### Attachments

[image2017-8-29 10:48:15.png](/.attachments/29918391.png)
[image2017-8-29 10:45:59.png](/.attachments/29918392.png)
