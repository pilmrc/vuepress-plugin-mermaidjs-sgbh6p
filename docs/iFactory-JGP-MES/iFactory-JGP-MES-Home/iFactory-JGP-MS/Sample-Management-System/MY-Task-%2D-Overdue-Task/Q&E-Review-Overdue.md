# Introduction


- System will update sample Task status to "Q&E Review Overdue" and the sample status as "SUSPECTED"

- If the sample number is not yet review by the routine review date ( Creation date + routine review frequency).

- System will trigger notification to the assigned department owner , department leader , task owner and escalation level 1 based on project + product group + task type + Sample type that configured in Daily Management Plan.

- System will highlight the sample's row as Yellow color in Sample List view.

- Sample still require
to perform EOL review, Expired review,Routine Review, Phase Change review and Q&E review.
- If there are Q&E review overdue and pending Q&E review task status for the particular sample number ,


- User no need to update overdue task.

- Overdue task status will be removed from list but overdue task will still showing in historical data.

- System will update the comment as " Overdue and not required to execute" ; sample status , executed by and last executed date will be blank in historical data

<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Sample number</p></th><th style="text-align: left;" class="confluenceTh"><p>Task Type</p></th><th style="text-align: left;" class="confluenceTh"><p>Task Due Date</p></th><th style="text-align: left;" class="confluenceTh"><p>Last executed datetime</p></th><th style="text-align: left;" class="confluenceTh"><p>Executed by</p></th><th style="text-align: left;" class="confluenceTh"><p>Sample Status</p></th><th style="text-align: left;" class="confluenceTh"><p>Comments<span> </span></p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">ID 123</td><td style="text-align: left;" class="confluenceTd">Q&E Review</td><td style="text-align: left;" class="confluenceTd">1/6/2022</td><td style="text-align: left;" class="confluenceTd"><br /></td><td style="text-align: left;" class="confluenceTd"><br /></td><td style="text-align: left;" class="confluenceTd"><br /></td><td style="text-align: left;" class="confluenceTd">Overdue and not required to execute</td></tr></tbody></table>





- Pre-condition to review sample number is need to be in the same Task status.

- User is allowed to review

one or multiple sample number and need to update the following fields if clicked on the review button.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">fields</th><th class="confluenceTh">description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Review</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span><span style="color: rgb(23,43,77);">User need to check and provide the sample status if the sample condition is OK or NG</span></span></li><li><span>OK <span style="color: rgb(23,43,77);">means the sample condition is good</span></span></li><li><span>NG <span style="color: rgb(23,43,77);">means the sample condition is no good.</span></span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Sample Status</span></p></td><td class="confluenceTd"><ul><li>System will auto update the Sample Status = IN- USE if Sample Review = OK.</li><li>System will auto update the Sample Status = Scrap or SEAL depend on the selected process if sample review = NG.</li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Process B</span></p></td><td class="confluenceTd"><ul><li><span>This field will be enabled if sample Status is “NG”.</span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Comment</span></p></td><td class="confluenceTd"><ul><li>Comment that given to the sample during Q&E review.</li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">PLM Link</span></p></td><td class="confluenceTd"><ul><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></td></tr><tr><td class="confluenceTd">Execution Date</td><td class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Allow user to select current date and backward date ( 30 days range)</span></li></ul></td></tr></tbody></table>


- When user save review result, system will capture the executed Date, Sample Status , Comments, executed by , Task type for historical data.


- When the sample status = NG , system will
trigger notification to the assigned department owner , department leader , task owner and escalation level 1 based on project + product group + task type + Sample type.