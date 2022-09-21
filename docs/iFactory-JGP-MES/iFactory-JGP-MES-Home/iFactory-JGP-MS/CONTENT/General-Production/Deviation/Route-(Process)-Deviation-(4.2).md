# Introduction

Route Deviation is used to temporarily allow WIPs to follow a different processing rule in the route. If route deviation is configured for specific route step, instead of following the pre-start rule and routing rule as configured in Route Maintenance, the deviated WIP will follow the pre-start ,routing rule and WIP move as configured in Route Deviation. 




### How to get there?




::: mermaid
graph LR
A("CONFIGURE")-->0("DEVIATION")
0-->1("ROUTE DEVIATION (TAB)")

:::


#### Screen Activity


Route Deviation enables user to perform the following activity:

- Add a deviated pre-start rule to a route step

- Add a deviated routing rule to a route step

- Add a deviated WIP move to a route step

- Copy over Routing and Pre-start rule from original Routing rules available in Route Maintenance

Pre Condition
The following data needs to be pre-configured before user configures Route Deviation

- Required data in Deviation's General tab is configured.


#### Screen Dependency


The following screen(s) has direct dependency with Route Deviation

- Deviated Pre-Start Rule is applicable to all stations

- Deviated Routing Rule is applicable to all stations except for Packout station. Packout station is also not supporting the standard Routing Rule.

Note: Audit Checklist & OBA Sampling station are not applicable for use at the moment.  
- Deviate WIP move is applicable to all stations



#### Fields 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Route(Process)Deviation(4.2)-Pre-StartRules(Deviated)"><strong>Pre-Start Rules (Deviated)</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Route for the deviated Pre-Start rule</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Route Step for the deviated Pre-Start rule</td></tr><tr><td colspan="1" class="confluenceTd">Priority</td><td colspan="1" class="confluenceTd">Deviated Pre-Start Rule priority</td></tr><tr><td colspan="1" class="confluenceTd">Rule Type</td><td colspan="1" class="confluenceTd">Deviated Pre-Start Rule Type</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">Unique Name given to the deviated Pre-Start Rule</td></tr><tr><td colspan="1" class="confluenceTd">Rule Parameter</td><td colspan="1" class="confluenceTd"><p>The rule parameters for each rule are similar to the standard <a href="Pre-Start-Rules-29920004.html">Pre-Start Rules</a><span style="background-color: transparent;font-size: 10.0pt;"> </span><span style="background-color: transparent;font-size: 10.0pt;"> </span></p><p><span style="background-color: transparent;font-size: 10.0pt;">The only difference in deviated Pre-Start Rules is if the route step was configured with at least one deviated pre-start rule, the WIP will follow the deviated pre-start rule(s) instead of the standard Pre-Start rules in Route Maintenance</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Route(Process)Deviation(4.2)-RoutingRules(Deviated)"><span>Routing Rules (Deviated)</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>Route for the deviated Routing Rule</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>Route Step for the deviated Routing Rule</span></td></tr><tr><td colspan="1" class="confluenceTd">Rule Type</td><td colspan="1" class="confluenceTd"><span>Deviated Routing rule type</span></td></tr><tr><td colspan="1" class="confluenceTd">Priority</td><td colspan="1" class="confluenceTd">Deviated Routing Rule priority</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><span>Unique Name given to the deviated Routing Rule</span></td></tr><tr><td colspan="1" class="confluenceTd">Prompt Current Operator</td><td colspan="1" class="confluenceTd">If configured, the operator who is completing the route step will be prompted to choose the destination operation to route the WIP. This is only applicable if more than one destination route steps are configured for the route step.</td></tr><tr><td colspan="1" class="confluenceTd">Destination Operation</td><td colspan="1" class="confluenceTd">The route step where the WIP will be routed for the deviated Routing Rule</td></tr><tr><td colspan="1" class="confluenceTd">Rule Parameter</td><td colspan="1" class="confluenceTd"><p>The rule parameters for each rule are similar to the standard <a href="Routing-Rules-29920032.html">Routing Rules</a><span> </span><span> </span></p><p><span>The only difference in deviated Routing Rules is if the route step was configured with at least one deviated routing rule, the WIP will follow the deviated routing rule(s) instead of the standard Routing Rules in Route Maintenance</span></p></td></tr></tbody></table>

