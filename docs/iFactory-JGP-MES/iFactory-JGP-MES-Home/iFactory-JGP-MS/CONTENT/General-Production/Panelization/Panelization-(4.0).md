# Introduction

Panelization helps to group the WIP  that are physical together in the system


### How to get there?




::: mermaid
graph LR
A("WIP")-->0("PANELIZATION")

:::


#### Screen Activity


Panelization enables user to perform the following activity:

- Generate WIPs (

If material Release Type is "Generate Serial Number/Temporary Serial Number"
)
- Create Panels (Associate the WIP in the system)


#### Pre Condition


The following data needs to be pre-configured before user can use Panelization

- [Panel Type Maintance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panel-Type.md)

- [Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)


#### Screen Dependency



- [WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)



#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td class="confluenceTd"><p>Assembly Number*</p></td><td class="confluenceTd"><p>The Assembly Number, the unique name for the assembly is the combination of the Number + Revision + Version</p></td></tr><tr><td class="confluenceTd"><p>Assembly Revision</p></td><td class="confluenceTd">To indicate the Assembly Revision</td></tr><tr><td class="confluenceTd"><p>Assembly Version</p></td><td class="confluenceTd"><p>To indicate the Assembly Version</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd">To indicate the assembly belongs to specific Customer/Division. Autopopulated</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">To indicate the assembly belongs to specific BOM</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd">To indicate the Materials's Barcode</td></tr><tr><td colspan="1" class="confluenceTd">Batch Mode</td><td colspan="1" class="confluenceTd">To select Auto Batch Id or Existing Batch</td></tr><tr><td colspan="1" class="confluenceTd">Batch Number</td><td colspan="1" class="confluenceTd">Only enabled if Batch Mode = Existing Batch. Enter the existing batch number to group the panel WIPs.</td></tr><tr><td colspan="1" class="confluenceTd">Number of Available Serial Numbers</td><td colspan="1" class="confluenceTd">To indicate the WIP that have been released without route. Applies only if the Material Release Type = "Generate Serial Number"</td></tr><tr><td colspan="1" class="confluenceTd">Panel Serial Number</td><td colspan="1" class="confluenceTd">It helps to identify the entire Panel. It is not validated vs any mask.</td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">Applies if <span>Material Release Type = "Generate Serial Number",</span> and Material Release Document as well as Printer Maintenance are configured.</td></tr></tbody></table>


ProcessFor Material Release Type = "
Generate Serial Number", user have the option to generate WIP at Panelization screen:
- Select the Assembly Number.


- Click Generate WIP.


- Save.



![image2018-9-14_9-31-8.png](/.attachments/35356772.png)



Sometimes could happen that a board from panel is damaged and it will not be used, so in order to not scrap the entire panel, it can be disabled in the system. To disable it, uncheck the box next to the serial number.
![image2018-9-14_9-16-5.png](/.attachments/35356771.png)




- On clicking "Generate WIP", system generates WIPs based on the next number configured (Quantity = Panel Size).

- When user scans an already birthed WIP to the Panel Grid and click on Generate WIP button, system only generates the remaining quantity to the Panel Size.

- Once the WIPs are generated, system prints the label configured as "Released Document" at Material Maintenance.

- System will not generate WIPs for disabled board (unchecked box next to serial number).

- When Panel Type Barcode Option is Unique Barcode, system allows user to enter Panel Serial Number manually.

- When Panel Type Barcode Option is No Barcode, system disables "Panel Serial Number".

- Upon Save, the WIPs displayed at Panel Grid associates together as a Panel. System does not associate the WIPs if it has been unchecked before save.

- When user does not use the "Generate WIP" button, system allows user to scan an already generated WIP from WIP Release screen.

For Material Release Type = "
Assign Serial Number":
- Select the Assembly Number


- Enter the Serial numbers


- Save

Note: Material Validation Mask will be use to match with provided WIP serial number if NO validation mask configured at Assembly level. But if Assembly validation mask also configured, system will base on Assembly Validation Mask to verify provided WIP serial number pattern is match (ignore Material Validation Mask pattern)
![image2018-9-14_8-43-47.png](/.attachments/35356767.png)







#### Attachments

[image2017-8-29 10:45:59.png](/.attachments/35356738.png)
[image2017-8-29 10:48:15.png](/.attachments/35356739.png)
[image2018-9-14_8-37-9.png](/.attachments/35356766.png)
[image2018-9-14_8-43-47.png](/.attachments/35356767.png)
[image2018-9-14_8-48-59.png](/.attachments/35356768.png)
[image2018-9-14_8-50-14.png](/.attachments/35356769.png)
[image2018-9-14_9-16-5.png](/.attachments/35356771.png)
[image2018-9-14_9-31-8.png](/.attachments/35356772.png)
