# Introduction


**USER SETUP** 
Create users to access the shop floor system. User access to the system are restricted based on the permission set in their User Group. In addition, user can be assigned certifications to ensure they are qualified to handle certain materials or resource.


[USERS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Users.md)
[USER GROUPS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/User-Group-(obsolete,-please-refers-to-security-Groups-Maintenance).md)
[CERTIFICATIONS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)
LOCATION SETUPWhen a plant is initially setup to use the shop floor system, system administrator will need to setup the following plant location details.
[REGION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Region.md)

[SITE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Site.md)
[FACTORY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)
MANUFACTURING AREA

CUSTOMER SETUPShop floor system supports multiple customers. For each customer, the basic customer information needs to be defined. 
[CUSTOMER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

[DIVISION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Division.md)
[PRODUCT FAMILY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)
ROUTE SETUP
A material that needs to be processed in the shop floor needs to be assigned to at least one route. 
Route represents the sequential steps for the material to be processed in the shop floor. As a route can process multiple materials, a single route can be configured with multiple routing paths depending on the requirement of each material. The route is also equipped with configurable pre-start rule to ensure the WIP meets certain criteria before they can start processing in that step.  [RESOURCE TYPE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)

[RESOURCES](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)
[ROUTE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

[ROUTE STEP TYPE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)

[ROUTE STEPS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

[ROUTE STEP REPORTING NAME](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Route-Step-Reporting-Name.md)
[SAP STORAGE LOCATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/SAP-Storage-Locations.md)
[PRE-START RULES](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)
Assemble Point Checkpoint Required

Check WIP Count To Start

Consecutive Process Loop Count Limi

Non Consecutive Process Loop Count Limit

Genealogy Checkpoint

Material Checkpoint

Open Defects Prestart Rule

Require WIP Attribute

WIP Checkpoint Required 
[ROUTING RULES](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Routing-Rules.md)
Routing Rules

Default Pass & Fail 
Basic Random Sampling
Return to Last Failed Step 
Route By Indictment 
Route By Material 
Route by Mismatched WIP Attribute 
Route by WIP Attribute
Route by Symptom


### MATERIAL SETUP

When the material is first received from SAP in shop floor, shop floor administrator needs to perform several configurations to enable the material to be identified as intended for shop floor processing. 

[MATERIAL](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
[MATERIAL MANUFACTURER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Manufacturer.md)ASSIGNING MATERIAL MANUFACTURER TO AN INVENTORY ID 

ASSIGNING MATERIAL MANUFACTURER TO A MATERIAL  
[MATERIAL VENDOR](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Inventory-ID/Material-Vendor.md)
[MATERIAL BULK EDIT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Materials-Bulk-Edit.md)


### BOM SETUP

BOMs are also received from SAP. When a BOM is first received from SAP, shop floor administrator needs to validate the BOM and configure BOM inheritance. Once the BOM is ready to use, the administrator will mark the BOM as "Active" to allow WIP release. 
[BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

[BOM COMPARE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/BOM-Compare.md)



### GENERAL SETUP

These configuration can be setup independently which will be used later as part of another configuration. 


[NEXT NUMBER](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/LEARNING-OUTLINE.md)
[VALIDATION MASK](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)
[VISUAL AID](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Visual-Aid.md)
[DATA COLLECTION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection.md)

ASSIGNING DATA TO COLLECT ON ASSEMBLE

ASSIGNING DATA TO COLLECT ON INSPECTION AND REWORK 
[CUSTOM DATA](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)ASSIGNING VALUE TO A MATERIAL CUSTOM DATA

ASSIGNING VALUE TO A RESOURCE CUSTOM DATA
ASSIGNING VALUE TO A CONTAINER TYPE CUSTOM DATA
[Visual Aid](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Visual-Aid.md)
[CUSTOM DATA LIST](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data/Custom-Data-List.md)

### PRINTER SETUP

Shop floor printers must be configured so that they are recognized by the shop floor system to print documents and labels. 
[PRINT SERVERS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)

[PRINTER TYPES](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)
[PRINTER MAINTENANCE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md)
DOCUMENT/LABEL SETUPEach document/label printed from the shop floor system must be properly defined from its print data to its label template. Administrator must also configure when the label should be printed, its print sequence and print quantity. 
[DOCUMENT MAINTENANCE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)

[DOCUMENT ASSIGNMENT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(3.0).md)
[DOCUMENT REPRINT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Reprint-(3.0).md)
[DOCUMENT GENERATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Generation.md)
CONFIGURE ASSEMBLE BEHAVIORThe core shop floor process is to assemble various materials to build a finished product. This is an important configuration in the shop floor where it defines what material, how many quantity and where the material should be assembled in the route. Assemble validation compliments the assemble process and used when shop floor requires the validation of the material assembly before the product is allowed to move down the route. 
[ASSEMBLE TYPE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assembly-Type.md)

[ASSEMBLE POINT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)
[ & ASSEMBLE VALIDATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)


### QUALITY SETUP

Most products requires tests and manual inspection to ensure the quality integrity of the product. Quality and Test groups owns this area. Most of the time, Defect Types, Failure Label and Rework Category are predefined. When a Failure/Defect is found, one of the predefined Failure Label/Defect Type will be attached to the WIP. To close an open defect, rework must be done where a Rework Category will be attached to the defect.
[DEFECT CATEGORY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Category.md)

[DEFECT TYPE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
[FAILURE LABEL](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure-Label/Failure-Label-(3.0).md)
[REWORK CATEGORY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Repair-&-Rework/Rework-Category.md)


### TEST ENGINEERING SETUP

Phoenix Client is part of the shop floor control system that supports scripting capability and is mostly used in the Test Area to execute product tests such as functional tests, burn tests, HIPOT tests. 


[SCRIPT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)
[OPERATION ASSIGNMENT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)
R
eference Units also known as golden units are non shippable materials used to supplement product testing. Reference Unit must be pre-entered into the shop floor system so that system is able to differentiate them from a normal shippable material. The reference unit characteristics, life cycle, where they should be added or removed are configured here.  [REFERENCE UNIT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Reference-Unit.md)

[REFERENCE UNIT ASSEMBLE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Reference-Unit-Assemble.md)


### CONTAINER SETUP

Containers (box and pallet) are used to package a finished product for shipment to customers. The container setup defines the serialization of the container and various packaging rules per container.  Although packout and palletization are towards the end of the manufacturing process, container setup can be performed much earlier.
[CONTAINER TYPE](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/LEARNING-OUTLINE.md)



### BATCH SETUP

Batches are used when the workcell needs to group WIPs for batch processing. In BTO/CTO, although all WIPs are associated to a batch, the processing of WIPs are driven by order rather than batch. 
[BATCH MAINTENANCE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Batch.md)



### ORDER MANAGEMENT

BTO/CTO day to day business is driven by orders. There are mainly two types of orders: Forecast & Firm. Planned Orders are forecasted orders created by planners to drive shop floor builds that will later be used to fulfill Firm Orders. Firm Orders are Production Orders, Customer Orders & Delivery Orders that shop floor will receive from SAP created based on customer's order. 
[PLANNED ORDER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

[PRODUCTION ORDER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)
ORDER ATTRIBUTES
[CUSTOMER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)[ ORDER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)
DELIVERY ORDER

[ORDER CONVERSION ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Delivery-Order-Conversion.md)


### RELEASING WIP

Each order contain a specified WIP quantity to build. This section describes the releasing of WIPs in the shop floor for different order types.
[WIP RELEASE - PLANNED ORDER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release.md)

[WIP RELEASE - PRODUCTION ORDE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)R
[WIP RELEASE - DELIVERY ORDER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/WIP-Release-%2D-Customer-Order.md)


### RELEASE SERIALIZED MATERIAL

Serialized materials are normally purchased material that are most commonly used to be assembled to a WIP. Their serial number that must be tracked by the shop floor system. User uses the material serialization module to pre-create the serial numbers into the system prior to their usage in the shop floor. 
[MATERIAL SERIALIZATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Material-Serialization-(3.0).md)



### STATIONS

Stations are operator interfaces for various activities in the shop floor. 
[ASSEMBLY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assemble/Assemble-(3.0).md)

[ASSEMBLE VALIDATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Validation.md)

[INSPECTION & REWORK](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(3.0).md)

[MATERIAL REVIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Material-Review.md)

[POP-DEPOP](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Reference-Unit-Assemble.md)

[DELIVERY ORDER PACKOUT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Delivery-Packout.md)

[PRODUCTION ORDER PACKOUT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Production-Order-Packout-(old).md)

PICK AND PACK

[PHOENIX CLIENT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/System-Administration/Download-Phoenix-Client.md)



### WIP MANAGEMENT

WIPs being processed in the shop floor may require purge or scrap due to quality issue. Manual override of WIP in queue and serial number replacement. This section describes the various d
ivergence of a normal WIP processing in shop floor. [WIP MAINTENANCE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)

ATTRIBUTE ASSIGNMENT CONFIGURATION
[WIP RE-SERIALIZATION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Reserialization.md)
SERIAL NUMBER SEARCH
[PURGE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Purge.md)
MASS SCRAP 


### HOLD MANAGEMENT

WIP or serialized material may be put on hold due to certain quality issues. This prevents further processing and shipment of the WIP or serialized material until a corrective action is performed.
[HOLD REASON CODE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold/Hold-Reason-Code.md)

[WIP HOLD](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold.md)
[SERIALIZED MATERIAL HOLDS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Serialized-Material-Hold.md)
MATERIAL SERIAL NUMBER CHECK

RMA & ORDER REPROCESSINGWhen the WIP is completed in shop floor, the WIP is "locked" to prevent operator from accidentally working on the completed WIP. However, post-completion WIP rework is sometimes required due to quality issue, WIP processing error or customer order cancellation. This is where the Return Material Authorization (RMA) module is used. The container reprocessing & delivery order reversal nodules are used to reverse the order completion status to allow a completed order to be reprocessed in the shop floor. 
[RMA](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/RMA/Internal-RMA.md)

CONTAINER REPROCESSING/PRODUCTION ORDER RESEND HANDLING UNIT
DELIVERY ORDER REVERSAL
DELIVERY ORDER - RESEND HANDLING UNIT



### DASHBOARDS

Dashboards allows user especially line leads to view the current shop floor performance and activities. 

[ORDER VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Order-View.md)

[PLANNED ORDER VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Planned-Order-View.md)
[ROUTE VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Route-View.md)
[ROUTE STEP VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Route-Step-View.md)
[WIP MATERIAL VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-Material-View.md)
[WIP VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-View.md)
[CONTAINER VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Container-View.md)
REPORTSShop floor system provides a vast array of reports to view historical data. These are the standard shop floor reports. 

[AS BUILT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/As%2DBuilt-Report.md)
[COMPLETED PRODUCTION COUNTS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Completed-Production-Counts.md)
[CONTAINER VIEW](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Container-View-Report.md)
[CYCLE TIME REPORT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Cycle-Time-Report.md)
[DEBUG EFFICIENCY ACCURACY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Debug-Efficiency-Accuracy-Report.md)
[DEBUG EFFICIENCY OUTPUT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Debug-Efficiency-Output-Report.md)
[DEFECT PER MILLION](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)
[DEFECT](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect.md)
[GENEALOGY](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Genealogy.md)
[MATERIAL PROFILE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Material-Profile-Report.md)
[ON TIME ORDERS](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/On-Time-Orders-Report.md)
[SERIALIZED MATERIAL](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Serialized-Material-Report.md)
[FAILURE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Failure-Report.md)
[WHERE USED](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Where-Used-Report.md)
[WIP AGING](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/WIP-Aging-Report.md)
[YIELD](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Yield-Report.md)


### SAP INTEGRATION

The shop floor system has the capability to import and export messages with SAP. Materials, BOMs, Customer Orders, Delivery Orders and Production Orders are defined by SAP and sent to shop floor. In return, shop floor will send back backflush and WIP information to SAP when WIP is completed in shop floor. This section describes the integration point between shop floor and SAP.

INBOUND & OUTBOUND MESSAGE FROM SAP
ORDER ACTIVITY MESSAGE
HANDLING UNIT MESSAGE
PLANNED ORDER BACKFLUSHMESSAGE
PLANNED ORDER BACKFLUSH REVERSAL MESSAGE
SHIPPED MESSAGE 
[ECC INTEGRATION LOG VIEWER](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/System-Administration/ECC-Integration-Log-Viewer.md)




### CUSTOMER SPECIFIC

This section is divided by customer based on customer specific modules. 
NETAPP
NETAPP KITTING LIST

NETAPP KITTING LIST REFERENCE UNIT CONFIGURATION
NETAPP GENEALOGY REPORT & AGILE MATERIAL LIST
NETAPP ORACLE CIS FILE
ISILON
ISILON KITTING LIST

ISILON GENEALOGY REPORT 

