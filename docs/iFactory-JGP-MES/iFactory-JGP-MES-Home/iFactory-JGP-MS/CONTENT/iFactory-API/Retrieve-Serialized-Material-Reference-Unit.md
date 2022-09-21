# Introduction



## ***Introduction***  


This function allows a third party application to retrieve the Reference Unit record for a Serialized Material
The records can be used to determine how many times a Serialized Material has been processed as a Reference Unit, among others. An application might use that information to apply additional actions in its process.


## ***Function Details***  


<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">URL</td><td colspan="2" class="confluenceTd"><p><a href="http://usplnd0ifaweb42:2010/odata/serializedMaterials(977)/rmaHistories" rel="nofollow" class="external-link">http://[servername]:2010/odata/serializedMaterials([Serialized Material Id])/referenceunits</a></p></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Method</td><td colspan="2" class="confluenceTd">GET</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>Id - Reference Unit record Id</li><li>WipId - Always "null" for Serialized Material Reference Unit history</li><li>SerializedMaterialId</li><li>EffectiveDateFrom</li><li>EffectiveDateTo</li><li>MaximumActuation - How many times can this Serialized Material be used as a reference unit</li><li>CurrentActuation - How many times is this Serialized Material used as a reference unit</li><li>Type</li><li>IsActive</li><li>MaterialName</li><li>PlantCode</li></ol></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Return on Failure</td><td colspan="2" class="confluenceTd"><p>This function does not return an error. It returns an empty value if the Id does not retrieve any Serialized Material Reference Unit record from the system.</p></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- Retrieve Serialized Material - To retrieve a Serialized Material Id from a Serial Number for the URL


- Retrieve Material - To use the Material Type to determine which iFactory API function (Retrieve WIP Reference Unit or Retrieve Serialized Material Reference Unit) to call.



