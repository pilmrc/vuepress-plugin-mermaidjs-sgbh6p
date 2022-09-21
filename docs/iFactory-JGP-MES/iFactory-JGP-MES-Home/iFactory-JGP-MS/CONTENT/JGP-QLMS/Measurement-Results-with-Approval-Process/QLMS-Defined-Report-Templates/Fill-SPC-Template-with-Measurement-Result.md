# Introduction

SPC

template is a defined template that provided by customer to check if the produced unit(s) have met the quality standard.Below is the sample of SPC template :
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh">SPC Template </th><th style="text-align: left;" class="confluenceTh"><div class="content-wrapper"><p><a href="attachments/59441528/62423202.xlsm" data-linked-resource-id="62423202" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SPC.xlsm" data-linked-resource-content-type="application/vnd.ms-excel.sheet.macroEnabled.12" data-linked-resource-container-id="59441528" data-linked-resource-container-version="7">SPC.xlsm</a></p></div></th></tr></tbody></table>

System will validate if the selected Work-Order’s Job type is matched with SPC template before filling in the measurement results :

- If it is not matched, then prompt an error message “The uploaded template is not matched with the selected Work-Order’s job type Name'.”


- If the template is matched, then system will fill the measurement result into template and prompt user to download the filled template.

If the data from QLMS is matched with data in SPC template , then system is able to fill measurement result into SPC template based on the following keys

<table class="relative-table confluenceTable" style="width: 57.54%;"><colgroup><col style="width: 42.6602%;" /><col style="width: 57.2672%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p title=""><strong>Fields in SPC Template</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><strong title="">Data in QLMS System</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">FAI # (Column F)</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Dimension Code</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sheet name</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Production Machine ID</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Tooling ID (ID starts with Capital G)</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Mold ID/Tooling ID</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Cavity number (Column B)</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Cavity Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Machine code (Column C)</td><td colspan="1" class="confluenceTd">Measuring Equipment Type</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Date (YYYY/MM/DD)</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Production Date</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">00:00</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job Type ( SPC)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">08:00</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job Type ( SPC -08:00)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">16:00</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job Type (SPC-16: 00)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Starting from column Q and </span><span style="color: rgb(0,0,0);">onward</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measured Data</span></td></tr></tbody></table>

**Job Type ( SPC _08:00)** 
16:00
Job Type (SPC_16: 00)
Starting from column Q and 
onward
Measured Data

If the keys mentioned above are not matched, then system should prompt an error message to stop the inserting.
There are few rules for system to fill up the template :

- based on  " #_G " to identify the tooling ID.

- based on " SPC _XX:XX" for mapping.
The filled template's file name will be appended with workorderID and generated datetime ( e.g : Report name_WorkorderID_ generated datetime) .
For sub-sequence 
initiationwith retest result, allow user to use the filled template to initiate the report .
- For filled template , system will update the filled template with the latest measurement result based on Dimension Code regardless the field is blank/filled.

- For blank template , system will fill the template with the latest measurement result based on Dimension Code.



#### Attachments

[image2019-11-9_22-36-29.png](/.attachments/59441529.png)
[image2019-11-9_22-37-12.png](/.attachments/59441530.png)
[image2019-11-9_22-43-23.png](/.attachments/59441531.png)
[image2019-11-9_22-43-41.png](/.attachments/59441532.png)
[A81 Bottom COVER-SPC-B版  数据统计表-（4月1日-4月11日)-QLMS.xlsm-20190806112253_1110.xlsm](/.attachments/59441533.xlsm)
[SPCTemplateSample.xlsm](/.attachments/59441537.xlsm)
[image2019-11-12_8-1-47.png](/.attachments/61079564.png)
[SPC.xlsm](/.attachments/62423202.xlsm)
