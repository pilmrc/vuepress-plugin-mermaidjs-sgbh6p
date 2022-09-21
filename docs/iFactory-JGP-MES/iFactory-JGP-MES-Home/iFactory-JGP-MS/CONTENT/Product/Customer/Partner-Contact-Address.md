# Introduction


Partner Contact Address is used to maintain addresses for Ship to Customers, Bill to Customers, and any other addresses that may be needed in Phoenix. The addresses are imported from SAP during Customer Orders Import process. User can also manually add addresses in this screen. However, partner address information will be overwritten if the data imported from SAP contains the same Address Number for the Partner Number.
A Customer Name/Contact Name can have multiple Partner Numbers but each Partner Numbers can only be linked to a Customer Name/Contact Name. A Partner Number can have multiple Address Numbers but each Address Number can only be linked to one Partner Number.
![image2012-11-12 16:3:23.png](/.attachments/29919371.png)



How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("CUSTOMER")
0-->1("CUSTOMER")

:::


### Screen Activity


Partner Contact Address Maintenance enables user to perform the following activity:

- Create, view, update and delete contact address

- View partner contact addresses imported from SAP



#### Screen Dependency



- [Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Partner Number</p></td><td class="confluenceTd"><p>Equivalent to SAP's Customer Number. Partner Number and Address Number makes up the unique key for the Partner Contact Address</p></td></tr><tr><td class="confluenceTd"><p>Address Number</p></td><td class="confluenceTd"><p>Unique key to identify the address. One Address Number can only be linked to one Partner Number. <br />However, a Partner Number can have multiple Address Numbers</p></td></tr><tr><td class="confluenceTd"><p>Contact Name</p></td><td class="confluenceTd"><p><span>Equivalent to SAP's Customer Name. One Partner Number can only be linked to one Contact Name. <br />The Contact Name may not be equivalent to Phoenix's Customer Name. <br />Therefore, user is required to associate the Partner Number to Phoenix's Customer Name in <a href="Customer-29919368.html">Customer Maintenance</a>'s Customer Partner tab</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Address Line 1</td><td colspan="1" class="confluenceTd"><p>The address for the partner number is entered here</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Address Line 2-6</span></td><td colspan="1" class="confluenceTd"><p>Details of the address such as postal code and city are entered here</p></td></tr></tbody></table>






#### Attachments

[image2012-11-12 16:3:23.png](/.attachments/29919371.png)
[image2012-11-12 15:53:39.png](/.attachments/29919372.png)
