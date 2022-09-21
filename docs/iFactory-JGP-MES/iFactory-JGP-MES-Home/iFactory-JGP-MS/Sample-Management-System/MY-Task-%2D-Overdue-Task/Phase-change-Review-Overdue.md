# Introduction


- System will update sample Task status to " Phase Change Review Overdue" and sample status to " suspected".


- If the sample number Phase Change  is not extended by the pre-configured Phase Change Effective date and no last executed date.

- System will highlight the sample's row as Yellow color in Sample List View.

- Sample not required
to perform Routine Checkup ,Expired review, Routine Review,EOL Review and Q&E review.
- System will trigger notification to to the assigned department owner , department leader , task owner and escalation level 1 based on project + product group + task type + Sample type.

- Sample phase will change to new phase

- Pre-condition to review sample number is need to be in the same Task status , project , product group and phase.

- Allow user to review

one or multiple sample numberand need to update the following fields if clicked on the review button.<table class="relative-table wrapped confluenceTable" style="width: 999.562px;"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-blue confluenceTd" colspan="1" data-highlight-colour="blue"><strong title="">Fileds</strong></td><td class="highlight-blue confluenceTd" colspan="1" data-highlight-colour="blue"><strong title="">Description</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Is this sample applicable for next phase?</span></td><td style="text-align: left;" class="confluenceTd"><ul><li>User has to decide if this sample <span style="color: rgb(0,0,0);"> applicable for next phase</span> after the project phase change</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Process B</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This field will be enabled if “<span style="color: rgb(0,0,0);">Is this sample applicable for next phase?</span> = NO/ Yes” </span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Comment</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>Comment that given to the sample during expired review.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">PLM Link</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Execution Date</td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Allow user to select current date and backward date ( 30 days range)</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>This sample status is system generated based on the review .<span><br /></span><ul><li><span>System will immediately and auto update Sample status as " Scrap " OR "SEAL" </span></li><li><span>System will immediately  update sample status as "INUSE"</span></li></ul></li></ul></td></tr></tbody></table>



- Allow user to confirm the review result.

- One sample number is reviewed ,

- System will

immediatelyand auto update Sample status as " Scrap " OR "SEAL" and keep orignal phase if Is this sample applicable for next phase?
= NO and process B=seal/scrap
- System will
immediately
update sample status as "INUSE" and change phase when next server run if user selected Is this sample applicable for next phase?
= Yes
- Allow user to edit the review result.

- If user updated the latest completed task status , then system will update the historical data with the latest data.

- System will capture the executed Date, Sample Status , Comments, executed by , Task type for historical data

- When executed phase change review,system will change sample phase in sample information screen.
