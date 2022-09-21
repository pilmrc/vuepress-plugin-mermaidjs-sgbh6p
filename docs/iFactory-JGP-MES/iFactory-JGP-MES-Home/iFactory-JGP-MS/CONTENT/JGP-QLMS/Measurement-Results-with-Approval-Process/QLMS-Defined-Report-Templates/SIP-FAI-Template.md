# Introduction

SIP F
AI template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard .
Below is the sample of FAI Template :
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh"><span style="color: rgb(0,0,0);">FAI Template </span></th><th style="text-align: left;" class="confluenceTh"><div class="content-wrapper"><p><a href="attachments/84705475/84705476.xlsm" data-linked-resource-id="84705476" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP FAI.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="84705475" data-linked-resource-container-version="2">SIP FAI.xlsm</a></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s job type is matched with FAI template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in FAI template , then system is able to fill measurement result into FAI template based on the following keys :
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p><span>Fields in FAI Template</span></p></th><th class="confluenceTh"><p><span>Data in QLMS system</span></p></th><th class="confluenceTh"><p><span>Remarks</span></p></th></tr><tr><td class="confluenceTd"><p>FAI # (Column A)</p></td><td class="confluenceTd"><p>Dimension Code</p></td><td class="confluenceTd"><p><br /></p></td></tr><tr><td class="confluenceTd"><p>Inspection Method ( Column H )</p></td><td class="confluenceTd"><p>Measuring Equipment Type</p></td><td class="confluenceTd"><p><br /></p></td></tr><tr><td class="confluenceTd"><p>Sample Number (Column I,J,K)</p></td><td class="confluenceTd"><p>Sample Number</p></td><td class="confluenceTd"><p><br /></p></td></tr><tr><td class="confluenceTd"><p>Column I,J,K</p></td><td class="confluenceTd"><p>Measured Data</p></td><td class="confluenceTd"><p><br /></p></td></tr><tr><td class="confluenceTd"><p>Cavity<span> <span> </span></span>(Tab Name)</p></td><td class="confluenceTd"><p>Cavity</p></td><td class="confluenceTd"><p>Cavity number format :<span> </span><span>Cav #</span>-XXX</p></td></tr></tbody></table>





_XXX
( Note : If the configured dimension details is different from measurement result's dimension details then system will insert configured dimension details into template after blank column )
System will fill in the following information based on the selected Workorder ID.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field in FAI Template</strong></p></th><th class="confluenceTh"><p><strong>Data in QLMS System</strong></p></th></tr><tr><td class="confluenceTd"><p>Part Number (Column D Row 2)</p></td><td class="confluenceTd"><p>Drawing revision</p></td></tr><tr><td class="confluenceTd"><p>Part Description<span>  </span>(Column D Row 3)</p></td><td class="confluenceTd"><p>Product Family</p></td></tr><tr><td class="confluenceTd"><p>Revision (Column D Row 4)</p></td><td class="confluenceTd"><p>Drawing revision</p></td></tr></tbody></table>


The filled template's file name will be appended with WorkorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .For sub-sequence/retest filling, system is allowed user to fill with  filled template :

- For filled template , system will update the filled template with the latest measurement result based on keys that mentioned above regardless the field is blank/filled.


- For blank template , system will fill the template with the latest measurement result based on keys that mentioned above.


- For filled template , system will replace the generated datetime with the latest generated datetime for report name.




#### Attachments

[SIP FAI.xlsm](/.attachments/84705476.xlsm)
