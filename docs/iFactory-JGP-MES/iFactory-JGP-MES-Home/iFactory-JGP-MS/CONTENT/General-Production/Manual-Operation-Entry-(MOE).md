# Introduction

The Manual Operation Entry (MOE) station is used to perform a simple s
tart, complete, or abort activity for WIP at a Route Step. The basic use is for a user to identify the resource, route, and route step then to perform the operation that is configured for this route step.In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area. 
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step

- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:


### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN")
:::


#### Permission


MOE Single Entry (Configured with DC, Batch Tag and External API pre-start rule) 


1) Can Access Lot/Batch Build - Manual Operation Entry (Currently this is sharing with MOE for Repetitive) 
2) Material Configuration - Can Access Assembly Configuration 

MOE Batch Entry (Configured with DC, Batch Tag and External API) 

1) Using same group name as above without any additional configuration.

#### Screen Activity


Manual Station Login enables user to perform the following activity:

- Select the resource, route, route step that the user is performing

- Start the operation activity

Abort the activity
- Complete the activity



#### Pre Condition


The following data needs to be configured before a user is able to start a Manual Station Login

- [Manual Operation Entry (MOE)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Manual-Operation-Entry-(MOE).md)
defined
- [Manual Operation Entry (MOE)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Manual-Operation-Entry-(MOE).md)
,  all supporting Route steps and Resources configured for the Route Steps
- [Manual Station Login](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Manual-Operation-Entry-(MOE).md)
User must identify the Resource they are using before performing the Operation activities  


#### Screen Dependency


None



#### Process




#### Batch Entry Mode


The Manual Operation Entry (MOE) – Batch Entry Mode provide another entry method for operator to perform the MOE transaction. 
User will only be able to see the batch entry mode when one of the customers that the user has permission for has the “Enforce assembly selection at station” set to ON. By turn “On” the Batch Entry mode, MOE will switch to batch entry mode screen and allow operator to continuously scan WIP serial number and the system will associate a WIP movement result to the WIP scanned by user. This will behave like the "Complete" function in MOE station so that it can decrease the operation time.In Batch Entry mode screen, data collection item no longer show in pop up dialog as single entry mode entry. Instead, all the configured data collection (regardless retain value item or non-retain value item) will be show base on the selected assembly on the screen for operator to enter before WIP serial number scan. Only the non-retained value data collection item will refresh and re-enter the value after each WIP scanned.
For single WIP serial number scanned, WIP Count will be increase 1 when the WIP is successfully complete. Whereas for panel scanned, WIP Count will increase base on the WIPs number in a panel. Panel board also supported in batch entry mode. By scanned in the success complete panel serial number, all the WIP will have same history, data collection item on each WIP within same panel.
To return back to single entry mode, just to turn off Batch Entry mode, system will reset the WIP Count value.
The MOE batch entry mode screen also support panel and auto breakout feature.
![](/.attachments/34078727.png)





#### Auto Release WIP


User will be able to see the “Auto Release WIP” toggle when the MOE route step is an initial route step and one of the customers that the user has permission for has the “Enforce assembly selection at station” set to ON.
![image2019-6-7_10-27-29.png](/.attachments/50954585.png)


If the assembly is for material with release type of "Assigned Serial Number", when the “Auto Release WIP” toggle is turned On, the Batch Mode and Batch Number fields will be visible. 
User is require to scan a Serial Number that matches the validation mask configured for the assembly or material. If Assembly Validation Mask configured, then prior to match with it’s pattern. If Assembly Validation Mask not configured, then match with material validation mask pattern. This validation mask logic is applicable for both single and batch entry mode screen with Material release type of “Assigned Serial Number”
![image2019-6-7_10-28-55.png](/.attachments/50954586.png)




#### Assembly Progression


When the step is to be completed (applicable only for repetitive Route step station), assembly progression happens. It is applicable both for single entry and batch entry mode. If there are multiple configuration against same occurrence step, system populates window providing option to select one progression option to proceed with station operation completion. Once progression completes, WIP gets en-queued in following way:

- If there is only default configuration, WIP follows Default PASS rule of that step

- If there is only cross route configuration available, WIP follows only the assembly progression destination step(s)

- If both default and cross route configuration available, WIP follows both Default PASS destination step(s) and Progression cross route step(s) available in progression configuration

MOE single entry mode:

- WIP is released and started after scanning serial number that does not exist in the system for material with release type of "Assigned Serial Number". If the serial number already exists, error is shown.


