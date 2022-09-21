# Introduction

Super Lot Hold is used to temporarily halt the Super Lot Processing. There could be various reasons (quality issues, customer request, etc) to place Super Lot on Hold. Super Lot on hold will be blocked from further processing. 


### How to get there?



::: mermaid
graph LR
A("SUPER LOT HOLD")
:::


#### Screen Activity


Super Lot Hold enables the user to perform the following activity:

- Place Lot On Hold

- Release Lot On Hold


#### Screen Dependency


Every Operator screen that requires scanning of Super Lot Number that assigned to a Lot will be impacted by the hold activities here. 


#### Place Super Lot On Hold



- Search a Super Lot number that want to be place on hold.


- System load the hold Lot ID.

- Enter Reason for holding the Super Lot.
![image2020-11-16_16-27-52.png](/.attachments/82903296.png)




#### Release Super Lot Hold



- Search a Super Lot number that already on hold.


- System load the hold Lot ID.

- Enter Reason for releasing the Super Lot from hold.
![image2020-11-16_16-37-8.png](/.attachments/82903299.png)




#### Fields


<table class="relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 16.1309%;" /><col style="width: 83.9255%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Search Super Lot Number</td><td class="confluenceTd"><p>Search super lot number. </p><p>User is able to perform partial search</p></td></tr><tr><td class="confluenceTd">Super Lot Number</td><td class="confluenceTd">Display Super Lot number</td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd">The status of the Super Lot number</td></tr><tr><td class="confluenceTd">Hold Reason</td><td class="confluenceTd">The reason why the Super Lot is on hold</td></tr><tr><td colspan="1" class="confluenceTd">Super Lot Hold</td><td colspan="1" class="confluenceTd">Enter reason for placing super lot on hold</td></tr><tr><td colspan="1" class="confluenceTd">Super Lot Release</td><td colspan="1" class="confluenceTd">Enter reason to release super lot from hold</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">To Hold or Release Hold</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Return to Log Menu</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Associated Lots</td></tr><tr><td colspan="1" class="confluenceTd">Internal Batch Number</td><td colspan="1" class="confluenceTd"><p>The Internal Batch number associated to the super lot.</p><p>Redirect user to the lot view page when click on the hyperlink</p></td></tr><tr><td colspan="1" class="confluenceTd">Lot Quantity</td><td colspan="1" class="confluenceTd">The lot quantity of the Internal Batch number</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of the Internal Batch number</td></tr></tbody></table>



#### Attachments

[image2020-11-16_16-20-9.png](/.attachments/82903288.png)
[image2020-11-16_16-27-23.png](/.attachments/82903293.png)
[image2020-11-16_16-27-36.png](/.attachments/82903294.png)
[image2020-11-16_16-27-52.png](/.attachments/82903296.png)
[image2020-11-16_16-31-0.png](/.attachments/82903297.png)
[image2020-11-16_16-37-8.png](/.attachments/82903299.png)
