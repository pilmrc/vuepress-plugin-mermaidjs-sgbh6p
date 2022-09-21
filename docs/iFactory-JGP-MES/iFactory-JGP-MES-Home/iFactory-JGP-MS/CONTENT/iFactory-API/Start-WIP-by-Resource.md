# Introduction



## ***Introduction***  


This function createss because PMI TOTO Project, currently developed only for external program "PMI Load Service" use
This function allows a third party client to start a WIP at a Route Step in the iFactory System. 
A process that is run in a third party client but otherwise needs to be recorded in the iFactory System shall use this function. The function executes the same validation as a Generic Work Station start process to validate that a WIP is ready to start. Those validation includes:

- WIP is enqueued or started at a Route Step associated to the provided Resource
At an Initial Route Step, a new WIP that has not been started at any process can be started if it's Planned Order is assigned to the Route for the current Route Step, even when it is not in queue.


## ***Function details***  


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><a href="http://usplnd0ifaweb42:2001/api/wips/120763/oktostart?resourceName=SQA-MTE-1" class="external-link" rel="nofollow">http://[servername]:2001/</a><a class="nostyle" rel="nofollow"><span><span style="color: rgb(59,65,81);">api/Wip/StartWIPItems</span></span></a></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">PUT</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Message Body Content Type</span></td><td colspan="2" class="confluenceTd">JSON</td></tr><tr><td class="highlight-grey confluenceTd" rowspan="5" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Required Properties</span></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Key</td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Value</td></tr><tr><td colspan="1" class="confluenceTd">WIP ID</td><td colspan="1" class="confluenceTd">WIP ID</td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">ResourceName</span></td><td style="text-align: left;" class="confluenceTd"><p>The name of the Resource to start the WIP</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">startDateTime<span> </span></span><span style="color: rgb(51,51,51);">(Optional)</span></td><td colspan="1" class="confluenceTd"><p style="text-align: left;">The optional start date time that can be provided by user. The optional start date time must be later than previous Process Step history End Time and equal/earlier than the current system Date Time. The formats that can be accepted are:</p><ol style="text-align: left;"><li><p>yyyy-MM-ddThh:mm:ss (Local Time)</p></li><li><p>yyyy-MM-ddThh:mm:ssZ (UTC)</p></li><li><p>yyyy-MM-ddThh:mm:ss +/-hh:mm (Offset)</p></li><li><p>MM/dd/yyyy HH:mm:ss AM/PM</p></li><li><p>dd/MM/yyyy hh:mm:ss</p></li></ol><p style="text-align: left;">Note: If start date time provided is later than current system date time, system will auto apply current system date time as the start date time.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">isSIngleWIPMode (Optional)</span></td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The default value is 'True', only allow true</span></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>RouteStepId</li><li>RouteStepName</li><li>Wip Id - Return list of WIP Ids that are started successfully.</li></ol></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><ol><li>PropertyName - The name of property with the error</li><li>ErrorMessage - The message describing the error</li><li>ErrorCode - An internal code to trace the error.</li></ol></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- N/A
