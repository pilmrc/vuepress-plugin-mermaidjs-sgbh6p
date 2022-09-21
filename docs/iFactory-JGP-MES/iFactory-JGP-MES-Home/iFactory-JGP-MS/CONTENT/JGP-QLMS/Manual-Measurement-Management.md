# Introduction

Manual measurement management page allows user to manually insert measured data into QLMS system based on selected work-order , production machine ID, measuring equipment type , measuring equipment model and measuring user.
This page allows user to insert measured data against different production machine ID, measuring equipment type and measuring equipment model for one WorkOrder ID. 
If user inserts measured data into 2 different measuring equipment model but same measuring equipment type , then system will capture the latest measured data for measurement result.
If user inserts measured data into 2 measuring equipment type , then system will capture both the latest measured data for measurement result.


### How to get there?



::: mermaid
graph LR
A("QLMS LAB OPERATIONS")-->0("Manual Measurement Management")

:::


#### Permission



- Manual Measurement Management


- Can Access Manual Measurement Management


- Can Modify Manual Measurement Management



#### Screen Activity


Manual Measurement Management enables user to perform the following activity:

- Insert , save , clear , update and delete the measurement records against the scanned WorkOrder ID ,Production Machine ID, Measuring Equipment Type , Measuring Equipment Model and Measuring User.

- Retrieve the latest saved measurement records against the scanned WorkOrder ID, Production Machine ID, Measuring Equipment Type , Measuring Equipment Model and Measuring User.


#### Screen Specification


If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:

- All the configured data (Process Type, Project, Product Family, Material, Job Route/Version, Route Step, Measuring Building)

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.

- The resource of Production Machine is soft deleted, but system still need to show the Production Machine ID which associated to the workorder ID.


- The resource of Measuring Equipment Model is soft deleted, but system still need to show the Measuring Equipment Model which the task assigned to the resource. After collected the task, system will not show the soft deleted resource.

If the soft deleted resource has been restored, then allow user to configure with the restored values. System should display the resource in Measuring Equipment Model field.



#### Actions


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Action</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Save</td><td class="confluenceTd">Allow user to save the record.</td></tr><tr><td class="confluenceTd">Clear</td><td class="confluenceTd">Allow user to clear the entire page.</td></tr><tr><td class="confluenceTd">Delete </td><td class="confluenceTd">Allow user to delete the record.</td></tr></tbody></table>



#### Selection Criteria


