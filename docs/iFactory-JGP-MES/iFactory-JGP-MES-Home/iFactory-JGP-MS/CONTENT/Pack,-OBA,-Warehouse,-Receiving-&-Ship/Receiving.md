# Introduction

The Receiving station is used to received back the WIP which keep in a box from warehouse. The received WIP is basically performing unpack WIP activity from the box so that the unpack WIP will be ready for

- going back to production or

- cosmetic check and sent back to repack.
If send to production, then upon received successful the WIP status should change to InProcess. Otherwise the WIP status should remain unchanged. This can be done by configure on “Receive Complete Unit as InProcess” flag in Route Step setting.
iFactory also provides 3 type of receiving: Full Receiving, Partial Receiving and Partial Receiving Without Container. 

- Full Receiving will immediately receive all WIPs from the scan box, if it passed all the pre-start validation.

- Partial Receiving without container only require to scan WIP serial to unpack a WIP from a box. No movement on the remaining WIP and unpacked box.

- Partial Receiving required to scan each WIP serial number after box serial number scanned. Additional checking to ensure the scan WIP is unpack from correct box. Therefore, it allows to receiving partial of the box when the WIPs is not fully scan to unpack. The remaining WIP in the box will in queue at current receiving station, previous packout station and warehouse station, so that the operator has option either

- re-scan for receive at current receiving station or

- go back to packout station to fill up the available box capacity or

- go back to warehouse station.
As per current, this feature only applicable to repetitive route and in box type (not support overpack).
The Receiving station is able to restrict which container can be started at the receiving station by configuring route step type at container type maintenance.
The Receiving station is able to perform rework action if it’s Route Step Type is configured with Allow Rework as ON. Currently only support for Full Receiving.
The Receiving station is able for panel receiving (Repetitive). User is require to scan the WIP (not panel), if the WIP is belong to a panel, all WIPs within this panel will be received accordingly.

How to get there?
1. Stations



2. Select Resource


3. Select Route & Route Step


4. Click Receiving icon


### Permission


1) Can Access API Wrapper - Can Access WIP controller in API Wrapper 

2) Can Access NG - Allow Generate Document 
3) Can Access NG - Can Access From External Client Gateway 
4) Can Access NG - Can Use Receiving Station 
5) Material Configuration - Assembly Configuration - Can Access Assembly Configuration 
6) Packout - WIP Packout Station - Can Unpack (Including the iFactory API | PerformFullReceiving)


#### Screen Activity


Receiving station enables user to perform the following activity:
a)      Full Receiving

- Open container; Start and complete activities for all the WIPs in the Box (unpacked all WIP); Close container
b)      Partial Receiving

- Open the container.

- Abort activities for the scan WIPs in the Box (provided not yet unpacked any WIP)

- Start and complete activities for the scan WIP (unpacked WIP)

- Close the container.
c)      Partial Receiving Without Container

- Open the container; Start and complete activities for scan WIP only; Close container.


#### Precondition



The following data needs to be configured before a user is able to move the container (Box)

- User Group with Receiving permission for user to use.

- WIP Packout or box in Warehouse. The WIP(s) must be packed into a Box container and the Box must be closed.

- A Route Step Type for “Receiving” station type and configure “Receive Complete Unit as InProcess” flag as per needed.

- A Route Step Type for “Receiving” station type and configure “Partial Receiving” and “Allow To Receive Without Container” flag if allow partial receiving and partial receiving without container scan feature.


#### Screen Dependency



N/A



#### Process