- WIP is released and started after scanning serial number with status of "New" (generated but not yet released) for material with release type of "Generate Serial Number". If the serial number scanned does not exist or is already released, error will be shown.


- "Auto Release WIP" and "Batch Entry Mode" toggles are disabled after WIP has started. They are enabled after the operation is completed or aborted.

MOE Batch Entry Mode:

- WIP is released, started and completed after scanning a serial number that does not exist in the system for material with release type of "Assigned Serial Number". If the serial number already exists, error is shown.


- If the assembly is for material with release type of "Generate Serial Number" and the serial number scanned has the status of "New", WIP is released, started and completed. If the serial number scanned does not exist or is already released, error will be shown.
Note: If user opts for document printing after assembly Progression (or at the same station of assembly progression configured), user has to assign the Document as per progressed assembly. Also system has feasibility to print both Original and Current assembly after progression.

WIP attribute that is configured for WIP Release will be shown together with the WIP attribute configured for the route step. This is applicable to single and batch entry mode.
![image2019-6-7_12-25-59.png](/.attachments/50954590.png)


![image2019-6-7_12-26-13.png](/.attachments/50954591.png)


![image2019-6-7_12-26-21.png](/.attachments/50954592.png)


The Batch Mode and Batch Number fields’ values are retained (not cleared) after completing the WIP. Values will be reset when “Auto Release WIP” or "Batch Entry Mode" is turned Off.

- When complete attribute entry (without DC configured) and closed the pop up dialog, the cursor will focus back to Scan WIP field in the operation screen

- When complete attribute entry with DC configured and closed the pop up dialog, the cursor will focus back to DC field in the operation screen
"Auto Release WIP" can work for panel if Panelization is done first (Status = New). 
This is applicable in single and batch entry modes. For panel, Batch Mode and Batch Number fields will not be shown.Assembly with "Unserialized to Serialized" or Deviation configuration is not supported for Auto Release WIP at station. "On Release API Call" configuration (in 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)screen)for WIP Release screen is also not supported in Auto Release WIP at station.**Link 'Manual Sampling' type batch tag number as attribute value for WIP** 
![image2022-2-7_14-8-16.png](/.attachments/106464790.png)


As above attribute assignment configuration, user already configured the CM-MOE station need to link a batch tag number with 'Manual Sampling' type. During the runtime of CM-MOE station system will generate different batch tag number for WIP base on different time range configured in sample plan.
For example:

**Sample Plan Configuration:** 
- Batch Tag Name: CM_SZH_IPQCBTDemoPhase1_01

- Evaluation Route Step: CM-MOE

- Range Type: By Customized Time

- Time Range:

- 00:00 -- 04:00

- 04:00 -- 08:00

- 08:00 -- 12:00

- 14:00 -- 18:00

- 18:00 -- 00:00
**RunTime in CM-MOE (** 
Current Date: 2021/12/16)
All the WIP go through the CM-MOE step from 2021/12/16 00:00(include) --- 2021/12/16 04:00(not include) will be linked a batch tag number: CM_BT202112160001
All the WIP go through the CM-MOE step from 2021/12/16 04:00(include)--- 2021/12/16 08:00(not include) will be linked a batch tag number: CM_BT202112160002
All the WIP go through the CM-MOE step from 2021/12/16 08:00(include)--- 2021/12/16 12:00(not include) will be linked a batch tag number: CM_BT202112160003
All the WIP go through the CM-MOE stepfrom 2021/12/16 12:00(include)--- 2021/12/16 14:00(not include) will be linked nothing.
All the WIP go through the CM-MOE step from 2021/12/16 14:00(include) --- 2021/12/16 18:00(not include) will be linked a batch tag number: CM_BT202112160004
All the WIP go through the CM-MOE step from 2021/12/16 18:00(include) --- 2021/12/16 00:00(not include) will be linked a batch tag number: CM_BT202112160005If the WIP went through the CM-MOE multiple times, the batch tag number will be updated by the last time value(if any).
For Batch Entry Mode, system will generate batch tag number for each time range of one day(24 hours) at a time once user click save button as below. The reason to do like this is to avoid generate different batch tag number for same time range in fast scan scenario.
![image2022-3-22_13-26-25.png](/.attachments/110919967.png)




#### Material Consumption


When
"
Material quantity Consumption"
is turned on in [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)/ [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)screen, there will be a 'Material In Use' icon that user is able to view the remaining quantity available to be used for all the material that have been setup at part allocation. System will display the following information:
- Setup Sheet

