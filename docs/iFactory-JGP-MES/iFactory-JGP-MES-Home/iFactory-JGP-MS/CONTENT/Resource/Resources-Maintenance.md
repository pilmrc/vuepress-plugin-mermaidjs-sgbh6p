# Introduction

Resources are equipment or workstations used to perform actions such as printing a board, mount components or test inspection. Administrator uses this screen to add a newly purchased resource, update resource's movement and its status.


### How to get there?



::: mermaid
graph LR
A("ROUTE")-->0("RESOURCES")

:::

**Precondition** 
[Resources Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)
[ Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)needs to be configured before user can configure Resource


#### Screen Activity


Resource Maintenance enables user to perform the following activity:

- Create, view, update and delete resource records

- Group the resource to a resource type

- Update new resource location when resource is moved to a different manufacturing area

- Update the status of the resource

- Turn on or off feeder tracking function

- Limit the resource to a workstation by IP Address

- Filter resource list to show accessible resources at station login.

- PFC configuration to fetch Hermes/CogiscanPiCo service against machine (Resource/Equipment)
The Resource which Resource Type = Production Equipment as below:

- The activity of create / delete / copy function not acceptable for Resource which Resource Type = Production Equipment. The data previously created also not available to copy.


- Not allow to change Resource which Resource Type from non-Production Equipment to Production Equipment or from Production Equipment to non-Production Equipment.


- Allow to change Resource Type A to Resource Type B where Resource Type A & B’s Resource Function = Production Equipment.


- The Resource which Resource Type = Production Equipment edit function as normal, for example:

Vendor, Description, Model, Manufacturing Areas, User Required Certifications, Assigned Certifications, Custom Data, Security & PFC related fields.

- The activity of create for Resource which

Resource Function = Production Equipment move it to ToMS and it will sync back to iFactory.



#### Screen Dependency


The following screen(s) has direct dependency with User

- *[Resource Type Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)*

- *[Resources Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)*



#### **Screen Specification** 


When the resource has been deleted, the resource is soft deleted in system. If user type same Resource Name, Resource Type and Manufacturing Area, the system shall prompt the message asking to restore.

- If user select "Yes", then the system is restored the data currently setup. If User Required Certification and Assigned Certification has been associated with the data, user need to restore associated data manually and it will not prompt restore message.

- If user select "No", then the system is not restored and the page is cleared out.


#### Fields



