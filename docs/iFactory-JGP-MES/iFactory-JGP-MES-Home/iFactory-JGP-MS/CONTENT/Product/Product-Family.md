# Introduction

Product Family is used to group materials of the same range. However, the condition of this grouping may vary from customer to customer. A Product Family must be associated to a Customer and Division and it must be unique within each of the Customer and Division combination. 



### How to get there?




::: mermaid
graph LR
A("PRODUCT")-->0("PRODUCT FAMILY")

:::


#### Precondition


*[Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)* 
and *[Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)* need to be configured before user can configure Product Family


#### Screen Activity


Product Family Maintenance enables user to perform the following activity:

- Create, view, update and delete product family

- Associate product family to a customer and division combination



#### Screen Dependency


The following screen(s) has direct dependency with Product Family

- *[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)*

- *[Division Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)*

- *[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)*

- *[Reference Unit Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)*




#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p><span>Product Family Name</span></p></td><td class="confluenceTd"><p><span><span>The product family name must be unique within a Customer and Division combination. Therefore, d</span><span>uplicate product family name can exist for a customer <br />provided that they are from a different division. The configuration below is valid. <br /></span><br /></span></p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh">Product Family</th><th class="confluenceTh">Customer</th><th class="confluenceTh">Division</th></tr><tr><td class="confluenceTd">ProductFamily-123</td><td class="confluenceTd">Customer-A</td><td class="confluenceTd">Division-A</td></tr><tr><td class="confluenceTd"><span>ProductFamily-123</span></td><td class="confluenceTd"><span>Customer-A</span></td><td class="confluenceTd"><span>Division-B</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>ProductFamily-123</span></td><td colspan="1" class="confluenceTd">Customer-Z</td><td colspan="1" class="confluenceTd">Division-Z</td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd"><span>Product Family Description</span></td><td colspan="1" class="confluenceTd"><span>Additional description for the product family can be entered in this field</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Customer</span></td><td colspan="1" class="confluenceTd"><span>The customer associated to the product family</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Division</span></td><td colspan="1" class="confluenceTd"><span>The division associated to the product family</span></td></tr><tr><td colspan="1" class="confluenceTd">Project</td><td colspan="1" class="confluenceTd">Allow to keep tracking Product family by project.</td></tr></tbody></table>




<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Product Family</th><th class="confluenceTh">Customer</th><th class="confluenceTh">Division</th></tr><tr><td class="confluenceTd">ProductFamily-123</td><td class="confluenceTd">Customer-A</td><td class="confluenceTd">Division-A</td></tr><tr><td class="confluenceTd"><span>ProductFamily-123</span></td><td class="confluenceTd"><span>Customer-A</span></td><td class="confluenceTd"><span>Division-B</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>ProductFamily-123</span></td><td colspan="1" class="confluenceTd">Customer-Z</td><td colspan="1" class="confluenceTd">Division-Z</td></tr></tbody></table>

ProductFamily_123Customer_ADivision_AProductFamily_123Customer_ADivision_BProductFamily_123Customer_ZDivision_ZProduct Family DescriptionAdditional description for the product family can be entered in this fieldCustomerThe customer associated to the product familyDivisionThe division associated to the product familyProjectAllow to keep tracking Product family by project.


