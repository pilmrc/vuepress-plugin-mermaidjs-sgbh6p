# Introduction



### **How to import a Production Order** 


In a BTO or CTO business, customers typically place orders through B2B interface directly to Jabil SAP. In order to build the products to fulfill those orders, Jabil SAP would convert those customer orders into Production Orders and send them to the Shop Floor system to be built.
To send a Production Order to IFactory MS, SAP generates an IDoc and sends it to Sterling Integration (SI) System. SI translates the IDoc to and XML format and places it into MSMQ. IFactory MS then picks up the XML file and process it to import the content into IFactory MS as Production Order that is displayed in the Production Order Management screen.
![image2013-2-19 15:19:0.png](/.attachments/29918827.png)


![image2013-2-19 15:21:21.png](/.attachments/29918826.png)




**What is imported in a Production Order** 

- Product built instruction, including:


- the materials or sub-assemblies to assemble for a particular order,

- the date and time that the order needs to be fulfilled

- the priority of the order

- the quantity required for the order

- Product information be printed on the labels for the product, such as customer details, shipping details, model names.

- Production process requirement. Some customers include information in Production Order to indicate that the product needs to go through special processing during its built.
[Sample of a Production Order XML file](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management/SAP-Work-Order-%2D-Production-Order-Import.md)



#### **Why is a Production Order Imported** 


A Production Order typically contains information about the Line Items for a particular product. Line Items are equivalent to a BOM, which describes all the materials and the relationship between those materials to build a product. IFactory would build the product following the Line Items in the Production Order to ensure that the product is built as requested by the Customer. This is especially critical in a CTO business, where one product contains many options, but only a few is required for any 1 order. In this case, the Production Order Line Items will contain the exact options required for that particular order. 
By automating the process of importing the Production Order from SAP to IFactory MS and removing any need for human selecting the options manually, the risk of building a product with incorrect options is eliminated.



#### **Prerequisite for a Production Order Import** 


With the Line Items being the key component in a Production Order, in order for a Production Order to be successfully imported, 2 pre-requisites must be met:

- All materials contained in the Production Order, including all line items, must already be imported to IFactory MS from SAP

- All BOMs for the materials in the Production Order must already be imported to IFactory MS from SAP.









#### Attachments

[PRODORDER_TN01-SFS_PRODORDER_20161021_034006_305841777-0000000417635613.xml](/.attachments/29918829.xml)
