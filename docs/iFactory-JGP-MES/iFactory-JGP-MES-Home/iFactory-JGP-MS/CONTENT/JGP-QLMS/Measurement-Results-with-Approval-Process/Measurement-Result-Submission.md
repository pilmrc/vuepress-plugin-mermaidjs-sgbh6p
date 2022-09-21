# Introduction

This activity allows user to validate and submit measurement result of a Work Order for approval. 


### How to get there?




::: mermaid
graph LR
A("QLMS reports")-->0("Measurement Result Submission")

:::


#### Permission



- Measurement Result Submission


- Can Modify Measurement Result Submission


- Can Access Measurement Result Submission



#### Screen Activity


Measurement Result Submission screen enables user to perform the following activities:

- The page loads with  work order Submission Date (From-To) default as current week and user is allowed to change the dates that between 7 days date range


- User can clear the filter criteria to reset to default (ie. all the fields to be blank except date field to be defaulted as current week.)


- Allow user to see all available work order with status '
Pending report and auditing' which all tasks of the work order have been completed.

- User can filter the Work orders based on below criteria

- Work Order ID, Job Type, Project, Product Family, Material, Measurement Building,  Submitter, Production Machine ID, Work Order Submission Date (From - To)

- The workorder validate the measurement result:


- If the workorder is planned, the system need to validate the upload dimension code with all the configured dimension code.


- If the workorder is unplanned, the system need to validate the upload dimension code with the selected dimension code that confirmed in workorder confirmation.


- Validate the measurement result based on below criteria


- Within 1 Cavity, different samples, all dimensions cannot have the same values


- For each dimension, same value cannot appear more than 3 times


- For each measurement values, last 2 digit cannot be zero (eg. 0.0100)


- Compare measurement result with the configured nominal, +TOL , -TOL based on the dimension code.


- If the validation failed, system will automatically downloads the failed measured data in an excel file, so that user can identify what went wrong.


- If all the criteria of validation matched, system shows Validation successful message.


- Download the measurement result in .csv format


- Generate the report in defined format (such as: GRR, SPC, FAI & CPK)


- User can add, update or delete one or multiple PLM links against each WO


- Submit the measurement result for approval based on below criteria


- System will check if the measurement result has fulfilled the workorder quantity. If the uploaded measurement result quantity is not fulfilled the workorder quantity, then prompt a message “The quantity of measurement result is not tallied with workorder quantity.  Can you please confirm the measurement result is final?”


- If yes, then user needs to provide comment in order to continue the submission.


- If no, then user is not able to submit the measurement result for approval.


- System will check if the configured dimension code matched with measurement result dimension code. If the dimension code is not matched, then system does not allow user to submit measurement result for approval.


- If the workorder is planned, the system will check the uploaded dimension code with all configured dimension code.


- If the workorder is unplannd, the system will check the upload dimension code base on the selected dimension code that confirmed in workorder confirmation.


- User can select the preferred approver(s) as provided in Workflow Maintenance configuration against selected Job type for measurement result submission.


- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Production Machine ID, Measurement Building, Measurement Result)

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.

- The approval workflow still be shown if the approval workflow of the selected job type is soft deleted or associate with deleted data which is soft deleted in Dimension Maintenance or deleted in iFactory.


- If not configured the workflow and approver or approver is deleted:


- System will prompt "Workflow not found" if not configured the workflow against selected Job Type in Workflow Maintenance.


- System will prompt "No approvers were configured in the workflow" if not configured the approval level and approver is not configured or deleted in Workflow Maintenance.



#### **Fields** 



**Filter criteria** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Work Order ID</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">User can scan WO ID having Status '<span style="color: rgb(0,0,0);">Pending report and auditing</span>' and generate the report</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><p>All the available Job Types for all the factories, against Customer partitioning to be available here for user's selection.</p><p>User can filter the report data against field value selection.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Project</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>All the available Projects against Customer partitioning to be available here for user's selection.</p><p>User can filter the report data against field value selection.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Family</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>All the available Product Family for selected Project to be available here for user's selection.</p><p>User can filter the report data against field value selection.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>All the active materials against selected Product Family to be available</p><p>User can filter the report data against field value selection.</p></td></tr><tr><td colspan="1" class="confluenceTd">Measurement Building</td><td colspan="1" class="confluenceTd">All the available Measurment building to be available for selection</td></tr><tr><td colspan="1" class="confluenceTd">Submitter</td><td colspan="1" class="confluenceTd">User can key in submitter's name to filter against the input</td></tr><tr><td colspan="1" class="confluenceTd">Production Machine ID</td><td colspan="1" class="confluenceTd">User can key in Production Machine ID to filter against input</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Submission Date From</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field value is defaulted by 7 days earlier than current date. Although user can change the From date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 7 days</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Submission Date To</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field value is defaulted by current date. Although user can change the 'To' date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 7 days</p></td></tr></tbody></table>

