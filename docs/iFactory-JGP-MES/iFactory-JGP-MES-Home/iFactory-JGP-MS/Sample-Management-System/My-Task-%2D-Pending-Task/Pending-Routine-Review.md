# Introduction


- System will update sample Task status to "Pending Routine Review" ,

- If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type) in Daily Management Plan.

- For the first Routine Reveiw

- Review due date = creation date + routine review frequency. But If there is a change in routine review frequency , system will calculate the routine review date based on the last changed of routine review frequency date +  routine review frequency.

- For next Routine Reveiw

- Routine Review next due date=Execution date + Routine Review Frequency.

But If there is a change in routine review frequency , system will calculate the routine review date based on the last changed of routine review frequency date +  routine review frequency.
- If task due date(next due date) less than current date,the sample status will be updated suspected and insert Routine Review Overdue task

- Pre-condition to review sample number is need to be in the same Task status.

- User is allowed to review

one or multiple sample number and need to update the following fields if clicked on the review button.
<table class="relative-table wrapped confluenceTable" style="width: 938.35px;"><colgroup><col style="width: 146.725px;" /><col style="width: 790.625px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Fields</p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td colspan="1" class="confluenceTd">Sample status</td><td colspan="1" class="confluenceTd"><ul><li>User need to check and provide the sample status if the sample condition is IN-USE or NG.<ul><li>There are 2 choices here: IN-USE or NG<br /><ul><li>System will immediately update sample status as Seal/Scrap/INUSE after Q&E review.</li></ul></li></ul></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Still require this sample?</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span>This field will be enabled if Sample Status = “NG”</span></li><li>User has to decide if this sample still require and needed to be replaced by a new sample .</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Process B</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This field will be enabled if sample Status is “NG”.</span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Execution Date</td><td colspan="1" class="confluenceTd"><ul><li>This field default current date</li><li>Allow user selecte <span style="color: rgb(0,0,0);">backward date(30 days)</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Comment</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>Comment that given to the sample during routine review.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Replace</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This button will be enabled if “Still require this sample = YES” and Sample Status = NG</span></li><li><span><span>This is a button to redirect user to create and submit new sample application form. </span></span></li><li>System will auto populate sample information;</li><li><span>The quantity of sample is non- editable in sample application form.<br /></span></li><li><span>Generated sample number will be </span>randomly<span> assign to the selected sample number and store at Replaced by Sample number field.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Replaced by Sample Number</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This field is auto filled by system through Replace button.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">PLM Link</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></td></tr></tbody></table>




- User is allowed to confirm the review result.


- System will capture the Last executed Date, Sample Status , Comments, executed by , Task type for historical data.

- Once completed routine review ,system will calculate the next due date based on  executed date+ routine review frequency.

- If all the tasks executed at the same time then system will execute based on the priority below.

- EOL

- Expired review

- Phase Change Review

- Routine review

- Routine check up

- Q&E review depend on the urgency
