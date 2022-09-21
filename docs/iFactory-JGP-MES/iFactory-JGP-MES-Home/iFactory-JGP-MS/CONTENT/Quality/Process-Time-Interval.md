# Introduction


This screen allows the configuration of a minimum time interval between two operations (referred to as "beginning step" and "end step") to be set-up, preventing a WIP from being started at the end step until the specified period of time has passed.
How to get there?

::: mermaid
graph LR
A("ROUTE")-->0("PROCESS TIME INTERVAL")

:::


### Screen Activity


The Process Time Interval screen enables user to perform the following activity:

- Add a process time interval rule

- Configure the Beginning step, end step, priority and interval (in seconds)

- Configure the rule to a material scope (default is applicable to all material).

- Apply a hold reason code (for later display to the user on error)

- Configure the "First Occurrence" setting - Note if set to on, then the
**first time** the WIP is "completed" (i.e. end time) at the beginning step, is used to calculate the interval, but if set to off, then the **most recent** end time recorded at the beginning step is used.
Pre Condition
The following data needs to be pre-configured (if used) before user configures the Process Time Interval

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Route-Step-Reporting-Name.md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)


#### Screen Dependency


No Direct dependency on other screens. 


#### Fields


<table style="margin-left: 30.0px;" class="confluenceTable"><tbody style="margin-left: 30.0px;"><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p> </p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;"><strong><strong>Section 1 - </strong>Configure Time Interval Checkpoint</strong></p></td></tr><tr style="margin-left: 30.0px;"><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Field</p></th><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Description</p></th></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Route</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows user to search and select the Route applicable route. Mandatory field.</p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Route Step</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Once route is selected, allows user to associate the appropriate route step - Note this is the End step i.e. The one that the WIP cannot start at until the configured time interval has passed. <span>Mandatory field.</span></p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Priority</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to prioritize the rules e.g. if there is a general rule and material specific rule. <span>Mandatory field.</span></p></td></tr><tr><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Rule Name</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">The unique name of the rule. <span>Mandatory field.</span></p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p> </p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;"><strong>Section 2 - Configure Rule tab</strong></p></td></tr><tr style="margin-left: 30.0px;"><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Field</p></th><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Description</p></th></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Begin Route Step</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;"><span>Once route is selected, allows user to associate the appropriate route step - Note this is the Beginning step i.e. The one from which the interval will calculate from. <span>Mandatory field.</span></span></p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Material</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to specifiy a material scope to the rule (default applies to all materials/WIPs). Note: Filtered to those materials which belong to the selected route. <span>Optional field.</span></p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">First Occurrence</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Toggle for first occurence, which if toggled on will take the time from when the WIP was FIRST completed at the configured beginning step as opposed to when it is off, when it will take the most recent time the WIP passed the beginning step (e.g. in case of re-scan). Default state of First occurence is On.</p></td></tr><tr><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Minimum Time Interval (Seconds)</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to enter an interval time in seconds (from 1 second to 1,500,000 seconds). <span>Mandatory field.</span></p></td></tr><tr><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Hold Reason Code</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to assign an optional hold reason code to the interval rule. Optional field.</p></td></tr></tbody></table>



#### **Configuration** 


The configuration screen for process time interval, containing the fields above, is shown below. The first mandatory field is the route selection (note the Route step remains uneditable until a valid route is selected).
![image2018-4-27 13:0:20.png](/.attachments/29919823.png)


Once a route is selected, the user can then select the applicable Route Step - Note that this is the End Step where the rule will be enforced i.e. when a WIP is attempting to start this step it will invoke a check on the configured process time interval.
![image2018-4-27 13:4:53.png](/.attachments/29919822.png)


Once the "End step" route is selected and the user fills in the remaining details in Section 1 (Priority and a unique rule name), the user can click the 
![image2018-4-27 13:7:45.png](/.attachments/29919821.png)


button to populate the rule in the table - Note more than 1 rule can be configured here for the same route, with a different begining or end step and/or All material/specific material scopes. Note: A specific material scope rule will take precedence over a "Defaulted by All materials" scope rule.
![image2018-4-27 13:11:39.png](/.attachments/29919820.png)


