# Introduction



## ***Introduction***  


This function allows a third party application to retrieve all previous history of Repair action for a WIP.
In a typical scenario, a third party application requires the repair history of a WIP because its process depends on that history to determine the next action. For instance, as a test program, it can execute additional test after a particular material has been replaced.


## ***Function Details***  


<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><p><a href="http://usplnd0ifaweb42:2010/odata/wips(131225)/RepairHistories" class="external-link" rel="nofollow">http://[servername]:2010/odata/wips(131225)/RepairHistories</a></p></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">GET</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>WipProcessStepHistoryId - The WIP Process Step History Id that the repair was undertaken against</li><li>RouteId</li><li>Route</li><li>RouteStepId</li><li>RouteStep</li><li>ReworkCategory</li><li>StartDateTime</li><li>CompleteDateTime</li><li>ReworkComment</li><li>ReworkDetail</li><li>DefectType</li><li>DefectCategory</li><li>CRD</li><li>DefectMaterialIdentifier - Typically this is the Serial Number for the defect material</li><li>DefectMaterial</li></ol></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><p>In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any WIP from the system.</p></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- Retrieve WIP - To retrieve the WIP Id from a Serial Number for the URL