<table class="relative-table wrapped confluenceTable" style="letter-spacing: 0.0px;width: 100.0%;"><colgroup><col style="width: 11.1266%;" /><col style="width: 88.8456%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>WIP Move (Deviated)</strong></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Route</td><td class="confluenceTd"><span>Route for the deviated WIP Move</span></td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd"><span>Route Step for the deviated WIP Move</span></td></tr><tr><td class="confluenceTd">Assembly Number</td><td class="confluenceTd">Assembly number for the deviated WIP Move</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Revision</td><td colspan="1" class="confluenceTd">Assembly Revision will be auto populated based on Assembly Number.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Version</td><td colspan="1" class="confluenceTd"><span>Assembly Version will be auto populated based on Assembly Number.</span></td></tr></tbody></table>



#### Add a Deviated Pre-Start Rule





- Go to Deviation Maintenance's "Route Deviation" tab. Ensure the "Pre-Start Rules" sub tab is selected.



![image2017-8-9 14:36:1.png](/.attachments/29918332.png)






- Click on the "Add" button to add a new deviated pre-start rule as below


- Click Save

![image2017-8-9 14:24:57.png](/.attachments/29918335.png)


4. Select the pre-start rule and configure its rule parameter
5. Click Save
![image2017-8-9 14:18:33.png](/.attachments/29918338.png)


The deviated pre-start rule is added. 
![image2017-8-9 14:23:50.png](/.attachments/29918336.png)




#### Copy over existing Pre-Start Rule:


![image2017-8-9 14:23:50.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8951a61c-6af1-406f-b2d1-837fe4467c53?fileName=image.png)



- This action icon is enabled until the Deviation is in Active status


- Once user clicks the icon, Route/Route step selection confirmation pop-up show up

![image2017-8-9 14:23:50.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b2c3c07b-85c5-43b2-a51c-d9b292c96e45?fileName=image.png)



- If user enters a step which has no Pre-start rule defined, system to show an warning in Amber saying: "Selected Route step does not have any Pre-start rule configured. Hence can not copy over here."


- If the copy over rule has any conflict related to priority/Rule name with existing Pre-start rules available in Deviation against same step, system to provide an error saying:

- Priority "Priority value" is already existing in the Rule list. Hence can not copy over until the existing rule priority is being modified"

- Rule Name "Rule Name value" is already existing in the Rule list. Hence can not copy over until the existing rule name is being modified"

- On providing valid Route and Route step details, system copies over the available Pre-start rule(s) with parameter details whatever configured in Route Maintenance against that Route / Route step.

***Run time***  
This is the standard pre-start rule configured at 
**HC-Route/Assembly** step. The WIP will fail to start if there are more than 5 WIPs enqueued to process in **HC-Route/Final QC** step. At the same time, there is a pre-start rule configured at **HC-Route/Assembly** where the Limit count was set to 1. The deviated pre-start rule will override the standard pre-start rule so the WIP now is not allowed to start if there is more than 1 WIP enqueued at **HC-Route/Final QC** step.Note: The WIP will only follow the deviated pre-start/routing rule if it is assign to the deviation request that contains Route Deviation. The WIP must also match the parameter defined in the deviated pre-start/routing rule. Once the WIP matches these condition, the standard pre-start/routing rule as configured in Route Maintenance for that particular route step will be ignored. 
![image2017-8-9 14:31:25.png](/.attachments/29918333.png)





#### Add a Deviated Routing Rule





- Go to Deviation Maintenance's "Route Deviation" tab. Ensure the "Routing Rules" sub tab is selected.

![image2017-8-9 14:38:9.png](/.attachments/29918331.png)


2. Click on the "Add" button to add a new deviated routing rule as below
3. Click Save
![image2017-8-9 14:39:18.png](/.attachments/29918330.png)


4. Configure the Destination Operations. Multiple destination operations can be configured
5. Click Save
![image2017-8-9 15:6:36.png](/.attachments/29918329.png)


6. Configure the Rule Parameters. Click Save
![image2017-8-9 15:8:3.png](/.attachments/29918328.png)


