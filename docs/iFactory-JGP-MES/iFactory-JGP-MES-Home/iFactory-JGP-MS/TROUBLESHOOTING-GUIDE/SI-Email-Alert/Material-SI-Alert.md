# Introduction


Error: Material already exist in database with PHX Source System: [Material]/[Plant]
***Cause***  

Material is manually created in Phoenix***Solution***  

- Revise why Material with the same name is manually created in Phoenix


- Delete Material with PHX Source System


- Retrigger MatMas from SAP or Redrop the MatMas XML file from Error Folder to Retry Folder



Error:
Unit of Measures not found in master table [UOMs]:
***Cause:***  

UoM is not exist in Phoenix Database***Solution:***  

Create Service Request to add in the new UoM
Error: ErrorNumber:[51000] Message: The material group of the following materials does not exist, [Material]
***Cause:***  

Material Group does not exist in Phoenix Database***Solution:***  


- Go to PQM server error folder and

find the XML document
in the particular date folder

- Search "SAPMaterialGroup" in the file, find the Material Group and it should be not able to search this particular Material Group in

iFactory

- Site SME create the new Material Group in

iFactory

and inform Site SAP SME to re-trigger theMATMAS

