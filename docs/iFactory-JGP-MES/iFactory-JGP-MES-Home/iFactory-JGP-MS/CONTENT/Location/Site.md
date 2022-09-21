# Introduction


A Site contains a grouping of 
[Factories](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Site.md)that are situated in close proximity. Configurations in Site Maintenance must be handled with utmost discretion as it will apply to all users at the Site. 


### **How to get there?** 




::: mermaid
graph LR
A("ADMIN")-->0("SITE")

:::

**Precondition** 

*[R](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data/Custom-Data-List.md)* 
[egion](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Site.md)needs to be configured before user can configure Site



#### Screen Activity


**Site Maintenance enables user to perform the following activity:** 


- Create, view and update site record





#### Screen Dependency


The following screen(s) has direct dependency with Site

- *[Region Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Site.md)*

- [Site](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Site.md)



#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Site Name</td><td colspan="1" class="confluenceTd">The unique name given to the Site</td></tr><tr><td class="confluenceTd"><p>Region</p></td><td class="confluenceTd"><p>User is required to associate a region to the site. The region is maintained in <a href="Site-29918687.html">Region M</a><a href="Site-29918687.html">aintenance</a></p></td></tr><tr><td class="confluenceTd"><p>Global Site ID</p></td><td class="confluenceTd"><p>The globally unique numeric identifier given to each site</p></td></tr><tr><td colspan="1" class="confluenceTd">ISO Country Code</td><td colspan="1" class="confluenceTd">The 2 letter country code defined by the ISO body</td></tr><tr><td colspan="1" class="confluenceTd">Enforce Error Prompt Dialog</td><td colspan="1" class="confluenceTd"><p>Default se to OFF. Switch to ON will enforce error prompt dialog and play alert sound during WIP/Container pre-start validation fail at operation screen and WIP release - Assembly screen. User require to re-act to the error prompt dialog before can proceed.</p><p>(Note:</p><ul><li>All the prestart validation error will be log under ValidationFailureMessage table by default regardless this flag setting.</li><li>Over pack and api are not in the scope and only applicable to Repetitive route).</li><li>The alert audio .mp3 file is placed under ifactory-phoenix\src\PhoenixApi\Content\alerts folder, require to submit SR to place the new mp3 file under this folder with the name 'error-prompt-dialog-alert.mp3'). </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Enforce Barcode Scan</td><td colspan="1" class="confluenceTd"><p>Default set to OFF. Switch to ON will enforce barcode scan on the operation station below </p><p><strong>Repetitive :</strong></p><p>MOE, MIE, MTE, Assemble, I&R, Packout, Disassemble, Warehouse and Receiving screens.</p><ul style="list-style-type: square;"><li>Keyboard entry on WIP, serialized assemble item, container and Data collection (DC item that configured as “Require Barcode Scan”) shall not allow on these screens.</li></ul><p><strong>Lot/Batch :</strong></p><p>MOE , MIE , I &R , Packout, Warehouse , Receiving , Lot Release , Lot Move and Lot Transfer screens.</p><ul style="list-style-type: square;"><li>Keyboard entry Carrier and Container shall not allow on these screens.</li></ul><p><br /></p>By default, all the available user groups will be affected by this enforce barcode scan when switch to ON. Except those user group add under “Excluded from Enforce Barcode Scan” will allow to use copy & paste and keyboard entry as per normal.</td></tr></tbody></table>




