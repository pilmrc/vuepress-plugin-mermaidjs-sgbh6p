# Introduction

CPK
template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard.
Below is the sample of CPK template :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh"><span style="color: rgb(0,0,0);">CPK Template </span></th><th style="text-align: left;" class="confluenceTh"><div class="content-wrapper"><p><a href="attachments/59441457/59441458.xlsm" data-linked-resource-id="59441458" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="CPK.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="59441457" data-linked-resource-container-version="6">CPK.xlsm</a></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s job type is matched with CPK template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in CPK  template , then system is able to fill measurement result into CPK template based on the following keys :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><strong>Fields in CPK Template</strong></p></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><strong title="">Data in QLMS System</strong><p title=""><br /></p></td></tr><tr><td class="confluenceTd"><p>FAI # (Column C)</p></td><td class="confluenceTd"><p>Dimension Code</p></td></tr><tr><td class="confluenceTd"><p>Cav # (Tab name)</p></td><td class="confluenceTd"><p>Cavity Number</p></td></tr><tr><td colspan="1" class="confluenceTd">Inspection Method ( Column J)</td><td colspan="1" class="confluenceTd">Measuring Equipment Type</td></tr><tr><td class="confluenceTd"><p>Measured Data<span> </span><span> </span>( Column AI -BN)</p></td><td class="confluenceTd"><p>Sample Number</p></td></tr><tr><td class="confluenceTd"><p>Column AI - BN</p></td><td class="confluenceTd"><p>Measured Data</p></td></tr></tbody></table>



If the data from QLMS is not matched with data in CPK template ,  then system will append the followings into CPK template based on cavity number (Tab  Name).
( Note : If the configured dimension details is different from measurement result's dimension details then system will insert configured dimension details into template after blank column )
<table class="relative-table confluenceTable" style="width: 52.606%;"><colgroup><col style="width: 45.7143%;" /><col style="width: 54.1799%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Fields in CPK Template</strong></span></p></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" data-highlight-colour="grey"><p title=""><span style="color: rgb(0,0,0);"><strong>Data in QLMS system</strong></span></p></td></tr><tr><td class="confluenceTd"><p>FAI # (Column C)</p></td><td class="confluenceTd">Dimension Code</td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type ( Column F )</td><td colspan="1" class="confluenceTd">Dimension Type</td></tr><tr><td class="confluenceTd"><p>Nominal (Column G)</p></td><td class="confluenceTd"><p>Nominal</p></td></tr><tr><td class="confluenceTd"><p>+TOL (Column H)</p></td><td class="confluenceTd"><p>+TOL</p></td></tr><tr><td class="confluenceTd"><p>-TOL (Column I)</p></td><td class="confluenceTd"><p>-TOL</p></td></tr><tr><td colspan="1" class="confluenceTd">Inspection Method ( Column J)</td><td colspan="1" class="confluenceTd">Measuring Equipment Type</td></tr><tr><td class="confluenceTd"><p>Measured Data (Column AI -BN)</p></td><td class="confluenceTd"><p>Sample Number</p></td></tr><tr><td class="confluenceTd"><p>Column AI -BN</p></td><td class="confluenceTd"><p>Measured Data</p></td></tr></tbody></table>

**The filled template's file name will be appended with workorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .** 
For sub-sequence/retest filling, system is allowed user to fill with  filled template :

- For filled template , system is updated the filled template with the latest measurement result based on keys that mentioned above regardless the field is blank/filled.


- For blank template , system is filled the template with the latest measurement result based on keys that mentioned above.


- Append those unmatched data into template based on keys that mentioned above.




#### Attachments

[CPK.xlsm](/.attachments/59441458.xlsm)
