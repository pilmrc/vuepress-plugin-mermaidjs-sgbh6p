# Introduction


Resource Type groups resources by their general function. Example of resource types are measuring resources ,tests resources, auto assembly resources, manual assembly resources and conveyor controller.



### **How to get there?** 



::: mermaid
graph LR
A("ROUTE")-->0("RESOURCE TYPE")

:::

Precondition*[Resource Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)* 
needs to be configured before user can add certification to the resource type
Screen Activity**Resource Type Maintenance enables user to perform the following activity:** 


- Create, view, update and delete resource type record

- Add required user certification or resource calibration certification

- Limit a list of resources by computer name/IP address.

- Filter resource list to show accessible resources at station login
The activity of create / update/ delete / copy function not acceptable for Resource Type = Production Equipment. The data previously created also not available to edit / copy. The activity of create / edit / deleted for 
Resource Function = Production Equipment move it to ToMS and it will sync back to iFactory.


#### Screen Dependency


The following screen(s) has direct dependency with Factory

- *[Certification Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)*

- *[Resource Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)*

- *[User Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)*

Fields
<table class="wrapped confluenceTable" style="width: 1021.0px;"><colgroup><col /><col /></colgroup><tbody><tr><td style="width: 1021.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourceType-GeneralTab">General Tab</h5></td></tr><tr><td class="highlight confluenceTd" style="width: 104.0px;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="width: 917.0px;"><p><strong>Description</strong></p></td></tr><tr><td style="width: 104.0px;" class="confluenceTd">Resource Function</td><td style="width: 917.0px;" class="confluenceTd">Allows administrator to select the general function of the resource type</td></tr><tr><td style="width: 104.0px;" class="confluenceTd"><p>Description</p></td><td style="width: 917.0px;" class="confluenceTd"><p>Additional description for the Resource Type can be entered in this field</p></td></tr><tr><td style="width: 1021.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourceType-UserRequiredCertificationsTab">User Required Certifications Tab</h5></td></tr><tr><td class="highlight confluenceTd" style="width: 104.0px;"><strong>Field</strong></td><td class="highlight confluenceTd" style="width: 917.0px;"><strong>Description</strong></td></tr><tr><td style="width: 104.0px;" class="confluenceTd">Certification Name</td><td style="width: 917.0px;" class="confluenceTd">Administrator can add the required user certification to operate the resources grouped under this resource type. User/User group without the match certificate(s) shall not allow select/enter resource for operation from station login screen. By default without any certificate configured here, means the resource(s) group under this resource type is open to use.<br /><span>The validity of each user's certification is maintain separately in <a href="Resource-Type-29919983.html">User Maintenance</a>'s Certification tab</span></td></tr><tr><td style="width: 104.0px;" class="confluenceTd">Description</td><td style="width: 917.0px;" class="confluenceTd">Once the certification is added, any description added to this certification will be auto-populated here<br />Note: Certification names and description are maintained in <a href="Resource-Type-29919983.html">Certificate Maintenance</a></td></tr><tr><td style="width: 1021.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourceType-ResourceRequiredCertificationsTab">Resource Required Certifications Tab</h5></td></tr><tr><td class="highlight confluenceTd" style="width: 104.0px;"><strong>Field</strong></td><td class="highlight confluenceTd" style="width: 917.0px;"><strong>Description</strong></td></tr><tr><td style="width: 104.0px;" class="confluenceTd"><span>Certification Name</span></td><td style="width: 917.0px;" class="confluenceTd"><span>The required resource calibration certifications are added here. <span>All resources grouped under this resource type must have a valid <span>resource calibration certification before they can be operated. <br /><span>The validity of each resource's certification is maintain separately in </span><a href="Resource-Type-29919983.html">Resource Maintenance</a>'s Certification tab</span></span></span></td></tr><tr><td style="width: 104.0px;" class="confluenceTd"><span>Description</span></td><td style="width: 917.0px;" class="confluenceTd"><span>Once the certification is added, any description added to this certification will be auto-populated here. </span><br /><span>Note: Certification names and description are maintained in </span><a href="Resource-Type-29919983.html">Certificate Maintenance</a></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ResourceType-SecurityTab">Security Tab</h5></td></tr><tr><td class="highlight confluenceTd" style="width: 104.0px;"><strong>Field</strong></td><td class="highlight confluenceTd" style="width: 917.0px;"><strong>Description</strong></td></tr><tr><td style="width: 104.0px;" class="confluenceTd">Selection To Restrict</td><td style="width: 917.0px;" class="confluenceTd">By default, it is not selected. Which means it is no restriction on this resource. User has option to select either Computer Name or IP. Once added 1<sup>st</sup> restriction type, the “Select to Restrict” will be disable to change. This will avoid mixed restriction type (e.g. only allow either all IP or all Computer name can be added)</td></tr><tr><td colspan="1" class="confluenceTd">Restriction To</td><td colspan="1" class="confluenceTd"><p>Base on the selection, user require to provide the computer name or IP accordingly. Computer name must provide with domain (e.g. <a href="http://computername.corp.jabil.org/" class="external-link" rel="nofollow">computername.corp.jabil.org</a>, not case sensitive), whereas IP must provide valid IP (eg. 10.121.61.60).</p><p>User is allow to add multiple records and deletion on existing record. During runtime, only these IP/computer name machine(s) is allow to use the operation screen. (Note: Ensure that the user group unchecked on “Can Access Any Resource” permission)</p><p>Use has option either configure the restriction at resource type or resource level. System will prompt to inform when user attempt to configure but there is already have resource (belong to this resource type) configured this restriction.</p><p>Note:</p><ol><li>The RestrictedToIP and RestrictedToPCName features are dependent on the x-forwarded-for header, which will be injected by the HA Proxy.  The HA Proxy must be configured to forward the requestor's IP address to the server so that the server can resolve the requestor's PC name.</li><li>As part of the existing system design, once user successfully login a station, browser's tab will have station context to remember that this station can be accessed. User is required to open a new tab / new browser in order to take effect on the new changes on resource restriction.</li></ol></td></tr></tbody></table>






- **The RestrictedToIP and RestrictedToPCName features are dependent on the x-forwarded-for header, which will be injected by the HA Proxy.  The HA Proxy must be configured to forward the requestor’s IP address to the server so that the server can resolve the requestor’s PC name.**


- As part of the existing system design, once user successfully login a station, browser’s tab will have station context to remember that this station can be accessed. User is required to open a new tab / new browser in order to take effect on the new changes on resource restriction.
