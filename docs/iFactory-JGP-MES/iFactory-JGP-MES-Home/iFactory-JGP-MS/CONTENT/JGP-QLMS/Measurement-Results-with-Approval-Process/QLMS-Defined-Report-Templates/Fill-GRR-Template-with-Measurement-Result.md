# Introduction

GRR

template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard.Below is the sample of GRR template :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">GRR Template </th><th class="confluenceTh"><div class="content-wrapper"><p><a href="attachments/59441520/59441526.xlsx" data-linked-resource-id="59441526" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="GRR TemplateSample.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="59441520" data-linked-resource-container-version="5">GRR TemplateSample.xlsx</a></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s Job type is matched with GRR template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in GRR  template , then system is able to fill measured data and the operator name into GRR template based on the following keys
<table class="relative-table confluenceTable" style="width: 67.2689%;"><colgroup><col style="width: 36.9804%;" /><col style="width: 62.9576%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p title=""><strong>Fields in GRR Template</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><strong title="">Data in QLMS System</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Sheet Name</p></td><td style="text-align: left;" class="confluenceTd"><p>Dimension Code</p></td></tr><tr><td colspan="1" class="confluenceTd">Gage </td><td colspan="1" class="confluenceTd">Measuring Equipment Type </td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Number (1 - 10)</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Number of measured data</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Trial Number (1 - 3)</p></td><td style="text-align: left;" class="confluenceTd"><p>Trial Number (1 -3) of measured data</p></td></tr></tbody></table>

**If the keys mentioned above are not matched, then system will prompt an error message to stop the inserting.** 
The filled template's file name will be appended with workorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .
For sub-sequence 
initiationwith retest result, allow user to use the filled template to initiate the report .
- For filled template , system will update the filled template with the latest measurement result based on Dimension Code regardless the field is blank/filled.

- For blank template , system will fill the template with the latest measurement result based on Dimension Code.



#### Attachments

[image2019-11-9_22-36-17.png](/.attachments/59441521.png)
[image2019-11-9_22-36-29.png](/.attachments/59441522.png)
[image2019-11-9_22-37-12.png](/.attachments/59441523.png)
[image2019-11-9_22-43-23.png](/.attachments/59441524.png)
[image2019-11-9_22-43-41.png](/.attachments/59441525.png)
[GRR TemplateSample.xlsx](/.attachments/59441526.xlsx)
