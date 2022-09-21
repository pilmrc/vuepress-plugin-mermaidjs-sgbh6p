# Introduction

Assemble validation can be configured to validate the material is 
stillphysically assembled after the WIP has gone through various processes in the production line. When an assemble validation fails, the WIP is prevented from being started in the next step until the assemble validation passes.  User will need to fix the issue that causes the assemble validation to fail. Some common issues are material physically missing from the WIP or the assembly output  was not complete. For example, on completion of assembling a "label", a label will be printed. The barcode in the label will be scanned in assemble validation to validate the label exist. An incomplete assembly output means the label was not printed and operator has nothing to scan in the assemble validation, thus failing assemble validation.Assemble Validation configuration is within the 
[Assemble Point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)module
How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("ASSEMBLE POINT")

:::




### Configuring Assemble Validation




- Select the material to add assemble validation

- Click on the


button. The Assemble Validation window is displayed

Note: If this button is inactive, check if the top level material has been assigned to at least one route that contains route step with "Assemble Validation" station type. This is a pre-requisite for the Assemble Validation configuration as it needs to extract and display assemble validation route steps in the Assemble Validation pop up window
- Select the Route Step(s) to prompt the assemble validation.

Note: Only route steps with Station Type = Assemble Validation is available for selection 
- Configure Validation Types. Multiple validation types can be selected.

- Click Confirm to add the assemble validation. Then save the Assemble Point


<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Validation Type</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Material Identifier </td><td class="confluenceTd">In assemble validation, system will prompt user to scan Material Name and/or Serial Number for the material. If both Material Name and Serial Number were scanned during assembly, the assemble validation will prompt for Material Name and Serial Number as well.</td></tr><tr><td class="confluenceTd"><p>Data Collection</p></td><td class="confluenceTd"><p>In assemble validation, system will prompt user to scan only the required data collection value(s) for the material. To pass validation, the scanned value needs to match the data collection value scanned during assembly.<br />If there is no assemble data collection and this validation type is selected, in assemble validation, system will prompt a "Validate" or "Fail" button. </p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" width="500" src="download/attachments/8487062/28232313392704718609" data-image-src="http://usplnd0wiki01:8090/download/attachments/8487062/image2015-9-3+13%3A29%3A57.png?version=1&modificationDate=1441258199833&effects=drop-shadow" /></span></p><p> </p></td></tr><tr><td class="confluenceTd">MPN</td><td class="confluenceTd">In assemble validation, system will prompt user to scan the MPN. To pass validation, the scanned value needs to match the MPN value scanned during assembly.</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd">During assemble validation configuration, user needs to select a validation mask. In assemble validation, system will prompt user to scan value matching the validation mask.</td></tr></tbody></table>




#### Attachments

[image2015-9-3 15:57:4.png](/.attachments/29918259.png)