![image2017-8-9 15:28:39.png](/.attachments/29918327.png)




#### Copy over existing Routing Rule:


![image2017-8-9 15:28:39.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/f54501cc-280a-4d0d-93ba-12e3032716a9?fileName=image.png)




- This action icon is enabled until the Deviation is in Active status.


- Once user clicks the icon, Route/Route step selection confirmation pop-up show up


![image2017-8-9 15:28:39.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/adb2ba30-f882-4a4b-a8bd-90f9b9cc9769?fileName=image.png)



- If the copy over rule has any conflict related to priority/Rule name with existing Routing rules available in Deviation against same step, system to provide an error saying:


- Priority "Priority value" is already existing in the Rule list. Hence can not copy over until the existing rule priority is being modified"

- Rule Name "Rule Name value" is already existing in the Rule list. Hence can not copy over until the existing rule name is being modified"

- On providing valid Route and Route step details, system copies over the Routing rules with destination steps and parameter details whatever configured in Route Maintenance against that Route / Route step.

***Run time***  

This is the standard routing rule configured at 
**HC-Route/Assembly** step. The WIP will be routed to "Final QC" on completion with a Pass result. Since a deviated routing rule is configured, then the WIP will be routed to "WIP Packout" on completion with a Pass result. Note: The WIP will only follow the deviated pre-start/routing rule if it is assign to the deviation request that contains Route Deviation. The WIP must also match the parameter defined in the deviated pre-start/routing rule. Once the WIP matches these condition, the standard pre-start/routing rule as configured in Route Maintenance for that particular route step will be ignored. 

![image2017-8-9 15:31:29.png](/.attachments/29918326.png)





#### Add a Deviated WIP Move





- Go to Deviation Maintenance's "Route Deviation" tab. Ensure the "WIP Move" sub tab is selected.



![image2018-7-26_12-3-24.png](/.attachments/31392739.png)



- Click on the "Add" button to add a new deviated Route Steps as below.


- Click Save.

![image2018-7-31_21-11-3.png](/.attachments/31392867.png)



- The deviated WIP move is added.


![image2018-7-31_21-12-9.png](/.attachments/31392868.png)



**Run time** 
This is the standard routing rule configured at 
**HC-Route/Assembly** step. All the InProgress 
WIP will be routed to an isolated repair station for repair. This also allow a batch of defective units to deviate from the normal packout and ship process in the event a batch of WIPs become defective.
Note: The WIP will only follow the deviated WIP move after deviation is turned active. All WIPs associated to the Deviation must in-queue to the configured Route / Route Step based on the WIP's Assembly Revision.

. 







#### Attachments

[image2017-8-9 15:31:29.png](/.attachments/29918326.png)
[image2017-8-9 15:28:39.png](/.attachments/29918327.png)
[image2017-8-9 15:8:3.png](/.attachments/29918328.png)
[image2017-8-9 15:6:36.png](/.attachments/29918329.png)
[image2017-8-9 14:39:18.png](/.attachments/29918330.png)
[image2017-8-9 14:38:9.png](/.attachments/29918331.png)
[image2017-8-9 14:36:1.png](/.attachments/29918332.png)
[image2017-8-9 14:31:25.png](/.attachments/29918333.png)
[image2017-8-9 14:30:8.png](/.attachments/29918334.png)
[image2017-8-9 14:24:57.png](/.attachments/29918335.png)
[image2017-8-9 14:23:50.png](/.attachments/29918336.png)
[image2017-8-9 14:20:57.png](/.attachments/29918337.png)
[image2017-8-9 14:18:33.png](/.attachments/29918338.png)
[image2017-8-9 14:17:22.png](/.attachments/29918339.png)
[image2017-8-9 14:15:21.png](/.attachments/29918340.png)
[image2018-7-26_12-3-24.png](/.attachments/31392739.png)
[image2018-7-26_12-52-21.png](/.attachments/31392741.png)
[image2018-7-26_12-53-49.png](/.attachments/31392742.png)
[image2018-7-31_21-11-3.png](/.attachments/31392867.png)
[image2018-7-31_21-12-9.png](/.attachments/31392868.png)
