# Introduction

Failure Category is used to group customized Failure Labels to be used by Site.



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("QUALITY")
0-->1("Failure CATEGORY Maintenance")

:::
![image2020-8-17_6-33-55.png](/.attachments/77136062.png)



Screen Activity

Failure Category Maintenance enables user to perform the following activity:

- Create, view, update and delete Failure Category




#### Pre-Requisits


User must have the security permission for this screen based on action (s)he wants to perform:

- Can View

- Can Modify


#### **Screen Dependency** 




- ***Failure Label Maintenance***





#### **Fields** 




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Customer/Division</p></td><td style="text-align: left;" class="confluenceTd"><p>This field is auto-selected through Data Partitioning.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Failure Category Name</td><td style="text-align: left;" class="confluenceTd">This is mandatory field and non-editable once Failure category saved. This value to be used in Failure Label Maintenance while grouping different failures under Failure Category.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Failure Category Description</p></td><td style="text-align: left;" class="confluenceTd"><p>This field is a detailed description on the Failure category. Although a mandatory field to enter but editable until the category</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Actions</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>This check box is used to mark a particular defect category as being 'Product Related' or not.<br />This flag is used in the determination of a correct/incorrect analysis determination<br />If a Defect Category is marked as Product Related, then an indictment is considered 'Confirmed' if a repair corresponding to the indictment causes a changing failure label, or the board passes.<br />If a Defect Category is not marked as Product Related (i.e. tester defect) then an indictment is considered 'confirmed' if the re-test of the product passes with no rework being done.</p></td></tr></tbody></table>






#### Attachments

[image2020-8-17_6-33-55.png](/.attachments/77136062.png)