- Material (all materials setup for the resource at part allocation)

- GRN

- Remaining Quantity

- Deviation Number
If "Enforce assembly selection at station" (
[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)screen) is turned on, user is able to view the “Material In Use” icon when they first access the screen for batch/non-batch mode.![image2022-3-22_13-26-25.png](/.attachments/34087928.png)


![image2022-3-22_13-26-25.png](/.attachments/34087929.png)


![image2022-3-22_13-26-25.png](/.attachments/34087930.png)



If "Enforce assembly selection at station" is NOT turned on, user will only be able to view the “Material In Use” icon after the WIP has started for non-batch mode.
![image2022-3-22_13-26-25.png](/.attachments/34087931.png)




GRN quantity will be deducted upon WIP completion. 
If the GRN quantity is not sufficient to be used by the WIP, system will return a toastr message and will not allow the WIP to start:![image2022-3-22_13-26-25.png](/.attachments/32997520.png)



If a CRD has material consumed at other route step before, material is not consumed again.

When WIP returns to the same route step but with a different setup sheet, only material at additional CRD is consumed.

Sample scenario:
WIP: SM0005
1. Route Step: Manual Inspection, Setup Sheet: 3132, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441114, CRD: 1247
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357473.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-36-22.png?version=1&modificationDate=1538447783540&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357474.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-36-35.png?version=1&modificationDate=1538447796547&api=v2" /></span></p></div></td></tr></tbody></table>


2. Route Step: Manual Operation, Setup Sheet: 3112, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441115, CRD: 1234
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357475.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-38-9.png?version=1&modificationDate=1538447890190&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357476.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-38-22.png?version=1&modificationDate=1538447902690&api=v2" /></span></p></div></td></tr></tbody></table>


3. Route Step: Manual Operation, Setup Sheet: 3133, Part Number: SM-REP-SERIALIZED, GRN: 1112223334441115, CRD: 124; Part Number: SM-LOT-SUB-MAT, GRN: 1234512345123459, CRD: 6
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Before start</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357477.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-39-31.png?version=1&modificationDate=1538447972040&api=v2" /></span></p></div></td></tr><tr><th class="confluenceTh">After complete</th><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="824" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357478.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918367/image2018-10-2-10-39-41.png?version=1&modificationDate=1538447981817&api=v2" /></span></p></div></td></tr></tbody></table>




#### Assign UPD Value


System allow link UPD for WIP at MOE station. System will assign UPDs for WIP at MOE station when:

- a: UPD type is 'Generic'.
![image2020-10-23_15-48-47.png](/.attachments/81199738.png)



- b: And current material has configured to link some UPDs at current MOE route step and it's Active status.

![image2020-12-17_20-58-24.png](/.attachments/84705417.png)



There are three Assignment Types in UPD maintenance screen, as below:
1: UserAssigned
When Batch Entry Mode = off at MOE route step
After scan WIP SN system will show enough text boxes to collect UPD value. User can only click Complete button when all of the UPD have been collected and all of the UPD are valid.
Notes: It's not support panel case when assignment type is UserAssigned.
![image2020-10-23_15-56-2.png](/.attachments/81199741.png)


When Batch Entry Mode = on at MOE route step
After scan WIP SN system will show enough text boxes to collect UPD value. System will automated complete WIP when all of the UPD have been collected and all of the UPD are valid.
Notes: It's not support panel case when assignment type is UserAssigned.
![image2020-10-23_16-1-45.png](/.attachments/81199742.png)


2: SystemGenerated
System will automated generate enough UPD values which are matching with defined NextNumber in UPD maintenance screen for WIP once the WIP complete at current MOE route step.
Notes: in 'SystemGenerated' case, system is able to support panel case. system will automated generate enough UPD values for each of WIP in panel once the panel completed at current MOE route step.
3: AutoSelectFromList



#### Start WIP/Panel by UPD


System allow to start WIP by UPD when:
a: WIP has linked UPD.
b: UPD is used for looking up parent WIP.
Sample scenario:
WIPs(CM_SUBWIP_202011120021, CM_SUBWIP_202011120022) have linked an UPD used for looking up parent WIP.  
![image2020-11-12_13-20-3.png](/.attachments/82903215.png)


System allow to scan UPD value at MOE station to start WIP. 
In Single Entry Mode, system will automated look up parent WIP to start it and display UPD info under Material.
![image2020-11-12_13-24-22.png](/.attachments/82903216.png)


