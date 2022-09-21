# Introduction

The Conveyor Controller service will base on the resource’s PFC Configuration and PFC Instance Maintenance setting in order to stop a board entering into a machine when it failed the validation rule(s). The Conveyor Controller Log screen will allow user to check the reason why it block the board entering the machine.


### How to get there?



::: mermaid
graph LR
A("LOG VIEWER")-->0("CONVEYOR CONTROLLER LOG")

:::

**Precondition** 

- Created resource with PFC record(s) under PFC tab.

- Link the PFC record with one of the instance in PFC Instance Maintenance screen

- The following permissions required for access Conveyor Controller Log.

- Can View Conveyor Controller Log



#### Screen Activity


Conveyor Controller Log screen provides the following information:

- Serial Number (Value show if the process board have serial)

- Reason

- Date/Time



#### Screen Dependency


The following screen(s) has direct dependency

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
’s PFC
- [PFC Instance Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/PFC-Instance-Maintenance.md)


#### Fields


![image2021-2-2_16-9-23.png](/.attachments/86311338.png)


<table class="wrapped confluenceTable" style="width: 1183.0px;"><colgroup><col style="width: 111.0px;" /><col style="width: 1071.0px;" /></colgroup><tbody><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ConveyorControllerLog-GeneralTab"><strong>General Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><p>Route</p></td><td style="width: 1071.0px;" class="confluenceTd"><p>Optional to select available resource's route. Use for filtering resource selection.</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Resource*</td><td style="width: 1071.0px;" class="confluenceTd"><p>A resource to select to view if any related error message return from conveyor controller.</p>Resource only available for selection if configured with PFC record(s) and assigned with a PFC instance.  </td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Refresh Button</td><td style="width: 1071.0px;" class="confluenceTd"><p>Click to refresh and fetch latest related error message for the selected resource and show in the table.</p><ul><li>Serial Number</li><li>Reason</li><li>Date and Time</li></ul></td></tr></tbody></table>

**Optional to select available resource’s route. Use for filtering resource selection.** 
Resource\*A resource to select to view if any related error message return from conveyor controller.
Resource only available for selection if configured with PFC record(s) and assigned with a PFC instance.  Refresh ButtonClick to refresh and fetch latest related error message for the selected resource and show in the table.

- Serial Number

- Reason

- Date and Time


#### Attachments

[image2021-1-6_14-13-46.png](/.attachments/86311337.png)
[image2021-2-2_16-9-23.png](/.attachments/86311338.png)
