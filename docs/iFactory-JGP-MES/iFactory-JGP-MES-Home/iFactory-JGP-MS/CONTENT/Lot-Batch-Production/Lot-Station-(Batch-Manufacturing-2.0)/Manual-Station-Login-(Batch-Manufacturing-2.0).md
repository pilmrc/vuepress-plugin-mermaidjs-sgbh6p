# Introduction

The Manual Station is used to perform activities to Lots at a Route Step. The basic use is for a user to identify the available Resource, optionally disambiguate the Route and Route Step if the available resource is configured for multiple locations, then to perform the operation that is configured for this Route Step. This page will cover the basic login and disambiguation.


### How to get there?




::: mermaid
graph LR
A("LOT STATION")
:::


#### Screen Activity


Manual Station Login enables user to perform the following activities:

- Select the Resource
(except resources having resource type: 'Test Equipment')

- Scan Carrier/Container (optional)

- Select the Route Step that the user is performing their activities

- Select the Assembly (if
“Enforce Assembly Selection At Station” is turned ON)


#### Pre Condition


The following data needs to be pre-configured before user is able to start a Manual Station Login

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
, all supporting Route Steps and Resources for the steps configured
- Create a
[Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Station-Login-(Batch-Manufacturing-2.0).md)and assign to Route
- Lot is assigned to the Carrier if Carrier is scanned



#### Screen Dependency


Manual Station Login

- [Manual Operation Entry](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Station-Login-(Batch-Manufacturing-2.0).md)
(MOE)
- [Manual Inspection Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Inspection-Entry-(Batch-Manufacturing-2.0).md)
(MIE)
- [Planned Order Packout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Planned-Order-Packout-(Batch-Manufacturing-2.0).md)

- [Warehouse Operation Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Warehouse-Operation-Entry-(Batch-Manufacturing-2.0).md)

- Receiving

- Rework



#### Process


When the user selects Lot Station, the Manual Station Login basic Resource search screen appears. The normal process is for the user to select/scan a Resource to search for any station by a full wild card (blank) search, partial match, or full matching Resource name. 
Resources having resource type: 'Test Equipment' will not be available for scan/search here.
After selecting the resource, user may leave the Carrier/Container field blank or scan a carrier or container. I
f no carrier or container is scanned, the Route Step search results shows all the route step including initial route steps and not initial route step from active routes with “Enforce Assembly Selection At Station” turned ON which are associated to the Resource. If 
“Enforce Assembly Selection At Station” turned OFF, then it will only how not initial route step. If a valid carrier or container is scanned, user will have to select the specific Route Step if the Resource is assigned to more than 1 Step. Route Step Search Results will return all the Pull and In Queue/Started steps with the selected Resource from the Route Version of the scanned Carrier/Container. If only 1 Route Step is available, system will automatically select it. ![image2020-4-27_12-45-32.png](/.attachments/86311159.png)


This is an example of a situation where the user must select the applicable Route Step because the Resource is assigned to more than one Step.

![image2020-4-27_12-57-15.png](/.attachments/86311158.png)


If the resource scanned is associated to Planned Order Packout station, the Packout step(s) is always shown in the Route Step list even if it is not a Pull or In Queue step. 
If the Route Step Type has the “Enforce assembly selection at station” set to ON, system will retrieve the Assembly of the scanned Carrier/Container and system will go into the station directly. If no carrier was scanned, user will need to select the Assembly.

![image2021-1-26_9-20-30.png](/.attachments/86311198.png)



User is not able to search for the soft deleted resource. The soft deleted resource will not be displayed in Resource Search Results table. If the soft deleted resource has been restored, then user will be able to search for the restored value. System will display the resource in Resource Search Results table.
Once the Manual Station Login is successful, any one of many Operations screen will be presented to the user to perform the required operation activities.




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>This field may be empty for a full wild card search, partially completed for a partial match or exactly entered for a full match. The field should normally be scanned from the workstation in production.</p><p>Note: <span style="color: rgb(23,43,77);">Resources associated with resource type: 'Test Equipment' and deleted resource will not be available here.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Carrier/Container</td><td colspan="1" class="confluenceTd">User need to scan a carrier or container number to determine the route version and assembly (if applicable) used. If left blank, user can login to an initial route step to perform Release Lot and not initial route step to perform operation.</td></tr><tr><td class="confluenceTd"><p><span>Route Step</span></p></td><td class="confluenceTd"><p>If no carrier or container is scanned, the Route Step search results shows all the route step including initial route steps and not initial route step from active routes with “Enforce Assembly Selection At Station” turned ON which are associated to the Resource.</p><p>If  “Enforce Assembly Selection At Station” turned OFF, then it will only how not initial route step.</p><p><span style="color: rgb(51,51,51);">If user scans a Carrier/Container number, t</span>his field will return all the In Queue/Started and Pull steps with the selected Resource from the Route Version of the scanned Carrier/Container. If only 1 Route Step is available, system will automatically select it.</p><p><span style="color: rgb(51,51,51);">If the Resource selected is associated to Planned Order Packout station, the Packout steps from the route version of the scanned serial number are always displayed in the Route Step Search Results even if the lot is not in queue there. This is so that unpack operation can be done.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);"><span>If the <a href="http://usplnd0wiki01:8090/display/IJM/Route+Step+Type" rel="nofollow">Route Step Type</a> has the “Enforce assembly selection at station” set to ON, system will retrieve the Assembly of the scanned Carrier/Container. If the scanned Carrier/Container has an assembly, system will go into the station directly.</span></span></p><p><span style="color: rgb(0,0,0);"><span>If route step is selected without scanning a serial number (initial route step), user will need to select an Assembly.</span></span></p></td></tr></tbody></table>





#### Attachments

[image2020-4-27_12-57-15.png](/.attachments/86311158.png)
[image2020-4-27_12-45-32.png](/.attachments/86311159.png)
[image2019-6-3_16-36-59.png](/.attachments/86311160.png)
[image2019-6-3_16-26-53.png](/.attachments/86311161.png)
[image2018-11-21_11-12-32.png](/.attachments/86311162.png)
[image2018-11-21_11-11-18.png](/.attachments/86311163.png)
[Manual Login fully populated -2.png](/.attachments/86311164.png)
[Manual Station Login Search.png](/.attachments/86311165.png)
[MOE screen.png](/.attachments/86311166.png)
[MOE Search Start.png](/.attachments/86311167.png)
[MOE Start Carrier with details.png](/.attachments/86311168.png)
[image2017-1-24 16:36:32.png](/.attachments/86311169.png)
[image2021-1-26_9-20-30.png](/.attachments/86311198.png)
