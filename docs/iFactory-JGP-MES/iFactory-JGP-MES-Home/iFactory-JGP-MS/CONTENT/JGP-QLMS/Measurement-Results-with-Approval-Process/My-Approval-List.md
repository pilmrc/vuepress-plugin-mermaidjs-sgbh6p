# Introduction

My Approval List is a page where user have the ability to review , approve  and reject the submitted measurement results. Once approved , system will auto assign to next level approval if required. Once rejected , system will auto trigger email notification to measurement result submitter.
The measurements results will be shown WorkOrder repeatedly in the list based on production machine ID if the work order is configured with multiple machine ID.
User is able to search the measurement results by WorkOrder ID, Job Type or Project.


### How to get there?



::: mermaid
graph LR
A("QLMS REPORT")
:::
![wiki arrow.png](/.attachments/59441415.png)



::: mermaid
graph LR
A("MY APPROVAL LIST")
:::


#### Permission



- My Approval List

- Can Access My Approval List

- Can Modify My Approval List


#### Screen Activity


My Approval List enables user to perform the following activities:

- Search the submitted measurement results by WorkOrder ID, Job Type or Project filtering


- View all the submitted measurement results with Approval status “Pending Approval” based on the user login and customer partition.


- Directed to Inspection Registration page when click on the WorkOrder ID


- Approve/Reject the submitted measurement results.


- If there is deleted in iFactory, system will handle deleted in iFactory configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Production Machine ID, Measurement Result Summary) will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


- System will retrieve soft deleted configuration from ifactory / Dimension Maintenance configuration for filter fields.



#### Screen Dependency


The following screen(s) has dependency with My Approval List

- [Measurement Result Submission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission.md)


- [My Submission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/My-Submission.md)

- [Approved Measurement Results](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Approved-Measurement-Results.md)



#### Search Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 17.2025%;" /><col style="width: 82.7975%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">WorkOrder ID</td><td class="confluenceTd"><p>Allow user to search the submitted measurement results that available in<span style="letter-spacing: 0.0px;"> the list.</span></p></td></tr><tr><td class="confluenceTd">Job Type</td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow user to filter the submitted measurement results based on job type that available against customer partition.</span></p></td></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Allow user to filter the submitted measurement results based on</span><span style="color: rgb(0,0,0);"> Project that available against customer partition.</span></p></td></tr></tbody></table>



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 17.3717%;" /><col style="width: 82.6847%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">PLM Links</td><td colspan="1" class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(0,0,0);">Click on the icon and a screen will be prompted for user to view the link of PLM links and its name .</span></p><p style="text-align: left;"><span style="color: rgb(0,0,0);">Note : Suggest user to install the Google Chrome Extension : <span style="color: rgb(32,33,36);"><em>Enable local file links</em> if want to redirect to the shared folder path.</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Measurement Result Summary</td><td colspan="1" class="confluenceTd"><p>Click on the icon and a measurement result summary screen will be prompted for user to review, approve and reject the submitted Measurement Result.</p><p>Measurement result summary screen is a page to summary the measurement result for the particular workorder on how many measured data pass or fail the measurement.</p><p>The failed measured result will be shown in the table and allow user to download the failed measured result for further analysis.</p><p>There is a function for user to generate the report with defined templates ( FAI , GRR , CPK and SPC).</p></td></tr><tr><td class="confluenceTd">WorkOrder ID</td><td class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(0,0,0);">List all the submitted measurement results based on the user login and customer partition.</span></p><p style="text-align: left;"><span style="color: rgb(0,0,0);">This field is clickable and will redirect user to Inspection Registration page for more details.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Production Machine ID</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The related Production Machine ID of measurement result that submitted for approval.</span></td></tr><tr><td colspan="1" class="confluenceTd">Approval Status</td><td colspan="1" class="confluenceTd">Measurement Results with status " pending for approval " will be shown.</td></tr><tr><td colspan="1" class="confluenceTd">Approval Details</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Click on the icon and a screen will be prompted for user to view the Approval History.</span></p><p><span style="color: rgb(0,0,0);">Executed By : Who approved the measurement result</span></p><p><span style="color: rgb(0,0,0);">Executed Datetime : When the measurement result has been approved.</span></p><p><span style="color: rgb(0,0,0);">Approval level : Which level of approval</span></p><p><span style="color: rgb(0,0,0);">Approval Action : To indicate the measurement result is approved or rejected by approver.</span></p><p><span style="color: rgb(0,0,0);">Remark : Approval remark</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Project</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The related project of measurement result that submitted for approval.</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The related product family of measurement result that submitted for approval.</span></td></tr><tr><td colspan="1" class="confluenceTd">Material </td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The related material of measurement result that submitted for approval.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The related route of measurement result that submitted for approval.</span></p><ul style="text-align: left;"><li>If  the submitted Workorder ID has route value , then show the route and route version value.</li><li>If  the submitted Workorder ID doesn't has route value, then show NA.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The related route step of measurement result that submitted for approval.</span></p><ul style="text-align: left;"><li>If the submitted Workorder ID has route step value , then show the value.</li><li>If the submitted Workorder ID doesn't has route step value, then show NA.</li></ul></td></tr><tr><td class="confluenceTd">Job Type</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">The related job type of measurement result that submitted for approval.</span></td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">Total quantity for the production machine ID that submitted for measuring/ inspection.</span></td></tr><tr><td colspan="1" class="confluenceTd">Urgency Status</td><td colspan="1" class="confluenceTd">Urgency status is to indicate how urgent is the workorder ID need to be processed.</td></tr><tr><td colspan="1" class="confluenceTd">Measurement Result Submitter</td><td colspan="1" class="confluenceTd">Measurement Result Submitter is person who submitted the measurement results for approval.</td></tr><tr><td colspan="1" class="confluenceTd">Measurement Result Submission Datetime</td><td colspan="1" class="confluenceTd">Measurement Result Submission Datetime is the measurement results submitted datetime.</td></tr></tbody></table>


