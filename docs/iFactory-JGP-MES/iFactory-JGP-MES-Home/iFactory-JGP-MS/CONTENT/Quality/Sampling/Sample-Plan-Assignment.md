# Introduction



## **Create New Sample Plan Assignment**  


This configuration screen is used to define a Sample Size for all materials for a Customer at a specific Batch Tag name, Material, Route, Route Step and Assembly. The basics of the configuration are simple, define Material, Route, Route Step and Assembly. The results of the configuration of the Inspection Scheme, Inspection Level, Inspection Severity and Major/Minor/Total defect AQL defined is that when at a inspection station with WIP items/ Lot arrive the user will be asked to inspect a portion of the WIP items Lot according to the Sample Size, major/minor/Total acceptance and rejection rate defined here. For OBA Sampling plan association, user can proceed in two ways:

- With the usage of AQL process

- Totally defined by User
![image2020-7-1_7-23-12.png](/.attachments/73236798.png)


When user select 'Is OBA Sample' toggle on, by default system asks to proceed with using AQL process. User might not opt for the same though.
![image2020-10-15_13-54-55.png](/.attachments/81199218.png)


In case does not want to configure sample plan with AQL, above highlighted toggle can be marked as off and system will allow user to enter Sampling details:
![image2020-10-15_13-55-32.png](/.attachments/81199219.png)



Normal Sample Plan Configuration with the 
acceptable quality limit (
AQL)![image2020-7-1_7-23-51.png](/.attachments/73236799.png)



Sample plan for Manual Sampling: system also allow user configure a plan for manual sampling batch tag type, there are two parts for manual sampling plan. 1: Generic Tab, allow configure some generic data for it, such as Batch Tag Name, Customer/Division, Material, Route, Sampling Route Step, Fail Criteria. 2: WIP Hold Tab, Allow trigger WIP Hold/Future Hold after the sampling got fail result base on the Fail Criteria.


### How to get there?



::: mermaid
graph LR
A("Quality")-->0("sAMPLE PLAN")

:::


#### Permission


Sampling  
1)Material Configuration-Assembly Configuration-Can Access Assembly Configuration 2) Can Access NG - Can Use Sampling Station-Can Use Sampling Station


#### Screen Activity


Create Sample Plan Assignment enables user to perform the following activity:

- Manually define a Sample Plan for all Materials of a specific Customer / Division at a Route, Route Step and Assembly.

- Manually define OBA process Sample Plan using AQL process

- Manually define OBA process Sample Plan using user defined Sampling limit configurations


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Create Sample Plan Assignment

- Customer / Division

- Route and Route Step

- Material

- Assembly

- Station configuration for Inspection is of Station Type = 'Sampling'

- Lot Size (Read only field for OBA without AQL)

- Sample Size (Only for OBA without AQL)

- Sample Pass Limit (Only for OBA without AQL)

