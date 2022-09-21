# Introduction

SIP SPC
template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard . The template limit up to 32 sheets (including SPC template sheet) due to the report is for one whole month.
Below is the sample of SPC Template :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh"><span style="color: rgb(0,0,0);">SPC Template </span></th><th style="text-align: left;" class="confluenceTh"><div class="content-wrapper"><p><a href="attachments/84705537/84705538.xlsx" data-linked-resource-id="84705538" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP SPC.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="84705537" data-linked-resource-container-version="2">SIP SPC.xlsx</a></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s job type is matched with SPC template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will check if production date available in the template based on Work-Order：


- If no production date matched , system will copy the template and insert the production date as tab name, then
system will fill the measurement result into template and prompt user to download the filled template.

- If the production date is matched, then system fill the
measurement result 
into template and prompt user to download the filled templateIf the data from QLMS is matched with data in SPC template , then system is able to fill measurement result into SPC template based on the following keys :
<table class="relative-table confluenceTable" style="width: 64.1799%;"><colgroup><col style="width: 28.9991%;" /><col style="width: 36.1848%;" /><col style="width: 34.8161%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><span>Fields in SPC</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Data in QLMS system</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Remarks</span></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>FAI # (Column A)</p></td><td style="text-align: left;" class="confluenceTd"><p>Dimension Code</p></td><td style="text-align: left;" class="confluenceTd"><p>Key</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Inspection Method (Column B)</p></td><td colspan="1" class="confluenceTd"><p>Measuring Equipment Type</p></td><td colspan="1" class="confluenceTd"><p>Key</p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sheet name<span> </span></span><span style="color: rgb(0,0,0);">（</span><span style="color: rgb(0,0,0);">MM-DD)</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Production Date</span></p></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Production Date (MM-DD) (Starts from Column J, Row 11)</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Production Date</span></p></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Production Machine ID + Mold ID +Cavity number + Sample Number(Starts from Column J, Row 12)</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Production Machine ID-Mold ID-Cavity Number-Sample Number</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>fill in by system and each attribute separated by underscore(-).</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Starting from column J and onwards</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Measured Data</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr></tbody></table>



Production Machine ID_Mold ID_Cavity Number_Sample Number
fill in by system and each attribute separated by underscore(_).
Starting from column J and onwards
Measured Data

System will fill in the following information based on the selected Workorder ID.
<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><strong>Field in SPC</strong></p></th><th style="text-align: left;" class="confluenceTh"><p><strong>Data in QLMS System</strong></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Product Family</span><span style="color: rgb(0,0,0);">(Column B Row<span>  </span>4)</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Product Family</span></p></td></tr></tbody></table>

**The filled template's file name will be appended with WorkorderID and generated datetime ( e.g : Report name_ generated datetime) .** 
For sub-sequence/retest filling, system is allowed user to fill with  filled template :

- For filled template , system will update the filled template with the latest measurement result based on keys that mentioned above regardless the field is blank/filled.


- For blank template , system will fill the template with the latest measurement result based on keys that mentioned above.


- For filled template , system will replace the generated datetime with the latest generated datetime for report name.



#### Attachments

[SIP SPC.xlsx](/.attachments/84705538.xlsx)
