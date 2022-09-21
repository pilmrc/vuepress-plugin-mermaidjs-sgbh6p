# Introduction


- System will exclude the sample with
Applicative Phase = General from Expired Review.
- System will update sample Task status to "Pending Expired Review" ,

- If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type) in Daily Management Plan.

- Pre-condition to review sample number is need to be in the same Task status.

- User is allowed to review

one or multiple sample number and need to update the following fields if clicked on the review button.
<table class="relative-table wrapped confluenceTable" style="width: 91.351%;"><colgroup><col style="width: 15.6539%;" /><col style="width: 84.3598%;" /></colgroup><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description </th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference?</span></td><td class="confluenceTd"><ul><li>User has to decide <span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference</span> after the sample is expired.<br /><ul><li>If User changes sample status=TBR/INUSE/SUSPECTED samples and still require this sample=YES/NO，sample status keep original status until  validation date due.</li></ul></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span>Whether to extent Validity Date</span></td><td colspan="1" class="confluenceTd"><ul><li>When "Is there a need to continue using this defect as reference<span style="letter-spacing: 0.0px;"> "=YES,it will be selected and value is YES/NO</span></li><li><span style="letter-spacing: 0.0px;">It decide whether need to extend validity date </span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Validity Date</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span>This field will be enabled if "<span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference?</span> =YES" and  "<span>Whether to extent Validity Date"=YES</span></span></li><li><span>User is allowed to extend the validity date.</span></li><li><span>Only accept current validity date or forward date.</span></li><li><span><span>System is accepting validity date = current date or future date.</span></span></li><li><span>The updated validity date will be reflected immediately.</span></li><li><span>System will update the next due date based on the updated validity date and the configured notification rules in Daily Management Plan.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Process B</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This field will be enabled if “<span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference?</span> = NO/ Yes” and  "<span>Whether to extent Validity Date"=NO and</span> NO validity date changed.</span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span><ul><li><span><span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference?</span>=NO，there 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li><li><span><span style="color: rgb(0,0,0);">Is there a need to continue using this defect as reference?</span>=YES,<span>Whether to extent Validity Date"=NO,</span> there is grey and can not select. </span></li></ul></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Comment</span></td><td colspan="1" class="confluenceTd"><ul><li>Comment that given to the sample during expired review.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Replace</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This button will be enabled if “Still require this sample = YES” and NO validity date changed.</span></li><li><span>This is a button to redirect user to create and submit new sample application form.</span></li><li><span>System will auto populate sample information.</span></li><li><span>The quantity of sample is non- editable in sample application form.<br /></span></li><li><span>Generated sample number will be </span>randomly<span> assign to the selected sample number and store at Replaced by Sample number field.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Replaced by Sample Number</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>This field is auto filled by system through Replace button.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">PLM Link</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Status</span></td><td colspan="1" class="confluenceTd"><ul><li>This sample status is system generated based on the review .<ul><li><span>Sample status will keep orignal sample status if the validity date is extended.</span></li><li><span><span>Sample status will keep orignal sample status if the validity date not yet due after review.</span><br /></span></li><li><span>System will auto update Sample status as " SCRAP " or "SEAL"  if the validity date is not extended once the validity date is due after review.</span></li></ul></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Execution Date</td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Allow user to select current date and backward date ( 30 days range)</span></li></ul></td></tr></tbody></table>





- User is allowed to confirm the review result.


- System will capture the Last executed Date, Sample Status , Comments, executed by , Task type for historical data.

- If all the tasks executed at the same time then system will execute based on the priority below.

- EOL

- Expired review

- Phase Change Review

- Routine review

- Routine check up

- Q&E review depend on the urgency