<table class="wrapped confluenceTable" style="width: 1183.0px;"><colgroup><col style="width: 111.0px;" /><col style="width: 1071.0px;" /></colgroup><tbody><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourcesMaintenance-GeneralTab"><strong>General Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><p>Resource Name</p></td><td style="width: 1071.0px;" class="confluenceTd"><p>The unique name given to the resource</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span>Resource Type</span></td><td style="width: 1071.0px;" class="confluenceTd">Resource Type is a name that helps categorize equipment or workstations by a general level of functionality. If the Resource type is from General function, the Resource to be considered as Manual Station. Whereas, if the Resource type is from 'Automated Assembly' function, the Resource to be considered as Equipment.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Description</td><td style="width: 1071.0px;" class="confluenceTd">Additional information about this resource can be entered here</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Vendor</td><td style="width: 1071.0px;" class="confluenceTd">The vendor whom we purchased or obtained the resource</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Model</td><td style="width: 1071.0px;" class="confluenceTd">Models are types of resource that the manufacturer produces and maintains. <br />Every time a new resource model is purchased from a manufacturer, a new model is created in Phoenix</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">SAP Resource Name</td><td style="width: 1071.0px;" class="confluenceTd">Equivalent Resource Name in SAP (can be used for reporting consumption between systems).</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Status</td><td style="width: 1071.0px;" class="confluenceTd"><p>Resource status helps sites to manage their assets. The available status are:</p><ul><li>Production (available and ready to use in production)</li><li>Maintenance <span style="color: rgb(0,0,0);">(the resource is brought down for maintenance)</span></li><li>Storage-Surplace <span style="color: rgb(0,0,0);">(additional resource)</span></li><li>Unavailable (the resource is not available to use in production due to reasons that are not listed in any of the statuses above)</li></ul></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Lanes</td><td style="width: 1071.0px;" class="confluenceTd"><p>This is a mandatory and available field only for Equipment type Resource. Used in setup sheets when equipment has the capability to have more than one lane. </p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Modules</td><td style="width: 1071.0px;" class="confluenceTd">This is a mandatory and available field only for Equipment type Resource. Modules is to indicate how many modules in a single resource. For new resource, the module will be default to 1. For old resource, the field will be empty and user have to key in the data if not user will not be able to save. </td></tr><tr><td colspan="1" class="confluenceTd">Slot Quantity</td><td colspan="1" class="confluenceTd">This is a mandatory and available field only for Equipment type Resource. It denotes that if an Equipment setup sheet is using this Equipment, the setup sheet can have maximum of the defined slot qty over Resource Maintenance screen.</td></tr><tr><td colspan="1" class="confluenceTd">Tray Quantity</td><td colspan="1" class="confluenceTd">This is an optional and available field only for Equipment type Resource. It denotes that if an Equipment setup sheet is using this Equipment, the setup sheet can have maximum of the defined tray qty (if provided) over Resource Maintenance screen.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Feeder Tracking</td><td style="width: 1071.0px;" class="confluenceTd">If feeder tracking is enabled (checked), this will allow the resource to validate feeder type. <span style="color: rgb(0,0,0);">This option compares the feeder type information on the resource </span><br /><span style="color: rgb(0,0,0);">setup sheet, versus the feeder type that is scanned into the RF gun or the Part Allocation screen</span></td></tr><tr><td colspan="1" class="confluenceTd">Rolling Setup</td><td colspan="1" class="confluenceTd"><p>This toggle is available only for Equipment type Resource. By default, the toggle should be OFF. But if the value gets turned ON, that means the Resource will support Rolling setup (Equipment setup sheet).</p></td></tr><tr><td colspan="1" class="confluenceTd">CAMX(SFM)</td><td colspan="1" class="confluenceTd">This toggle is available only for Equipment type Resource. By default, the toggle should be OFF. But if the value gets turned ON, that means the Resource is linked with Shopfloor Monitor System.</td></tr><tr><td colspan="1" class="confluenceTd">Bin Quantity</td><td colspan="1" class="confluenceTd">This is a mandatory and available field only for Generic (Manual Station) type Resource. It denotes that if an Manual Station setup sheet is using this Resource, the setup sheet can have maximum of the defined Bin qty over Resource Maintenance screen.</td></tr><tr><td colspan="1" class="confluenceTd">Shelf Quantity</td><td colspan="1" class="confluenceTd">This is an optional and available field only for Generic (Manual Station) type Resource. It denotes that if an Manual Station setup sheet is using this Resource, the setup sheet can have maximum of the defined Shelf qty (if provided) over Resource Maintenance screen.</td></tr><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><br /></td></tr><tr><td style="text-align: center;width: 1183.0px;" colspan="2" class="confluenceTd">The fields displayed in Custom Data tab are configured in Custom Data Maintenance with "Resource" Custom Data Category</td></tr><tr><td style="text-align: center;width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourcesMaintenance-ManufacturingAreaTab"><span style="color: rgb(51,51,51);">Manufacturing Area Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Manufacturing Area</td><td style="width: 1071.0px;" class="confluenceTd"><span style="color: rgb(23,43,77);">This field allows user to search manufacturing area that belongs to configured building and building type. Multiple Manufacturing Area can be configured (Shared Station)</span></td></tr><tr><td colspan="1" class="confluenceTd">Building</td><td colspan="1" class="confluenceTd"><p>The building that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Floor</td><td colspan="1" class="confluenceTd">The floor that is associate to the Manufacturing Area. This field will be automatically populate once Manufacturing Area is selected. </td></tr><tr><td colspan="1" class="confluenceTd">Building Type</td><td colspan="1" class="confluenceTd"><p>The building type of the building that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Production Area</td><td colspan="1" class="confluenceTd">The production area that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected. </td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd"><p>The factory that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Primary</td><td colspan="1" class="confluenceTd"><p>To define the dedicated Manufacturing Area as Primary. Only one Primary can be defined for each of the Resource. User can change the Primary by turning off the current primary and enable the other to be Primary.</p></td></tr><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourcesMaintenance-UserRequiredCertificationsTab"><span style="color: rgb(51,51,51);">User Required Certifications Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span>Certification Name</span></td><td style="width: 1071.0px;" class="confluenceTd">Administrator can add the required user certification to operate this resource. User/User group without the match certificate(s) shall not allow select/enter resource for operation from station login screen. By default without any certificate configured here, means this resource is open to use.<br /><span>The validity of each user's certification is maintain separately in <a href="Resources-Maintenance-29919982.html">User Maintenance</a>'s Certification tab</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Description</td><td style="width: 1071.0px;" class="confluenceTd">Once the certification is added, any description added to this certification will be auto-populated here<br />Note: Certification names and description are maintained in <a href="Resources-Maintenance-29919982.html">Certificate Maintenance</a></td></tr><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourcesMaintenance-AssignedCertificationsTab"><span style="color: rgb(51,51,51);">Assigned Certifications Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span>Certification Name</span></td><td style="width: 1071.0px;" class="confluenceTd">Add or remove the certifications required for the user to operate this resource.<p>If 'Certification-Tester' is added, system shall check whether the User possesses a valid 'Certification-Tester' before they are allowed to work using this resource.</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span>Certification Expires</span></td><td style="width: 1071.0px;" class="confluenceTd">This allows a certification to never end (unchecked) or allows option to expire on a specific date (checked)</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Effective From</td><td style="width: 1071.0px;" class="confluenceTd">Date and time from when certification is effective</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Effective To</td><td style="width: 1071.0px;" class="confluenceTd"><p>Date and time for when a certification will end</p></td></tr><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourcesMaintenance-SecurityTab"><span style="color: rgb(51,51,51);">Security Tab</span></h5></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><strong>Field</strong></td><td style="width: 1071.0px;" class="confluenceTd"><strong>Description</strong></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Selection To Restrict</td><td style="width: 1071.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);background-color: transparent;font-size: 10.0pt;">By default, it is not selected. Which means it is no restriction on this resource. User has option to select either Computer Name or IP. </span></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Restriction To</td><td style="width: 1071.0px;" class="confluenceTd"><p>Base on the selection, user require to provide the computer name or IP accordingly. Computer name must provide with domain (e.g. <a href="http://computername.corp.jabil.org" class="external-link" rel="nofollow">computername.corp.jabil.org</a>, not case sensitive), whereas IP must provide valid IP (eg. 10.121.61.60). By saving the restriction with blank value, system will remove the restriction from this resource.</p><p>Use has option either configure the restriction at resource type or resource level. System will prompt to inform when user attempt to configure but there is already have resource type (belong to this resource) configured this restriction.</p><p>During runtime, only these IP/computer name machine is allow to use the operation screen. (Note: Ensure that the user group unchecked on “Can Access Any Resource” permission)</p><p>Note:</p><ol><li>The RestrictedToIP and RestrictedToPCName features are dependent on the x-forwarded-for header, which will be injected by the HA Proxy.  The HA Proxy must be configured to forward the requestor's IP address to the server so that the server can resolve the requestor's PC name.</li><li>As part of the existing system design, once user successfully login a station, browser's tab will have station context to remember that this station can be accessed. User is required to open a new tab / new browser in order to take effect on the new changes on resource restriction.</li></ol></td></tr><tr><td style="text-align: center;width: 1183.0px;" colspan="2" class="confluenceTd">PFC Tab </td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><strong>Field</strong></td><td style="width: 1071.0px;" class="confluenceTd"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">PFC Type / Model</td><td colspan="1" class="confluenceTd">Available for Hermes and CongiscanPiCo. Defaulted to Hermes.</td></tr><tr><td colspan="1" class="confluenceTd">PFC Description</td><td colspan="1" class="confluenceTd">A description of this PFC record.</td></tr><tr><td colspan="1" class="confluenceTd">Is Active</td><td colspan="1" class="confluenceTd">To indicate this PFC record is active to use. Default to ON.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Lane</td><td style="width: 1071.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Lane number to be available until user has configured the “Lanes” field (By default Lane value is 1 but user can make it as multi-lane entering Lane value more than 1). Lane field auto-populate the values based on Lane quantity provided in configuration. For example:</span></p><p><span style="color: rgb(0,0,0);">Lane = 1 ---- Shows the field value as  'LANE 1'</span></p><p><span style="color: rgb(0,0,0);">Lane = 2 ---- Shows the field value as: 'LANE 1' and 'LANE 2'</span></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">IP Address</td><td style="width: 1071.0px;" class="confluenceTd">This field is free form entry upto 50 characters. This field basically defines PFC device IP address</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Port</td><td style="width: 1071.0px;" class="confluenceTd"><p>If PFC Type is Hermes, this field is numeric upto 50 characters, Although the default value by system is '50101' and it gets increased sequentially on next entry. This field basically defines PFC device Port.</p><p>If PFC Type is CogiscanPiCo, this field will be disable as blank.</p></td></tr></tbody></table>



