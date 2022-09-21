# Introduction

The Manual Station is used to perform activities to Lots at a Route Step. The basic use is for a User to identify the available Resource, optionally disambiguate the Route and Route Step if the available resource is configured for multiple locations, then to perform the operation that is configured for this Route Step. This page will cover the basic login, disambiguation, Start, Abort and Complete.



### How to get there?




::: mermaid
graph LR
A("LOT STATION")
:::


#### Screen Activity


Manual Station Login enables user to perform the following activity:

- Select the Resource
(except resources having resource type: 'Test Equipment')
, scan WIP/Container, select the Route Step that the User is performing their activities
- Start the Operation activity

- Abort the activity

- Complete the activity



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Station Login

- [Manual Station Login (Lot / Batch Build)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)
defined
- [Manual Station Login (Lot / Batch Build)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start 


#### Screen Dependency


Manual Station Login

- [Manual Operation Entry](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)
(MOE)
- Manual Inspection Entry (MIE)

- Planned Order Packout

- others to come...
When the user selects Manual Station Login the basic Resource search screen appears. The normal process is for the user to select/scan a Resource barcode label at the physical workstation. A user is able to search for any station by a full wild card (blank) search, partial match, or full matching Resource name. 
Resources having resource type: 'Test Equipment' will not be available for scan/search here.
After selecting the resource, user may leave the Carrier/Container field blank or scan a carrier or container. B
y default, if no carrier or container is scanned, the Route Step search results shows all the initial route steps from active routes with “Enforce Assembly Selection At Station” turned ON which are associated to the Resource.
If a valid carrier or container is scanned, user will have to select the specific Route Step if the Resource is assigned to more than 1 Step. Route Step Search Results will return all the In Queue and Pull steps with the selected Resource from the Route Version of the scanned Carrier/Container. If only 1 Route Step is available, system will automatically select it.If the 
[Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)has the “Enforce assembly selection at station”set to ON, system will retrieve the Assembly of the scanned Carrier/Container
if station type is MIE, MOE or Planned Order Packout. 
If “Enforce Assembly Selection At Station” is turned ON but the scanned Carrier/Container does not have an assembly, warning message will be shown. If the scanned Carrier/Container has an assembly, system will go into the station directly.![image2020-4-27_12-45-32.png](/.attachments/69632478.png)


This is an example of a situation where the user must select the applicable Route Step because the Resource is assigned to more than one Step.
![image2020-4-27_12-57-15.png](/.attachments/69632479.png)




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>This field may be empty for a full wild card search, partially completed for a partial match, exactly entered for a full match. The field should normally be scanned from the workstation in production</p><p>Note: <span style="color: rgb(23,43,77);">Resources associated with resource type: 'Test Equipment' will not be available here.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Carrier/Container</td><td colspan="1" class="confluenceTd">User need to scan a carrier or container number to determine the route version and assembly (if applicable) used. If left blank, user can login to an initial route step to perform Auto Release Lot.</td></tr><tr><td class="confluenceTd"><p><span>Route Step</span></p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">By default, the Route Step Search Results shows all the initial route steps from active routes with “Enforce Assembly Selection At Station” turned ON which are associated to the Resource.</span></p><p><span style="color: rgb(51,51,51);">If user scans a Carrier/Container number, t</span>his field will return all the In Queue and Pull steps with the selected Resource from the Route Version of the scanned Carrier/Container. If only 1 Route Step is available, system will automatically select it.</p><p><span style="color: rgb(51,51,51);">If the Resource selected is associated to Planned Order Packout station, the Packout steps from the route version of the scanned serial number are always displayed in the Route Step Search Results even if the lot is not in queue there. This is so that unpack operation can be done.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);"><span>If the <a href="http://usplnd0wiki01:8090/display/IJM/Route+Step+Type" rel="nofollow">Route Step Type</a> has the “Enforce assembly selection at station” set to ON, system will retrieve the Assembly of the scanned Carrier/Container if station type is MIE, MOE or Planned Order Packout. If the scanned Carrier/Container has an assembly, system will go into the station directly.</span></span></p><p><span style="color: rgb(0,0,0);"><span>If route step is selected without scanning a serial number (initial route step), user will need to select an Assembly.</span></span></p></td></tr></tbody></table>


Once the Manual Station Login is successful any one of many Operations screen will be presented to the user to perform the required operation activities. As an example, the Manual Operations Entry (MOE) screen is a simple operation that allows the user to start, Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Carrier to start the operation activities. The user as also pressed the Station Details Control to view what has been selected.
![image2019-6-3_16-26-53.png](/.attachments/50954247.png)


Once found the MOE screen has started and is ready for the user to Abort or Complete the operation. At which point the screen should be cleared and the cycle starts all over again.
![image2019-6-3_16-36-59.png](/.attachments/50954255.png)







#### Attachments

[image2017-1-24 16:36:32.png](/.attachments/29917870.png)
[MOE Start Carrier with details.png](/.attachments/29917871.png)
[MOE Search Start.png](/.attachments/29917872.png)
[MOE screen.png](/.attachments/29917873.png)
[Manual Station Login Search.png](/.attachments/29917874.png)
[Manual Login fully populated -2.png](/.attachments/29917875.png)
[image2018-11-21_11-11-18.png](/.attachments/38273271.png)
[image2018-11-21_11-12-32.png](/.attachments/38273272.png)
[image2019-6-3_16-26-53.png](/.attachments/50954247.png)
[image2019-6-3_16-36-59.png](/.attachments/50954255.png)
[image2020-4-27_12-45-32.png](/.attachments/69632478.png)
[image2020-4-27_12-57-15.png](/.attachments/69632479.png)
