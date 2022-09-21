# Introduction

Defect Category is used to group Defect Types. 



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("QUALITY")
0-->1("DEFECT CATEGORY")

:::

Screen Activity

Defect Category Maintenance enables user to perform the following activity:

- Create, view, update and delete Defect Category

- Define DPMO category for the Defect Category. Defect Types that are grouped under this Defect Category will inherit its DPMO category




#### **Screen Dependency** 




- ***Defect***

T
ype  Maintenance
- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)




#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Defect Category Name</p></td><td class="confluenceTd"><p>The unique name given to the Defect Category</p></td></tr><tr><td class="confluenceTd">Category Description</td><td class="confluenceTd">Additional description for the Defect Category can be entered in this field</td></tr><tr><td class="confluenceTd"><p>Global Defect Category ID</p></td><td class="confluenceTd"><p>A unique numerical ID given to each Defect Category. This field will be disabled for Custom Defect Category</p></td></tr><tr><td class="confluenceTd"><p>DPMO Category</p></td><td class="confluenceTd"><p>Defect Per Million Opportunities (DPMO) category defined here will impact the DPMO report calculation. <span>This field will be disabled for Custom Defect Category. <br />A </span><a href="Defect-Type-29919507.html"><span>d</span>efect</a> can fall into one of the four DPMO categories below.</p><ul><li><span>Placement</span></li><li><span>Termination</span></li><li><span>Component</span></li><li><span>Non Product</span></li></ul><p> </p></td></tr><tr><td colspan="1" class="confluenceTd">Product Related</td><td colspan="1" class="confluenceTd"><p>This check box is used to mark a particular defect category as being 'Product Related' or not. <br />This flag is used in the determination of a correct/incorrect analysis determination<br />If a Defect Category is marked as Product Related, then an indictment is considered 'Confirmed' if a repair corresponding to the indictment causes a changing failure label, or the board passes.<br />If a Defect Category is not marked as Product Related (i.e. tester defect) then an indictment is considered 'confirmed' if the re-test of the product passes with no rework being done.</p></td></tr></tbody></table>





