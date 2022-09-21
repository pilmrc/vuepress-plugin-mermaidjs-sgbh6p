# Introduction

Manage Configuration screen is allowed user to manage , update and deleted the created configuration. Also, allow user to view when the configuration is created and when the last data pull happened for the particular configuration. All the updates in Manage Configuration will be reflected in Performance Monitor immediately except control limits as this required ECN approval.


### How to get there?



::: mermaid
graph LR
A("CHART CONFIGURATION")
:::
Click on Manage Configuration tab


#### Permission


The following permissions need to be granted for accessing the screen :

- Can Update SPC Configuration


- Can View SPC Configuration

Screen Activity
Manage Configuration screen allows to perform the following activities:

- Update Product/Process Characteristic records and data capture frequency.

- Delete the configuration


#### Pre Condition


The following item need to be ready before can manage configuration:


- Create a new configuration in Add Configuration tab.



#### Screen Dependency


The following screen(s) has direct dependency with Manage Configuration:

- Performance Monitor

- Reports & Dashboard


#### Process


Once the configuration submitted , then the configuration will be shown in Manage Configuration list. In Manage Configuration , user can search the particular configuration by filters. Able to view the configuration name ( the combination of the product information ), configuration status , the created date , the last data pull date time , and whether it is created from the system or upload by user in the table. Also, allow user to edit or delete the configuration. The configuration can be deleted if the status is inactive. Once click on edit , then user able to edit only those enable fields ( data capture frequency and product/process characteristic info). If the process is stable in production , user can request to implement fixed control limits for monitoring the production process. This can be done by submitting the control limits through manage configuration.


### Filtering 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Filter</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd">This filter to filter the available project in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">This filter to filter the available product family in the manage configuration list and can be searched partially.</td></tr><tr><td class="confluenceTd">Material </td><td class="confluenceTd">This filter to filter the available material in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">This filter to filter the available factory in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Mfg Manufacturing Area</td><td colspan="1" class="confluenceTd">This filter to filter the available manufacturing area in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Mfg Route</td><td colspan="1" class="confluenceTd">This filter to filter the available route in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Mfg Route Step</td><td colspan="1" class="confluenceTd">This filter to filter the available route step in the manage configuration list and can be searched partially.</td></tr><tr><td colspan="1" class="confluenceTd">Mfg Resource </td><td colspan="1" class="confluenceTd">This filter to filter the available resource in the manage configuration list and can be searched partially.</td></tr></tbody></table>



### **Manage Configuration Table** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd"><p>Edit - To edit the chart configuration</p><p>Delete - This will be enabled if all the product/process characteristic(CTQ/CTF) of the chart configuration is inactive.</p></td></tr><tr><td class="confluenceTd">Configuration Name</td><td class="confluenceTd">Chart Configuration name with the combination of project + material + factory + mfg manufacturing area + mfg route + mfg route step + mfg resource or the name which configure in Add Configuration.</td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd">Used to define if the configuration is active ( when one or more product/process characteristic(CTQ/CTF) is active )or inactive ( when all the product/process characteristic(CTQ/CTF) is inactive.</td></tr><tr><td colspan="1" class="confluenceTd">Date of creation</td><td colspan="1" class="confluenceTd">The date of configuration been created in SPC </td></tr><tr><td colspan="1" class="confluenceTd">Last Data Pull Date</td><td colspan="1" class="confluenceTd">The last data pull date time from data source.</td></tr><tr><td colspan="1" class="confluenceTd">Flag</td><td colspan="1" class="confluenceTd">Used to define if the configuration is created from SPC system or upload by user.</td></tr></tbody></table>



### Fields can be editable


