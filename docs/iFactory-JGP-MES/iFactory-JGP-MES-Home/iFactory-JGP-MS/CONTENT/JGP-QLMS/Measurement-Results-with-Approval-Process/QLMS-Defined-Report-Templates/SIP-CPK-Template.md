# Introduction

SIP CPK 
template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard .
Below is the sample of CPK Template :
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">CPK version</th><th class="confluenceTh">Template File</th></tr><tr><td class="confluenceTd">CPK version 6-5 Template</td><td class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/84705532/84705533.xlsm" data-linked-resource-id="84705533" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP CPK Rev 6-5.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="84705532" data-linked-resource-container-version="5">SIP CPK Rev 6-5.xlsm</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">CPK version 6-5 Template</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/84705532/84705534.xlsm" data-linked-resource-id="84705534" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP CPK Rev 7-8.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="84705532" data-linked-resource-container-version="5">SIP CPK Rev 7-8.xlsm</a></p></div></td></tr></tbody></table>

System will validate if the selected Work-Order’s job type is matched with CPK template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in CPK template for version 6-5 , then system is able to fill measurement result into CPK template based on the following keys :
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><span>Fields in CPK version 6-5 Template</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Data in QLMS system</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Remarks</span></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>FAI # (Column B Row 15)</p></td><td style="text-align: left;" class="confluenceTd"><p>Dimension Code</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Inspection Method ( Column B Row 19 )</p></td><td style="text-align: left;" class="confluenceTd"><p>Measuring Equipment Type</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Sample Number (Column B Row 35-66)</p></td><td style="text-align: left;" class="confluenceTd"><p>Sample Number</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Row 35-66</p></td><td style="text-align: left;" class="confluenceTd"><p>Measured Data</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Cavity<span>  </span>(Tab Name)</p></td><td style="text-align: left;" class="confluenceTd"><p>Cavity</p></td><td style="text-align: left;" class="confluenceTd"><p>Cavity number format :<span> </span><span>Cav #</span>-XXX</p></td></tr></tbody></table>





_XXX
( Note : If the configured dimension details is different from measurement result's dimension details then system will insert configured dimension details into template after blank column )
System will fill in the following information based on the selected Workorder ID.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><strong>Field in CPK version 6-5 Template</strong></p></th><th style="text-align: left;" class="confluenceTh"><p><strong>Data in QLMS System</strong></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>Part Number (Column C Row 2)</p></td><td style="text-align: left;" class="confluenceTd"><p>Drawing revision</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Part Description<span>  </span>(Column C Row 3)</p></td><td style="text-align: left;" class="confluenceTd"><p>Product Family</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Revision (Column F Row 2)</p></td><td style="text-align: left;" class="confluenceTd"><p>Drawing revision</p></td></tr></tbody></table>


If the data from QLMS is matched with data in CPK template for version 7-8 , then system is able to fill measurement result into CPK template based on the following keys :
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><span>Fields in CPK version 7-8 Template</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Data in QLMS system</span></p></th><th style="text-align: left;" class="confluenceTh"><p><span>Remarks</span></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>FAI # (Column H Row 6)</p></td><td style="text-align: left;" class="confluenceTd"><p>Dimension Code</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Inspection Method ( Column H Row 17 )</p></td><td style="text-align: left;" class="confluenceTd"><p>Measuring Equipment Type</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Sample Number (Column H Row 41-72)</p></td><td style="text-align: left;" class="confluenceTd"><p>Sample Number</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Row 41-72</p></td><td style="text-align: left;" class="confluenceTd"><p>Measured Data</p></td><td style="text-align: left;" class="confluenceTd"><p><br /></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Cavity<span>  </span>(Tab Name)</p></td><td style="text-align: left;" class="confluenceTd"><p>Cavity</p></td><td style="text-align: left;" class="confluenceTd"><p>Cavity number format :<span> </span><span>Cav #</span>-XXX</p></td></tr></tbody></table>





_XXX
System will fill in the following information based on the selected Workorder ID.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p><strong>Field in CPK version 7-8 Template</strong></p></th><th style="text-align: left;" class="confluenceTh"><p><strong>Data in QLMS System</strong></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>Part Number (Column I Row 2)</p></td><td style="text-align: left;" class="confluenceTd"><p>Drawing revision</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Part Description<span>  </span>(Column I Row 3)</p></td><td style="text-align: left;" class="confluenceTd"><p>Product Family</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Revision (Column L Row 2)</p></td><td style="text-align: left;" class="confluenceTd"><p>Drawing revision</p></td></tr></tbody></table>

**The filled template's file name will be appended with WorkorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .** 
For sub-sequence/retest filling, system is allowed user to fill with  filled template :

- For filled template , system will update the filled template with the latest measurement result based on keys that mentioned above regardless the field is blank/filled.


- For blank template , system will fill the template with the latest measurement result based on keys that mentioned above.


- For filled template , system will replace the generated datetime with the latest generated datetime for report name.




#### Attachments

[SIP CPK Rev 6-5.xlsm](/.attachments/84705533.xlsm)
[SIP CPK Rev 7-8.xlsm](/.attachments/84705534.xlsm)
