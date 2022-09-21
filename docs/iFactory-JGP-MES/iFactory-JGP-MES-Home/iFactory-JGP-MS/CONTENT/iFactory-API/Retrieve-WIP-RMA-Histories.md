# Introduction



## ***Introduction***  


This function allows a third party application to retrieve the RMA History of a WIP.
The RMA history is needed if the application needs to execute a different process for a WIP that had been RMA before versus one that had not.


## ***Function Details***  


<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><p><a href="http://usplnd0ifaweb42:2010/odata/serializedMaterials(977)/rmaHistories" class="external-link" rel="nofollow">http://[servername]:2010/odata/wips([WIP Id])/rmaHistories</a></p></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">GET</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>Id - RMA history record Id</li><li>WipId</li><li>SerializedMaterialId - <span>Always "0" for WIP RMA history</span></li><li>RMAType</li><li>RMAEvent</li><li>Comments</li><li>LastUpdated</li><li>CustomerRMAEvent</li><li>RMANumber</li><li>OrderType</li><li>OrderNumber</li><li>IsCompleted - Indicate whether the RMA process is completed</li><li>MaterialName</li><li>PlantCode</li></ol></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><p>This function does not return an error. It returns an empty value if the Id does not retrieve any WIP RMA History from the system.</p></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- Retrieve WIP - To retrieve a WIP Id from a Serial Number for the URL


- Retrieve Material - To use the Material Type to determine which iFactory API function (Retrieve WIP RMA Histories or Retrieve Serialized Material

RMA Histories
) to call.


