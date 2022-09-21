# Introduction

Validated Setup Sheet is a screen to check and validate the setup with the related BOM. From this screen is possible to retrieve any discrepancies between the setup sheet and the BOM in terms of material, CRD, quantity, etc. 
There are several categories for the validation:

- CRD Quantity Mismatch

(showing the quantity mismatch of CRD between Setup Sheet and BOM)

- Part Quantity Mismatch

(showing the list of Partnumber with related quantity that is not reflecting the quantity in the BOM)

- No CRD on Setup

(showing the list of CRD that are in the BOM, but not in Setup Sheet)

- No CRD on BOM

(showing the list of CRD that are in the Setup Sheet, but not in BOM)

- Part CRD Not on Setup

(showing the list of Partnumber with CRD that are in the BOM, but not in Setup Sheet)

- Part CRD Not on BOM

(showing the list of Partnumber with CRD that are in the Setup Sheet, but not in BOM)

- Part Not on Setup

(showing the list of Partnumber that are 
in the BOM, but not in Setup Sheet
)
- Part Not on BOM

(showing the list of Partnumber that are in the Setup Sheet, but not in BOM)From this screen is also possible to print the result of validation and print the Setup Sheet structure.
![image2020-4-14_16-3-39.png](/.attachments/69632088.png)






### How to get there?



![image2020-4-14_16-3-39.png](/.attachments/29919268.png)


![image2020-4-14_16-3-39.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then



::: mermaid
graph LR
A("SETUP SHEET")-->0("VALIDATE")

:::


#### Screen Activity


Validate Setup Sheet enables user to perform the following activity:

- Setup sheet comparison with the BOM

- Print setup sheet validation

- Print setup sheet structure



Pre Condition
Setup Sheet shall exist.



#### Screen Dependency


No dependency with Validate Setup Sheet screen.



#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ValidateSetupSheet(4.2)-Configurationwindow"><strong>Configuration window</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd">The customer/division of assembly related to the setup sheets that need to be validated</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span>The assembly related to setup sheets that need to be validated (the tool will show only assembly related to selected customer/division)</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span>The route/version (can be multiple) where the above assembly is produced</span></td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd">To press to retrieve the list of available assemblies for the route/s selected. The button is active only when at least one route is selected.</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet window</td><td colspan="1" class="confluenceTd">It will show the list of setup sheets that belong to above criteria</td></tr><tr><td colspan="1" class="confluenceTd">Multilevel toggle button</td><td colspan="1" class="confluenceTd">It is a flag to set the level of validation (i.e. to explode or not the phantom material level)</td></tr><tr><td colspan="1" class="confluenceTd">Validate Button</td><td colspan="1" class="confluenceTd"><p>To run the validation. The button is active when at least one setup is selected</p></td></tr><tr><td colspan="2" class="confluenceTd"><div class="content-wrapper"><h5 style="text-align: center;" id="ValidateSetupSheet(4.2)-Validationpopupwindow">Validation popup window</h5><p>Once the Validate button is pressed the system will provide the result in a popup window :</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/69632089.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/69632089.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="69632089" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-4-14-16-8-56.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919267" data-linked-resource-container-version="2" /></span></p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">Customer/Division</td><td class="confluenceTd">The customer/division selected</td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The assembly selected</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route version(s) selected</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet</td><td colspan="1" class="confluenceTd">The Setup Sheet selected for validation</td></tr></tbody></table></div><p><span style="background-color: transparent;font-size: 10.0pt;">The <em><strong>Part Location</strong></em> column is showing where the part shall be placed and the data are reflecting following structure:</span></p><div>Feeder= ModuleID/Track ID/Feeder Track</div><div>Tray= Module ID/Tray Location/Tray Tower/Tray Division”</div><div>Station= Bin</div><p>There are two more buttons available:</p><ul><li>Print - SetupSheet: this button will print the structure of all setups sheets selected (showed in Setup Sheet window)</li><li>Print - ValidationResult: this button will print the validation just showed in the popup window</li></ul><p><br /></p></div></td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">Customer/Division</td><td class="confluenceTd">The customer/division selected</td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The assembly selected</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route version(s) selected</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet</td><td colspan="1" class="confluenceTd">The Setup Sheet selected for validation</td></tr></tbody></table>

**Part Location** 
column is showing where the part shall be placed and the data are reflecting following structure:Feeder= ModuleID/Track ID/Feeder Track
Tray= Module ID/Tray Location/Tray Tower/Tray Division”
Station= Bin
There are two more buttons available:

- Print - SetupSheet: this button will print the structure of all setups sheets selected (showed in Setup Sheet window)

- Print - ValidationResult: this button will print the validation just showed in the popup window






#### Attachments

[image2017-9-4 12:17:48.png](/.attachments/29919268.png)
[image2017-8-17 9:59:56.png](/.attachments/29919269.png)
[image2017-5-26 15:29:19.png](/.attachments/29919270.png)
[image2017-5-26 15:25:1.png](/.attachments/29919271.png)
[image2017-5-26 15:18:33.png](/.attachments/29919272.png)
[image2017-5-18 14:47:30.png](/.attachments/29919273.png)
[image2017-5-17 15:13:48.png](/.attachments/29919274.png)
[image2017-5-17 15:22:37.png](/.attachments/29919275.png)
[image2017-5-17 15:7:31.png](/.attachments/29919276.png)
[image2017-5-17 14:59:32.png](/.attachments/29919277.png)
[image2017-5-17 14:46:54.png](/.attachments/29919278.png)
[image2017-5-17 13:29:56.png](/.attachments/29919279.png)
[image2017-5-17 13:31:28.png](/.attachments/29919280.png)
[image2017-5-18 15:56:48.png](/.attachments/29919281.png)
[image2017-5-18 16:5:45.png](/.attachments/29919282.png)
[image2017-5-18 16:9:57.png](/.attachments/29919283.png)
[image2017-5-18 16:6:48.png](/.attachments/29919284.png)
[image2017-5-18 16:26:17.png](/.attachments/29919285.png)
[image2020-4-14_16-3-39.png](/.attachments/69632088.png)
[image2020-4-14_16-8-56.png](/.attachments/69632089.png)
