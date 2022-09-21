# Introduction


- System will update sample Task status to "Pending Q&E Review" ,

- If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type).

- Pre-condition to review sample number is need to be in the same Task status.

- User is allowed to review

one or multiple sample number and need to update the following fields if clicked on the review button.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><strong style="text-align: left;"><span style="color: black;">Fields</span></strong></th><th class="confluenceTh"><strong style="text-align: left;"><span style="color: black;">Description</span></strong></th></tr><tr><td class="confluenceTd"><p><span style="color: black;">Sample Status</span></p></td><td class="confluenceTd"><ul><li>User need to check and provide the sample status if the sample condition is IN-USE or NG.</li><li>There are 2 choices here: IN-USE or NG <ul><li>System will immediately update sample status as Seal/Scrap/INUSE after Q&E review.</li></ul></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Process B</span></p></td><td class="confluenceTd"><ul><li><span>This field will be enabled if sample Status is “NG”.</span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Comment</span></p></td><td class="confluenceTd"><ul><li>Comment that given to the sample during Q&E review.</li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">PLM Link</span></p></td><td class="confluenceTd"><ul><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></td></tr><tr><td class="confluenceTd">Execution Date</td><td class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Allow user to select current date and backward date ( 30 days range)</span></li></ul></td></tr></tbody></table>


- **Allow user to confirm the review result.**


- Allow user to edit the review result.

- System will capture the Last executed Date, Sample Status , Comments, executed by , Task type for historical data.

- When the sample status = NG , system will
trigger notification to the assigned department owner , department leader , task owner and escalation level 1 based on project + product group + task type + Sample type.
- If there are Q&E review overdue and pending Q&E review task status for the particular sample number ,


- User no need to update overdue task.

- Overdue task status will be removed from list but overdue task will still showing in historical data.

- System will update the comment as " Overdue and not required to execute" ; sample status , executed by and last executed date will be blank in historical data

<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Sample number</th><th class="confluenceTh">Task Type</th><th class="confluenceTh">Task Due Date</th><th class="confluenceTh">Last executed datetime</th><th class="confluenceTh">Executed by</th><th class="confluenceTh">Sample Status</th><th class="confluenceTh">Comments<span> </span></th></tr><tr><td class="confluenceTd">ID 123</td><td class="confluenceTd">Q&E Review</td><td class="confluenceTd">1/6/2022</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td class="confluenceTd">Overdue and not required to execute</td></tr></tbody></table>