- Storage_Surplace

(additional resource)

- Unavailable (the resource is not available to use in production due to reasons that are not listed in any of the statuses above)
LanesThis is a mandatory and available field only for Equipment type Resource. Used in setup sheets when equipment has the capability to have more than one lane. 
ModulesThis is a mandatory and available field only for Equipment type Resource. Modules is to indicate how many modules in a single resource. For new resource, the module will be default to 1. For old resource, the field will be empty and user have to key in the data if not user will not be able to save. Slot QuantityThis is a mandatory and available field only for Equipment type Resource. It denotes that if an Equipment setup sheet is using this Equipment, the setup sheet can have maximum of the defined slot qty over Resource Maintenance screen.Tray QuantityThis is an optional and available field only for Equipment type Resource. It denotes that if an Equipment setup sheet is using this Equipment, the setup sheet can have maximum of the defined tray qty (if provided) over Resource Maintenance screen.Feeder TrackingIf feeder tracking is enabled (checked), this will allow the resource to validate feeder type. This option compares the feeder type information on the resource 

setup sheet, versus the feeder type that is scanned into the RF gun or the Part Allocation screen
Rolling SetupThis toggle is available only for Equipment type Resource. By default, the toggle should be OFF. But if the value gets turned ON, that means the Resource will support Rolling setup (Equipment setup sheet).
CAMX(SFM)This toggle is available only for Equipment type Resource. By default, the toggle should be OFF. But if the value gets turned ON, that means the Resource is linked with Shopfloor Monitor System.Bin QuantityThis is a mandatory and available field only for Generic (Manual Station) type Resource. It denotes that if an Manual Station setup sheet is using this Resource, the setup sheet can have maximum of the defined Bin qty over Resource Maintenance screen.Shelf QuantityThis is an optional and available field only for Generic (Manual Station) type Resource. It denotes that if an Manual Station setup sheet is using this Resource, the setup sheet can have maximum of the defined Shelf qty (if provided) over Resource Maintenance screen.
The fields displayed in Custom Data tab are configured in Custom Data Maintenance with "Resource" Custom Data CategoryManufacturing Area Tab
**Field** **Description** Manufacturing AreaThis field allows user to search manufacturing area that belongs to configured building and building type. Multiple Manufacturing Area can be configured (Shared Station)
BuildingThe building that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.
FloorThe floor that is associate to the Manufacturing Area. This field will be automatically populate once Manufacturing Area is selected. Building TypeThe building type of the building that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.
Production AreaThe production area that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected. FactoryThe factory that is associated to the Manufacturing Area. This field will be auto populate once Manufacturing Area is selected.
PrimaryTo define the dedicated Manufacturing Area as Primary. Only one Primary can be defined for each of the Resource. User can change the Primary by turning off the current primary and enable the other to be Primary.
User Required Certifications Tab
**Field** **Description** Certification NameAdministrator can add the required user certification to operate this resource. User/User group without the match certificate(s) shall not allow select/enter resource for operation from station login screen. By default without any certificate configured here, means this resource is open to use.
The validity of each user's certification is maintain separately in [User Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)'s Certification tabDescriptionOnce the certification is added, any description added to this certification will be auto-populated here
Note: Certification names and description are maintained in [Certificate Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)Assigned Certifications Tab
**Field** **Description** Certification NameAdd or remove the certifications required for the user to operate this resource.If 'Certification_Tester' is added, system shall check whether the User possesses a valid 'Certification_Tester' before they are allowed to work using this resource.
Certification ExpiresThis allows a certification to never end (unchecked) or allows option to expire on a specific date (checked)Effective FromDate and time from when certification is effectiveEffective ToDate and time for when a certification will end
Security Tab
**Field** **Description** Selection To RestrictBy default, it is not selected. Which means it is no restriction on this resource. User has option to select either Computer Name or IP. 
Restriction ToBase on the selection, user require to provide the computer name or IP accordingly. Computer name must provide with domain (e.g. 
[computername.corp.jabil.org](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md), not case sensitive), whereas IP must provide valid IP (eg. 10.121.61.60). By saving the restriction with blank value, system will remove the restriction from this resource.Use has option either configure the restriction at resource type or resource level. System will prompt to inform when user attempt to configure but there is already have resource type (belong to this resource) configured this restriction.
During runtime, only these IP/computer name machine is allow to use the operation screen. (Note: Ensure that the user group unchecked on “Can Access Any Resource” permission)
Note:

- The RestrictedToIP and RestrictedToPCName features are dependent on the x-forwarded-for header, which will be injected by the HA Proxy.  The HA Proxy must be configured to forward the requestor’s IP address to the server so that the server can resolve the requestor’s PC name.

- As part of the existing system design, once user successfully login a station, browser’s tab will have station context to remember that this station can be accessed. User is required to open a new tab / new browser in order to take effect on the new changes on resource restriction.
PFC Tab **Field** **Description** PFC Type / ModelAvailable for Hermes and CongiscanPiCo. Defaulted to Hermes.PFC DescriptionA description of this PFC record.Is ActiveTo indicate this PFC record is active to use. Default to ON.LaneLane number to be available until user has configured the “Lanes” field (By default Lane value is 1 but user can make it as multi-lane entering Lane value more than 1). Lane field auto-populate the values based on Lane quantity provided in configuration. For example:
Lane = 1 ---- Shows the field value as  'LANE 1'
Lane = 2 ---- Shows the field value as: 'LANE 1' and 'LANE 2'
IP AddressThis field is free form entry upto 50 characters. This field basically defines PFC device IP addressPortIf PFC Type is Hermes, this field is numeric upto 50 characters, Although the default value by system is '50101' and it gets increased sequentially on next entry. This field basically defines PFC device Port.
If PFC Type is CogiscanPiCo, this field will be disable as blank.