- Sample Fail Limit (Only for OBA without AQL)


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Is Manual Sample</td><td colspan="1" class="confluenceTd"><p>Default value is OFF</p><p>If 'Is Manual Sample' is set to OFF, then the plan is for Batch-tag type 'Sampling' or 'OBA', and follow normal Sampling or OBA Sampling plan process.</p><p>If 'Is Manual Sample' is set to ON, then the plan is for Batch-tag type 'Manual Sampling' and follow Manual Sampling plan process.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Stop on Sampling Fail</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">This option allow user to turn On/OFF stop on Sampling fail.</span></p><ul><li><span style="color: rgb(0,0,0);">If “Stop on Sampling Fail “is set to OFF, then operator need to complete the Sampling even rejection quantity is met. The Sampling only consider complete if all the samples were inspected.</span></li><li><span style="color: rgb(0,0,0);">If “Stop on Sampling Fail “is set to ON, then toaster message “Sampling is not required to continue as the Rejection Quantity is met” should prompt at Sampling station either one of the Rejection (Major/ Minor/Total AQL) quantity is met first.</span></li></ul><p><span style="color: rgb(0,0,0);">Notes: the logic of 'Stop on Sampling Fail' is not apply for Batch-tag type 'Manual Sampling'.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Is OBA Sample</td><td colspan="1" class="confluenceTd"><p>Default value is OFF</p><ul><li><span style="color: rgb(0,0,0);">If “Is OBA Sample“ is set to OFF, then the plan is for Batch-tag type 'Sampling' or 'Manual Sampling' and follow normal Sampling or Manual Sampling Plan process</span></li><li><span style="color: rgb(0,0,0);">If “Is OBA Sample“ is set to ON, then the plan is for Batch-tag type 'OBA' and follow OBA Sampling Plan process. When this flag turned ON, Material and Assembly fields are no more visible.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);">  </span></td><td colspan="1" class="confluenceTd"><p>Default value is ON (available only when 'Is OBA Sample' toggle is ON)</p><ul><li>If '<label class="control-label">Use AQL Sampling Process<span style="color: rgb(45,46,47);">' is set to OFF, then the plan is for batch-tag type OBA and the sampling process to be executed by non-AQL process</span></label></li><li><span style="color: rgb(45,46,47);">If '<label class="control-label">Use AQL Sampling Process<span style="color: rgb(45,46,47);">' is set to ON, then the plan is for batch-tag type OBA and the sampling process to be executed by AQL process</span></label></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Hold Lot on OBA Fail</span></td><td colspan="1" class="confluenceTd"><p>Default value is ON (available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF)</p><ul><li>If '<span style="color: rgb(45,46,47);">Hold Lot on OBA Fail</span><label class="control-label"><span style="color: rgb(45,46,47);">' is set to OFF, then in runtime operation failing OBA operation will not hold the whole Lot. User can process any type of operation although OBA result will still be shown as FAILED.</span></label></li><li>If '<span style="color: rgb(45,46,47);">Hold Lot on OBA Fail</span><label class="control-label"><span style="color: rgb(45,46,47);">' is set to ON, then in runtime operation failing OBA operation will put hold to the each WIP inside the whole Lot.</span></label></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><label class="control-label">Allow completing OBA on PASS limit reached</label><span style="color: rgb(45,46,47);"> </span></td><td colspan="1" class="confluenceTd"><p>Default value is ON (available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF)</p><ul><li>If '<label class="control-label">Allow completing OBA on PASS limit reached</label><span style="color: rgb(45,46,47);">'</span><label class="control-label"><span style="color: rgb(45,46,47);"> is set to OFF, then in runtime operation user has to perform the Sampling upto sample size even though Pass criteria of the Lot has already exceeded.</span></label></li><li>If '<label class="control-label">Allow completing OBA on PASS limit reached</label><span style="color: rgb(45,46,47);">'</span><label class="control-label"><span style="color: rgb(45,46,47);"> is set to ON, then in runtime operation user may complete Sampling anytime when Pass criteria of the Lot has already met.</span></label></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Batch Tag Name</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Batch Tag name of a batch of WIP / Lot which defined in the Batch Tag Maintenance. Currently the Batch Tag Maintenance is only apply to Repetitive only.</span></p><p><span style="color: rgb(0,0,0);">Sample Plan is unique by Batch Tag Name.</span></p></td></tr></thead><tbody><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer-/-Division</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Name of the Customer and Division is referred to the customer of Batch Tag Name</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Name of the Material that requires a Sample Plan. This field is defined by the Customer / Division (This field is not applicable for OBA Sampling)<br />Filter Rule:</span></p><ul><li><span style="color: rgb(0,0,0);">Didn't reference "SAP Material Type". </span></li><li><span style="color: rgb(0,0,0);">"Material Type" = WIP</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Route/Version</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Route and Route Version where materials are to be built and inspected by a Sample Plan. T</span>he search screen for route will only show the Active Route/Version.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Route Step</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Route Step that is defined as an Inspection Station with a Station Type of  'Sampling'</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Assembly</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The Assembly that requires a Sample Plan. This field is not applicable for OBA Sampling</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Scheme</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The type of AQL Standard to calculate the sample size. e.g. ANSI-Z1-4-2008, ISO-2859, MIL-STD-105E, MIL-STD-1916</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Level</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">A list of Inspection Level based on the selected Inspection Scheme. A higher Inspection level corresponds to a larger sample size</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Severity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The severity for Inspection Scheme, such as Normal, Reduced, Tightened</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Major /Minor /Total AQL Level</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">A list of  acceptable quality level ( AQL) level based on the selected Inspection Scheme. For example, 0.1, 4, etc.</span></p><p><span style="color: rgb(0,0,0);">An acceptable quality level is a test and/or inspection standard that prescribes the range of the number of defective components that is considered acceptable when <a style="text-decoration: none;color: rgb(0,0,0);" href="https://en.wikipedia.org/wiki/Random-sampling" title="Random sampling" class="external-link" rel="nofollow">random sampling</a> those components during an inspection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Min & Max Quantity </span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">This will determine the appropriate sample size you need to inspect.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Acceptance Quantity</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The maximum number of defects that can be accepted and it is determined by AQL.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Rejection Quantity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The maximum number of defects that will be rejected and it is determined by AQL.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Size</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The number of items that are intended to be inspected by Sampling</span></td></tr><tr><td colspan="1" class="confluenceTd">Lot Size</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF. Read only field shown as per Max build qty in Batch-tag maintenance screen against selected OBA type Batch-tag.</span></td></tr><tr><td colspan="1" class="confluenceTd">Sample Size</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF. User can put any value lesser or equal to Lot size. If the Lot size shows 0 (undefined), user can put the Sample size to anything.</span></td></tr><tr><td colspan="1" class="confluenceTd">Sample Pass Limit</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF. User can put any value lesser or equal to Sample size.</span></td></tr><tr><td colspan="1" class="confluenceTd">Sample Fail Limit</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Available only when '<label class="control-label">Use AQL Sampling Process</label><span style="color: rgb(45,46,47);"> </span>' toggle is OFF. User can put any value lesser or equal to Sample size.</span></td></tr></tbody></table>


