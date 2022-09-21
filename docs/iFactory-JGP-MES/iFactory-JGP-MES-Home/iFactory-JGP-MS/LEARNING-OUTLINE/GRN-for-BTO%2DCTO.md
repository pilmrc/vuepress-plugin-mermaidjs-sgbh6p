# Introduction

F
or Configurable / Box Build process type system provides the functionality to collect the GRN by material in Assemble, Inspection & Rework steps so that As-Built traceability down to the Manufacture Lot and Date Code is supported. 

## Configure GRN at Material Level


Following are the steps to configure GRN at Material level:

- Go to Product""Material.

- Create a material (Phoenix Material Type=Serialized or Unserialized or LotBatch)

**or** search existing material having Phoenix Material Type=Serialized or Unserialized or LotBatch.
- Click Assemble tab.

- Select GRN check box.

![MaterialMaintenance.png](/.attachments/29920217.png)



- Click Save.


- Material is configured to collect GRN at
**Assemble** and**Inspection Rework** stations.
**Note:**  

- Default value of GRN checkbox is unselected.

- For Phoenix Material Type=WIP, GRN checkbox will be disabled.


## Scan GRN at Assemble Station


Once the material is configured to collect the GRN, User have to Scan\Enter the GRN at Assemble station for configured material.


### Prerequisite



- GRN must be preconfigured at material level (
In material maintenance screen).
- Material and GRN must be linked
(in existing GRN Maintenance screen).
- GRN must not be on hold or blocked (
Refer GRN""GRN Maintenance for **Hold** & GRN""Block GRN for **Block** ).

### Collect GRN



- Select

**Stations** menu in iFactory
- Select Resource, RouteStep.

- Click Assemble station.

![AssembleStation.png](/.attachments/29920216.png)



- Scan WIP.


- System display materials under ‘Item to Assemble’ tab.

![ItemsToAssemble.png](/.attachments/29920215.png)



- Select material from list of Items.


- System displays GRN field.

![DisplayGRN.png](/.attachments/29920213.png)



- Enter valid GRN number against GRN field.


- Enter valid Serial Number\Data collection if applicable.

![CollectGRN.png](/.attachments/29920214.png)



- Click Assemble button.


- On successful assembling the material, system will move the selected material to ‘Already Assembled’ tab.

![Already Assembled.png](/.attachments/29920212.png)



- System will update the ‘WIP Assemble History’ table in DB.


- If User enters the invalid GRN system displays following error messages:

- If scanning failed due to following condition “scanned GRN doesn’t match against the material being assembled”, system displays message “GRN XXX does not match the material being assembled".

- If the scanned GRN is on hold, assemble screen displays error message “This GRN had been marked as Use Prohibited and cannot be used.”

- If the scanned GRN is blocked, assemble screen displays error message “This GRN XXX had been blocked.”

- If the entered GRN is invalid system highlights the GRN that was scanned in the GRN field so the operator can rescan a new GRN immediately.


## Disassemble Material-GRN at Assemble Station



- Select the material to disassemble from ‘Already Assembled’ tab.


![Already Assembled.png](/.attachments/29920212.png)



- Click on Disassemble button.


![DisassembleButton.png](/.attachments/29920211.png)




- System will remove the material and associated GRN from ‘Already Assembled’ tab and display the material in ‘Items to Assemble’ tab.


![ItemsToAssemble.png](/.attachments/29920215.png)




- After successful disassembling, default GRN field will be empty. User needs to enter the GRN for assembling the material.


## Collect GRN at Rework Station when replacing a part




### Prerequisite



- GRN must be preconfigured at material level (

In material maintenance screen).
- Material and GRN must be linked
(in existing GRN Maintenance screen).
- GRN must not be on hold or blocked (
Refer GRN""GRN Maintenance for **Hold** & GRN""Block GRN for **Block** ).

### Collect GRN at Rework Station



- Select Stations menu in iFactory.


- Select Resource, RouteStep.

- Click Inspection & Rework station.

![ReworkStation.png](/.attachments/29920210.png)



- Scan WIP.


![SCANWIPRework.png](/.attachments/29920209.png)



- Click Start button.


- Click Add Defect button


![AddDefectRework.png](/.attachments/29920208.png)



- Enter defect and click next.


- Select ‘Assembled Item’ radio button.


![AssembleItemRework.png](/.attachments/29920207.png)



- Select Item to replace and click Next button.


- Click Save button.


![FinalSaveDefect.png](/.attachments/29920206.png)



- System adds the defect under ‘Open Defects’ column.


![OpenDefects.png](/.attachments/29920205.png)



- Drag the defect from Open Defects column to Closed Defects Column.


- System opens the Add Rework screen.


![AddReworkReplace.png](/.attachments/29920204.png)



- Select Rework Category=Replace.


![ReworkGRN.png](/.attachments/29920203.png)



- System displays the GRN field.


- Enter Valid GRN under GRN field.


![ReworkGRNAdded.png](/.attachments/29920202.png)



- Click Confirm button.


![ClosedDefect.png](/.attachments/29920201.png)



- System disassemble and replace the material and add the newly created GRN in DB (database).


- System moves the defect to Closed Defects column.


- If User enters the invalid GRN system displays following error messages:


- If scanning failed due to following condition “scanned GRN doesn’t match against the material being assembled”, system displays message “GRN XXX does not match the material being assembled".

- If the scanned GRN is on hold, assemble screen displays error message “This GRN had been marked as Use Prohibited and cannot be used.”

- If the scanned GRN is blocked, assemble screen displays error message “This GRN XXX had been blocked.”

- If the entered GRN is invalid system highlights the GRN that was scanned in the GRN field so the operator can rescan a new GRN immediately.









Configure GRN at Material Level


#### Attachments

[ClosedDefect.png](/.attachments/29920201.png)
[ReworkGRNAdded.png](/.attachments/29920202.png)
[ReworkGRN.png](/.attachments/29920203.png)
[AddReworkReplace.png](/.attachments/29920204.png)
[OpenDefects.png](/.attachments/29920205.png)
[FinalSaveDefect.png](/.attachments/29920206.png)
[AssembleItemRework.png](/.attachments/29920207.png)
[AddDefectRework.png](/.attachments/29920208.png)
[SCANWIPRework.png](/.attachments/29920209.png)
[ReworkStation.png](/.attachments/29920210.png)
[DisassembleButton.png](/.attachments/29920211.png)
[Already Assembled.png](/.attachments/29920212.png)
[DisplayGRN.png](/.attachments/29920213.png)
[CollectGRN.png](/.attachments/29920214.png)
[ItemsToAssemble.png](/.attachments/29920215.png)
[AssembleStation.png](/.attachments/29920216.png)
[MaterialMaintenance.png](/.attachments/29920217.png)
