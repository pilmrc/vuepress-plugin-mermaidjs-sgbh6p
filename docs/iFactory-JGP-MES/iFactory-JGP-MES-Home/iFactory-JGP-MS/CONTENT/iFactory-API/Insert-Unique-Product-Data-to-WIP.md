# Introduction



## ***Introduction***  


This function allows a third party client to insert a new Unique Product Data to a WIP. 
A typical scenario involves the third party client attaching a UPD such as a MAC Address to a product. The MAC Address might only be available during the process run by the third party client and it needs to be associated to the product in iFactory System so that the system have an accurate record of the association between MAC Address and the WIP Serial Number. The MAC Address may then be printed or verified in a later process.


## ***Function details***  


<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd">URL</td><td colspan="2" class="confluenceTd"><a href="http://azuse2ifaweb84:2001/api/uniqueproductdata" class="external-link" rel="nofollow">http://[servername]:2001/api/uniqueproductdata</a></td></tr><tr><td class="highlight confluenceTd">Method</td><td colspan="2" class="confluenceTd">POST</td></tr><tr><td class="highlight confluenceTd" rowspan="4"><p>Required Properties</p></td><td class="highlight confluenceTd">Key</td><td class="highlight confluenceTd">Value</td></tr><tr><td class="confluenceTd">WipId</td><td class="confluenceTd">The WIP Id to associate the UPD to</td></tr><tr><td colspan="1" class="confluenceTd">UPDName</td><td colspan="1" class="confluenceTd">The name of the UPD to add. Configured in iFactory UPD screen</td></tr><tr><td colspan="1" class="confluenceTd">UPDValue</td><td colspan="1" class="confluenceTd">The value of the UPD to add. Must match the format of the UPD</td></tr><tr><td class="highlight confluenceTd">Return on Success</td><td colspan="2" class="confluenceTd"><ol><li>UPDId</li><li>UPDName</li><li>UPDValue</li><li>AssignItemId - Depending on the item type it can be either Wip Id or Serialized Material Id</li><li>AssignItem - The Material name.</li><li>EffectiveFrom - The date that the association happens.</li><li>EffectiveTo - Always null.</li></ol></td></tr><tr><td class="highlight confluenceTd" colspan="1">Return on Failure</td><td colspan="2" class="confluenceTd"><ol><li>PropertyName - The name of property with the error</li><li>ErrorMessage - The message describing the error</li><li>ErrorCode - An internal code to trace the error.</li></ol></td></tr></tbody></table>


- ## ***Dependency on other iFactory API functions***


- Retrieve WIP - To retrieve the WIP Id for the required property WipId
