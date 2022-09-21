# Introduction

The GRNbyDateCodeLotCode Report shows GRN information base on the provided Date Code, LotCode or both from selected customer/division.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("GRNbyDATecodelotcode")

:::
![image2020-5-18_16-16-17.png](/.attachments/71368809.png)




#### **Screen Activity** 


The GRNbyDateCodeLotCode Report allows the following activity:

- View GRN information base on the the given Date Code or Lot Code or even both (date code and lot code with OR condition) from selected customer/division.

- View results in grid table.

- Allow to click on GNR value hyperlink to open ConsumedWIPByGRN sub report.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


Pre-Condition
The following data needs to be pre-configured (if used) before user runs the GRNbyDateCodeLotCode Report: 

- GRN either with Date Code or Lot Code or both with value configured.


Select the mandatory fields: 
Customer; Division; at least DateCode/LotCode with value. Other parameters can be selected to narrow the results.![image2020-5-18_16-20-22.png](/.attachments/71368811.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select a Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select a Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Specify the Product Family. Filter by Customer/Division. Defaulted to [ALL]. Multiple selection is available.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Specify the Material where it belong to which GRN. Filter by Product Family. Defaulted to [ALL]. Multiple selection is available.</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">Specify the Date Code of GRN. Allow multiple value. (At least to provide either Date Code or Lot Code. Provide both with value will be query with OR condition.)</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">Specify the Lot Code to GRN. Allow multiple value. (At least to provide either Date Code or Lot Code. Provide both with value will be query with OR condition.)</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The GRN material's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The GRN material's division.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">The GRN material's Product Family.</td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd">The GRN's material.</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The GRN number.</td></tr><tr><td colspan="1" class="confluenceTd">Vendor</td><td colspan="1" class="confluenceTd">The GRN's vendor.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity </td><td colspan="1" class="confluenceTd">The current quantity of a GRN.</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">The GRN's date code.</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">The GRN's lot code.</td></tr><tr><td colspan="1" class="confluenceTd">User Prohibited</td><td colspan="1" class="confluenceTd">The GRN's user prohibited flag.</td></tr><tr><td colspan="1" class="confluenceTd">Block GRN</td><td colspan="1" class="confluenceTd">The GRN is block flag.</td></tr><tr><td colspan="1" class="confluenceTd">Created by Packout</td><td colspan="1" class="confluenceTd">The GRN's was created by packout flag.</td></tr></tbody></table>

**The GRN material’s customer.** 
DivisionThe GRN material’s division.Product FamilyThe GRN material’s Product Family.Part NumberThe GRN’s material.GRNThe GRN number.VendorThe GRN’s vendor.Quantity The current quantity of a GRN.Date CodeThe GRN’s date code.Lot CodeThe GRN’s lot code.User ProhibitedThe GRN’s user prohibited flag.Block GRNThe GRN is block flag.Created by PackoutThe GRN’s was created by packout flag.



#### Attachments

[image2020-3-25_14-18-49.png](/.attachments/71368801.png)
[image2020-3-25_14-6-43.png](/.attachments/71368802.png)
[image2013-7-9 13:35:13.png](/.attachments/71368803.png)
[image2013-7-9 13:36:46.png](/.attachments/71368804.png)
[image2013-7-9 13:37:43.png](/.attachments/71368805.png)
[7-9-2013 2-58-11 PM.jpg](/.attachments/71368806.jpg)
[Smaller.jpg](/.attachments/71368807.jpg)
[image2020-5-18_16-16-17.png](/.attachments/71368809.png)
[image2020-5-18_16-20-22.png](/.attachments/71368811.png)
