# Introduction



## ***Introduction***  


This function allows a third party client to check that a WIP has met all the conditions to allow it to start at a particular Route Step, without actually starting it. It performs verification identical to the Start WIP iFactory API function. However it does not start the WIP like the Start WIP function does.
A typical scenario involves the third party site application producing a Tar file to update the completion of a Route Step via the Parser service. Upon receiving the Tar file, the Parser service will update both the Start and End of the Process Step History. In order to still verify the WIP can be started but also avoid WIP being started twice, CheckOkToStart can be called instead to verify but not start.


## ***Function details***  


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><a href="http://usplnd0ifaweb42:2001/api/wips/120763/oktostart?resourceName=SQA-MTE-1" class="external-link" rel="nofollow">http://[servername]:2001/api/wips/[wipid]/oktostart?resourceName=[resourcename]</a></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">GET</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>OkToStart. Always "true"</li><li>RouteStepId. Id of Route Step where WIP was verified to start.</li><li>RouteStepName. The name of the Route Step where the WIP was verified to start.</li><li>FutureHold. <ol><li> It should be true when current WIP has been future hold at current verified to start route step.</li><li> It should be false when current WIP hasn't been future hold at current verified to start route step.</li></ol></li></ol></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><ol><li>PropertyName - The name of property with the error</li><li>ErrorMessage - The message describing the error</li><li>ErrorCode - An internal code to trace the error.</li></ol></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- Retrieve WIP - To retrieve the Wip Id from a Serial Number for the URL.
