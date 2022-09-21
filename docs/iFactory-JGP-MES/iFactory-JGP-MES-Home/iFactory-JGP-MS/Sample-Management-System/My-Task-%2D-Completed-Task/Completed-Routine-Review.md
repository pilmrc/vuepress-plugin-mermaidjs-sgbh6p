# Introduction


- System will update sample Task status to " Completed Routine Review"

- If the sample number is updated with last executed date.

- Sample status is InUse

- The screen only allow user to view the task status is completed

<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Status</th><th class="confluenceTh">Process B</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">IN-USE</td><td class="confluenceTd">N/A</td><td class="confluenceTd"><ul><li><span>System will update the next due date once confirmed the review result.</span></li><li><span>System will update Task status to "Completed routine review".</span></li></ul></td></tr><tr><td class="confluenceTd">NG</td><td class="confluenceTd">SCRAP</td><td class="confluenceTd"><ul><li><span>Sample is not required </span><span>to perform Routine checkup ,EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</span></li><li><span>System will move the sample number to Sample Scrap List.<br /></span></li><li><span>System will highlight the sample ID row in Grey color in Sample List view.<br /></span></li><li><span>System will update sample status as " Scrap" and the sample will not showed in completed task screen</span></li><li><span>System will update Task status as " Completed Routine Review" and remove others task status.</span></li></ul></td></tr><tr><td class="confluenceTd">NG</td><td class="confluenceTd">SEAL</td><td class="confluenceTd"><ul><li><span>System will move the sample number to Sample Seal List.</span></li><li><span>system will highlight the sample ID row in Grey color in Sample List view.<br /></span></li><li><span>Sample not required to perform EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</span></li><li><span>System will update sample status as " SEAL" and the sample will not showed in completed task screen</span></li><li><span>System will update task status as " Completed Routine Review" and remove others task status.</span></li><li><span>If required routine checkup , then task status will be updated as " Pending Routine Checkup" and removed all others task status else no task status changes.</span></li></ul></td></tr></tbody></table>





- If all the tasks executed at the same time then system will execute based on the priority below.

- EOL

- Expired review

- Phase Change Review

- Routine review

- Routine check up

- Q&E review depend on the urgency
