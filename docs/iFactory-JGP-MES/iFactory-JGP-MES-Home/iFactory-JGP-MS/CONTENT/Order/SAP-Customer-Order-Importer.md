# Introduction

The Phoenix system permits team members to physically import SAP sales orders into the system.  This display is also referred to as the “SAP customer order importer screen.” The order importer is used as a backup just in case the imported SAP order via intermediate document (IDOC) does not occur. 

**How to get there?** 

::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("IMPORT SALES ORDER")

:::
![image2013-5-13 14:28:16.png](/.attachments/29918845.png)





### General Functionality 


This main display permits end users to enter import sales orders. This screen includes functionality allowing team members to identify clients, plant codes, and importing files from SAP. Importer file data is displayed in a grid in the lower portions of this screen. Team member can sort imported data by sales orders and deliver numbers. 
![image2013-5-13 14:30:34.png](/.attachments/29918844.png)


If a team member searches for clients, a 
**customer pop-up list** appears which are distinctive by customers or materials. If serial numbers are unique by customers, serial numbering sequencing encompasses all customer materials. If serial numbers are distinctive by material, each material will carry its own serialization sequence.  The phoenix system provides the end user with a drop-down menu for displaying **plant codes** for specifying client facilities in the import sales order screen. 
![image2013-3-29 14:39:15.png](/.attachments/29918848.png)


The system allows end users to 
**upload import sales orders** . An SAP query can be run to extract order details. ![image2013-3-29 10:30:29.png](/.attachments/29918857.png)


A team member clicks 
**“select”** to upload a SAP export file into the phoenix system. The system tracks each end users including last date and time. Until the end user selects **“save”** the imported sales order is a display only. If a team member selects **“clear”**  the file will not be saved into the phoenix system.  
![image2013-5-13 14:32:50.png](/.attachments/29918843.png)



The phoenix system has the capability of displaying sales order numbers 
**“SO#s”**  or delivery numbers **“Delivery #”** either ascending or descending direction.  This system displays **partner numbers** to end user which matches sold-to-party in the SAP sales order overview. SAP provides a **high level item (HL) numbered** view from the sales order.  If a line item reports data to another line item in the SAP sales order, the HL item number indicates which line item is being reported to. For instance, if the item number **is “1002”** and the HL item number is **“1000”,**  this indicates item **“1002”** reports to **“1000”.** This is a common occurrence in configure-to-order (CTO) sales orders.  The 
**item number** is displays on the import sales order grid. It provides the primary line information regarding sales orders and correlates with SAP line items from sales orders. The **material number** provides the Jabil material number for each item on the sales order, and correlates with the SAP material item in the sales order. **Item category** (ItCa) is provided from the SAP sales order. The item category differs by client, but usually appears with a “Z” prefix (i.e. ZITN, ZG03). the exact definition of each ItCa can be completed only in SAP by double-clicking the ItCa in the sales order overview to display the item category on the item data screen.  The phoenix system also provides a **description of each material** in the line item of the SAP sales order.  
![image2013-5-13 14:35:6.png](/.attachments/29918842.png)



The phoenix system matches the 
**quantity** of each line item ordered by customer's in the SAP sales order screen.  The item number provides a **delivery number** for a sales order, and correlated with SAP delivery order data by clicking the display document flow icon in the sales order. Delivery numbers are displayed in the goods issue line item of the document flow page.  The system displays a customer's 
**purchase order number (PO #)** for the sales order, and correlates with the SAP line item. The **PO item** represents the line number of the customer purchase order and is tied to the POitem column in the SAP sales order.  The **sales order number** matches the e-commerce sales order in the SAP sales order overview header and **price matches** the amount column in the SAP sales order detailed list.
![image2013-5-13 14:37:8.png](/.attachments/29918841.png)



The cash line is displayed in legal tender which is tied to the 
**currency column** in the SAP sales order grid. The **purchase order (PO) date** is not imported into the phoenix system and **received** date matches. The **sales order created date** aligns with the e-commerce sales order date being displayed in the document flow of the SAP sales order.  The **available-to-promise date (ATP)** is linked to the required delivery date. The receivers name matches the end-customer and ship-to-party SAP sales order. The **house number** is tied to the street/house number for the ship-to-address of the SAP import sales order.
![image2013-5-13 14:38:36.png](/.attachments/29918840.png)



The
**street and street 2** are tied to the street/house number for the ship-to-address in the SAP delivery document. The **city** and**state** fields align with the ship-to-address in the SAP delivery document. The**postal code** and **country** are linked to the ship-to-address within SAP.
![image2013-5-13 14:40:3.png](/.attachments/29918839.png)





#### Screen Activity


Import sales order enables end user to perform the following activity:

- Identify clients, plant codes and imported SAP files.

- Search for unique serial number sequencing and customer distinctive materials.

- Upload import sales orders, display sales orders and delivery numbers.

- Display material numbers, item categories, purchase orders, sales orders and item numbers.

- Match prices, review currencies, sales order and available-to-promise dates.

- Review house numbers, ship-to-address, street numbers including postal codes and countries.

Pre Condition
The following data needs to be pre-configured (if used) before user configures the import sales package. 

- Provide end users with correct sales order information or documentation before importing data.

- The phoenix system must be populated with accurate customer and plant code information.

- Import sales order text must be properly formatted before uploading into the phoenix system.



#### Screen Dependency


The following screen(s) have direct dependency with sales order.

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Material Vendor](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Vendor.md)

