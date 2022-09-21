# Introduction



## ***Introduction***  


This function allows a third party client (Machine / WorkStation Client) to retrieve Parent Work Order(s) details using Child Material BOM ID, so Machine Integration able to know which SAP Work Order (Production Order) to be used. It is only applicable for SAP Work Order (a.k.a Production Order).  




## ***Function details***  



<table class="confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">URL</td><td style="text-align: left;" colspan="2" class="confluenceTd"><a rel="nofollow" class="external-link" href="http://usplnd0ifaweb42:2001/api/wips/120763/oktostart?resourceName=SQA-MTE-1" style="text-decoration: none;">https://[servername]:9000/api/ProductionOrder/RetrieveWorkOrdersByChildMaterialBOM?ChildMaterialBomID=[ChildBOMID]&ParentMaterialBom=[ParentMaterialBOMName]</a></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Method</td><td style="text-align: left;" colspan="2" class="confluenceTd">GET</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey">Return on Success</td><td style="text-align: left;" colspan="2" class="confluenceTd"><ol><li>Child Material BOM ID is entered & Valid. Always return Parent Work Order Details on success / return blank if valid but no SAP Work Order been generated.  </li><li>Child Material BOM ID & Parent Material BOM Name is entered & Valid. Always return Parent Work Order Details on success / return blank if valid but no SAP Work Order been generated. </li></ol></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey">Return on Failure</td><td style="text-align: left;" colspan="2" class="confluenceTd"><ol><li>Invalid Child Material BOM ID, return invalid Child Material BOM ID error. </li><li>Blank Child Material BOM ID, return invalid Child Material BOM ID required. </li><li>Invalid Parent Material BOM Name, return invalid Parent Material BOM Name error. </li></ol></td></tr></tbody></table>


- ## ***Sample of Return On Success API Output Parameters***

![image2022-2-4_13-37-15.png](/.attachments/106464689.png)




#### Attachments

[image2022-2-4_13-37-15.png](/.attachments/106464689.png)
