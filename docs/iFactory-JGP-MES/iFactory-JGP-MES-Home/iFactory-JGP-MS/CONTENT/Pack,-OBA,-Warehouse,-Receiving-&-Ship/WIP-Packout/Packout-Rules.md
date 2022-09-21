# Introduction



## *By Month* 

This rule verifies that only WIP that are released in the same month and year can be packed together in the same container at WIP Packout Station. This is configured at Container Type Maintenance (refer to: 
[Container Type (4.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/WIP-Packout/Packout-Rules.md)) as Material Release Date Range under Packout Configurations tab. This only applies to box level.![](/.attachments/31392855.png)



The first WIP that is packed into the container determines the month that subsequent WIP is allowed to be packed into the same container.
**Sample scenario:** 
WIP1: 1-FEB-2018
WIP2: 23-FEB-2018
WIP3: 4-FEB-2017
WIP4: 5-May-2018
First, WIP1 is packed into a Container. 

- WIP2 will be able to pack in the same Container.

- WIP3 will not be allowed to pack as it is released in a different Year

- WIP4 will not be allowed to pack as it is released in a different Month



## *By Day Range* 

This rules verifies that 
only the WIP released within a certain day range is able to be packed into a container. 
By configuring the Package configurations at Container Type Maintenance. (refer : [Container Type (4.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/WIP-Packout/Packout-Rules.md))When user is packing each WIP, system will verify that
***the earliest and the latest***   WIP released Date in the container is within the day range. This rule only applies to box level.
**Sample Scenario :**  
An Quality Engineer wants to control that only the WIP released within 6 days are able to be packed into a container. 
**Sample configuration:** 
![](/.attachments/31391871.png)


**Result :** 
First, WIP1 is packed into Container A. WIP is then pack in sequence from WIP2 to WIP5.
<table class="confluenceTable"><colgroup><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">WIP</th><th class="confluenceTh">Released Date</th><th class="confluenceTh">Can be packed into Container A?</th><th class="confluenceTh">Min Date</th><th class="confluenceTh">Max Date</th></tr><tr><td class="confluenceTd">1</td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-11" class="date-past">2018-7-11</time><span> </span></p></div></td><td style="text-align: center;" class="confluenceTd">Yes</td><td class="confluenceTd">N/A</td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-11" class="date-past">2018-7-11</time><span> </span></p></div></td></tr><tr><td class="confluenceTd">2</td><td class="confluenceTd"><div class="content-wrapper"><p><span><time datetime="2018-07-08" class="date-past">2018-7-8</time> </span></p></div></td><td style="text-align: center;" class="confluenceTd">Yes</td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-08" class="date-past">2018-7-8</time> </p></div></td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-11" class="date-past">2018-7-11</time> </p></div></td></tr><tr><td class="confluenceTd">3</td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-10" class="date-past">2018-7-10</time> </p></div></td><td style="text-align: center;" class="confluenceTd">Yes</td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-08" class="date-past">2018-7-8</time> </p></div></td><td class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-11" class="date-past">2018-7-11</time> </p></div></td></tr><tr><td colspan="1" class="confluenceTd">4</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-19" class="date-past">2018-7-19</time> </p></div></td><td style="text-align: center;" colspan="1" class="confluenceTd">No</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-08" class="date-past">2018-7-8</time> </p></div></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-11" class="date-past">2018-7-11</time> </p></div></td></tr><tr><td colspan="1" class="confluenceTd">5</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-13" class="date-past">2018-7-13</time> </p></div></td><td style="text-align: center;" colspan="1" class="confluenceTd">Yes</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-08" class="date-past">2018-7-8</time> </p></div></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><time datetime="2018-07-13" class="date-past">2018-7-13</time> </p></div></td></tr></tbody></table>




## *By Multiple WIP Attribute* 

This rule verifies that only WIP with all the same WIP attributes and values can be packed together in the same container at WIP Packout Station (
restricted to the same WIP/Lot Attributes)
. User is able to configure multiple WIP Attributes and Value at Container Type Maintenance under Packout Configurations tab by turning on the "Restrict To Same Attributes". 
![](/.attachments/32997413.png)



The 
WIP Attribute Name must be configured while the WIP Attribute Value can be blank.![image2020-1-14_16-8-50.png](/.attachments/64421907.png)


900

At WIP Packout Station, a
ll the configured WIP Attribute Name and Value must match in order to pack into the same container. If the container's WIP Attribute Value is blank, system shall follow the attribute value of the first WIP packed into the container (follow the leader rule).I
n Add WIP/Lot Attributes dialog, there is a toggle 
“Force Configure All Attributes” with default value of “Off”. 

- If “Force Configure All Attributes” is turned OFF, system will only check the attributes that are configured in container type. Attributes that are not added here will be ignored during packing.


- If “Force Configure All Attributes” is turned ON, all the unit’s attributes must be added. Unit with any attribute not configured/added in container type will not be allowed to pack into the container.

There is a toggle "Is Required" when adding each attribute. It will be "On" by default. 

- When the attribute’s “Is Required” = Yes, the unit must have the attribute before it is allowed to be packed into the container. Subsequent units to pack in the container must have the same attribute value as the first unit packed.


- When the attribute’s “Is Required” = No, it is not mandatory for the unit to have the attribute in order to be packed. If the first unit packed does not have the attribute, following units should not have the attribute (follow the leader). If the first unit packed have the attribute, following units must have the attribute with the same value.

The configured attribute name and value of the first WIP will be shown at the Green Box.
![image2020-1-14_16-10-20.png](/.attachments/64421908.png)


**Sample scenario:** 
WIP Attribute Name configured: Attribute1
WIP packed must contain Attribute1 but can also have Attribute2 and Attribute3 at the same time i
f “Force Configure All Attributes” is turned OFF
. 


## *Restricted By Deviations* 

This rule verifies that only WIP that satisfies the deviation configuration are able to pack together. User can 
configure the "Restricted by Deviations" in Container Type Maintenance screen.
This only applies to box level.User have the following options:

- Blank (Default)

- No Deviation

- Same Deviation

- Any Deviation
At WIP packout station:

- If Restricted by Deviation is blank, there will not be any control on the WIP to pack into the same container (WIP with and without Deviation can be packed)

- If No Deviation is configured, the WIP that is packed into the container must not be associated to any Deviation Number.

- If Same Deviation is configured, the WIP that is packed into the container must have the same Deviation Number as the first WIP that was packed (follow the leader rule).

- If Any Deviation is configured, WIP with any deviation number can be packed into the same container.

![image2020-1-14_16-10-20.png](/.attachments/32997633.png)




**Sample scenarios:** 
1. Restricted by Deviation is Same Deviation

- Cannot pack WIP without deviation.

- First WIP packed into the container is with deviation SM-DEV01, 2nd WIP without deviation cannot be packed.

- First WIP packed into the container is with deviation SM-DEV01, 2nd WIP with deviation SM-DEV01 is able to pack, 3rd WIP with deviation SM-DEV02 cannot be packed.
2. Restricted by Deviation is Any Deviation

- Cannot pack WIP without deviation.

- First WIP packed into the container is with deviation SM-DEV01, 2nd WIP without deviation cannot be packed.

- First WIP packed into the container is with deviation SM-DEV01, 2nd WIP with deviation SM-DEV02 is able to pack, 3rd WIP with deviation SM-DEV01 is able to pack.


## *Container Defect Type* 

This rule verifies that only WIP that satisfies the defect type configuration are able to pack together. User can 
configure the "Container Defect Type" in Container Type Maintenance screen.
This is not applicable to WIP with Planned order for BTO/CTO.There are 3 Options:

- No Open Defect

- Same Open Defect

- Any Open Defect
At WIP Packout Station:

- No Open Defect: Only allow items with no open defect to be packed into this container. (This option is set as Default)

- Same Open Defect: Only allow items contain with the exact same defects to be packed into this container with the concept of follow the leader rule.

- Any Open Defect: Only allow items with defects to be packed into this container

- Container Type drop down list will only show the list of container type according to the WIP scanned in the station. See below in more details:

- If scanned WIP with NO defect, show only the container type with “No Open Defect”.

- If
scannedWIP with defect, show only the container type with “Same Open Defect” or “Any Open Defect”.Above WIP defect is referring to the latest defect (Defect from the last test). Applicable when the "Usage Type" is set to "Box" under the "General" Tab. Scrapped WIP is not allowed to be packed into container. Only "No Open Defect" option for Planned order and WIP Packout in BTO/CTO Route.

![image2020-1-14_16-10-20.png](/.attachments/35357674.png)


**Sample scenario:** 
When Container Defect Type is "No Open Defect": 

- WIP should have no open defect
When Container Defect Type is "Same Open Defect": 

- First WIP has 2 defects, then subsequent WIP shall have the same 2 defects and no additional defects.

- If box created according to the WIP scanned with 3 different defects (Missing, Short, No Solder), sub sequence WIP to pack into the same box need to be the 3 different defects (Missing, Short, No Solder) of the first WIP scanned in and no additional defect.
When Container Defect Type is "Any Open Defect": 

- WIP should have at least one open defect associated to the WIP


## *Container WIP Constraint* 

This rule verifies that only WIP that satisfies the WIP status configured is able to pack together. User can 
configure the "Container WIP Constraint" in Container Type Maintenance screen.
This is not applicable to WIP with Planned order for BTO/CTO.There are 2 Options:

- Allow Complete WIP Only

- Allow In Process WIP Only
At WIP Packout Station:

- Allow Complete WIP Only: Only allow WIP with status "Complete" to be packed into this container (This option is set as Default)

- Allow In Process WIP Only: Only allow WIP with status "InProcess" to be packed into this container
There is only "Allow Complete WIP Only" option for Planned order and WIP Packout in BTO/CTO Route.

![image2020-1-14_16-10-20.png](/.attachments/35357675.png)





#### Attachments

[image2018-7-11_11-25-54.png](/.attachments/31391871.png)
[image2018-7-12_13-36-5.png](/.attachments/31391993.png)
[image2018-7-12_13-36-57.png](/.attachments/31391994.png)
[image2018-7-12_13-37-36.png](/.attachments/31391995.png)
[image2018-7-12_13-38-58.png](/.attachments/31391996.png)
[image2018-7-12_13-40-5.png](/.attachments/31391997.png)
[image2018-7-31_15-21-54.png](/.attachments/31392855.png)
[image2018-7-31_15-27-53.png](/.attachments/31392856.png)
[image2018-7-31_15-30-8.png](/.attachments/31392857.png)
[image2018-7-31_15-31-58.png](/.attachments/31392858.png)
[image2018-8-14_10-20-5.png](/.attachments/32997412.png)
[image2018-8-14_10-20-38.png](/.attachments/32997413.png)
[image2018-8-21_15-11-14.png](/.attachments/32997633.png)
[image2018-10-4_16-50-27.png](/.attachments/35357672.png)
[image2018-10-4_16-52-40.png](/.attachments/35357673.png)
[image2018-10-4_16-53-15.png](/.attachments/35357674.png)
[image2018-10-4_17-11-12.png](/.attachments/35357675.png)
[image2019-4-16_16-31-19.png](/.attachments/45974845.png)
[image2020-1-14_15-51-53.png](/.attachments/64421904.png)
[image2020-1-14_16-8-50.png](/.attachments/64421907.png)
[image2020-1-14_16-10-20.png](/.attachments/64421908.png)