**Available fields in Grid** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd"><p>Validate icon to be enabled only if the Work order has at least one measured data.</p><p>User can validate the measured Data against below criteria:</p><ul><li>Within 1 Cavity, different samples, all dimensions cannot have the same values</li><li>For each dimension, same value cannot appear more than 3 times</li><li>For each measurement values, last 2 digit cannot be zero (eg. 0.0100)</li><li>Compare measurement result with the configured nominal, +TOL , -TOL based on the dimension code.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Measurement Results</td><td colspan="1" class="confluenceTd">The icon is enabled only if at-least one measured data available. System will prompt a window for user to view, generate a report and submit for approval</td></tr><tr><td colspan="1" class="confluenceTd">PLM Link</td><td colspan="1" class="confluenceTd"><p>User can add, edit and delete PLM link(s) here.</p><p>Note : Suggest user to install the Google Chrome Extension : <span style="color: rgb(32,33,36);"><em>Enable local file links</em> if want to redirect to the shared folder path.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Work Order ID</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows all the Work order IDs matched with filtered criteria and having status 'Pending report and auditing'. This value is with hyperlink to redirect user to view WO details. System will display duplicated workorder ID if there there are multiple production machine ID configured for a workorder.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Production Machine ID</td><td style="text-align: left;" class="confluenceTd">Retrieves the value as per relative Work Order matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Shift</td><td colspan="1" class="confluenceTd">This field shows the configured Shift against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">This field shows as per customer partitioning</td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd">This field shows the configured Job Type against selected Work order IDs matched with filtered criteria</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Project</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">Retrieves the value as per relative Work Order matched with filtered criteria</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Family</td><td style="text-align: left;" colspan="1" class="confluenceTd">Retrieves the value as per relative Work Order matched with filtered criteria</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Retrieves the value as per relative Work Order matched with filtered criteria</p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version </td><td colspan="1" class="confluenceTd"><p>This field shows the configured Route against selected Work order IDs matched with filtered criteria.</p><ul style="text-align: left;"><li>If  the search Workorder ID has route value , then show the route and route version value.</li><li>If  the search Workorder ID doesn't has route value, then show NA.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>This field shows the configured Route Step against selected Work order IDs matched with filtered criteria</p><ul style="text-align: left;"><li>If the search Workorder ID has route step value , then show the value.</li><li>If the search Workorder ID doesn't has route step value, then show NA.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measuring Building</td><td style="text-align: left;" colspan="1" class="confluenceTd">Retrieves the value as per relative Work Order matched with filtered criteria</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows the total quantity of unit(s) delivered for measuring that had been configured for the particular production machine ID.</td></tr><tr><td colspan="1" class="confluenceTd">Submission Datetime</td><td colspan="1" class="confluenceTd">This field shows the submission datetime against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Work order Status</td><td colspan="1" class="confluenceTd">This field shows selected WO's current status</td></tr><tr><td colspan="1" class="confluenceTd">Cosmetic Inspection Result</td><td colspan="1" class="confluenceTd">This field shows cosmetic inspection result against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Cosmetic Comment</td><td colspan="1" class="confluenceTd">This field shows cosmetic comment that provided by inspector.</td></tr><tr><td colspan="1" class="confluenceTd">Submitter</td><td colspan="1" class="confluenceTd">This field shows the Submitter's name against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Submitter's Contact Number</td><td colspan="1" class="confluenceTd">This field shows the configured Submitter's Contact number against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Drawing Revision</td><td colspan="1" class="confluenceTd">This field shows the configured Drawing Revision against selected Work order IDs matched with filtered criteria</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Requirement</td><td colspan="1" class="confluenceTd">This field shows the Inspection Requirement against selected Work order IDs matched with filtered criteria</td></tr></tbody></table>



