# Introduction

Warehouse is used to store the box type container that might later be use to ship (e.g. Complete WIP container type) or receiving back to production for processing (e.g. InProcess WIP with defects Container type). The Warehouse station is use to perform a simple start and complete activity for the WIP(s) by a container at a Route Step. All the WIPs in the BOX will be validate its pre-start validation before perform WIP movement as a whole.
As per current, this feature only applicable to repetitive route and in box type (not support overpack).
The Warehouse station is able to restrict which container can be started at the warehouse station by configuring route step type at container type maintenance.

How to get there?
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Warehouse icon


### Permission


1) Can Access NG - Can Use Warehouse Operation Entry 

2) Material Configuration - Assembly Configuration - Can Access Assembly Configuration3) Can Access NG → Can Reprocess Containers
Using iFactory API | PerformWarehouseOperationEntry 

- Using the same permission listed above and plus below 1) Can Access API Wrapper - Can Access WIP controller in API Wrapper 

2) Can Access NG - Can Access From External Client Gateway

#### Screen Activity


Warehouse station enables user to perform the following activity:

- Start and complete activities for all the WIPs in the Box



#### Precondition



The following data needs to be configured before a user is able to move the container (Box)

- User Group with warehouse permission for user to use.

- WIP Packout. The WIP(s) must be packed into a Box container and the Box must be closed.

- A Route Step type configured with “Warehouse Operation Entry” station type.





#### Screen Dependency



N/A



#### Process