#### **Fields available for File upload in Resource screen** 


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 9.08065%;" /><col style="width: 90.9758%;" /></colgroup><tbody><tr><td style="text-align: left;" class="confluenceTd">Choose File</td><td style="text-align: left;" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Resource template for batch upload. This file contains below columns:</span></p><ul><li><span style="color: rgb(23,43,77);">Resource Name</span></li><li><span style="color: rgb(23,43,77);">Resource Type</span></li><li><span style="color: rgb(23,43,77);">Manufacturing Area<br /></span></li><li><span style="color: rgb(23,43,77);">Building<br /></span></li><li><span style="color: rgb(23,43,77);">Floor</span></li><li><span style="color: rgb(23,43,77);">Building Type<br /></span></li><li><span style="color: rgb(23,43,77);">Production Area</span></li><li><span style="color: rgb(23,43,77);">Factory<br /></span></li><li><span style="color: rgb(23,43,77);">Description<br /></span></li><li><span style="color: rgb(23,43,77);">Vendor<br /></span></li><li><span style="color: rgb(23,43,77);">Model<br /></span></li><li><span style="color: rgb(23,43,77);">SAP Resource Name<br /></span></li><li><span style="color: rgb(23,43,77);">Status<br /></span></li><li><span style="color: rgb(23,43,77);">Lanes (Default 1)<br /></span></li><li><span style="color: rgb(23,43,77);">Modules (Default to 1)<br /></span></li><li><span style="color: rgb(23,43,77);">Feeder Tracking (Default to Off)<br /></span></li><li><span style="color: rgb(23,43,77);">Primary Tool Location </span></li><li><span style="color: rgb(23,43,77);">Secondary Tool Location</span></li><li><span style="color: rgb(23,43,77);">Action<br /></span></li></ul><p><span style="color: rgb(23,43,77);">Note: </span>Description, Vendor, Model, SAP Resource Name, Status , Primary Tool Location , Secondary Tool location and Feeder Tracking ( Default to OFF) are optional. Action is a mandatory field (Add, Delete or Update). Building, Floor ,Building Type, Production Area and Factory has to belong to the selected Manufacturing Area. </p></td></tr><tr><td colspan="1" class="confluenceTd">Clear</td><td colspan="1" class="confluenceTd">Allow user to clear the chosen file.</td></tr><tr><td colspan="1" class="confluenceTd">Upload</td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">System will check if all mandatory fields' values for each line items have been provided.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource Name is duplicated.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource Type were configured in system.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource Type is new added for Production Type.</span></li><li><span style="color: rgb(23,43,77);">System will check If Resource Type is updated from non-Production Equipment to Production Equipment or from Production Equipment to non-Production Equipment</span></li><li><span style="color: rgb(23,43,77);">System will check if the Manufacturing Area configured in system. If more than one Manufacturing Area provided, items should be separated by the ";". First provided item is defined as the Primary.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Building, Building Type and Factory is belongs to the Manufacturing Area</span></li><li><span style="color: rgb(23,43,77);">System will check if the Action field is empty and prompt message "Action is mandatory field and it is missing for some of entries. Please correct the same."</span></li><li><span style="color: rgb(23,43,77);">System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is Resource.csv, the output file will be Resource.out.csv)</span></li><li><span style="color: rgb(23,43,77);">The file will replicate the same line of source file, plus an additional column with the processing result.</span></li><li><span style="color: rgb(23,43,77);">For each line item, the system will write if correctly loaded or in case of issue, writing the error.</span></li><li><span style="color: rgb(23,43,77);">If there is any error in the file, system will upload the pass data and return error.</span></li><li><span style="color: rgb(23,43,77);">When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource data details uploaded successfully” OR with error then prompt message: “File uploaded with errors and please check output file”.</span></li><li><span style="color: rgb(23,43,77);">At the end of process, the PASS data will processed in the system</span></li><li><span style="color: rgb(23,43,77);">User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.</span></li><li><span style="color: rgb(23,43,77);"><em>Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</em><br /></span></li></ul></td></tr></tbody></table>















- System will check if all mandatory fields’ values for each line items have been provided.


- System will check if the Resource Name is duplicated.


- System will check if the Resource Type were configured in system.


- System will check if the Resource Type is new added for Production Type.


- System will check If Resource Type is updated from non-Production Equipment to Production Equipment or from Production Equipment to non-Production Equipment


- System will check if the Manufacturing Area configured in system. If more than one Manufacturing Area provided, items should be separated by the ";". First provided item is defined as the Primary.


- System will check if the Building, Building Type and Factory is belongs to the Manufacturing Area


- System will check if the Action field is empty and prompt message "Action is mandatory field and it is missing for some of entries. Please correct the same."


- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is Resource.csv, the output file will be Resource.out.csv)


- The file will replicate the same line of source file, plus an additional column with the processing result.


- For each line item, the system will write if correctly loaded or in case of issue, writing the error.


- If there is any error in the file, system will upload the pass data and return error.


- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource data details uploaded successfully” OR with error then prompt message: “File uploaded with errors and please check output file”.


- At the end of process, the PASS data will processed in the system


- User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.


- Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.


