# Introduction

**Usage:** 
($DataCollectExists,$DataCollect) = GetDataCollectForWIPAndRouteStep();


**Description:** Locate and displays the Data Collection for the WIP in the current Route Step

<table class="confluenceTable"><colgroup><col /> </colgroup><tbody><tr><td class="highlight confluenceTd" colspan="3"><strong><span style="color: rgb(0,0,255);">Return Parameters</span></strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Parameter</strong></td><td colspan="1" class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td colspan="1" class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$DataCollectExists</td><td class="confluenceTd">Boolean</td><td class="confluenceTd">Indicating that a data collect was found</td></tr><tr><td class="confluenceTd">$DataCollect</td><td class="confluenceTd">Object</td><td class="confluenceTd">If the data collect doesn't exist for this route step, then this will be null</td></tr></tbody></table>

**Usage Example(s):** 
($DataCollectExists,$DataCollect) = GetDataCollectForWIPAndRouteStep();
