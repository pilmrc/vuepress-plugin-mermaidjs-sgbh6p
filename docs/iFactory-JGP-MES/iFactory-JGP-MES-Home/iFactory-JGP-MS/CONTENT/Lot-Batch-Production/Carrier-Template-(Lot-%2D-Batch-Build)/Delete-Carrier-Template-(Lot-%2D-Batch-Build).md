# Introduction

![iFactory Manufacturing Suite 2.png](/.attachments/29917794.png)



The primary purpose of this screen is to allow the user to edit existing data for a Carrier Template, or to delete an existing Carrier Template. Upon entry, the user will be prompted to search for an existing Carrier Template that can be edited / updated or deleted. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.


### How to get there?



::: mermaid
graph LR
A("CARRIER TEMPLATE")-->0("UPDATE CARRIER TEMPLATE")

:::


#### Screen Activity


Update Carrier Template enables user to perform the following activity:

- Edit an existing Carrier Template

- Delete an existing Carrier Template



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Update Carrier Template

- [Create Carrier Template (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-Template-(Lot-%2D-Batch-Build)/Create-Carrier-Template-(Lot-%2D-Batch-Build).md)
must have been used to create a Carrier Template previously for a template to exist




#### Screen Dependency


The following screen has direct dependency with Update Carrier Template

- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
will be affected by the update or deletion of a Carrier Template. Subsequent Carriers created will be created using the updated values. Deleted Templates will no longer be available to create a Carrier. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.


#### Process


The process for Editing or Deleting a Carrier Templates start off with a search to identify the Carrier Template to be processed. The search field may be left blank, partially filled, or filled in completely as shown in the example below followed by pressing the search icon 
![Search Icon.png](/.attachments/29917796.png)


.


![Search Carrier Template.png](/.attachments/29917801.png)



Once the search is made, the Carrier Template may be deleted by selecting the applicable icon

![Delete Icon.png](/.attachments/29917797.png)


.
When the Delete is selected the system will confirm the user wishes to delete the template before actually deleting the template. Selecting the cancel will terminate the requested delete action and all will remain the same.

![Delete Carrier Template.png](/.attachments/29917793.png)




#### Attachments

[Delete Carrier Template.png](/.attachments/29917793.png)
[iFactory Manufacturing Suite 2.png](/.attachments/29917794.png)
[Edit icon.png](/.attachments/29917795.png)
[Search Icon.png](/.attachments/29917796.png)
[Delete Icon.png](/.attachments/29917797.png)
[Update Carrier Template.png](/.attachments/29917798.png)
[Update Carrier Template .png](/.attachments/29917799.png)
[Create Carrier Template.png](/.attachments/29917800.png)
[Search Carrier Template.png](/.attachments/29917801.png)