<table class="wrapped relative-table confluenceTable" style="width: 81.4043%;"><colgroup><col style="width: 9.97977%;" /><col style="width: 90.0202%;" /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description </th></tr><tr><td colspan="1" class="confluenceTd">Save</td><td colspan="1" class="confluenceTd">Save all the changes done in Configuration. </td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Close the configuration window.</td></tr><tr><td colspan="1" class="confluenceTd">Configuration Name</td><td colspan="1" class="confluenceTd">The configuration name and it <span style="color: rgb(23,43,77);">is must be unique.</span></td></tr><tr><td class="confluenceTd">Data Capture Frequency </td><td class="confluenceTd"><p>How frequent and when the system should retrieve data from data source based on configuration.</p><ul><li>Time - Retrieve data based on minutes . Minimum is 5 mins and maximum is 120mins. </li><li>Fixed time/day - Retrieve data based on the selected Time every day. Time for selection is 24 hours with 30 mins time interval.</li></ul></td></tr><tr><td class="confluenceTd">Active</td><td class="confluenceTd"><p style="text-align: left;">This will determine whether the system should retrieve data from data source. Only user with permission allow to turn on/off the Active Flag.</p><p style="text-align: left;">Active is ON - System will continue retrieving data from data source</p><p style="text-align: left;">Active is OFF - System will stop retrieving data from data source.</p></td></tr><tr><td class="confluenceTd">SPC Phase Review</td><td class="confluenceTd"><p style="text-align: left;">The SPC Phase Review is to determine when the configuration need to be reviewed.</p><ul style="text-align: left;"><li>90 sets data - Trigger email notification to user when there are 90 sets data plotted on the control chart.</li><li>1 month - Trigger email notification to user end of every month.</li><li>3 months - Trigger email notification to user end of every quarter.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Rule Violation </td><td colspan="1" class="confluenceTd"><p style="text-align: left;">The rule violation to cross check the data point is violated which selected rules.</p><p style="text-align: left;">There are 8 (R1 - R8) rules can be selected for Variable Control Charts and 4 (R1 -R4) rules can be selected for Attribute control charts.</p><p style="text-align: left;">R1 :1 point > k standard deviations from center line    ; K = 3</p><p style="text-align: left;">R2 : k points in a row on same side of center line  ; K = 9</p><p style="text-align: left;">R3 : k points in a row, all increasing or all decreasing ; K =6</p><p style="text-align: left;">R4 : k points in a row, alternating up and down ; K =14</p><p style="text-align: left;">R5 : k out of k+1 points>2 standard deviations from center line (same side) ; K =2</p><p style="text-align: left;">R6 : k out of k+1 points>1 standard deviations from center line (same side) ; K=4</p><p style="text-align: left;">R7 : k points in a row within 1 standard deviation of center line (either side) ; K = 15</p><p style="text-align: left;">R8 : k points in a row>1 standard deviation of center line (either side) ; K= 8</p><p style="text-align: left;">Note : K value is editable </p></td></tr><tr><td colspan="1" class="confluenceTd">LSL</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">LSL is Lower Specification Limit. This field only accept numeric value.</span></td></tr><tr><td colspan="1" class="confluenceTd">USL</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">USL is Upper Specification Limit. This field only accept numeric value.</span></td></tr><tr><td colspan="1" class="confluenceTd">CPK Rule</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">This Cpk Rule allow user to define greater than (>) or greater equal to (>=)  Cpk Expectation.</p><p style="text-align: left;">Note : Cpk =<span style="color: rgb(34,34,34);">Process Capability Index</span></p></td></tr><tr><td colspan="1" class="confluenceTd">CPK Expectation</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Cpk Expectation field is for reference purpose and it is in decimal format. </span></td></tr><tr><td colspan="1" class="confluenceTd">View/Change Control Limits</td><td colspan="1" class="confluenceTd"><p>View the existing control limit or submit new control limit then system will trigger a request to ECN for approval. Once control limit approved in ECN , then the approved control limit will be shown on the control chart based on implemented date. The control limits are shown based on chart type and sequence of the control chart. Levey-Jennings - 1 set control limit , Xbar-R,Xbar-S , I-MR and User Defined chart - 2 sets control limits , I-MR-R/S- 3 sets control limits. For unequal sample size attribute control chart , there is only CL need to be fixed so it will only show the CL for PNP and CU chart on the screen.</p><p>Only user with permission allows to view/change control limits.</p><p><strong>Existing control limits </strong></p><ul><li>Without any fixed control limit approved, the existing control limits are populated the latest control limits from the control chart.</li><li>With fixed control limit approved, the existing control limits are showing the approved fixed control limit.</li><li>For unequal sample size attribute control chart , the latest UCL and LCL values always reflect from the control chart.</li><li><span style="color: rgb(23,43,77);">There is tool tip to help user on which chart that they are referring to.</span></li></ul><p><strong>Fixed control limits</strong></p><ul><li>Insert the fixed control limit based on control chart sequence.</li><li>Reason for changing - Allow user to state the reason why changing the control limit of control chart.</li><li>Submit for approval - system will trigger a request to ECN by sending all the necessary information ( site info, product info and product/process characteristic info )then ECN return ECN number embedded with ECN URL link ( redirect to ECN portal). The status will be changed to Open and all the fields disabled.</li><li>Cancel - Close the window</li><li>Open - ECN request pending for approval.</li><li>Approved - ECN request has been approved and return the implementation date.</li><li>Rejected - ECN request has been rejected and fixed control limits are cleared from the screen.</li><li><span style="color: rgb(23,43,77);">There is tool tip to help user on which chart that they are referring to.</span></li></ul><p><strong>Run Time</strong></p><ul><li>If the fixed control limits are not approved , then control chart's control limits will be dynamic( need to be calculated).</li><li>If the fixed control limits are approved , then control chart will be using the approved fixed control limits .</li><li>If the subsequence fixed control limits are pending for approval , then control chart will be using the latest approved fixed control limits.</li><li>User can't trigger new LCL-CL-UCL if the LCL-CL-UCL is pending ECN approval.</li><li>For unequal sample size attribute control chart , user can't trigger new CL if the CL is pending ECN approval.</li></ul></td></tr><tr><td colspan="2" class="confluenceTd"><h5 class="sectionTitle" id="ManageConfiguration-EmailNotification(SelectMultipleIDs)"><span style="color: rgb(0,0,0);">Email Notification</span><span> </span><span class="text-color" style="color: rgb(240,173,78);">(Select Multiple IDs)</span></h5></td></tr><tr><td colspan="1" class="confluenceTd">Operation Group</td><td colspan="1" class="confluenceTd"><p>Allow user to add multiple user which assigned to the customer data partition.</p><p>Allow user to delete the added user.</p><p>There is no email notification trigger for this user group.</p></td></tr><tr><td colspan="1" class="confluenceTd">Corrective Action (CA) Group</td><td colspan="1" class="confluenceTd"><p>Allow user to add multiple user which assigned to the customer data partition.</p><p>Allow user to delete the added user.</p><p>Email notification trigger to CA on the following conditions :</p><ul><li>When data is out of spec </li><li>When data point violated the rule.</li><li>When corrective action form is not submitted for 2hrs, 4 hrs and 6 hrs.</li><li>When escalated to manager</li><li>When the corrective action form is rejected by Action Approval group.</li><li>When 5 consecutive data points violated rule.</li><li>Phase review - 90 set data , 1 month and 3 months</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Action Approval (AA) Group</td><td colspan="1" class="confluenceTd"><p>Allow user to add multiple user which assigned to the customer data partition.</p><p>Allow user to delete the added user.</p><p>Email notification trigger to AA on the following condition :</p><ul><li>When received corrective action form for approval</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Manager Group</td><td colspan="1" class="confluenceTd"><p>Allow user to add multiple user which assigned to the customer data partition.</p><p>Allow user to delete the added user.</p><p>Email notification trigger to Manager Group on the following condition:</p><ul><li>When CA group didn't submit corrective action form for 6hrs.</li><li>When 5 consecutive data points violated rule.</li></ul></td></tr></tbody></table>


