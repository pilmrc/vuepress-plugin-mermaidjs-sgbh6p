# Introduction



## ***Introduction***  


This function allows third party application, like SFMM, to update Inventory ID quantity when inventory is consumed, manual counted or any other activity that could impact it's quantity. After inventory ID quantity successfully, a history record will be added into Inventory Management, History tab in JEMSmm to trace the quantity change.


## ***Function details***  


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><a href="http://usplnd0ifaweb42:2001/api/wips/120763/oktostart?resourceName=SQA-MTE-1" class="external-link" rel="nofollow">http://[servername]:2001/api</a><a class="nostyle" rel="nofollow"><span>/SetupVerification/UpdateGRNQuantity</span></a></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">PUT</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Message Body Content Type</span></td><td colspan="2" class="confluenceTd">JSON</td></tr><tr><td class="highlight-grey confluenceTd" rowspan="3" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Required Properties</span></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Key</td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Value</td></tr><tr><td style="text-align: left;" class="confluenceTd">inventoryID</td><td style="text-align: left;" class="confluenceTd"><p>Inventory ID</p></td></tr><tr><td style="text-align: left;" class="confluenceTd">quantity</td><td style="text-align: left;" class="confluenceTd">Inventory ID's latest quantity</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>Inventory ID</li><li>Quantity</li></ol></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><ol><li>Status - Status of HTTP request</li><li>Error Message - The message describing the error</li><li>Error Code - An internal code to trace the error.</li></ol></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- N/A