![image2018-4-27 13:13:2.png](/.attachments/29919819.png)


Once section 1 is complete and added to the table the user must select the configured rule header to apply the configuration in section 2 - As you can see above, section 2 is still greyed out although the rule header is added to the table, as it has not been selected, whereas below shows them active as the table row has been selected.
![image2018-4-27 13:22:40.png](/.attachments/29919818.png)


In section 2 the first mandatory field is the beginning step. There is no route selection here because the beginning step and end step for a process time interval must belong to the same route (which was selected in the header). The second mandatory field is the "Minimum Time Interval (Seconds)" field, in which the user must enter a time in seconds (e.g. if the time interval is 10 mins, user would enter a value of 600).
![image2018-4-27 13:48:50.png](/.attachments/29919817.png)


At this point the rule can be added with the default setting of on for "First occurrence", would be without a hold code and would apply to any material WIP passing through the affected steps. The user can select a Material scope, or can add 1 rule applying to all material and another for a specific material, but in this case we will choose a hold reason and apply to all material.
![image2018-4-27 13:57:3.png](/.attachments/29919815.png)


To add the rule, the user selects the 


button to populate and save the rule. The user will receive a toastr message to indicate successful addition.
![image2018-4-27 14:3:9.png](/.attachments/29919812.png)




#### Process impact


Once a rule has been configured (in this case for all materials with beginning step of 
SB_WIPASSYA and an end step of SB_WIP_MIEA, with a process time interval of 600 seconds and based on the first occurrence), the user is prevented from starting the WIP at route step SB_WIP_MIEA unless more than 600 seconds have passed since it completed route step SB_WIPASSYA.
![image2018-4-27 14:26:32.png](/.attachments/29919811.png)


As above the user is notified that the WIP is on hold and receives an error toastr informing them that the minimum time interval is not yet reached. If we check WIP view we can see that it has been placed on hold and the details are in the "Hold tab"
![image2018-4-27 14:35:36.png](/.attachments/29919809.png)


![image2018-4-27 14:29:45.png](/.attachments/29919810.png)


The configured process time interval must have passed before the unit can be started at the end step. 
![image2018-4-27 14:47:19.png](/.attachments/29919808.png)


If a previous attempt was made to start the WIP, it will be placed on hold as per above - This hold needs to be released before the WIP can be started. NOTE: The configured process time interval start time is then calculated from the 
**time the hold was released** - A subsequent attempt to start this at the end step puts the WIP back on hold unless the defined period of time has elapsed.There is also the "First occurrence" button, which can set to off (as opposed to on for the above examples) - In this case a rescan would also reset the caculation e.g.
Scan 1 10:00:00am at the beginning step, Time interval set to 10 mins (600 secs), if re-scanned at the beginning route step at 10:05:00am, then the WIP cannot be started until 10:15:01am.
Note - WIP can only be put on a Process Time Interval hold if it does not have any other hold types applied. 












#### Attachments

[image2018-4-27 14:47:19.png](/.attachments/29919808.png)
[image2018-4-27 14:35:36.png](/.attachments/29919809.png)
[image2018-4-27 14:29:45.png](/.attachments/29919810.png)
[image2018-4-27 14:26:32.png](/.attachments/29919811.png)
[image2018-4-27 14:3:9.png](/.attachments/29919812.png)
[image2018-4-27 14:1:37.png](/.attachments/29919813.png)
[image2018-4-27 13:58:56.png](/.attachments/29919814.png)
[image2018-4-27 13:57:3.png](/.attachments/29919815.png)
[image2018-4-27 13:52:23.png](/.attachments/29919816.png)
[image2018-4-27 13:48:50.png](/.attachments/29919817.png)
[image2018-4-27 13:22:40.png](/.attachments/29919818.png)
[image2018-4-27 13:13:2.png](/.attachments/29919819.png)
[image2018-4-27 13:11:39.png](/.attachments/29919820.png)
[image2018-4-27 13:7:45.png](/.attachments/29919821.png)
[image2018-4-27 13:4:53.png](/.attachments/29919822.png)
[image2018-4-27 13:0:20.png](/.attachments/29919823.png)