- [Material Manufacturer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)

- [Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

- [Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)



#### Fields/Functions/Description



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="SAPCustomerOrderImporter-Fields/Functions/Description.1"><strong>Fields/Functions/Description </strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Plant Code</td><td colspan="1" class="confluenceTd">Plant Code where Order belongs.</td></tr><tr><td colspan="1" class="confluenceTd">SAP Export File</td><td colspan="1" class="confluenceTd">File to be imported (search in folder on users PC).</td></tr><tr><td colspan="1" class="confluenceTd">Partner Number</td><td colspan="1" class="confluenceTd">Same as 'Sold To Party' in SAP.</td></tr><tr><td colspan="1" class="confluenceTd">High Level Item Number</td><td colspan="1" class="confluenceTd">SAP provides a high level item (HL) numbered view from the sales order.  If a line item reports data to another line item in the SAP sales order, the HL item number indicates which line item is being reported to. For instance, if the item number is “1002” and the HL item number is “1000”, this indicates item “1002” reports to “1000”.  This is a common occurrence in configure-to-order (CTO) sales orders.  </td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</p></td></tr><tr><td class="confluenceTd"><p>Item Category</p></td><td class="confluenceTd"><p>Also known as ItCa. Value is provided by SAP Sales Order.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Material Description as supplied by SAP Sales Order.</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Quantity of Materials.</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number</td><td colspan="1" class="confluenceTd">Delivery Number as provided by SAP.</td></tr><tr><td colspan="1" class="confluenceTd">Purchase Order Number</td><td colspan="1" class="confluenceTd">Purchase Order Number as provided by SAP.</td></tr><tr><td colspan="1" class="confluenceTd">Purchase Order Item Number</td><td colspan="1" class="confluenceTd">Purchase Order</td></tr><tr><td colspan="1" class="confluenceTd">Sales Order Number</td><td colspan="1" class="confluenceTd">Value provided by SAP</td></tr><tr><td colspan="1" class="confluenceTd">Price</td><td colspan="1" class="confluenceTd"><p>Value provided by SAP, <span>It is a required field, however, is not imported into Phoenix.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Currency</td><td colspan="1" class="confluenceTd"><span>Value provided by SAP. <span>It is a required field, however, is not imported into Phoenix.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Purchase Order Received</td><td colspan="1" class="confluenceTd"><p><span>Value provided by SAP. It is a required field, however, is not imported into Phoenix.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Sales Order Created</td><td colspan="1" class="confluenceTd">Date Value provided by SAP and displayed in Phoenix.</td></tr><tr><td colspan="1" class="confluenceTd">Available to Promise (ATP) Date</td><td colspan="1" class="confluenceTd">The available-to-promise date (ATP) is linked to the required delivery date.</td></tr><tr><td colspan="1" class="confluenceTd">Receiver</td><td colspan="1" class="confluenceTd">End Customer value and SAP Ship To Party.</td></tr><tr><td colspan="1" class="confluenceTd">Contact Line 1, 2, 3</td><td colspan="1" class="confluenceTd">Contact information as d<span>esignated by</span> the receiver.</td></tr><tr><td colspan="1" class="confluenceTd">House Number, <span>Street 1 and 2, <span>City, State Postal Code, Country</span></span></td><td colspan="1" class="confluenceTd">House, Street, City, State, Postal Code and Country of the Ship To Address.</td></tr></tbody></table>



#### Attachments

[image2013-5-13 14:40:3.png](/.attachments/29918839.png)
[image2013-5-13 14:38:36.png](/.attachments/29918840.png)
[image2013-5-13 14:37:8.png](/.attachments/29918841.png)
[image2013-5-13 14:35:6.png](/.attachments/29918842.png)
[image2013-5-13 14:32:50.png](/.attachments/29918843.png)
[image2013-5-13 14:30:34.png](/.attachments/29918844.png)
[image2013-5-13 14:28:16.png](/.attachments/29918845.png)
[image2013-4-1 8:49:16.png](/.attachments/29918846.png)
[image2013-4-1 8:33:17.png](/.attachments/29918847.png)
[image2013-3-29 14:39:15.png](/.attachments/29918848.png)
[image2013-3-29 14:31:2.png](/.attachments/29918849.png)
[image2013-3-29 14:29:16.png](/.attachments/29918850.png)
[image2013-3-29 14:4:55.png](/.attachments/29918851.png)
[image2013-3-29 13:4:41.png](/.attachments/29918852.png)
[image2013-3-29 11:13:16.png](/.attachments/29918853.png)
[image2013-3-29 11:6:14.png](/.attachments/29918854.png)
[image2013-3-29 11:4:27.png](/.attachments/29918855.png)
[image2013-3-29 10:36:18.png](/.attachments/29918856.png)
[image2013-3-29 10:30:29.png](/.attachments/29918857.png)
[image2013-3-29 10:25:43.png](/.attachments/29918858.png)
[image2013-3-29 10:19:45.png](/.attachments/29918859.png)
[image2013-3-29 8:42:16.png](/.attachments/29918860.png)
[image2013-3-28 12:31:29.png](/.attachments/29918861.png)
