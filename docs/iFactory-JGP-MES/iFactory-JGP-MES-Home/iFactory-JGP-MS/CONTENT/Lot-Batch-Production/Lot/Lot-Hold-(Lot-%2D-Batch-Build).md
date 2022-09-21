# Introduction

Lot Hold is used to temporarily halt the Lot Processing. There could be various reasons (quality issues, customer request, etc) to place Lot On Hold. Lot on hold will be blocked from further processing. 


### How to get there?



::: mermaid
graph LR
A("LOT")-->0("LOT HOLD")

:::


#### Screen Activity


Lot Hold enables the user to perform the following activity:

- Place Lot On Hold

- Release Lot On Hold


#### Screen Dependency


Every Operator screen that requires scanning of Lot Number or Carrier Number that assigned to a Lot will be impacted by the hold activities here. 



#### Place Lot On Hold


![image2017-4-11 11:3:6.png](/.attachments/29917828.png)




- Search a Lot Number or Carrier Number that want to place on hold

- System load the Lot ID

![image2017-4-11 11:12:23.png](/.attachments/29917827.png)



- Enter Reason for placing lot on hold



#### Release Lot Hold



- Search a Lot Number or Carrier Number that already on hold


- System load the hold Lot ID

- Enter Reason for releasing a Lot from hold



#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search By Carrier</p></td><td class="confluenceTd"><p>Scan Carrier Serial Number</p></td></tr><tr><td class="confluenceTd"><p>Search By Lot</p></td><td class="confluenceTd"><p>Scan Lot Number</p></td></tr><tr><td colspan="1" class="confluenceTd">Lot ID</td><td colspan="1" class="confluenceTd">Display Lot</td></tr><tr><td colspan="1" class="confluenceTd">Lot Hold</td><td colspan="1" class="confluenceTd">Enter Reason for placing lot on hold</td></tr><tr><td colspan="1" class="confluenceTd">Release Hold</td><td colspan="1" class="confluenceTd">Enter Reason to release lot from hold</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">To Hold or Release Hold</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Return to Log Menu</td></tr></tbody></table>



#### Attachments

[image2017-4-11 11:12:23.png](/.attachments/29917827.png)
[image2017-4-11 11:3:6.png](/.attachments/29917828.png)
