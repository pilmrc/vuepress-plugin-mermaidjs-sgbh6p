# Introduction

First Article Inspection (FAI) is a method of validating the manufacturing process by confirming the first units produced are free of defects before a larger production run is produced.  The first article inspection may take place at one or more points in the route for a given product.  


### How to get there?


From the iFactory side bar menu choose the 'Quality' group and then the 'FAI Configurations' menu item.


#### Screen Activity


The FAI Configuration screen allows the user to perform the following activity:

- Create a FAI configuration for a customer/division for a specific route and one or more route steps.

- Determine the quantity of items that must sequentially pass before the FAI event is considered completed and passed.

- Change the status of a FAI configuration

- Optionally configure a specific material or assembly or create a generalized configuration that applies for all materials or assemblies for a customer/division.

- Trigger an FAI event from a specific FAI configuration.


#### Precondition


User must have a configured route containing route steps and have an associated active material or assembly for a valid customer/division in order to complete an FAI configuration.  Route process type must be either 'Repetitive / Board Build' or 'Lot/ Batch Build'.  Routes with process type 'Configurable / Box Build' are not supported.
Additionally the user must belong to a 
[user group](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/First-Article-Inspection-(FAI)/FAI-Configuration.md)that has sufficient permissions. The permissions are located in the 'First Article Inspection' permission grouping.The following section details the available permissions for the feature and the functions they provide:
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Permission</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><p><strong>Can Access FAI</strong> </p></td><td class="confluenceTd">Minimum level permission required to access the feature.  Users with only this permission can view only and cannot create an FAI configuration or trigger an FAI event.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Can Modify FAI</strong></td><td colspan="1" class="confluenceTd">Users with this permission can create, modify (edit) and delete (where applicable) a FAI configuration.  The user must also have the 'Can Access FAI' in conjunction with this permission.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Can Start FAI</strong></td><td colspan="1" class="confluenceTd">Users with this permission can trigger an FAI event from a FAI configuration.  The user must also have the 'Can Access FAI' in conjunction with this permission.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Can Release FAI Hold</strong></td><td colspan="1" class="confluenceTd">Users with this permission can release an FAI Event that was blocked due to lots associated to the event failing inspection.</td></tr></tbody></table>

**Users with this permission can create, modify (edit) and delete (where applicable) a FAI configuration.  The user must also have the ‘Can Access FAI’ in conjunction with this permission.** 
**Can Start FAI** Users with this permission can trigger an FAI event from a FAI configuration.  The user must also have the ‘Can Access FAI’ in conjunction with this permission.**Can Release FAI Hold** Users with this permission can release an FAI Event that was blocked due to lots associated to the event failing inspection.
Screen DependencyNot applicable.


#### Fields




