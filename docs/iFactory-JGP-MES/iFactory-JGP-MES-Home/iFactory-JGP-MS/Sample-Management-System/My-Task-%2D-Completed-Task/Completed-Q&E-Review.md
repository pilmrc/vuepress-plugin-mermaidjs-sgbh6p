# Introduction


- System will update sample Task status to " Completed Q&E Review"

- If the sample number is updated with last executed date.

- Pre-condition to review sample number is need to be in the same Task status.

- System will capture the Last executed Date, Sample Status , Comments, executed by , Task type for historical data.

- Once the sample is NG then it will proceed based on the selected Process B below.

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Process</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">SCRAP</td><td class="confluenceTd"><ul><li><span>System will move the sample number to Sample Scrap List.</span></li><li><span>System will highlight the sample number row in Grey color in Sample List view.</span></li><li>Sample not required to perform Routine checkup ,EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</li><li>Sample status will update as " Scrap"</li><li>Task status still remain as Completed Q&E Review and remove others task status.</li></ul></td></tr><tr><td class="confluenceTd">SEAL</td><td class="confluenceTd"><ul><li>System will move the sample number to Sample Seal List.</li><li>System will highlight the sample number row in Grey color in Sample List view.</li><li>Sample not required to perform EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</li><li>Sample status will update as "Seal".  </li><li>Task status still remain as Completed Q&E review and remove other task status.</li><li><span><span><span><span>If required routine checkup<span> , then t</span></span>ask status will be updated as " Pending Routine Checkup" and removed all others task status else no task status changes.</span></span></span></li></ul></td></tr></tbody></table>

