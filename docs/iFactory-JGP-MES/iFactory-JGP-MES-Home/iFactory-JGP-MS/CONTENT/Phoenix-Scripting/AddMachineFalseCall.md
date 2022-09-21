# Introduction

**Usage:** 
$FalseCall = AddMachineFalseCall($defectType, $component, $pin, $jointType, $jointSubtype, $status, $dateTime, $operatorName, $layer, $algorithm);


**Description:** This function adds a machine false call to the operation's result structure.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$defectType</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The False Call defect type.<br />These shouldn't be confused with Phoenix system Defect Types.</p></td></tr><tr><td colspan="1" class="confluenceTd">$component</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The False Call component.<br />This can be anything and might not even be a known material on a BOM in the Phoenix system.</p></td></tr><tr><td colspan="1" class="confluenceTd">$pin</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The False Call component pin.</p></td></tr><tr><td colspan="1" class="confluenceTd">$jointType</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">The Joint Type indicted during the false call.</td></tr><tr><td colspan="1" class="confluenceTd">$jointSubtype</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Subtype of the joint, if applicable.</td></tr><tr><td colspan="1" class="confluenceTd">$status</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Machine-specific status of false call.<br />Does not map to a Phoenix system enumeration.</p></td></tr><tr><td colspan="1" class="confluenceTd">$dateTime</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>String representing date and time false call was generated.</p></td></tr><tr><td colspan="1" class="confluenceTd">$operatorName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Name of operator logged into machine that generated false call.<br />Not necessarily a valid phoenix system user!</p></td></tr><tr><td colspan="1" class="confluenceTd">$layer</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Name of layer false call occurred in.</td></tr><tr><td colspan="1" class="confluenceTd">$algorithm</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Name of algorithm that generated the false call.</td></tr></tbody></table>






<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$FalseCall</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The machine false call created.</td></tr></tbody></table>


**Usage Example(s):** 
$defectType =  ""False Call defect type"";
$component = ""False Call component"";

$pin = ""component pin"";
$jointType = ""joint type indicted"";
$jointSubtype = ""subtype of joint"";
$status = ""status of false call"";
$dateTime = ""date/time string"";$defectType =  ""False Call defect type"";
$layer = ""layer name"";
$algorithm = ""algorithm name"";$FalseCall = AddMachineFalseCall($defectType, $component, $pin, $jointType, $jointSubtype, $status, $dateTime, $operatorName, $layer, $algorithm);