In Batch Entry Mode, system will automated complete WIP after scan UPD.

In panel case, system allow to start panel by UPD as well.
Panel(CM_Panel_202011120001) have linked 4 WIPs, and each of WIP has linked 1 UPD used for looking up parent WIP. 
![image2020-11-12_13-27-51.png](/.attachments/82903217.png)


In Single Mode, user can scan any of UPD of WIP in panel to start panel.
![image2020-11-12_13-29-25.png](/.attachments/82903218.png)


after loaded panel, user can scan any of UPD to start a WIP, and then system will display the UPD info under Material.
![image2020-11-12_13-31-46.png](/.attachments/82903219.png)


In Batch Entry Mode, after scan any of UPD system will automated look up Panel(CM_Panel_202011120002) and complete all of 4 WIPs in panel at a time. 


#### Attachments

[MOE batch pass.jpg](/.attachments/32997517.jpg)
[image2018-8-15_14-56-11.png](/.attachments/32997519.png)
[image2018-8-15_16-46-24.png](/.attachments/32997520.png)
[image2018-8-15_16-50-27.png](/.attachments/32997521.png)
[image2018-8-15_16-51-29.png](/.attachments/32997522.png)
[image2018-8-23_10-41-29.png](/.attachments/34078725.png)
[image2018-8-23_10-42-9.png](/.attachments/34078726.png)
[image2018-8-23_10-43-21.png](/.attachments/34078727.png)
[image2018-9-3_14-27-55.png](/.attachments/34087928.png)
[image2018-9-3_14-29-27.png](/.attachments/34087929.png)
[image2018-9-3_14-30-16.png](/.attachments/34087930.png)
[image2018-9-3_14-32-20.png](/.attachments/34087931.png)
[image2018-10-2_10-17-6.png](/.attachments/35357466.png)
[image2018-10-2_10-17-18.png](/.attachments/35357467.png)
[image2018-10-2_10-19-6.png](/.attachments/35357468.png)
[image2018-10-2_10-19-15.png](/.attachments/35357469.png)
[image2018-10-2_10-20-39.png](/.attachments/35357470.png)
[image2018-10-2_10-20-49.png](/.attachments/35357471.png)
[image2018-10-2_10-36-22.png](/.attachments/35357473.png)
[image2018-10-2_10-36-35.png](/.attachments/35357474.png)
[image2018-10-2_10-38-9.png](/.attachments/35357475.png)
[image2018-10-2_10-38-22.png](/.attachments/35357476.png)
[image2018-10-2_10-39-31.png](/.attachments/35357477.png)
[image2018-10-2_10-39-41.png](/.attachments/35357478.png)
[image2019-6-7_10-27-29.png](/.attachments/50954585.png)
[image2019-6-7_10-28-55.png](/.attachments/50954586.png)
[image2019-6-7_10-49-26.png](/.attachments/50954587.png)
[image2019-6-7_11-9-43.png](/.attachments/50954589.png)
[image2019-6-7_12-25-59.png](/.attachments/50954590.png)
[image2019-6-7_12-26-13.png](/.attachments/50954591.png)
[image2019-6-7_12-26-21.png](/.attachments/50954592.png)
[image2020-10-23_15-48-47.png](/.attachments/81199738.png)
[image2020-10-23_15-50-0.png](/.attachments/81199739.png)
[image2020-10-23_15-50-41.png](/.attachments/81199740.png)
[image2020-10-23_15-56-2.png](/.attachments/81199741.png)
[image2020-10-23_16-1-45.png](/.attachments/81199742.png)
[image2020-11-12_13-19-12.png](/.attachments/82903214.png)
[image2020-11-12_13-20-3.png](/.attachments/82903215.png)
[image2020-11-12_13-24-22.png](/.attachments/82903216.png)
[image2020-11-12_13-27-51.png](/.attachments/82903217.png)
[image2020-11-12_13-29-25.png](/.attachments/82903218.png)
[image2020-11-12_13-31-46.png](/.attachments/82903219.png)
[image2020-12-17_20-58-24.png](/.attachments/84705417.png)
[image2022-2-7_14-7-24.png](/.attachments/106464789.png)
[image2022-2-7_14-8-16.png](/.attachments/106464790.png)
[image2022-2-7_14-12-18.png](/.attachments/106464791.png)
[image2022-3-22_13-26-25.png](/.attachments/110919967.png)
