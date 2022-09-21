# Introduction


This screen allows the configuration of a Minimum/Maximum time interval between two operations (referred to as "beginning step" and "end step") to be set-up, preventing a WIP from being started at the end step until the specified period of time has passed or over process time.
How to get there?


::: mermaid
graph LR
A("ROUTE")-->0("OPERATION TIME INTERVAL CONFIGURATION")

:::


### Screen Activity


The Operation Time Interval screen enables user to perform the following activity:

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



<table style="margin-left: 30.0px;" class="confluenceTable"><colgroup><col /><col /></colgroup><tbody style="margin-left: 30.0px;"><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p><br /></p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;"><strong><strong>Section 1 - </strong>Configure Time Interval Checkpoint</strong></p></td></tr><tr style="margin-left: 30.0px;"><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Field</p></th><th style="margin-left: 30.0px;" class="confluenceTh"><p style="margin-left: 30.0px;">Description</p></th></tr><tr style="margin-left: 30.0px;"><td colspan="1" class="confluenceTd">Customer </td><td colspan="1" class="confluenceTd">        Follow Partition</td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p>Route</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to search and select the Route applicable route. Mandatory field.</p></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p>Begin Route Step</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;"><span>Once route is selected, allows user to associate the appropriate route step - Note this is the Beginning step i.e. The one from which the interval will calculated from. <span>Mandatory field.</span></span></p></td></tr><tr style="margin-left: 30.0px;"><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">End Route Step</span></td><td colspan="1" class="confluenceTd">        <span>Once route is selected, allows user to associate the appropriate route step - Note this is the End step i.e. The one from which the interval will calculate to. Mandatory field.</span></td></tr><tr style="margin-left: 30.0px;"><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">        Allows the user to specifiy a material scope to the rule (default applies to all materials/WIPs). Note: Filtered to those materials which belong to the selected route. <span>Optional field.</span></td></tr><tr style="margin-left: 30.0px;"><td style="margin-left: 30.0px;" class="confluenceTd"><p>First Occurrence</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Toggle for first occurence, which if toggled on will take the time from when the WIP was FIRST completed at the configured beginning step as opposed to when it is off, when it will take the most recent time the WIP passed the beginning step (e.g. in case of re-scan). Default state of First occurence is On.</p></td></tr><tr><td style="margin-left: 30.0px;" class="confluenceTd"><p>Minimum Time Interval (Seconds)</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to enter an interval time in seconds (from 1 second to 1,500,000 seconds). <span>Mandatory field.</span></p></td></tr><tr><td style="margin-left: 120.0px;" colspan="1" class="confluenceTd"><label class="control-label required">Maximum Time Interval (Seconds)<span> </span></label></td><td colspan="1" class="confluenceTd">        Allows the user to enter an interval time in seconds (from 1 second to 1,500,000 seconds). <span>Mandatory field.</span></td></tr><tr><td style="margin-left: 30.0px;" class="confluenceTd"><p>Hold Reason Code</p></td><td style="margin-left: 30.0px;" class="confluenceTd"><p style="margin-left: 30.0px;">Allows the user to assign an optional hold reason code to the interval rule. Optional field.</p></td></tr></tbody></table>



#### Configuration


The configuration screen for process time interval, containing the fields above, is shown below. 
![image2021-11-9_13-51-28.png](/.attachments/102041146.png)





#### Process impact



- Calculation method, from the start time of the start step to the end time of the end step

- If counter " Minimum time, prompt error notification Minimum time interval not met, cannot complete

- If counter "=
Minimum time & "= Maximum time (not over yet) then OK to complete the route step
- If counter "= Minimum time,  " Maximum time (over time), put on hold based on hold reason code selected.

- When the WIP hold released and back to the same route step, the time counter will reset












#### Attachments

[image2018-4-27 13:0:20.png](/.attachments/102041130.png)
[image2018-4-27 13:4:53.png](/.attachments/102041131.png)
[image2018-4-27 13:7:45.png](/.attachments/102041132.png)
[image2018-4-27 13:11:39.png](/.attachments/102041133.png)
[image2018-4-27 13:13:2.png](/.attachments/102041134.png)
[image2018-4-27 13:22:40.png](/.attachments/102041135.png)
[image2018-4-27 13:48:50.png](/.attachments/102041136.png)
[image2018-4-27 13:52:23.png](/.attachments/102041137.png)
[image2018-4-27 13:57:3.png](/.attachments/102041138.png)
[image2018-4-27 13:58:56.png](/.attachments/102041139.png)
[image2018-4-27 14:1:37.png](/.attachments/102041140.png)
[image2018-4-27 14:3:9.png](/.attachments/102041141.png)
[image2018-4-27 14:26:32.png](/.attachments/102041142.png)
[image2018-4-27 14:29:45.png](/.attachments/102041143.png)
[image2018-4-27 14:35:36.png](/.attachments/102041144.png)
[image2018-4-27 14:47:19.png](/.attachments/102041145.png)
[image2021-11-9_13-51-28.png](/.attachments/102041146.png)