![](/.attachments/35357270.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Container</p></td><td colspan="1" class="confluenceTd"><p>To allow operator to scan Box serial number or the WIP that belong to the container. This will trigger to check pre-start validation on all the WIPs inside the Box. If pass validation, then all the WIPs will be start and complete in this warehouse station. Otherwise error will prompt to inform user and no WIP will be transacted.</p><p>These validation includes:</p><ul><li>Container is closed</li><li>Container is not on hold</li><li>Container is not scrap</li><li>All the WIP packed in this Container must pass its configured pre-start rule</li><li>Container's WIP must not on hold</li><li>WIP In queue at this warehouse route step</li></ul><p>Upon completion successful, all WIPs packed in the box shall in-queue at the next route step as per configured (if any on route). History event will captured in container and all WIPs as well.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Reset Counter</span></td><td colspan="1" class="confluenceTd"><p><span>To reset Container Count value and WIP Count value to 0</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Container Count</span></td><td colspan="1" class="confluenceTd"><span>Default as 0 when initial load the screen. Increase 1 for every container scan to transacted successfully.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>WIP Count</span></td><td colspan="1" class="confluenceTd"><span>Default as 0 when initial load the screen. Increase the value base on the number of WIPs in the box which transacted successfully.</span></td></tr></tbody></table>


- **Container’s WIP must not on hold**


- WIP In queue at this warehouse route step
Upon completion successful, all WIPs packed in the box shall in-queue at the next route step as per configured (if any on route). History event will captured in container and all WIPs as well.
Reset CounterTo reset Container Count value and WIP Count value to 0
Container CountDefault as 0 when initial load the screen. Increase 1 for every container scan to transacted successfully.WIP CountDefault as 0 when initial load the screen. Increase the value base on the number of WIPs in the box which transacted successfully.Note: Certification validation on warehouse will be implement in future release.
**Restrict Container Type at Warehouse** 
If user wants to restrict only Completed or Incomplete container to be started at the specific Warehouse station then user need to configure the route step type at container type maintenance.
Note : If user configured Warehouse Route step type then Packout route step type also need to be configured else the container wouldn't be shown at Packout station for selection.
![](/.attachments/38273549.png)



It is only allowed the container with the configured route step type that matched with the receiving station to be started at the station.
![](/.attachments/38273551.png)


![](/.attachments/38273552.png)



**Enable the Assembly Conversion:** 
To perform the Assembly Conversion, container must meet the following criteria:

- Container type should be with either "Is restricted to same Assembly Revision" or "Is Restricted to Same Alias Assembly" packout Rules

- Base Assembly of the WIP packed in the container should be configured to associate with at lease one Alias Assembly at Warehouse Station (Alias Maintenance Screen)
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn On, Station Login only show the list of Base Assembly. System will verify the Base Assembly of the first WIP packed in the container even though WIP has been converted to an Alias.
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn Off, System will refer to the Base Assembly of the first WIP in container scanned.
If the above criteria are met, user will be prompted with Assembly Conversion selection according to the first WIP's base Assembly in the container and list is according to the Alias Assembly configured. Expired and inactive Assembly will not be showed on the selection.
When user using Warehouse and manually click on assembly conversion button, system will prompt assembly conversion popup dialog. Once completed the entry the cursor should focus at Scan WIP field.
![image2019-8-13_16-13-51.png](/.attachments/55410800.png)



- Assembly Conversion selected value will be retained for the sub-sequence container.


- If ALIAS Assembly selected, the WIP in the containers will be sharing the same ALIAS regardless of the WIP with or without ALIAS.

- The sub-sequence containers’ WIP will be sharing the same ALIAS regardless of the WIP with or without ALIAS except there is a change of ALIAS assembly.

- User is able to change the Assembly with "Assembly Conversion" button.

- If "No Conversion" is selected, WIP in container with or without ALIAS will be remained unchanged.

- If the container is consisted of different base Assembly then system to prompt the Assembly Conversion selection again.

- If the container is consisted same Assembly then system will allow to continue for the previous conversion.
Alias Assembly is able to print by the document configured and assignment
Note: 
If user opts for document printing after assembly Progression, user has to assign the Document as per progressed assembly against warehouse station. Also system has feasibility to print both Original and Current assembly after progression.


#### Process "Shipped" status Container


Below is the container 
OLCLC200100001 with status "Shipped" as screenshot below:![image2020-1-10_9-2-47.png](/.attachments/62423445.png)


Scan the container number 
OLCLC200100001 with status "Shipped" at Warehouse station, the system will prompt the error message "The container OLCLC200100001 was shipped and can't be used in Warehouse". After that, it should clear the scan container number field at WIP Warehouse station so that it can allow the user to scan the next container number.
![image2020-1-10_9-3-48.png](/.attachments/62423446.png)


![image2020-1-10_9-4-14.png](/.attachments/62423447.png)




#### Support Pallet


The feature enhanced to support Overpack, mean
Warehouse has the same ability for Pallet like existing Box behavior
For example, WIP "OLCTop212100063" enqueue at Warehouse step and Overpack into pallet "OLCUC212200001"
![image2021-5-26_9-47-45.png](/.attachments/92733867.png)


![image2021-5-26_9-48-29.png](/.attachments/92733868.png)


![image2021-5-26_9-49-43.png](/.attachments/92733869.png)


Scan the pallet “
OLCUC212200001
” at warehouse step, system prompt complete info and the counters increase accordingly![image2021-5-26_9-54-6.png](/.attachments/92733870.png)


It should be noted that considering performance, for pallet situation uses backend job processing mechanism, until the processing is complete, the status of pallet is “InProcess”, and no other operations against the pallet can take place
The status is updated to “Closed” when the processing is complete, and other information like WIP InQ 、History etc. are updated accordingly
![image2021-5-26_9-56-33.png](/.attachments/92733872.png)





#### Attachments

[image2016-7-4 11:16:7.png](/.attachments/35357256.png)
[image2016-7-4 13:44:27.png](/.attachments/35357257.png)
[image2016-7-4 13:45:23.png](/.attachments/35357258.png)
[image2016-7-4 13:47:4.png](/.attachments/35357259.png)
[image2016-7-4 13:56:21.png](/.attachments/35357260.png)
[image2016-7-4 14:2:1.png](/.attachments/35357261.png)
[image2016-7-4 14:9:23.png](/.attachments/35357262.png)
[image2016-7-4 14:11:47.png](/.attachments/35357263.png)
[image2016-7-4 14:19:16.png](/.attachments/35357264.png)
[image2016-7-4 14:37:44.png](/.attachments/35357265.png)
[image2016-7-4 14:38:47.png](/.attachments/35357266.png)
[image2016-7-4 14:48:33.png](/.attachments/35357267.png)
[image2016-7-5 11:42:59.png](/.attachments/35357268.png)
[image2016-7-5 11:44:40.png](/.attachments/35357269.png)
[image2018-10-1_13-51-45.png](/.attachments/35357270.png)
[image2018-12-4_10-52-23.png](/.attachments/38273549.png)
[image2018-12-4_10-59-7.png](/.attachments/38273550.png)
[image2018-12-4_11-0-49.png](/.attachments/38273551.png)
[image2018-12-4_11-4-4.png](/.attachments/38273552.png)
[image2019-8-13_16-13-51.png](/.attachments/55410800.png)
[image2020-1-10_9-2-47.png](/.attachments/62423445.png)
[image2020-1-10_9-3-48.png](/.attachments/62423446.png)
[image2020-1-10_9-4-14.png](/.attachments/62423447.png)
[image2021-5-26_9-32-0.png](/.attachments/92733866.png)
[image2021-5-26_9-47-45.png](/.attachments/92733867.png)
[image2021-5-26_9-48-29.png](/.attachments/92733868.png)
[image2021-5-26_9-49-43.png](/.attachments/92733869.png)
[image2021-5-26_9-54-6.png](/.attachments/92733870.png)
[image2021-5-26_9-56-8.png](/.attachments/92733871.png)
[image2021-5-26_9-56-33.png](/.attachments/92733872.png)
