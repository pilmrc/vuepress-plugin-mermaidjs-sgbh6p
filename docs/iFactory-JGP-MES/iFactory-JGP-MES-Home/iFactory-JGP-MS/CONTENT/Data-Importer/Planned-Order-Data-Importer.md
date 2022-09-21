# Introduction

In current iFactory process for creating a 
[planned order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md), the user must fill the planned order details one by one which is an inefficient and time-consuming process. To overcome this, a new approach is defined in which planned orders, in bulk, can be stored on an Excel sheet and uploaded all at once to the application.

### Successfully Upload Excel File


Precondition

- BOM and Material should exist in the iFactory.

- File must be with extension .XLS or .XLSX

- Planned Order (‘Plnd order’) must be unique.

- BOM status must be 'Active'.

- BOM type must be 'Fixed'.

- Use 'Is Curent' BOM of the material

- ‘Order quantity’ must be positive integer.

- Scheduled Start Date & Scheduled End Date format must be MM/DD/YYYY.

- Scheduled End Date must be equal to or greater than Scheduled Start Date.

- Value of 'Fm' Column must be either 'X' or blank field (X = Ready, Blank = New)
Excel File Format:
Excel file should be of the following format:


Fields
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">No</th><th class="confluenceTh">Excel Column Name</th><th class="confluenceTh">Planned Order Column Name</th></tr><tr><td class="confluenceTd">1</td><td class="confluenceTd">Plnd order</td><td class="confluenceTd">Planned Order Name</td></tr><tr><td class="confluenceTd">2</td><td class="confluenceTd">Material</td><td class="confluenceTd">Material Name</td></tr><tr><td class="confluenceTd">3</td><td class="confluenceTd">Order quantity</td><td class="confluenceTd">Order Quantity</td></tr><tr><td class="confluenceTd">4</td><td class="confluenceTd">Start</td><td class="confluenceTd">Scheduled Start Date (MM/DD/YYYY)</td></tr><tr><td class="confluenceTd">5</td><td class="confluenceTd">Finish</td><td class="confluenceTd">Scheduled End Date (MM/DD/YYYY)</td></tr><tr><td class="confluenceTd">6</td><td class="confluenceTd">Fm</td><td class="confluenceTd">Status</td></tr><tr><td class="confluenceTd">7</td><td class="confluenceTd">Plnt</td><td class="confluenceTd">Plant Code</td></tr></tbody></table>

NoteSAP can create the Excel spread sheet with the correct format using the Planned Order template named "PLNORD_IFACTRY"

PlannedOrders FolderBased on the server configuration User navigates to 
PlannedOrdersfolder.

Log Folder
Based on the server configuration User navigates to
Logfolder.

History Folder
Based on the server configuration User navigates to 
Historyfolder.

Error Folder

Based on the server configuration User navigates to 
Errorfolder.




#### Move sample Excel File to PlannedOrders folder:



- Move excel file to
PlannedOrdersfolder


- System will generate a log after validating the file.


- Open the Log file from
Logfolder.


- User can check the log messages from the log file as shown in above screen shot.


- If all records present in the excel file pass the validation, system moves the file from
PlannedOrdersfolder to HistoryFolder. 


- System creates the planned order.


- User can verify the successfully created planned order in
Planned Order Maintenancescreen in iFactory
- If single record fails in the excel file, system generates the failure log message\s in log file and move the file from
PlannedOrdersfolder to Errorfolder.Note:
Data Importer functionality available upon installation of Data Importer Package Release 1.0.0
If the Material in Planned Order is belongs to Lot/Batch Material Type and only associated to one Active Route, system will auto assign the Route to the Planned Order

