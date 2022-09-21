# Introduction


Error: Missing [Materials] for TVP Boms: [Material]/[Plant]
***Cause***  

Material is not exist.
***Solution***  

- Verify Material is exist in Phoenix


- If Material is not exist, request Planner to resend the Material


- If Material exist, r

edrop BOM XML File from Error Folder to Retry Folder
Error: BOM to be updated is identical.
***Cause***  

BOM import has no delta with existing BOM in Phoenix***Solution***  

- No Action required
Error: Invalid BomUsage value: [2]

Error: Invalid BomUsage value: [C]***Cause***  

Invalid BOM Usage triggered from SAP***Solution***  

- Verify with SAP if the correct BOM usage has been set up.

- Phoenix only accept BOM Usage 1
Error: Missing previous [Material] in TVP BomItems: [Material]/[Plant] - previous item number = [ItemNumber]
***Cause***  

Material with the Item Number is missing in the BOM***Solution***  

- Compare SAP BOM with Phoenix BOM

- If there is discrepancy, request to fix the BOM