- Customer_/_Division

The Name of the Customer and Division is referred to the customer of Batch Tag Name
Material
The Name of the Material that requires a Sample Plan. This field is defined by the Customer / Division (This field is not applicable for OBA Sampling)

Filter Rule:
- Didn't reference "SAP Material Type".


- "Material Type" = WIP

Route/Version
The Route and Route Version where materials are to be built and inspected by a Sample Plan. T
he search screen for route will only show the Active Route/Version.Route Step
The Route Step that is defined as an Inspection Station with a Station Type of  'Sampling'
Assembly
The Assembly that requires a Sample Plan. This field is not applicable for OBA Sampling
Inspection Scheme
The type of AQL Standard to calculate the sample size. e.g. ANSI-Z1-4-2008, ISO-2859, MIL-STD-105E, MIL-STD-1916
Inspection Level
A list of Inspection Level based on the selected Inspection Scheme. A higher Inspection level corresponds to a larger sample size
Inspection Severity
The severity for Inspection Scheme, such as Normal, Reduced, Tightened
Major /Minor /Total AQL Level
A list of  acceptable quality level ( AQL) level based on the selected Inspection Scheme. For example, 0.1, 4, etc.
An acceptable quality level is a test and/or inspection standard that prescribes the range of the number of defective components that is considered acceptable when 
[random sampling](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling/Sample-Plan-Assignment.md)those components during an inspection.Min & Max Quantity 
This will determine the appropriate sample size you need to inspect.
Acceptance Quantity
The maximum number of defects that can be accepted and it is determined by AQL.
Rejection Quantity
The maximum number of defects that will be rejected and it is determined by AQL.
Sample Size
The number of items that are intended to be inspected by Sampling
Lot SizeAvailable only when '
Use AQL Sampling Process
' toggle is OFF. Read only field shown as per Max build qty in Batch-tag maintenance screen against selected OBA type Batch-tag.Sample SizeAvailable only when '
Use AQL Sampling Process
' toggle is OFF. User can put any value lesser or equal to Lot size. If the Lot size shows 0 (undefined), user can put the Sample size to anything.Sample Pass LimitAvailable only when '
Use AQL Sampling Process
' toggle is OFF. User can put any value lesser or equal to Sample size.Sample Fail LimitAvailable only when '
Use AQL Sampling Process
' toggle is OFF. User can put any value lesser or equal to Sample size.

#### Fields for Manual Sampling(Is Manual Sample = On)


