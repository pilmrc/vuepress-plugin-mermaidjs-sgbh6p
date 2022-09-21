# Introduction


- System will update sample Task status to "Pending EOL Review" ,

- If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type).

- Pre-condition to review sample number is need to be in the same Task status , project , product group and phase.

- Allow user to review

one or multiple sample numberand need to update the following fields if clicked on the review button.<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong><span style="color: black;">Fields</span></strong></p></td><td class="confluenceTd"><p><strong><span style="color: black;">Description</span></strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">EOL Confirmation</span></p></td><td class="confluenceTd"><ul><ul><li><span style="color: black;">This a mandatory and d</span><span style="color: black;">ropdown field.</span></li><li><span>There 2 values can be selected by user which are "NO" or "YES".</span></li><li>If Sample Status is " IN-USE ", "TBR", "SUSPECTED" and EOL Confirmation  ="YES" , then trigger notification to <span>to the assigned department owner , department leader , task owner and escalation level 1 based on project + product group + task type + Sample type.</span></li><li><span><span> If EOL confirmation as YES , then project phase maintenance's EOL date will be disabled for changes.</span></span></li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">EOL Extension</span></p></td><td class="confluenceTd"><ul><ul><li><span style="color: black;">This button will be enabled if EOL Confirmation = NO.</span></li><li><span style="color: black;">Once user clicked on this button, will pop up the project phase maintenance screen with the specific project +product group  for user to extend the EOL date.</span></li><li>If the permission for Enable EOL Extension is disabled in project phase maintenance ,then this button will be disabled as well.</li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">EOL Date</span></p></td><td class="confluenceTd"><ul><ul><li><span style="color: black;">This field will be auto populated if user has extended the EOL date.</span></li><li><span style="color: black;">System will update the next due date based on the updated EOL date and the configured notification rules.</span></li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Sample Status</span></p></td><td class="confluenceTd"><p><span style="color: black;"><span style="color: rgb(23,43,77);">This sample status is system generated based on the review<span> </span></span></span></p><ul><ul><li><span style="color: black;">Sample status will keep original sample status if the EOL date is not extended and not yet due after review.</span></li><li><span style="color: black;">Sample status will keep original sample status if the EOL date is extended after review.</span></li><li><span style="color: black;">Sample status will update as Scrap or SEAL depend on which selected process if the EOL date is NOT extended and it is due after review.</span></li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Process B</span></p></td><td class="confluenceTd"><ul><ul><li><span style="color: black;">This field will be enabled if “EOL Confirmation =YES”</span></li><li><span>There 2 processes can be selected by user which are "SCRAP" or "SEAL".</span></li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Comment</span></p></td><td class="confluenceTd"><ul><ul><li><span style="color: black;">Mandatory if the EOL confirmation is NO.</span></li><li>Comment that given to the sample during EOL review.</li></ul></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">PLM Link</span></p></td><td class="confluenceTd"><ul><ul><li><span>User is allowed to add / update /remove the PLM Links.</span></li></ul></ul></td></tr><tr><td class="confluenceTd">Execution Date</td><td class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Allow user to select current date and backward date ( 30 days range)</span></li></ul></td></tr></tbody></table>


- **Allow user to confirm the review result.**


- System will base on project +product group to change EOL date in project phase maintenance screen

- System will update all sample base on project+product group+ sample type

- System will capture the executed Date, Sample Status , Comments, executed by , Task type for historical data.

- When change EOL date in Project Phase Maintenance , then will remove the pending EOL review
and next due date will be updated as well.
