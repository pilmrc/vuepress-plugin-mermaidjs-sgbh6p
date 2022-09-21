# Introduction

Batch tagging is a new feature use to assign a batch tag number for grouping purpose on a WIP by using existing attribute assignment functionality. So this tagging can be trigger during a WIP release or during a specific route step when WIP complete.  The attribute value (e.g. Batch tag number)  can be either auto generate using existing next number feature or manually assigned by user when it prompt to ask for attribute assignment value. Base on this batch tag number, system can define its’ batch tag type which required any additional logic to be perform. For example, Generic batch tag type will be just for grouping purpose without any additional logic; Whereas sampling batch tag type have additional logic for sampling on the WIP with same batch number it assigned with. For more detail on sampling batch tag type, please refer to Sampling topic. As per current, no API is support for insert batch tag attribute to WIP. Panel will be support in future. Panel will be support in future, as per current advice not to configure batch tag attribute for panel station.

**Precondition** 

- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)
needs to be configure if the batch tag is auto generate by next number
- [Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)
needs to be configure if the bath tag required to validate it mask when prompt for user entry.
- [Batch Tag Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Batch-Tagging/Batch-Tag-Maintenance.md)
needs to be configure in order to use for attribute assignment for batch tag attribute.
- [Attribute Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Attribute-Assignment.md)
need to be configure in order to trigger when to capture batch tag attribute within it's scope.  


### Batch Tagging During WIP Release - Assembly (Repetitive)


Batch tag attribute will be trigger base on existing Attribute Assignment configuration if "For WIP Release" flag is set to ON.
Batch Tag attribute assignment will behave differently as per below scenarios.

- Auto Generate and immediately release WIP

- Release already Generate WIP (Single and Batch release)

- Manual assign WIP to release.
*Auto Generate and immediately release WIP* 
The following behavior is applying to auto generate and immediately release WIP scenario:

- Not valid batch tag name cannot proceed release action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- WIP release quantity should not " batch tag number's available qty (Note: Build Qty - Used qty = Available Qty)

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- New batch tag number will generate in each release batch for 1st WIP.

- Batch tag number will change its status from Active to Complete once it is fully used. (Note: Fully used means a batch tag number already assigned to a number of WIPs accordingly to its Max build qty).

- New batch tag number will generate once current batch tag number within same release batch is fully used. (This happen when the total release WIP is more than max build qty)

- The last batch tag number used by this release batch will change to Complete even it is not fully used.

*Release already generate WIP (Single and Batch release mode)* 
The following behavior is applying to release already generate WIP scenario:

- Not valid batch tag name cannot proceed release action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- WIP release quantity (for single release mode is 1, for batch release mode depend on the total remaining WIP to be release) should not " batch tag number's available qty (Note: Build Qty - Used qty = Available Qty)

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- Batch tag number will change its status from Active to Complete once it is fully used.

- New batch tag number will generate once current batch tag number within same release batch is fully used.

- The last batch tag number used by this release batch will change to Complete even it is not fully used.

- New batch tag number will generate in each release batch, but user has option to select available batch tag number if want to (e.g. available batch tag number refers to status in Active and not expired).

- Generate new batch tag next number if not select any available batch tag number (by default).

- After initial release, for subsequent same batch release for next WIP,

- Remain current batch tag number as selection if current batch tag number is not fully used.

- Refresh and not select any available batch tag number if current batch tag number is fully used.

- The last batch tag number used by this release batch will change to Complete even it is not fully used.

- For Batch release mode is similar, except it will validate depend on the total remaining WIP should not " batch tag number’s available qty and upon successful it will release all remaining WIPs.

*Manual assign WIP to release* 
The following behavior is applying to manual assign WIP to release scenario:

- Not valid batch tag name cannot proceed release action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- Batch tag number should not fully use.

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For au

- Since system won't know when is last WIP to release, batch tag number status will keep Active as long as it is not fully use.

- to generate type batch tag attribute.

- Since system won't know when is last WIP to release, batch tag number status will keep Active as long as it is not fully use.

- User has option to select available batch tag number if want to (e.g. Status in Active and not expired).

- Generate new batch tag next number if not select any available batch tag number (by default).

- After initial release, for subsequent release for next WIP,

- Remain current batch tag number as selection if current batch tag number is not fully used.

- Refresh and not select any available batch tag number if current batch tag number is fully used.



#### Batch Tagging During Operation screen (Repetitive) 


Batch tag attribute will be trigger base on existing Attribute Assignment configuration if "For WIP Release" flag is set to OFF and which route step configured to trigger.
*Batch tagging for MOE* 
The following behavior apply to both MOE single entry mode and batch entry mode. 

- Not valid batch tag name cannot proceed operation action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- Batch tag number should not fully use.

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- System auto assign available batch tag number to scan WIP (e.g. Status in Active and not expired).

- Generate new batch tag next number if no available batch tag number can be use.

- Batch tag number's status remain as Active if not fully used after completed WIP. Otherwise change batch tag number status to Complete after fully used.

*Batch tagging for MIE* 
The following behavior apply to both MIE single entry mode and batch entry mode. 

- Not valid batch tag name cannot proceed operation action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- Batch tag number should not fully use.

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- System auto assign available batch tag number to scan WIP (e.g. Status in Active and not expired).

- Generate new batch tag next number if no available batch tag number can be use.

- Batch tag number's status remain as Active if not fully used after completed WIP. Otherwise change batch tag number’s status to Complete after fully used.

- Only WIP complete with pass status will captured WIP attribute, therefore:

- Batch Pass end up WIP complete with fail status will not capture WIP attribute. (for DC validation fail scenario)

- Batch Fail will not allow WIP attribute entry.

- Single Entry end up WIP complete with fail status will not prompt WIP attribute dialog for user entry as per current behavior.

*Batch tagging for Assemble* 
Assemble has similar behavior as MOE single entry mode. 

- Not valid batch tag name cannot proceed operation action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- Batch tag number should not fully use.

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- System auto assign available batch tag number to scan WIP (e.g. Status in Active and not expired).

- Generate new batch tag next number if no available batch tag number can be use.

- Batch tag number's status remain as Active if not fully used after completed WIP. Otherwise change batch tag number’s status to Complete after fully used.

*Batch tagging for MTE and Rework* 
MTE and Rework have similar behavior as MIE single entry mode. 

- Not valid batch tag name cannot proceed operation action (e.g. Expired or not in Active status)

- For prompt type batch tag attribute, user require to provide batch tag number during assignment dialog prompt.

- If provided batch tag number is not exist in system, allow to create new batch tag number and assigned to WIP.

- Batch tag number should not fully use.

- Not allow to proceed if configured validation mask not match. No validation will perform if no mask configured.

- For auto generate type batch tag attribute.

- System auto assign available batch tag number to scan WIP (e.g. Status in Active and not expired).

- Generate new batch tag next number if no available batch tag number can be use.

- Batch tag number's status remain as Active if not fully used after completed WIP. Otherwise change batch tag number’s status to Complete after fully used.

- Only WIP complete with pass status will captured WIP attribute. Single Entry end up WIP complete with fail status will not prompt WIP attribute dialog for user entry as per current behavior. As for Batch entry mode in MTE, currently not support WIP attribute assignment, therefore no support batch tagging.

*Batch tagging for WIP Maintenance* 
Please refers to 
[WIP Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)topic.