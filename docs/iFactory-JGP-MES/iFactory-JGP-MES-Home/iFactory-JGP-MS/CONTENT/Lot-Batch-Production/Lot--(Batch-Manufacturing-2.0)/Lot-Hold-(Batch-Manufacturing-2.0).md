# Introduction

Lot Hold is used to temporarily halt the Lot Processing. There could be various reasons (quality issues, customer request, etc) to place Lot On Hold. Lot on hold will be blocked from further processing. 


### How to get there?




::: mermaid
graph LR
A("CARRIER/LOT")-->0("LOT HOLD")

:::


#### Permission


To access the screen:

- Lot Hold - Have menu and allow user to scan the lot without on hold/release hold

To access the screen and able to put a Lot on hold:

- Add Lot Hold - Allows the user to put a lot on hold
To release a lot from hold:

- Release Lot Hold - Allows the user to release an existing hold on a lot



#### Screen Activity


Lot Hold enables the user to perform the following activity:

- Place Lot On Hold

- Release Lot On Hold



#### Screen Dependency


Every Operator screen that requires scanning of Carrier Number or Internal Batch Number that is assigned to a Lot will be impacted by the hold activities here. 



#### Process


***Place Lot On Hold***  
User is able to search lot by Internal Batch Number, Carrier or Lot ID. 
If the Lot has "Started" operation status in any route step, system will not allow the Lot to be put on hold. Enter Reason for placing lot on hold and Submit button will be enabled.![image2020-11-17_16-1-48.png](/.attachments/82903312.png)



***Release Lot From Hold***  
User can search by Internal Batch Number, Carrier or Lot ID for a Lot that is already on hold. Enter a reason for releasing the Lot from hold and Submit button will be enabled. If user does not have permission for "Release Lot Hold", Submit button is disabled for Lot Hold Release.
![image2020-11-17_16-9-39.png](/.attachments/82903313.png)



The "Is On Hold" field in Lot View - General tab is updated accordingly when hold or release is performed. 
Hold and release information are populated in the Lot View - Lot Holds tab.



#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search by Carrier</p></td><td class="confluenceTd"><p>Scan Carrier Serial Number</p></td></tr><tr><td class="confluenceTd"><p>Search by Lot</p></td><td class="confluenceTd"><p>Scan Lot Number</p></td></tr><tr><td colspan="1" class="confluenceTd">Search by Internal Batch Number</td><td colspan="1" class="confluenceTd">Scan Internal Batch Number</td></tr><tr><td colspan="1" class="confluenceTd">Lot Id</td><td colspan="1" class="confluenceTd">Display Lot ID</td></tr><tr><td colspan="1" class="confluenceTd">Lot Hold</td><td colspan="1" class="confluenceTd">Enter Reason for placing lot on hold</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Displayed as "On Hold" when the lot is on hold</td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason</td><td colspan="1" class="confluenceTd">The reason for placing lot on hold</td></tr><tr><td colspan="1" class="confluenceTd">Lot Hold</td><td colspan="1" class="confluenceTd">Enter Reason to put lot on hold</td></tr><tr><td colspan="1" class="confluenceTd">Lot Hold Release</td><td colspan="1" class="confluenceTd">Enter Reason to release lot from hold</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">To Hold or Release Hold</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Clears the screen</td></tr></tbody></table>





#### Attachments

[image2017-4-11 11:3:6.png](/.attachments/82903310.png)
[image2017-4-11 11:12:23.png](/.attachments/82903311.png)
[image2020-11-17_16-1-48.png](/.attachments/82903312.png)
[image2020-11-17_16-9-39.png](/.attachments/82903313.png)