<table class="relative-table wrapped confluenceTable" style="width: 1453.0px;"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;width: 1453.0px;" colspan="2" class="confluenceTd"><strong>Generic tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;width: 183.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;width: 1270.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><span style="color: rgb(0,0,0);">Batch Tag Name</span></td><td style="width: 1270.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Batch Tag name of a batch of WIP which defined in the Batch Tag Maintenance with 'Manual Sampling' type. Currently the Batch Tag Maintenance is only apply to Repetitive only.</span></p><p><span style="color: rgb(0,0,0);">Sample Plan is unique by Batch Tag Name.</span></p></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer/Division</span></p></td><td style="width: 1270.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Name of the Customer and Division is referred to the customer of Batch Tag Name</span></p></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td style="width: 1270.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Name of the Material that requires a Sample Plan. This field is defined by the Customer / Division<br />Filter Rule:</span></p><ul><li><span style="color: rgb(0,0,0);">Didn't reference "SAP Material Type". </span></li><li><span style="color: rgb(0,0,0);">"Material Type" = WIP</span></li><li><span style="color: rgb(0,0,0);">Only Repetitive WIP</span></li></ul></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Route/Version</span></p></td><td style="width: 1270.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Route and Route Version where materials are to be built and inspected by a Sample Plan. T</span>he search screen for route will only show the Active Route/Version.</p></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><span style="color: rgb(0,0,0);">Route Step</span></td><td style="width: 1270.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The Route Step that is defined as an Inspection Station with a Station Type of  'Sampling'</span></p></td></tr><tr><td style="width: 183.0px;" class="confluenceTd"><span style="color: rgb(0,0,0);">Assembly</span></td><td style="width: 1270.0px;" class="confluenceTd"><span style="color: rgb(0,0,0);">The Assembly that requires a Sample Plan. </span></td></tr><tr><td colspan="1" class="confluenceTd">Fail Criteria</td><td colspan="1" class="confluenceTd"><p>The criteria of how to adjudge the result of sampling.</p><ul><li>By Fail Qty</li><li>By Fail Rate</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Sample Fail Quantity Limit</span></td><td colspan="1" class="confluenceTd"><p>it will be displayed when user select 'By Fail Quantity', only allow input integers equal or greater than 0 and lower than 50.</p><p>the whole sampling result will be adjudged as Fail when the sampled failed WIP is greater than <span style="color: rgb(45,46,47);">Sample Fail Quantity Limit number. Otherwise will be pass.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Sample Fail Rate Limit (%)</span></td><td colspan="1" class="confluenceTd"><p><span> it will be displayed when user select 'By Fail Rate', only allow input integers range 1-99.</span></p><p><span>the whole sampling result will be adjudged as Fail when the sampled failed WIP divide the sampled size is greater than <span style="color: rgb(45,46,47);">Sample Fail Rate Limit (%)</span><span style="color: rgb(45,46,47);">. Otherwise will be pass.</span></span></p></td></tr></tbody></table>


<table class="relative-table wrapped confluenceTable"><colgroup><col style="width: 182.0px;" /><col style="width: 1114.0px;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>WIP Hold tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Hold Type</span></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">The type of how to hold affected WIP. currently allow future hold only.</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Future Hold Route Step</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">will be display when user choose the 'Future Hold' type. It allow user to choose multiple route step which are not sampling station type to trigger the future hold.</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Evaluation Route Step</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">System allow user choose a route step which is not sampling station as Evaluation route step. The route step are filter by the route configured in generic tab. </span></p><p><span style="color: rgb(0,0,0);">There are two ways to use the evaluation route step:</span></p><p><span style="color: rgb(0,0,0);">1: In the run time of manual sampling, the last record of evaluation route step of sampled WIP should be Pass status.</span></p><p><span style="color: rgb(0,0,0);">2: After user click the 'Complete' button in the run time of manual sampling(New Sampling, Resume Sampling, Retest Sampled WIP), system should trigger Block WIP or Release WIP base on the sampling result. when system calculate the affected WIP it will base on the endtime of  'Evaluation Route Step' of each failed Sampled WIP to calculate the affected WIP. </span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Time Selection</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Here are two items for selection: First Time and Final Time.</span></p><p><span style="color: rgb(0,0,0);">If First Time, system will get the first passed evaluation route step history of sampled WIP.</span></p><p><span style="color: rgb(0,0,0);">If Final Time, <span style="color: rgb(0,0,0);">system will get the final passed evaluation route step history of sampled WIP.</span></span></p></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Range Type</span></td><td class="confluenceTd"><div class="content-wrapper"><p><span style="color: rgb(0,0,0);">The type of how to define the date range of affected WIP. We have 3 types of Range Type, there are:</span></p><p><span style="color: rgb(0,0,0);">a. 'By Sampled Failed WIP Time', </span><span style="color: rgb(0,0,0);">system will display the 'Before Minutes' & 'After Minutes' fields.<br />b. 'By Customized Time', system will hide the 'Time Selection' & 'Before Minutes' & 'After Minutes' fields.</span></p><p><span style="color: rgb(0,0,0);">c. 'By Manual Input', During the runtime of 'Manual Sampling', system will allow user to provide StartDateTime and EndDateTime to calculate affected WIP.  </span></p><p><span style="color: rgb(0,0,0);">For Range Type: 'By Sampled Failed WIP Time'<br />For example, if there is a manual sampling got the fail result. and some of the configuration as below:<br /></span><span style="color: rgb(0,0,0);">Before Minutes: 10, </span><span style="color: rgb(0,0,0);">After Minutes: 20, The endTime of valuation route step for a failed sampled WIP is '2020-04-05 16:30:00'.<br /></span><span style="color: rgb(0,0,0);">System should calculate the From and To date:<br /></span><span style="color: rgb(0,0,0);">FromDateTime = 2020-04-05 16:30:00 - 10 = 2020-04-05 16:20:00<br /></span><span style="color: rgb(0,0,0);">ToDateTime = 2020-04-05 16:30:00 + 20 = 2020-04-05 16:50:00<br /></span><span style="color: rgb(0,0,0);">It means the from 2020-04-05 16:20:00 to 2020-04-05 16:50:00, all the WIP went through the evaluation route step will be block.<br /></span>If Range Type selection is By Sampled Failed WIP Time, system will hide <span style="color: rgb(0,0,0);">the 'Before Minutes' & 'After Minutes' fields and example screen shot as below:<br /><br />For Range Type : 'By Customized Time'</span></p></div><p><span style="color: rgb(0,0,0);">There are few conditions have been added, there are : <br />a. Maximum is 48 rows count allow to add for Time Range List<br />b. Not allow duplicate time range<br />c. Order ascending by Start Time <br />d. System shouldn't allow user to add/delete the start time if sample plan is in used</span></p></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Before Minutes</span></td><td class="confluenceTd"><span style="color: rgb(0,0,0);">Allow to inupt 0-999, int only.</span></td></tr><tr><td colspan="1" class="confluenceTd">After Minutes</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow to inupt 0-999, int only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Hold Same Resource WIPs</span></td><td colspan="1" class="confluenceTd"><p>Default is off. Allow turn on and turn off.</p><p>If turn on, in the runtime of manual sampling, system will take the resource of first scan sampled WIP and the subsequence sampled WIP should get the same resource with first sampled WIP base on the 'Time Selection'. If no, system will block operator to scan the WIP.</p><p>If turn off, in the runtime of manual sampling system wouldn't check the resource of each sampled WIP.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Attribute</span></td><td colspan="1" class="confluenceTd"><p>Optional. Allow save without any attribute info.</p><p>When configuring the attribute, the Attribute name is required and the attribute value is optional. system will block user to save duplicated attribute name configuration.</p><p>Below are the behaviors in manual sampling runtime(New Sampling / Resume Sampling):</p><ul><li>If the the configured Attribute only have name(no any attribute value),  system will check each sampled WIP whether got the same attribute name, if no, system will block user to scan it.  The attribute value will get from first sampled WIP, and then system will check subsequences WIPs whether got the same attribute value. If no, system will block user to scan it.</li><li>If the configured Attribute have both name and value, system will check each sampled WIP whether got same attribute name and value. if no, <span>system will block user to scan it.</span></li><li><span>If the configured Attributes have both above configurations, system will take 'And' condition for this scenario.</span></li></ul></td></tr></tbody></table>
















