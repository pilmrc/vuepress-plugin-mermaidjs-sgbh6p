# Introduction

The Panel WIP Importer functionality provides the ability to panelize WIP in the system without the need to use the 
[Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)screen.  It can also be used to release panelized assembly WIP via a file without the need to use the 
[WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)screen.  When releasing WIP the WIP serial number must exist previously in the system so this means that panelization and release must happen as two separate distinct processes when using the Panel WIP Importer functionality.
Imported data file fields as follows:
<table class="confluenceTable"><colgroup><col /> <col /> </colgroup><tbody><tr><td class="highlight confluenceTd"><strong>Field</strong></td><td class="highlight confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><strong>Customer</strong></td><td class="confluenceTd">Determines the customer scope of the data in the file to be imported.  The field is required.</td></tr><tr><td class="confluenceTd"><strong>Division</strong></td><td class="confluenceTd">Determines the division scope of the data in the file to be imported.  The field is required.</td></tr><tr><td class="confluenceTd"><strong>Assembly Number</strong></td><td class="confluenceTd">Determines the assembly number of the data in the file to be imported. The field is required.</td></tr><tr><td class="confluenceTd"><strong>Assembly Revision</strong></td><td class="confluenceTd">Determines the assembly revision of the data in the file to be imported. The field is required.</td></tr><tr><td class="confluenceTd"><strong>Assembly Version</strong></td><td class="confluenceTd">Determines the assembly version of the data in the file to be imported. The field is required.</td></tr><tr><td class="confluenceTd"><strong>Route</strong></td><td class="confluenceTd">Indicates route the WIP will be released to. Required if Event Type is release.</td></tr><tr><td class="confluenceTd"><strong>Route Version</strong></td><td class="confluenceTd">Optional field. If no value sent then the most current active version of the Route will be used.</td></tr><tr><td class="confluenceTd"><strong>Batch Number</strong></td><td class="confluenceTd">Indicates batch number WIP will be associated to upon release. Batch Number must have status of active and be valid for customer/division. If the batch number is configured with a batch scope of 'Material' the assembly/revision/version indicated in the imported file must be valid for the batch number. If the customer/division is configured as 'Autobatch' the provided batch number must match the batch number associated to the WIP sent in the data file. The field is required if Event Type is release.</td></tr><tr><td class="confluenceTd"><strong>Panel Serial Number</strong></td><td class="confluenceTd">Conditionally required based on Panel Type associated to the Assembly Number to be imported. If the panel type is configured with a barcode option of 'Unique Barcode' or 'Duplicate Barcode' the panel serial number will be a required field. If the 'No Barcode' option the field cannot be sent or the file will fail to import.</td></tr><tr><td class="confluenceTd"><strong>Event Type</strong></td><td class="confluenceTd">Indicates if the imported WIP data should be panelized (P) or released (R).</td></tr><tr><td rowspan="2" class="confluenceTd"><strong>Panel WIPs</strong></td><td class="confluenceTd"><strong>Serial Number</strong> - Indicates WIP serial number to be panelized or released. The system shall validate the value against configured Serial Number Constraint configured for the Customer/Divsion. The serial number must be valid for the barcode mask associated to the material associated to the assembly number (if applicable). A minimum of one serial number is required for the data to be processed.</td></tr><tr><td class="confluenceTd"><strong>Panel Position</strong> - Indicates WIP serial number position in panel array. Value may not exceed maximum allowable value based on Panel Type. Any valid panel position value not supplied in the imported data file will be treated as an 'X-out'. The field is a required field.</td></tr></tbody></table>

**The file format used by the panel importer is**  
[JSON](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Panel-WIP-Importer.md)(Java Script Object Notation) which uses attribute-value pairs.Below is a sample of what the file contents would look when panelizing a single panel for a 2X2 panel type (hence 4 panel positions) configured with the 'No Barcode' option (hence the omission of the "PanelSerialNumber" field in the data).
{

"Customer": "APERTURE",



"Division": "SCIENCE",


"AssemblyNumber": "MGB18000120",


"Revision": "M",


"Version": "0",


"EventType": "P",


"PanelWips": [



{




"SerialNumber": "AS020620180001",




"Position": 1



},



{




"SerialNumber": "AS020620180002",




"Position": 2



},



{




"SerialNumber": "AS020620180003",




"Position": 3



},



{




"SerialNumber": "AS020620180004",




"Position": 4



}


]
}
Below is a sample of what the file contents would look when releasing a single panel for a 3X2 panel type (6 possible panel positions) configured with the 'Unique Barcode' option with an X-out indicated (as indicated by the omission of panel position 5 from the "PanelWips" field).  Since the "RouteVersion" field is omitted the most current active version of the soute 'SMT Route' will be used for release of the WIP.
{

"Customer": "UMBRELLA CO",



"Division": "RESEARCH",


"AssemblyNumber": "UBCSR-AT1521",


"Revision": "A",


"Version": "1",


"Route": "SMT Route",


"BatchNumber": "UCR-1800004",


"PanelSerialNumber": "PNL02061800009",


"EventType": "R",


"PanelWips": [



{




"SerialNumber": "UCR1802001330",




"Position": 1



},



{




"SerialNumber": "UCR1802001430",




"Position": 2



},



{




"SerialNumber": "UCR1802001530",




"Position": 3



},



{




"SerialNumber": "UCR1802001630",




"Position": 4



},



{




"SerialNumber": "UCR1802001730",




"Position": 6



}


]
}
**Note:  The tabs in the sample data are not required but are included to better visualize the data structure.** 
If any single field fails and is not able to be processed by the data importer it will not be processed and will be moved to the configured error folder for the Data Importer application.