- **Available fields in Failed Measurement Result Details**

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measurement Equipment Model</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows all the Equipment Model against which measured data has been uploaded</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Config</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the config provided for the measurement.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Cavity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the cavity that produced the unit.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the sample number of the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd">The field shows the item number of the unit.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the serial number of the unit .</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Trial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>This field is available only if the job type is GRR</p><p>The field shows the trial number of the measurement result.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Dimension Code</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field shows the active Dimension Codes which have measured data against it</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Dimension Type</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The fields shows the configured dimension type. Dimension Type is quality control method. It will determine whether the measurement result pass or fail and how the deviation should calculate.</p><p>1.If Dimension Type is blank , system not required to validate the measurement results for the configured dimension code and no deviation calculation is needed. Therefore, the measurement result wouldn't be shown in this table.</p><p>2.If Dimension Type = Tolerance , then system should validate the measurement results based on upper (Nominal +  (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code.</p><p> Measurement Result Pass or Fail,</p><ul><li>If the upper limit and lower limit is blank, then no judgement for the measurement result and it wouldn't show in this table.</li><li>If the measurement result is out of upper limit range, then it will show in this table.</li><li>If the measurement result is out of lower limit range, then  it will show in this table.</li><li>If the measurement result is within the range , then consider pass and it wouldn't show in this table.</li></ul><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit and deviation from nominal. Leave deviation from lower limit as Blank.</li><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit and deviation from nominal.Leave deviation from upper limit as Blank.</li><li>If the upper limit and lower limit is blank, then no deviation calculation needed. </li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>3. If Dimension Type = GD &T, then system should validate the measurement results based on upper (Nominal + (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code.</p><p>Measurement Result Pass or Fail,</p><ul><li>If the upper limit and lower limit is blank, then no judgement for the measurement result and it wouldn't show in this table.</li><li>If the measurement result is out of upper limit range, then it will show in this table.</li><li>If the measurement result is out of lower limit range, then  it will show in this table.</li><li>If the measurement result is within the range , then consider pass and it wouldn't show in this table.</li></ul><p>For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit and deviation from nominal. Leave deviation from lower limit as Blank.</li><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit and deviation from nominal.Leave deviation from upper limit as Blank.</li><li>If the upper limit and lower limit is blank, then no deviation calculation needed.</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>4.If Dimension Type = Max, then system should validate the measurement results based on upper (+TOL) OR Nominal for the configured dimension code.</p><p>Measurement Result Pass or Fail,</p><ul><li>If the measurement result is out of upper limit range ( +TOL / Nominal ), then will be shown in this table.</li><li>If the measurement result is within the range , then consider pass and it wouldn't show in this table.</li></ul><p>  For deviation calculation ,</p><ul><li>If the measurement result is out of upper limit range, then calculate the deviation from upper limit. Leave deviation from lower limit  and deviation from nominal as Blank.</li><li>If there is only nominal configured for MAX dimension type, then system needs to consider nominal value as upper limit value. If the measurement result is out of upper limit range, then calculate the deviation from upper limit. Leave deviation from lower limit  and deviation from nominal as Blank.</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul><p>5.If Dimension Type = Min, then system should validate the measurement results based on lower(-TOL) limits OR Nominal the configured dimension code.</p><p>Measurement Result Pass or Fail,</p><ul><li>If the measurement result is out of  lower limit range ( -TOL / Nominal ), then will be shown in this table.</li><li>If the measurement result is within the range , then consider pass and it wouldn't show in this table.</li></ul><p>For deviation calculation ,</p><ul><li>If the measurement result is out of lower limit range, then calculate the deviation from lower limit. Leave deviation from upper limit  and deviation from nominal as Blank.</li><li>If there is only nominal configured for MIN dimension type, then system needs to consider nominal value as lower limit value. If the measurement result is out of lower limit range, then calculate the deviation from lower limit. Leave deviation from upper limit and deviation from nominal as Blank</li><li>If the measurement result is within the range , then no deviation calculation needed.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">SPC</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the configured SPC </td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measured Data</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the uploaded/ manual inserted measurement result.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Nominal</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the configured Nominal.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">+TOL(Max)</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field shows the configured +TOL( Tolerance) and determine the upper limit with this formula : Nominal + (+/-TOL(MAX)) </p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">-TOL(Min)</td><td style="text-align: left;" colspan="1" class="confluenceTd">The field shows the configured -TOL. (Tolerance) and determine the lower limit with this formula : Nominal <u>(</u> +/-TOL(MIN))</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Deviation from Nominal</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The formula to calculate deviation from nominal.</p><p>    <em><span> </span></em><em>Deviation from nominal = ((+/-) Measured data - (+/-) Nominal)</em></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Deviation from Tolerance</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>This column shows the deviation from upper and lower limit. </span></p><p><span>1.</span>The formula to calculate deviation from upper limit ( Nominal + (+TOL)).</p><p><span>     </span><em>Deviation from upper limit = ((+/-) Measured data - (+/-) upper limit)</em></p><p>2.The formula to calculate deviation from lower limit (Nominal + (-TOL)).</p><p>    <em><span> </span></em><em>Deviation from lower limit = ((+/-) Measured data - (+/-) lower limit)</em></p></td></tr></tbody></table>





#### Attachments

[wiki arrow.png](/.attachments/59441415.png)
