# Introduction

**Usage:** 
$parametricData = AddParametricData($measureLabel, $measureStatus, $measureValue, $numericValue, $lowerLimit, $upperLimit, $meaureUnits, $isParametric, $measureSource);


**Description:** This function adds a parametric data measurement to the operation's result structure.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$measureLabel</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>Measurement label.</p></td></tr><tr><td colspan="1" class="confluenceTd">$measureStatus</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Measurement status.<br />Values: PASS, FAIL, ABORT, PRESENT, STARTED</p></td></tr><tr><td colspan="1" class="confluenceTd">$measureValue</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Text measurement value (nullable).</p></td></tr><tr><td colspan="1" class="confluenceTd">$numericValue</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Numeric measurement value (nullable).</td></tr><tr><td colspan="1" class="confluenceTd">$lowerLimit</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">Numeric lower limit (nullable).</td></tr><tr><td colspan="1" class="confluenceTd">$upperLimit</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Numeric upper limit (nullable).</p></td></tr><tr><td colspan="1" class="confluenceTd">$meaureUnits</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Measurement units.</p></td></tr><tr><td colspan="1" class="confluenceTd">$isParametric</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td colspan="1" class="confluenceTd"><p>Is the measurement parametric?</p></td></tr><tr><td colspan="1" class="confluenceTd">$measureSource</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Source of measurement.<br />Values: AUTOMATEDPROCESS, USER</p></td></tr></tbody></table>




<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$parametricData</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd">The measurement created.</td></tr></tbody></table>


**Usage Example(s):** 
$measureLabel = ""Measurement label"";

$measureStatus = ""Measurement status"";
$measureValue = ""Text measurement value"";
$numericValue = ""Numeric measurement value"";
$lowerLimit = "" lower limit"";
$upperLimit = ""upper limit"";
$meaureUnits = ""units"";
$isParametric = true;
$measureSource = ""Source of measurement"";$parametricData = AddParametricData($measureLabel, $measureStatus, $measureValue, $numericValue, $lowerLimit, $upperLimit, $meaureUnits, $isParametric, $measureSource);