- #### **Soft Deletion and Restoration**

SPC is supporting soft deletion and restoration for manual configuration and bulk upload. It will be checking whether the following information is matched at the backend then restore the configuration with its data such SPC number , control chart data , SPC list data , Report for Global ,
Report for Site, and Report for Workcell.

- Data Source

- Site

- Customer/Division

- Project

- Product Family

- Material

- Assembly/Revision/Version

- Factory

- Mfg Manufacturing Area

- Mfg Route

- Mfg Route Step

- Mfg Resource

- Measure Manufacturing Area

- Measure Route

- Measure Route Step

- Measure Equipment

- Data Type

- Product/Process (CTQ/CTF)

- Control Chart

- Subgroup Size
Measure Manufacturing Area and Measure Route is only 
applicable

for data source = iFactory and MES.<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Conditions</th><th class="confluenceTh">Restoration </th></tr><tr><td class="confluenceTd"><span style="color: rgb(68,68,68);">Add the exact information as the deleted configuration.</span></td><td class="confluenceTd">Yes</td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Add the exact information but different USL/LSL,CPK expectation, CPK Rule , SPC phase review and Rule violation for product/Process characteristic</span></td><td class="confluenceTd">Yes</td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Without the exact Production information added.</span></td><td class="confluenceTd">No</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Without adding the exact Product/Process Characteristic (CTQ/CTF) information but with the exact number of product/Process characteristic added</span></td><td colspan="1" class="confluenceTd">No</td></tr><tr><td colspan="1" class="confluenceTd">Add <span style="color: rgb(0,0,0);">the exact information but with extra product/Process characteristic added.</span></td><td colspan="1" class="confluenceTd">No</td></tr></tbody></table>