<table class="relative-table wrapped confluenceTable" style="width: 94.5101%;"><colgroup><col style="width: 16.1884%;" /><col style="width: 83.7675%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Work Order ID</span></td><td style="text-align: left;" class="confluenceTd">User is able to scan / insert Work Order ID in order to start the manual measurement process.  Only the Work Order ID with " Confirmed and Pending Allocation " , " Measuring in Progress" or " Pending for auditing and Reports " work order status is able to start the manual measurement process. </td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Process Type</span></td><td colspan="1" class="confluenceTd">Process type that associated with the scanned Work Order ID.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Customer</span></td><td colspan="1" class="confluenceTd">Customer that associated with the scanned Work Order ID. </td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Project</span></td><td colspan="1" class="confluenceTd">Project that associated with the scanned Work Order ID</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Product Family</span></td><td colspan="1" class="confluenceTd">Product family that associated with the scanned Work Order ID</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Material</span></td><td colspan="1" class="confluenceTd">Material  that associated with the scanned Work Order ID</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job Type</span></td><td colspan="1" class="confluenceTd">Job Type that associated with the scanned Work Order ID</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version </td><td colspan="1" class="confluenceTd"><p>Route that associated with the scanned Work Order ID. </p><ul><li>If  the scanned Workorder ID has route value , then show the route value and version.</li><li>If  the scanned Workorder ID doesn't has route value, then show NA.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>Route Step that associated with the scanned Work Order ID</p><ul><li>If the scanned Workorder ID has route step value , then show the value.</li><li>If the scanned Workorder ID doesn't has route step value, then show NA.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measurement Area</span></td><td colspan="1" class="confluenceTd">Measurement Area that associated with the scanned Work Order ID</td></tr><tr><td colspan="1" class="confluenceTd">Production Machine ID</td><td colspan="1" class="confluenceTd"><p>This field allows user to select the production machine ID that associated with the scanned Work Order ID.</p><p>If the resource is soft deleted, system will be<span> still showing the production machine id which is associated to the workorder ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Equipment Type</span></td><td colspan="1" class="confluenceTd">This field allows user to select the measuring equipment type that will be using for measurement activity.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Equipment model</span></td><td colspan="1" class="confluenceTd"><p>This field allows user to select the measuring equipment model that will be using for measurement activity. The measuring equipment model value will be displayed based on the selected measuring equipment type and measurement building.</p><p>System will show the soft deleted resource in the Measuring equipment model if there is a workorder assigned to the resource.<br />System will not show the soft deleted resource if there is no assigned workorder.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Trial Number</span></td><td colspan="1" class="confluenceTd"><p>This field only enable if work order ID's Job Type is GRR type and system will mandate user to provide trial number .</p><p>User is allowed to select trial number 1, 2 and 3 to indicate the trial number of the measurement results.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Config</span></td><td colspan="1" class="confluenceTd">This field allows user to provide config if there is config for the work order ID.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring user</span></td><td colspan="1" class="confluenceTd"><p>This field allows user to select NTID user or insert Non-NTID user before save the measurement results.</p><p>It is searchable for NTID user and employee ID will be populated based on selected NTID user.</p><p>It is non searchable for Non-NTID user . User needs to manually insert Non-NTID name and Employee ID before saving the measurement results.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Employee ID</span></td><td colspan="1" class="confluenceTd"><p>This field will be auto populated if NTID user is selected.</p><p>User needs to manually insert employee ID for Non-NTID user.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Datetime</span></td><td colspan="1" class="confluenceTd"><p>This field allows user to insert measuring datetime for measurement activity.</p><p>User is mandated to provide measuring datetime if there is an update on the retrieved data.</p></td></tr></tbody></table>



- #### Fields

