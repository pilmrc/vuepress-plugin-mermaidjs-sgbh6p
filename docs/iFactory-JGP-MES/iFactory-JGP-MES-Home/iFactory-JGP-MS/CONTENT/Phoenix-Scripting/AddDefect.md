# Introduction


**Usage:** 
$defect = AddDefect($failure, $defectMsg, $defectName, $defectQuantity, $location, $materialName, $materialVersion, $terminations);


**Description:** This function adds a defect to the operation's result structure.


The defect must be added to an existing failure.
<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$failure</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The failure to add a defect against.</td></tr><tr><td colspan="1" class="confluenceTd">$defectMsg</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">The description of the defect.</td></tr><tr><td colspan="1" class="confluenceTd">$defectName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The name of the defect.<br />Must be able to be resolved to an existing defect ID.</p></td></tr><tr><td colspan="1" class="confluenceTd">$defectQuantity</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Integer</strong></td><td colspan="1" class="confluenceTd">The number of defects present.</td></tr><tr><td colspan="1" class="confluenceTd">$location</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">CRD</td></tr><tr><td colspan="1" class="confluenceTd">$materialName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The material name.<br />Must be able to be resolved to an existing material ID.</p></td></tr><tr><td colspan="1" class="confluenceTd">$materialVersion</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The material version.<br />The material name + plant code gives the unique material in the system.</p></td></tr><tr><td colspan="1" class="confluenceTd">$terminations</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The list of terminations affected.<br />Use comma and dash separated numbers to indicate single pins and ranges of pins, respectively.<br />eg.: "1,2,3,5-10,12,15,17-20"</p></td></tr></tbody></table>







<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$defect</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The defect created.</td></tr></tbody></table>


**Usage Example(s):** 
// $defect comes from another step.
$defectMsg = ""Defect comment goes here"";

$defectName = ""existing defect ID"";
$defectQuantity = 3;
$location = ""CRD"";
$materialName = ""Existing material ID"";
$materialVersion = ""Unique material version"";
$terminations = "1,2,3,5-10,12,15,17-20";$defect = AddDefect($failure, $defectMsg, $defectName, $defectQuantity, $location, $materialName, $materialVersion, $terminations);