- **Available fields in Measurement Result screen**

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job Type</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows as per selected WO</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measurement Equipment Model</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows all the Equipment Model against which measured data has been uploaded</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Measuring Equipment Type</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows Measuring Equipment Type of the selected WO</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measuring User</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the measuring user that perform the measuring.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Employee ID</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field shows the employee ID of measuring user that perform the measuring.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Config</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the config provided for the measurement.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Production Machine ID</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the production machine ID that produced the unit.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Mold ID / Tooling ID</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the Mold ID/Tooling ID that produced the unit.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Cavity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the cavity that produced the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Sample Number</td><td colspan="1" class="confluenceTd">The field shows the sample number of the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd">This field shows the item number of the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The field shows the serial number of the unit .</td></tr><tr><td colspan="1" class="confluenceTd">Trial Number</td><td colspan="1" class="confluenceTd"><p>This field is available only if the job type is GRR</p><p>The field shows the trial number of the measurement result.</p></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code</td><td colspan="1" class="confluenceTd">The field shows the active Dimension Codes which have measured data against it</td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type</td><td colspan="1" class="confluenceTd"><p>The fields shows the configured dimension type. Dimension Type is quality control method and it will determine how the measurement result deviation should calculate.</p><ol><li>If Dimension Type is blank , then system not required to validate the measurement results for the configured dimension code and no deviation calculation is needed.</li><li>If Dimension Type = Tolerance , then system should validate the measurement results based on upper (Nominal +  (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code.</li></ol><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit and deviation from nominal. Leave deviation from lower limit as Blank.</li><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit and deviation from nominal.Leave deviation from upper limit as Blank.</li><li>If the upper limit and lower limit is blank, then no deviation calculation needed. </li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>3. If Dimension Type = GD &T, then system should validate the measurement results based on upper (Nominal + (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code.</p><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit and deviation from nominal. Leave deviation from lower limit as Blank.</li><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit and deviation from nominal.Leave deviation from upper limit as Blank.</li><li>If the upper limit and lower limit is blank, then no deviation calculation needed.</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>4.If Dimension Type = Max, then system should validate the measurement results based on upper (+TOL) OR Nominal for the configured dimension code.</p><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit. Leave deviation from lower limit  and deviation from nominal as Blank.</li><li>If there is only nominal configured for MAX dimension type, then system needs to consider nominal value as upper limit value. If the measurement result is out of upper limit range, then calculate the deviation from upper limit. Leave deviation from lower limit  and deviation from nominal as Blank.</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>5.If Dimension Type = Min, then system should validate the measurement results based on lower(-TOL) limits OR Nominal the configured dimension code.</p><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit. Leave deviation from upper limit  and deviation from nominal as Blank.</li><li>If there is only nominal configured for MIN dimension type, then system needs to consider nominal value as lower limit value. If the measurement result is out of lower limit range, then calculate the deviation from lower limit. Leave deviation from upper limit and deviation from nominal as Blank</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">SPC</td><td colspan="1" class="confluenceTd">The field shows the configured SPC </td></tr><tr><td colspan="1" class="confluenceTd">Measured Data</td><td colspan="1" class="confluenceTd">The field shows the uploaded/ manual inserted measurement result.</td></tr><tr><td colspan="1" class="confluenceTd">Nominal</td><td colspan="1" class="confluenceTd">The field shows the configured Nominal.</td></tr><tr><td colspan="1" class="confluenceTd">+TOL(Max)</td><td colspan="1" class="confluenceTd"><p>The field shows the configured +TOL( Tolerance) and determine the upper limit with this formula : Nominal + (+/-TOL(MAX)) </p></td></tr><tr><td colspan="1" class="confluenceTd">-TOL(Min)</td><td colspan="1" class="confluenceTd">The field shows the configured -TOL. (Tolerance) and determine the lower limit with this formula : Nominal <u>(</u> +/-TOL(MIN))</td></tr><tr><td colspan="1" class="confluenceTd">Deviation from Nominal</td><td colspan="1" class="confluenceTd"><p>The formula to calculate deviation from nominal.</p><p>    <em><span> </span></em><em>Deviation from nominal = ((+/-) Measured data - (+/-) Nominal)</em></p></td></tr><tr><td colspan="1" class="confluenceTd">Deviation from Tolerance </td><td colspan="1" class="confluenceTd"><p><span>This column shows the deviation from upper and lower limit.  </span></p><ol><li>The formula to calculate deviation from upper limit ( Nominal + (+TOL)).</li></ol><p><span>     </span><em>Deviation from upper limit = ((+/-) Measured data - (+/-) upper limit)</em></p><p><br /></p><p>2. The formula to calculate deviation from lower limit (Nominal + (-TOL)).</p><p>    <em><span> </span></em><em>Deviation from lower limit = ((+/-) Measured data - (+/-) lower limit)</em></p></td></tr></tbody></table>




#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/61079639.png)
[image2019-11-21_7-46-1.png](/.attachments/61079642.png)