<table class="relative-table wrapped confluenceTable" style="width: 93.8151%;"><colgroup><col style="width: 12.6909%;" /><col style="width: 87.2943%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">WorkOrder ID</td><td style="text-align: left;" class="confluenceTd">The scanned work order ID will be auto populated based on the scanned/ inserted work order ID.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Production Machine ID</td><td style="text-align: left;" colspan="1" class="confluenceTd">Production Machine ID that associated with the scanned/inserted work order ID.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Mold ID/Tooling ID</td><td style="text-align: left;" colspan="1" class="confluenceTd">Mold ID/Tooling ID that associated with the scanned/inserted work order ID.</td></tr><tr><td colspan="1" class="confluenceTd">Cavity</td><td colspan="1" class="confluenceTd">Cavity that associated with the scanned/inserted work order ID.</td></tr><tr><td colspan="1" class="confluenceTd">Sample Number</td><td colspan="1" class="confluenceTd">Sample Number that associated with the scanned/inserted work order ID. Sample number is depending on how many quantity that associated to the cavity in work order ID. </td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd">Item Number that associated with the scanned/inserted work order ID. Item number is depending on how many quantity that associated to sample number in work order ID.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Serial Number that associated with with the scanned/inserted work order ID for Repetitive process type. Each serial number has only one sample number associated with it.</td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code</td><td colspan="1" class="confluenceTd"><p>Dimension code is populated based on with the scanned/inserted work order ID's configurations ( Factory , Customer, Project , Product Family , Material , Job Type  and Drawing version/revision ) and the selected measuring equipment type.</p><ul><li>If the scanned work order ID is <span style="color: rgb(23,43,77);">unplanned, the Dimension Code is populated based on confirmed in work order confirmation.</span></li><li><span style="color: rgb(23,43,77);">If the scanned work order ID is planned, the Dimension Code is  populated based on the work order ID's configurations.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type</td><td colspan="1" class="confluenceTd"><p>Dimension Type is quality standard that determine the degree of accuracy and precision is needed on each controlled feature of the part.</p><p>There are 4 types of dimension type that implemented in QLMS:</p><ul><li>Tolerance </li><li>GD& T (Geometric dimensioning and tolerancing)</li><li>MAX </li><li>MIN </li></ul><p>Dimension Type is populated based on the configured dimension code.</p></td></tr><tr><td colspan="1" class="confluenceTd">SPC</td><td colspan="1" class="confluenceTd">SPC that associated with the populated dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">Nominal</td><td colspan="1" class="confluenceTd">Nominal that associated with the populated dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">+TOL</td><td colspan="1" class="confluenceTd">+TOL that that associated with the populated dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">-TOL</td><td colspan="1" class="confluenceTd">-TOL that associated with the populated dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">Measured Data </td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allow user to provide the measurement data for each sample number in decimal format (max is +99999.99999 and – 99999.99999, 0 is also acceptable). The measurement result will be validated based on the dimension type.</p><p>Allow user to fill in the dimension codes with measured data for the selected measuring equipment model partially. The saved measured data will be retrieved for each measuring equipment model with the latest data.</p><p>For Job type except GRR, If measured data has been inserted into the same dimension code for same equipment type but different measuring equipment model:</p><ol><li>System will replace the latest measured data for the dimension code.</li><li>System displays the latest measured data for the dimension code if the measuring equipment model is inserted with the latest measured data.</li><li>System will display blank for the dimension code if the measuring equipment model is inserted with older measured data.</li></ol><p>For GRR job type , If measured data has been inserted into the same dimension code for same equipment type and measuring equipment model but different trial number:</p><ol><li>System will replace the latest measured data for the dimension code based on trial number.</li><li>System displays the latest measured data for the dimension code if the measuring equipment model is inserted with the latest measured data based on trial number.</li><li>System will display blank for the dimension code if the measuring equipment model is inserted with older measured data based on trial number.</li></ol><p>For GRR job type , If measured data has been inserted into the same dimension code for same equipment type but different measuring equipment model and trial number:</p><ol><li>System will replace the latest measured data for the dimension code based on measuring equipment model and trial number.</li><li>System displays the latest measured data for the dimension code if the measuring equipment model is inserted with the latest measured data based on measuring equipment model and trial number.</li><li>System will display blank for the dimension code if the measuring equipment model is inserted with older measured data based on measuring equipment model and trial number.</li></ol><p>Measurement Equipment Type with log file uploading and manual inserting regardless of job types:</p><ol><li>User is unable to insert the measured data manually if all the dimension code uploaded by log file for same measurement equipment type but different measuring equipment </li><li>User is able to insert the measured data manually only if the dimension code is not uploaded by log file. If the dimension code has been uploaded by log file then user can't insert the value into that dimension code. Measured data that uploaded through log file is always on highest priority.</li></ol><ul><li> Dimension Type is blank , then system not required to validate the measurement results for the configured dimension code.</li><li> Dimension Type = Tolerance , then system should validate the measurement results based on upper (Nominal +  (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code. If the measurement result is out of upper or lower limit range, then bold the measurement result in red.</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567802.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567802.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="67567802" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-3-11-10-3-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="59441512" data-linked-resource-container-version="23" /></span></p><ul><li>Dimension Type = GD &T, then system should validate the measurement results based on upper (Nominal + (+TOL)) and lower (Nominal + (-TOL) limits for the configured dimension code. If the measurement result is out of upper or lower limit range, then bold the measurement result in red.</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567804.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567804.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="67567804" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-3-11-10-13-13.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="59441512" data-linked-resource-container-version="23" /></span></p><ul><li>Dimension Type = Max, then system should validate the measurement results based on upper (+TOL) OR Nominal for the configured dimension code. If the measurement result is out of upper limit / nominal range, then bold the measurement result in red.</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567801.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567801.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="67567801" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-3-11-10-0-30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="59441512" data-linked-resource-container-version="23" /></span></p><ul><li><p>Dimension Type = Min, then system should validate the measurement results based on lower (-TOL) limits OR Nominal for the configured dimension code. If the measurement result is out of lower limit/nominal range, then bold the measurement result in red.</p></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567800.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/67567800.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="67567800" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-3-11-10-0-0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="59441512" data-linked-resource-container-version="23" /></span></p></div></td></tr></tbody></table>




#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441517.png)