<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><br /></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><strong>FAI Name</strong></p></td><td class="confluenceTd"><p>User defined unique name for the FAI configuration.  The field allows up to 100 characters and is required.</p></td></tr><tr><td class="confluenceTd"><p><strong>Description</strong></p></td><td class="confluenceTd"><p>An optional field where the user can provide additional detail regarding the FAI configuration.  The field accepts up to 250 characters.</p></td></tr><tr><td class="confluenceTd"><p><strong>Customer/Division</strong></p></td><td class="confluenceTd"><p>Determines the scope for the FAI configuration and affects the materials or assemblies that can be selected for the FAI configuration.  The field is required.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>FAI Quantity</strong></td><td colspan="1" class="confluenceTd">Required field used to determine the amount of units that must pass inspection in order for the FAI Event to be passed.  Valid values are from 1 to 100.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Status</strong></td><td colspan="1" class="confluenceTd">Indicates the status for the FAI Configuration.</td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><p><strong>New</strong> – Default value for the status field.  A FAI Configuration with a status of new cannot trigger FAI events.  Only a new FAI Configuration that has not been used to trigger any FAI events can be edited or deleted.</p></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><p><strong>Active</strong> – Indicates a FAI Configuration which is active and can be used to trigger FAI events.  An FAI configuration with a status of active cannot be changed to new but can be set to inactive.</p></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><p><strong>Inactive</strong> – Used to temporarily suspend an FAI configuration so that it cannot be used to trigger FAI events.  A configuration with a status of inactive can be set back to active so that it can be used again.  A FAI configuration cannot be set to inactive if there are active FAI events that are not completed and have been triggered from the configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><p><strong>Closed</strong> – A FAI Configuration that is closed cannot be used to trigger FAI events and cannot be activated again.  A FAI configuration cannot be set to closed if there are active FAI events that are not completed and have been triggered from the configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route/Version</strong></td><td colspan="1" class="confluenceTd">Indicates the route and version that the FAI inspections will take place on.  The list of available routes is based on the material or assemblies for the selected customer/division.  If the user selects the material or assembly prior to selecting the route, the selections for the route field will be filtered based on the material or assembly selected. The field is required. <p>The search screen for route will only show the Active Route/Version.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route Steps</strong></td><td colspan="1" class="confluenceTd">Indicates the route steps on the route that will be used to perform the FAI inspections or tests.  The available route steps are based on the Route selected by the user. Only route steps of types Manual Inspection, Manual Test, or Inspection & Rework are valid.  At least one route step must be selected to complete the FAI configuration.</td></tr><tr><td class="confluenceTd"><p><strong>Scope </strong></p></td><td class="confluenceTd"><p>Used to indicate if the FAI configuration is for a material or an assembly.  A single FAI configuration cannot apply to both material and assembly and must be configured specifically for one or the other, not both.  The selection made for this field will determine if the Material Name or Assembly and Assembly Revision/Version fields are available.</p></td></tr><tr><td class="confluenceTd"><p><strong>Material Name</strong></p></td><td class="confluenceTd"><p>Indicates the material to be inspected or tested for FAI.  A FAI configuration can be set for a specific material or apply to 'All Materials'.  The 'All Materials' selection can be used for a generalized FAI plan that applies to all materials for a customer / division.  When a FAI Configuration set to 'All Materials' is triggered the user is required to select a specific material the generated FAI event will apply to.</p></td></tr><tr><td class="confluenceTd"><p><strong>Assembly</strong></p></td><td class="confluenceTd"><p>Indicates the assembly to be inspected or tested for FAI.  A FAI configuration can be set for a specific assembly or apply to 'All Assemblies'.  The 'All Assemblies' selection can be used for a generalized FAI plan that applies to all assemblies for a customer / division.  When a FAI Configuration set to 'All Assemblies' is triggered the user is required to select a specific assembly the generated FAI event will apply to.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Assembly Revision / Version</strong> </td><td colspan="1" class="confluenceTd">This field is only available when the Assembly selection has been made previously.  The field is used to indicate a specific revision for a specific material the FAI configuration applies to.  It can also be used to indicate 'All Revisions / All Versions' for a specific material.  When a FAI Configuration set to 'All Revisions / All Versions' is triggered the user is required to select a specific assembly the generated FAI event will apply to.</td></tr></tbody></table>





**Indicates the material to be inspected or tested for FAI.  A FAI configuration can be set for a specific material or apply to ‘All Materials’.  The ‘All Materials’ selection can be used for a generalized FAI plan that applies to all materials for a customer / division.  When a FAI Configuration set to ‘All Materials’ is triggered the user is required to select a specific material the generated FAI event will apply to.** 
**Assembly** 
Indicates the assembly to be inspected or tested for FAI.  A FAI configuration can be set for a specific assembly or apply to ‘All Assemblies’.  The ‘All Assemblies’ selection can be used for a generalized FAI plan that applies to all assemblies for a customer / division.  When a FAI Configuration set to ‘All Assemblies’ is triggered the user is required to select a specific assembly the generated FAI event will apply to.
**Assembly Revision / Version** This field is only available when the Assembly selection has been made previously.  The field is used to indicate a specific revision for a specific material the FAI configuration applies to.  It can also be used to indicate ‘All Revisions / All Versions’ for a specific material.  When a FAI Configuration set to ‘All Revisions / All Versions’ is triggered the user is required to select a specific assembly the generated FAI event will apply to.
FAI Configuration Interface![image2020-4-14_10-15-11.png](/.attachments/69632063.png)




#### Attachments

[image2020-4-14_10-15-11.png](/.attachments/69632063.png)
