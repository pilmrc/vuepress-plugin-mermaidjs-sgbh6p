# Introduction

PFC Instance Maintenance allow user to create an Instance name for Conveyor Controller Service in order to assign the configured PFC (in Resource’s PFC tab) which will be connected with it. SFM will base on this configuration to identify it’s PFC setting. 
Note: SFM PFC Configuration screen replaced by this screen in iFactory.


### How to get there?



::: mermaid
graph LR
A("ROUTE")-->0("PFC INSTANCE MAINTENANCE")

:::

**Precondition** 

- PFC needs to be configure in Route screen before user can assign it to PFC Instance.

- The following permissions required for access and/or modify PFC Instance.

- Can Access PFC Instance.

- Can Modify PFC Instance.



#### Screen Activity


PFC Instance Maintenance screen allow to create new instance name (e.g. A broker server name that installed with conveyer controller service) and add the available PFC record to connect with it.



#### Screen Dependency


The following screen(s) has direct dependency 

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
’s PFC

#### Fields


![image2021-1-6_14-13-46.png](/.attachments/84705582.png)


<table class="wrapped confluenceTable" style="width: 1183.0px;"><colgroup><col style="width: 111.0px;" /><col style="width: 1071.0px;" /></colgroup><tbody><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PFCInstanceMaintenance-GeneralTab"><strong>General Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><p>PFC Instance Name*</p></td><td style="width: 1071.0px;" class="confluenceTd"><p>An Instance name. Usually refer to broker server name that installed with conveyer controller service.</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">No of connected PFC*</td><td style="width: 1071.0px;" class="confluenceTd">To show how many qty of PFC is connected (assigned) in this Instance (Conveyer Controller service).  </td></tr><tr><td style="width: 112.0px;" class="confluenceTd">+ Button</td><td style="width: 1071.0px;" class="confluenceTd">To allow user to add available PFC (PFC records that yet to assigned to any instance) in this instance. 1 PFC record only can assigned to 1 PFC instance.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Detail Table</td><td style="width: 1071.0px;" class="confluenceTd"><p>To show the assigned PFCs information in this instance. The number of rows of PFC record showing here should tally with No of Connected PFC field.  </p><p><br /></p>Any changes on the PFC record in Resource screen will be automatically reflect here. For example: delete PFC record in resource will also remove this assigned PFC record from instance. Same for change PFC model or Port.</td></tr></tbody></table>




#### Attachments

[image2021-1-6_14-13-46.png](/.attachments/84705582.png)
