# Introduction

Batch contains a group of WIPs. When customers drop an order to Jabil, the planner may want to break the order to smaller groups by creating batches. This helps them to better plan and track daily production builds.




### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("BATCH MAINTENANCE")

:::

Screen Activity
Batch Maintenance enables user to perform the following activity:

- Create, view, update and delete Batch records

- View Serial Numbers in the Batch. User will need to click the Display button on the Details Tab to see all the Serial Numbers

- Export Serial Numbers in the Batch into an excel file

- Transfer Serial Numbers to another Batch




#### Screen Dependency


The following screen(s) has direct dependency with Batch

- WIP Release

- Manual Birth




#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Batch-MainTab"><strong>Main Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>Customer associated to the batch</p></td></tr><tr><td colspan="1" class="confluenceTd">Batch Status</td><td colspan="1" class="confluenceTd"><p>A batch can be in one of the statuses below:</p><ul><li>New (The batch is still under configuration and it is not ready to use in production)</li><li>Active (The currently being used or it is ready to use in production)</li><li>Complete (All the WIPs has a Complete/Done status in this batch)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Build Quantity</td><td colspan="1" class="confluenceTd"><p>Maximum WIP quantity that can be assigned to the batch</p></td></tr><tr><td colspan="1" class="confluenceTd">Restrict Material</td><td colspan="1" class="confluenceTd">If this field is enabled, only WIPs belonging to the configured material can be assigned to this batch. This will also enforce user to configure a material for this batch</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">If restrict material is enabled, user is required to configure a material for this batch</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Description of the material will be auto-populated once the material is selected</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Valid From Date Time</span></td><td colspan="1" class="confluenceTd">The date time where the batch starts being valid.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Valid To Date Time</span></td><td colspan="1" class="confluenceTd">The date time where the batch stops being valid.</td></tr><tr><td colspan="1" class="confluenceTd">Creation Date</td><td colspan="1" class="confluenceTd">The date where this batch is created</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Batch-DetailsTab"><span style="color: rgb(51,51,51);">Details Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Max Build Quantity</td><td colspan="1" class="confluenceTd"><span>The value displayed here follows the configured <span>Maximum Build Quantity in the Main Tab</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Released Quantity</td><td colspan="1" class="confluenceTd">The number of WIPs released into this batch</td></tr><tr><td colspan="1" class="confluenceTd">Completed Quantity</td><td colspan="1" class="confluenceTd">The number of WIPs completed in this batch</td></tr><tr><td colspan="1" class="confluenceTd"><span>Serial Number</span></td><td colspan="1" class="confluenceTd">The Serial Number of the WIP in this batch</td></tr><tr><td colspan="1" class="confluenceTd">Material Number</td><td colspan="1" class="confluenceTd">The top level material for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">The BOM for the WIP</td></tr><tr><td colspan="1" class="confluenceTd"><span>Order ID</span></td><td colspan="1" class="confluenceTd">The Order ID for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Date Released</td><td colspan="1" class="confluenceTd">The date the WIP is released in production</td></tr><tr><td colspan="1" class="confluenceTd">Completed</td><td colspan="1" class="confluenceTd">If the WIP is completed or has a Done status</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Batch-TransferWIPTab"><span style="color: rgb(51,51,51);">Transfer WIP Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Original Serial Number List</td><td colspan="1" class="confluenceTd">List of all the Serial Numbers in this batch</td></tr><tr><td colspan="1" class="confluenceTd"><span>Selected Serial Number List</span></td><td colspan="1" class="confluenceTd">List of the Serial Number selected for transfer to another batch. <br />User will need to use the single arrow button to move specific Serial Number or use the double arrow button to move all Serial Numbers between the two panes</td></tr><tr><td colspan="1" class="confluenceTd">Destination Batch</td><td colspan="1" class="confluenceTd">The new batch where the selected Serial Number is going to be transferred</td></tr></tbody></table>