**Full Receiving** 
![](/.attachments/36966478.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Partial Receiving</span></td><td colspan="1" class="confluenceTd"><span>Set to OFF. Means full receiving.</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span>Container</span></p></td><td colspan="1" class="confluenceTd"><p>To allow operator to scan Box serial number only. This will trigger to check pre-start validation on all the WIPs inside the Box. If pass validation, then container will open, all the WIPs will be start and complete in this warehouse station (unpack WIP) and then closed the container. Otherwise error will prompt to inform user and transaction should occur.</p><p>These validation includes:</p><ul><li>Container is closed</li><li>Container is not on hold</li><li>Container is not scrap</li><li>WIP In queue at this receiving route step</li><li>WIP is not on hold</li></ul><p><span>Upon completion successful, all WIPs unpack from the box shall in-queue at the next route step as per configured, history event will capture in container and all WIPs as well.</span></p><p>Unpacked WIP with origin Completed status will be</p><ul><li>remain unchanged (if “Receive Complete Unit as InProcess” flag = OFF) or</li><li>change from Completed to InProcess (if “Receive Complete Unit as InProcess” flag = ON)</li></ul><p><span>Note: NG WIP with InProcess status should not impact by this flag.<br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Reset Counter</span></td><td colspan="1" class="confluenceTd"><p><span>To reset Container Count value and WIP Count value to 0</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Container Count</span></td><td colspan="1" class="confluenceTd"><span><span>Default as 0 when initial load the screen. Increase 1 for every container scan to transacted successfully. Switching on partial receiving will not reset this value.</span><br /></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>WIP Count</span></td><td colspan="1" class="confluenceTd"><span><span>Default as 0 when initial load the screen. Increase the value base on the number of WIPs in the box which transacted successfully. Switching on partial receiving will not reset this value.</span><br /></span></td></tr></tbody></table>





- **Full Receiving on "Shipped" status Container**

![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/4c9802f0-0799-4521-8e23-f98592ec7cad?fileName=image.png)


**When scanning the container with the status "Shipped", the receiving station will prompt the toaster message "The container 'OLCLC200500001' was shipped and can't be used in Receiving"** 
![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/c457fc5a-483a-485d-b9bc-1e538148d3b3?fileName=image.png)


**Partial Receiving** 
![](/.attachments/35357499.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Partial Receiving</td><td colspan="1" class="confluenceTd"><span>Set to ON. Means partial receiving. Not allow to switch once the container is open and ready for WIP to receive.</span></td></tr><tr><td colspan="1" class="confluenceTd"><p>Container</p></td><td colspan="1" class="confluenceTd"><p>To allow operator scan box serial number only. This will trigger to validate on the scanned Box and pre-start validation on 1<sup>st</sup> WIP in the Box. If validation failed, an error will prompt to inform user and no transaction should occur.</p><p>These validation includes:</p><ul><li>Container is closed</li><li>Container is not on hold</li><li>Container is not scrap</li><li>1<sup>st</sup> WIP in the box is In queue at this receiving route step (Performance enhancement story VSTS 189615)</li></ul><p>Upon pass the validation, the scanned container will open and history event will capture in container. Container field will disable once open and ready for WIP to receive.</p><p>The “X” button place beside Container is for abort action. Enable only when the container is open and no WIP unpacked from the container yet. Abort action is not allowing once the 1<sup>st</sup> WIP scan to unpack successful. Upon transact, an abort activity will be captured.</p><p><br /></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>WIP</span></td><td colspan="1" class="confluenceTd"><p>To allow operator scan WIP serial number only. Enable when the container is successfully open. By scanning the WIP serial, system will validate the scan WIP is in queue at current route step. If validation failed, an error will prompt to inform user and no transaction should occur.</p><p>Upon pass the validation, the scanned WIPs will unpack from the box and in-queue at the next route step as per configured. If the scan WIP is in panel, all WIP within this panel will processed. History event will capture in container and scanned WIPs as well. <span>Container will auto close when last WIP scanned successfully to unpack from the box.</span></p><p>Unpacked WIP with origin Completed status will be</p><ul><li>remain unchanged (if “Receive Complete Unit as InProcess” flag = OFF) or</li><li>change from Completed to InProcess (if “Receive Complete Unit as InProcess” flag = ON)</li></ul><p>Note: NG WIP with InProcess status should not impact by this flag.</p><p><br /></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Close Container</span></td><td colspan="1" class="confluenceTd"><p>To allow operator click to close container for partial receiving. Enable when the container is open with at least 1 WIP successfully received. By click on close container button, the remain WIP in the container will in-queue at previous packout and warehouse route step. So that the operator has option either:</p><ul><li>the container can rescan at current receiving station to receive remaining WIP, or</li><li>container can scan at packout station to fill up the capacity, or</li><li><span>container can scan to return back to warehouse.</span></li></ul><p><span>(Note: If the container have WIP cannot be receive due to not in queue at current route step, WIP in queue will be auto correct as per mention above after container closed.)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Reset Counter</td><td colspan="1" class="confluenceTd"><p>To reset Container Count value and WIP Count value to 0</p></td></tr><tr><td colspan="1" class="confluenceTd">Container Count</td><td colspan="1" class="confluenceTd"><p>Default as 0 when initial load the screen. Increase 1 when the 1<sup>st</sup> WIP scan from the container transacted successfully. Switching on partial receiving will not reset this value.</p><p><br /></p>(Note: Once the container closed and rescan again, it will treated as next container.)</td></tr><tr><td colspan="1" class="confluenceTd">WIP Count</td><td colspan="1" class="confluenceTd"><p><span>Default as 0 when initial load the screen. Increase 1 each time when a WIP from the container transacted successfully. Switching on partial receiving will not reset this value.</span></p><p><span>If the scan WIP is in panel, all WIP within this panel will be process and therefore the WIP count will also be increase as per the received number of WIP. (e.g. a panel with 4 WIPs after process will increase 4)</span></p></td></tr></tbody></table>





- **Partial Receiving on "Shipped" status Container**

![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b31a5646-eb25-4bee-a3cc-e27690e278d9?fileName=image.png)


**When scanning the container with the status "Shipped", the receiving station will prompt the toaster message "Container 'OLCLC200500001' must be closed as it fails the validation as the container status is "Shipped".** 
![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/9ef114ac-3130-48ad-abe5-5424a1789a97?fileName=image.png)


**Partial Receiving without Container Scan** 
![image2019-7-8_16-59-18.png](/.attachments/51872126.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Partial Receiving</span></td><td colspan="1" class="confluenceTd">Set to ON. Means partial receiving.</td></tr><tr><td colspan="1" class="confluenceTd">Scan WIP</td><td colspan="1" class="confluenceTd"><p>By default, it set to OFF. Only shown this toggle if the Route Step Type's “Allow To Receive Without Container” flag configured as ON.</p><ul><li>When Scan WIP is set to OFF, user has option to scan container/WIP serial. Scan WIP will auto set to ON when the scan serial is belong to WIP.</li><li>When Scan WIP is set to ON, system will expected fast scan on WIP serial number. User require manually switch to OFF in order can scan back container serial.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p>Container or WIP</p></td><td colspan="1" class="confluenceTd"><p>To allow operator to scan Box serial number or WIP serial base on Scan WIP setting. If scan Box serial number then the behavior will follow as per existing partial receiving.</p><p>If scan WIP serial number, This will trigger to check pre-start validation as per below:</p><ul><li>Scan WIP must be inside a container</li><li>Container is closed (Note: Container status is shipped should use RMA in order to return for production)</li><li>WIP is not on hold</li></ul><p>Upon completion successful, the scan WIP unpack from the box shall in-queue at the next route step as per configured, history event will capture in container and this WIPs as well. If the scan WIP is in panel, all WIP within this panel will processed.</p><p>No movement on the box, the current route step should be remain unchanged. (e.g. if it is at warehouse, then it stay at warehouse), the balance of the WIPs inside this box as well shall not have any movement.</p><p>Unpacked WIP with origin Completed status will be</p><ul><li>remain unchanged (if “Receive Complete WIP as InProcess” flag = OFF) or</li><li>change from Completed to InProcess (if “Receive Complete WIP as InProcess” flag = ON)</li></ul><p>Note: NG WIP with InProcess status should not impact by this flag.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Reset Counter</span></td><td colspan="1" class="confluenceTd"><p><span>To reset Container Count value and WIP Count value to 0</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Container Count</span></td><td colspan="1" class="confluenceTd"><span>When Scan WIP is ON, container count will not increase upon transacted successful.<br /></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>WIP Count</span></td><td colspan="1" class="confluenceTd"><p><span>Default as 0 when initial load the screen. Increase 1 when a WIPs transacted successfully. Switching on partial receiving will not reset this value.<br /></span></p><p><span>If the scan WIP is in panel, all WIP within this panel will be process and therefore the WIP count will also be increase as per the received number of WIP. (e.g. a panel with 4 WIPs after process will increase 4)</span></p></td></tr></tbody></table>

**By default, it set to OFF. Only shown this toggle if the Route Step Type’s “Allow To Receive Without Container” flag configured as ON.** 

- When Scan WIP is set to OFF, user has option to scan container/WIP serial. Scan WIP will auto set to ON when the scan serial is belong to WIP.

- When Scan WIP is set to ON, system will expected fast scan on WIP serial number. User require manually switch to OFF in order can scan back container serial.
Container or WIP
To allow operator to scan Box serial number or WIP serial base on Scan WIP setting. If scan Box serial number then the behavior will follow as per existing partial receiving.
If scan WIP serial number, This will trigger to check pre-start validation as per below:

- Scan WIP must be inside a container

- Container is closed (Note: Container status is shipped should use RMA in order to return for production)

- WIP is not on hold
Upon completion successful, the scan WIP unpack from the box shall in-queue at the next route step as per configured, history event will capture in container and this WIPs as well. If the scan WIP is in panel, all WIP within this panel will processed.
No movement on the box, the current route step should be remain unchanged. (e.g. if it is at warehouse, then it stay at warehouse), the balance of the WIPs inside this box as well shall not have any movement.
Unpacked WIP with origin Completed status will be

- remain unchanged (if “Receive Complete WIP as InProcess” flag = OFF) or

- change from Completed to InProcess (if “Receive Complete WIP as InProcess” flag = ON)
Note: NG WIP with InProcess status should not impact by this flag.
Reset CounterTo reset Container Count value and WIP Count value to 0
Container CountWhen Scan WIP is ON, container count will not increase upon transacted successful.
WIP CountDefault as 0 when initial load the screen. Increase 1 when a WIPs transacted successfully. Switching on partial receiving will not reset this value.

If the scan WIP is in panel, all WIP within this panel will be process and therefore the WIP count will also be increase as per the received number of WIP. (e.g. a panel with 4 WIPs after process will increase 4)
Note: Certification validation for Receiving Station is implemented
**Partial Receiving without Container Scan on "Shipped" status Container** 
![image2019-7-8_16-59-18.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/0a6b09d2-ddc7-44b2-aa4d-50b2db687028?fileName=image.png)


When the user scans the WIP with status "Shipped", the system will prompt the toaster message "The WIP 'OLCTOP200500001' was shipped and can't be used in Receiving".
![image2019-7-8_16-59-18.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/2e6bf182-aa1f-4719-981f-fb584ed7a22e?fileName=image.png)



**Restrict Container Type at Receiving** 
If user wants to restrict only Completed or Incomplete container to be started at the specific Receiving station then user need to configure the route step type at container type maintenance.
Note: If user configured Receiving Route step type then Packout route step type also need to be configured else the container wouldn't be shown at Packout station for selection.
![image2019-7-8_16-59-18.png](/.attachments/38273541.png)



It is only allowed the container with the configured route step type that matched with the receiving station to be started at the station. The checking is valid for both Full Receiving and Partial Receiving.
![image2019-7-8_16-59-18.png](/.attachments/38273544.png)


![image2019-7-8_16-59-18.png](/.attachments/39649392.png)



![image2019-7-8_16-59-18.png](/.attachments/38273545.png)



**Document printing and call external API at Receiving** 
Receiving station also enhance to support label printing and call external API thru document, the following data needs to be configured:

- Create Document for label printing or call external api.

- Document Assignment when to trigger printing or call external api

- Assign Receiving resource at designated printer at Printer Maintenance screen (External API will not do printing).
Base on above configuration, an external api can be called during a container is scan to open (if the trigger is on container open) and a label can be printed during container closed (if the trigger is on container close) with a condition that WIP quantity in a container must " 0. Close empty container will not print label.
Below image show that when a container successfully open. External API successful post to the called api as per show below. The content is provided base on the configuration document field accordingly.
![image2019-7-8_16-59-18.png](/.attachments/42106918.png)


Below image show that label printing trigger when container closed.
![image2019-7-8_16-59-18.png](/.attachments/42106913.png)



**Enable the Rework on open defect upon receiving (currently only support Full Receiving):** 
Configuration: Receiving route step type must configure “Allow Rework” to ON.
During Full Receiving runtime, an “Add Rework” dialog will be prompt to allow user select which Rework Category (Mandatory, only available for Rework and False Call) and provide Detail (optional) info. Upon commit, all the WIPs’ with open defects in this container will be rework base on this rework action and change to close. Closed defect will not affect by this function. History will only show receiving route step but in operation view will captured which open defect has been rework. As result, after completed full receiving, no more open defect retain in the WIPs that unpack from the container.
![image2019-9-20_15-56-6.png](/.attachments/57639149.png)


![image2019-9-20_15-56-24.png](/.attachments/57639150.png)


**Enable the Assembly Conversion:** 
To perform the Assembly Conversion, container must meet the following criteria:

- Container Type should be with either "Is restricted to same Assembly Revision" or "Is Restricted to Same Alias Assembly" packout Rules

- Base Assembly of the WIP packed in the container should be configured to associate with at lease one Alias Assembly at Receiving Station (Alias Maintenance Screen)
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn On, Station Login only show the list of Base Assembly. System will verify the Base Assembly of the first WIP packed in the container even though WIP has been converted to an Alias.
If "Enforce Assembly selection at Station" (Customer Maintenance) is turn Off, System will refer to the Base Assembly of the first WIP in container scanned.
If the above criteria are met, user will be prompted with Assembly Conversion selection according to the first WIP's base Assembly in the container and list is according to the Alias Assembly configured. 
Expired and inactive Assembly will not be showed on the selection.When user using Full Receiving and manually click on assembly conversion button, system will prompt assembly conversion popup dialog. Once completed the entry the cursor should focus at Scan WIP field.

![image2019-8-14_9-47-42.png](/.attachments/55410849.png)


Expired and inactive Assembly will not be showed on the selection.
![image2019-8-14_13-53-52.png](/.attachments/55410852.png)


Full / Partial Receiving:

- Assembly Conversion selected value will be retained for the sub-sequence container.

- If ALIAS Assembly selected, the WIP in the containers will be sharing the same ALIAS regardless of the WIP with or without ALIAS.

- The sub-sequence containers’ WIP will be sharing the same ALIAS regardless of the WIP with or without ALIAS except there is a change of ALIAS assembly.

- User is able to change the Alias Assembly with "Assembly Conversion" button.

- If "No Conversion" is selected, WIP in container with or without ALIAS will be remained unchanged.

- If the container is consisted of different base Assembly then system to prompt the Assembly Conversion selection again.

- If the container is consisted same Assembly then system will allow to continue from the previous conversion selected
Alias Assembly is able to print by the document configured and assignment. 
If user opts for document printing after assembly Progression, user has to assign the Document as per progressed assembly against Receiving station. Also system has feasibility to print both Original and Current assembly after progression.


#### Full Receiving For Pallet


Full receiving for pallet perform unpack all boxes from the pallet once, WIPs still packed in the box without status changing


#### **Pre-Condition:** 



- The toggle "Allow Pallet Receiving" is turn on

![image2021-5-28_10-24-46.png](/.attachments/92734028.png)


When the toggle is turn on and log in
to the receiving station, will show three counters as default![image2021-5-28_14-31-15.png](/.attachments/92734056.png)


For pallet "OLCUC212200002", two boxes are packed into it
![image2021-5-28_14-58-56.png](/.attachments/92734057.png)


After scaning the pallet at receiving station, all box unpack from it and related info record in history
![image2021-5-28_15-2-44.png](/.attachments/92734058.png)


![image2021-5-28_15-3-18.png](/.attachments/92734059.png)


![image2021-5-28_15-3-59.png](/.attachments/92734060.png)


For the box, still packed the WIP
![image2021-5-28_15-6-51.png](/.attachments/92734061.png)


It should be noted that considering performance, for pallet receiving uses backend job processing mechanism, until the processing is complete, the status of pallet is “InProcess”, and no other operations against the pallet can take place
The status is updated to “Closed” when the processing is complete, and other information is updated accordingly
![image2021-5-28_15-10-11.png](/.attachments/92734062.png)






#### Attachments

[image2018-10-1_13-51-45.png](/.attachments/35357481.png)
[image2016-7-5 11:44:40.png](/.attachments/35357482.png)
[image2016-7-5 11:42:59.png](/.attachments/35357483.png)
[image2016-7-4 14:48:33.png](/.attachments/35357484.png)
[image2016-7-4 14:38:47.png](/.attachments/35357485.png)
[image2016-7-4 14:37:44.png](/.attachments/35357486.png)
[image2016-7-4 14:19:16.png](/.attachments/35357487.png)
[image2016-7-4 14:11:47.png](/.attachments/35357488.png)
[image2016-7-4 14:9:23.png](/.attachments/35357489.png)
[image2016-7-4 14:2:1.png](/.attachments/35357490.png)
[image2016-7-4 13:56:21.png](/.attachments/35357491.png)
[image2016-7-4 13:47:4.png](/.attachments/35357492.png)
[image2016-7-4 13:45:23.png](/.attachments/35357493.png)
[image2016-7-4 13:44:27.png](/.attachments/35357494.png)
[image2016-7-4 11:16:7.png](/.attachments/35357495.png)
[image2018-10-2_11-8-1.png](/.attachments/35357496.png)
[image2018-10-2_11-13-14.png](/.attachments/35357497.png)
[image2018-10-2_11-14-29.png](/.attachments/35357498.png)
[image2018-10-2_11-15-32.png](/.attachments/35357499.png)
[image2018-11-8_13-59-46.png](/.attachments/36966478.png)
[image2018-12-4_10-28-28.png](/.attachments/38273541.png)
[image2018-12-4_10-43-41.png](/.attachments/38273544.png)
[image2018-12-4_10-47-21.png](/.attachments/38273545.png)
[image2018-12-13_15-34-45.png](/.attachments/39649392.png)
[image2019-1-28_15-47-57.png](/.attachments/42106912.png)
[image2019-1-28_15-48-46.png](/.attachments/42106913.png)
[image2019-1-28_15-50-25.png](/.attachments/42106918.png)
[image2019-7-8_16-59-18.png](/.attachments/51872126.png)
[image2019-8-14_9-46-29.png](/.attachments/55410847.png)
[image2019-8-14_9-46-55.png](/.attachments/55410848.png)
[image2019-8-14_9-47-42.png](/.attachments/55410849.png)
[image2019-8-14_13-52-43.png](/.attachments/55410851.png)
[image2019-8-14_13-53-52.png](/.attachments/55410852.png)
[image2019-9-20_15-56-6.png](/.attachments/57639149.png)
[image2019-9-20_15-56-24.png](/.attachments/57639150.png)
[image2021-5-28_10-24-46.png](/.attachments/92734028.png)
[image2021-5-28_14-31-15.png](/.attachments/92734056.png)
[image2021-5-28_14-58-56.png](/.attachments/92734057.png)
[image2021-5-28_15-2-44.png](/.attachments/92734058.png)
[image2021-5-28_15-3-18.png](/.attachments/92734059.png)
[image2021-5-28_15-3-59.png](/.attachments/92734060.png)
[image2021-5-28_15-6-51.png](/.attachments/92734061.png)
[image2021-5-28_15-10-11.png](/.attachments/92734062.png)
