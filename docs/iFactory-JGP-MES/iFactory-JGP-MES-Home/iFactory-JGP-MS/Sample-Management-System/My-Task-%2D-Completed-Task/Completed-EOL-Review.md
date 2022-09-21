# Introduction


- System will update sample Task status to " Completed EOL Review"

- If the sample number is updated with last executed date.

- Once the sample is EOL then it will proceed based on the selected Process below.

<table class="relative-table wrapped confluenceTable" style="width: 946.375px;"><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Process B </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><colgroup><col style="width: 75.2875px;" /><col style="width: 870.088px;" /></colgroup><tbody><tr><td style="text-align: left;" class="confluenceTd">SCRAP</td><td style="text-align: left;" class="confluenceTd"><ul><li><span>System will move the sample number to Sample Scrap List.</span></li><li><span>System will highlight the sample number row in Grey color in Sample List view.</span></li><li><span>Sample is not required </span><span>to perform Routine checkup ,EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</span></li><li><span>Sample status will update as " Scrap"</span></li><li><span>Task status still remain as Completed EOL Review and remove all others task status.</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">SEAL</td><td style="text-align: left;" class="confluenceTd"><ul><li><span>System will move the sample number to Sample Seal List.</span></li><li><span>System will highlight the sample number row in Grey color in Sample List view.<br /></span></li><li><span>Sample not required to perform EOL review, Expired review, Routine Review, Phase Change review and Q&E review.</span></li><li><span>Sample status will update as "Seal".  </span></li><li><span>Task status still remain as Completed EOL review and remove all others task status.</span></li><li><span>If required routine checkup , then task status will be updated as " Pending Routine Checkup" and remove all others task status else no task status changes.</span></li></ul></td></tr></tbody></table>


