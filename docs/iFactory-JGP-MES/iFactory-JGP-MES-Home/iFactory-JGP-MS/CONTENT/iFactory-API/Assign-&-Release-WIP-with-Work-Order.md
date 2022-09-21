# Introduction



## ***Introduction***  


This function allows users to assign WIP serial number(s) to a user-specified planned order in a third-party application. 


## ***Function details***  


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><a class="nostyle" rel="nofollow"><span>/api/Wip/AssignandReleaseWIPwithWorkOrder</span></a></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd"><span style="color: rgb(23,43,77);">POST</span></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Message Body Content Type</span></td><td colspan="2" class="confluenceTd">JSON</td></tr><tr><td class="highlight-grey confluenceTd" rowspan="3" data-highlight-colour="grey"><span style="color: rgb(23,43,77);">Required Properties</span></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Key</td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Value</td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">Work Order Number</span> (Field mandatory)</span></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">Work Order Number</span> </span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Assign WIP SN ( Field mandatory)</span></td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Serial Number(s) for WIP assignment</span></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol style="text-align: left;"><li>Customer ID</li><li>Assembly Revision ID</li><li>Route ID</li><li>Batch ID</li><li>Batch Number</li><li>Generated WIP List<ol><li>WIP ID</li><li>Serial Number</li><li>Batch ID</li><li>Batch Number</li><li>IsDeviated</li><li>Generated</li></ol></li></ol></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><ol><li>Status - Status of HTTP request</li><li>Error Message - The message describing the error</li><li>Error Code - An internal code to trace the error.</li><li>Exception - The stack trace of the operation</li><li>Errors - Contains property name causing the error as well as other information from the request for troubleshooting purposes.</li></ol></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- N/A

]

}
