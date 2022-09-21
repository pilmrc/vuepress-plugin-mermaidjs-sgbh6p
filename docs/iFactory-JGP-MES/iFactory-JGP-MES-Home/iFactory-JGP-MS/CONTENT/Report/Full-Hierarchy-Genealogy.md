# Introduction

The FullHierarchyGenealogy Report shows full hierarchy information base on the provided serial number.


### How to get there?


SQL SERVER REPORTING SERVICES 


IFACTORY_QA 


SFS-IFACTORY-STANDARD-REPORTS 


FullHierarchyGenealogy
![image2020-5-29_16-54-9.png](/.attachments/71369907.png)





#### Screen Activity


The FullHierarchyGenealogy report allows the following activity:

- View full hierarchy genealogy information base on the given serial number (Top WIP/Child WIP/Serialize Material that is unique) which match with the selected material.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition


The following data needs to be pre-configured before user runs the FullHierarchyGenealogy report: 

- Existing WIP/Child WIP/Serialize Material that is unique to query.
Select the mandatory fields: Customer; Division; Product Family; Material and Serial Number which is match with selected material.
![image2020-5-29_16-55-45.png](/.attachments/71369910.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select a Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select a Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Mandatory to select a Product Family only. Filter by Customer/Division.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Mandatory to select a Material only. Filter by Product Family.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><p>Specify a unique serial number that match with the selected material. System will return error if more than 1 serial number found.</p></td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Level</td><td colspan="1" class="confluenceTd"><p>The hierarchy level of each unit:</p><p>0 – The highest unit that didn't consumed to others.</p><p>1 – The consumed items of 0 level</p><p>2 – The consume items of 1 level</p><p>Etc.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material Type</td><td colspan="1" class="confluenceTd"><p>The material type of each return hierarchy record. E.g. WIP, Serialized Material and Unserialized Material</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material of each return hierarchy record.</td></tr><tr><td colspan="1" class="confluenceTd">Identifier</td><td colspan="1" class="confluenceTd"><p>The serial number of the unit, if any. Leave blank if do not have serial number, such as unserialized material.</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">The CRD location of the unit that captured at parent unit.</td></tr><tr><td colspan="1" class="confluenceTd">Parent Identifier</td><td colspan="1" class="confluenceTd">The parent serial number that consumed this unit.</td></tr><tr><td colspan="1" class="confluenceTd">GRN </td><td colspan="1" class="confluenceTd">The GRN number of the unit, if any.</td></tr><tr><td colspan="1" class="confluenceTd">Assembled By</td><td colspan="1" class="confluenceTd">The user who assembled the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Assemble Date</td><td colspan="1" class="confluenceTd">The date and time when assembled the unit.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The consumed quantity of the unit to it's parent.</td></tr><tr><td colspan="1" class="confluenceTd">Assembled At</td><td colspan="1" class="confluenceTd">The step that consumed the unit.</td></tr></tbody></table>

**0 – The highest unit that didn’t consumed to others.** 
1 – The consumed items of 0 level
2 – The consume items of 1 level
Etc.
Material TypeThe material type of each return hierarchy record. E.g. WIP, Serialized Material and Unserialized Material
MaterialThe material of each return hierarchy record.IdentifierThe serial number of the unit, if any. Leave blank if do not have serial number, such as unserialized material.
CRDThe CRD location of the unit that captured at parent unit.Parent IdentifierThe parent serial number that consumed this unit.GRN The GRN number of the unit, if any.Assembled ByThe user who assembled the unit.Assemble DateThe date and time when assembled the unit.QuantityThe consumed quantity of the unit to it’s parent.Assembled AtThe step that consumed the unit.



#### Attachments

[image2020-5-18_16-20-22.png](/.attachments/71369895.png)
[image2020-5-18_16-16-17.png](/.attachments/71369896.png)
[Smaller.jpg](/.attachments/71369897.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/71369898.jpg)
[image2013-7-9 13:37:43.png](/.attachments/71369899.png)
[image2013-7-9 13:36:46.png](/.attachments/71369900.png)
[image2013-7-9 13:35:13.png](/.attachments/71369901.png)
[image2020-3-25_14-6-43.png](/.attachments/71369902.png)
[image2020-3-25_14-18-49.png](/.attachments/71369903.png)
[image2020-5-29_16-53-38.png](/.attachments/71369906.png)
[image2020-5-29_16-54-9.png](/.attachments/71369907.png)
[image2020-5-29_16-55-45.png](/.attachments/71369910.png)
