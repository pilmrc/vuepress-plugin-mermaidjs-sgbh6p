# Introduction


Error: 
Wip serial numbers: [Serial Number] are not in a completed state***Cause:***  

WIP not change to Completed state due to timing issue. ***Solution:***  

- Perform Container Reprocessing, Unpack and Pack the Container.


- WIP will change to Completed Status.


- Re-drop Shipped Message to Retry Folder


Error: C
ontainers: [Container ID] are either in opened, closed, scrapped, or shipped state***Cause:***  

Container is not in Packed Status***Solution:***  

- Verify Container in SF with Container View dashboard

- If not found / scrapped, request SAP to scrap the Handling, palletize with the right Handling Unit and re-PGI

- Shipped Message re-trigger from SAP

- Also verify on the Genealogy Report generation