- ## **Update/Delete Sample Plan Assignment**

Allow the Administrator to update (Edit) the Sample Size or Delete a Sample Plan Assignment that has been created.
![image2019-4-12_16-33-36.png](/.attachments/48169302.png)



Sample Plan Assignment enables user to perform the following activity:

- Edit / Update an existing Sample Plan Assignment



- Delete an existing Sample Plan Assignment




- Clear the selected Sample Plan

![image2019-4-26_8-23-43.png](/.attachments/48169303.png)







#### Attachments

[Create Sample Plan Assignment.png](/.attachments/38273178.png)
[image2017-10-23 14:51:28.png](/.attachments/38273179.png)
[image2018-11-18_18-20-4.png](/.attachments/38273202.png)
[image2018-11-18_18-20-50.png](/.attachments/38273203.png)
[image2018-11-18_18-22-32.png](/.attachments/38273204.png)
[image2018-11-22_16-52-47.png](/.attachments/38273303.png)
[image2018-11-22_16-53-6.png](/.attachments/38273304.png)
[image2019-3-29_13-57-30.png](/.attachments/45974036.png)
[image2019-4-12_16-9-10.png](/.attachments/45974767.png)
[image2019-4-12_16-14-26.png](/.attachments/45974769.png)
[image2019-4-12_16-33-36.png](/.attachments/48169302.png)
[image2019-4-26_8-23-43.png](/.attachments/48169303.png)
[image2020-4-14_12-8-57.png](/.attachments/69632072.png)
[image2020-7-1_7-18-6.png](/.attachments/73236796.png)
[image2020-7-1_7-19-11.png](/.attachments/73236797.png)
[image2020-7-1_7-23-12.png](/.attachments/73236798.png)
[image2020-7-1_7-23-51.png](/.attachments/73236799.png)
[image2020-10-15_13-52-56.png](/.attachments/81199217.png)
[image2020-10-15_13-54-55.png](/.attachments/81199218.png)
[image2020-10-15_13-55-32.png](/.attachments/81199219.png)
[image2021-12-14_11-17-4.png](/.attachments/104923228.png)
