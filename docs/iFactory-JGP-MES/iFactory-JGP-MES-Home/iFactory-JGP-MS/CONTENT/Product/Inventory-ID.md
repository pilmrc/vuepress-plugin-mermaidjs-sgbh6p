# Introduction

Inventory ID (formerly known as GRN - Goods Receipt Number) are used to uniquely identify and track each materials (components) received in Jabil. Inventory ID are imported into Phoenix from SAP ECC. If required, Inventory ID can also be created in Phoenix. 




### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("INVENTORY ID")

:::

Screen Activity
Inventory ID Maintenance enables user to perform the following activity:

- Create, view, update and delete Inventory ID records




#### Screen Dependency


The following screen(s) has direct dependency with Inventory ID

- [Resource Setup Sheet Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Resource-Setup-Sheet.md)

- [Material Manufacturer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)

- [Material Vendor](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Vendor.md)


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="InventoryID-GeneralTab"><strong>General Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Inventory ID</p></td><td class="confluenceTd"><p>The unique name given to the Inventory ID</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Material Name / Plant</span></td><td colspan="1" class="confluenceTd">To determine the material that is inside the Inventory ID's box/bag/package. An Inventory ID only contains one material. <br />A material can have several Inventory IDs</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>An Inventory ID can be in one of the statuses below:</p><ul><li>Active (The Inventory ID is ready to use in production)</li><li>Hold (The Inventory ID is temporarily on hold and cannot be used in production for assembly builds)</li><li>Inactive (<span>The Inventory ID is obsolete and no longer used in production)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Received Qty</td><td colspan="1" class="confluenceTd">Quantity of items received from SAP ECC or preconfigured in Phoenix. This quantity will not change</td></tr><tr><td colspan="1" class="confluenceTd">Quantity on Hand</td><td colspan="1" class="confluenceTd">Quantity on Hand will deplete as the Inventory ID is used in production. This quantity will change.<br />If the value shown here is negative, this means the "Allow Negative Quantity On Hand" is enabled in <a href="Customer-29919368.html">Customer Maintenance</a>. <br />User may have already split the Inventory ID more than the Quantity on Hand</td></tr><tr><td colspan="1" class="confluenceTd">Reference Inventory ID</td><td colspan="1" class="confluenceTd">The parent Inventory ID when the Inventory ID is split</td></tr><tr><td colspan="1" class="confluenceTd">Storage Location</td><td colspan="1" class="confluenceTd">The system shall allow user to specify the place where the Inventory ID is physically located. This field shall store the storage location ID</td></tr><tr><td colspan="1" class="confluenceTd">Comments</td><td colspan="1" class="confluenceTd">Additional comments about the Inventory ID can be entered here</td></tr><tr><td colspan="1" class="confluenceTd">Source System</td><td colspan="1" class="confluenceTd">If Inventory ID is sent from SAP, source system will be "SAP" <br />If Inventory ID is created in Phoenix, source system will be "PHX" </td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="InventoryID-VendorTab"><span style="color: rgb(51,51,51);">Vendor Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Vendor Code</td><td colspan="1" class="confluenceTd">The vendor ID that provided the materials to Jabil. Vendor Code <span>is imported from SAP but can also be created in Phoenix in <a href="Material-Vendor-29919391.html">Material Vendor Maintenance</a></span></td></tr><tr><td colspan="1" class="confluenceTd">Vendor Name</td><td colspan="1" class="confluenceTd"><span>The vendor name that provided the materials to Jabil. <span>Vendor Name </span><span>is imported from SAP but can also be created in Phoenix in <a href="Material-Vendor-29919391.html">Material Vendor Maintenance</a></span></span></td></tr><tr><td colspan="1" class="confluenceTd">Vendor Date Code</td><td colspan="1" class="confluenceTd"><span>The date code when Jabil receives the Inventory ID</span></td></tr><tr><td colspan="1" class="confluenceTd">Vendor Lot Code</td><td colspan="1" class="confluenceTd">The lot identifier for the Inventory ID</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="InventoryID-DetailTab"><span style="color: rgb(51,51,51);">Detail Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Manufacturer</td><td colspan="1" class="confluenceTd">The manufacturer that produces the material. Manufacturer is imported from SAP but can also be created in Phoenix in <a href="Material-Manufacturer-29919386.html">Material Manufacturer Maintenance</a></td></tr><tr><td colspan="1" class="confluenceTd">MPN Number</td><td colspan="1" class="confluenceTd">Manufacturer Part Number are part numbers used by the manufacturer. It is different from Jabil part number</td></tr><tr><td colspan="1" class="confluenceTd">Maximum Usage</td><td colspan="1" class="confluenceTd">The maximum times the Inventory ID can be used in production. This field is not imported from SAP and is configured in Phoenix</td></tr><tr><td colspan="1" class="confluenceTd">Usage Count</td><td colspan="1" class="confluenceTd">The times the Inventory ID has been used in production build. This field is not imported from SAP and is configured in Phoenix</td></tr><tr><td colspan="1" class="confluenceTd">Has Been Used</td><td colspan="1" class="confluenceTd">User can manually mark the<span> Inventory ID has been used at least once in the production</span></td></tr><tr><td colspan="1" class="confluenceTd">Received Date</td><td colspan="1" class="confluenceTd">The system shall auto capture the date time when the Inventory ID is originally received</td></tr><tr><td colspan="1" class="confluenceTd">Received By</td><td colspan="1" class="confluenceTd">The system shall auto capture the User ID who originally receives the Inventory ID</td></tr></tbody></table>





