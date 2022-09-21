# Introduction

**Usage:** 
$detailsTable = GetAsOrderedDetailsForCurrentWIP();


**Description:** Returns all child items for the customer order line item associated with the currently executing WIP.


The Test Cell must be running in WIP mode, and the WIP must be associated to a Customer Order via a SFO for this function to execute successfully.
<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><em>None</em></td><td style="text-align: center;" class="confluenceTd"><strong>-</strong></td><td class="confluenceTd"> </td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$detailsTable</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">DataTable containing all of the sub-item details from the customer order + delivery associated to the currently running WIP.</td></tr></tbody></table>


**Usage Example(s):** 
$detailsTable = GetAsOrderedDetailsForCurrentWIP(); //grab the current WIP as-ordered details - only works if WIP is associated to SFO

DataTable_ShowInWindow($detailsTable);