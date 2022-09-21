# Introduction

F
AI template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard . 
Below is the sample of FAI Template :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><span style="color: rgb(0,0,0);">FAI Template </span></th><th class="confluenceTh"><div class="content-wrapper"><p><span style="color: rgb(0,0,0);"><a href="attachments/59441451/59441452.xlsm" data-linked-resource-id="59441452" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="FAI.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="59441451" data-linked-resource-container-version="9">FAI.xlsm</a></span></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s job type is matched with FAI template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in FAI template , then system is able to fill measurement result into FAI template based on the following keys :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Fields in FAI Template</strong></span></p></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Data in QLMS system</strong></span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">FAI # (Column B)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Dimension Code</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Cav # (Tab name)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Cavity Number</span></p></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Method ( Column I )</span></td><td class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Equipment Type</span></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sample Number ( Column L, M, N)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sample Number</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Column L, M, N</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Measured Data</span></p></td></tr></tbody></table>

**If the data from QLMS is not matched with data in FAI template ,  then system will append the followings into FAI template based on cavity number (Tab  Name).** 
( Note : If the configured dimension details is different from measurement result's dimension details then system will insert configured dimension details into template after blank column )
<table class="relative-table confluenceTable" style="width: 41.1397%;"><colgroup><col style="width: 52.9272%;" /><col style="width: 46.9712%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Fields in FAI Template</strong></span></p></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Data in QLMS system</strong></span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">FAI # (Column B)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Dimension Code</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type ( Column E )</td><td colspan="1" class="confluenceTd">Dimension Type</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Nominal ( Column F)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Nominal</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">+TOL (Column G)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">+TOL</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">-TOL (Column H)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">-TOL</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Method ( Column I )</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Equipment Type</span></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sample Number (Column L, M, N)</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sample Number</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Column L, M, N</span></p></td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Measured Data</span></p></td></tr></tbody></table>

**The filled template's file name will be appended with workorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .** 
For sub-sequence/retest filling, system is allowed user to fill with  filled template :

- For filled template , system will update the filled template with the latest measurement result based on keys that mentioned above regardless the field is blank/filled.


- For blank template , system will fill the template with the latest measurement result based on keys that mentioned above.


- Append those unmatched data into template based on keys that mentioned above.


- For filled template , system will replace the generated datetime with the latest generated datetime for report name.




#### Attachments

[FAI.xlsm](/.attachments/59441452.xlsm)
