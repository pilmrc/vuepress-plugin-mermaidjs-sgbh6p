# Introduction

**Usage:** $resullt = Phoenix_AddMeasurementWithLimitsToOperationResult($resullt, $measurementLabel, $data, $lowerLimit, $upperLimit, $units, $isParametric, $source);


### ***Page Under Construction - Needs Verification:***  



**Description:** This function adds a measurement to a Operation Result which is used in conjunction with Phoenix_CreateOperationResult, Phoenix_AddMeasurementToOperationResult, and Phoenix_CreateWipHistoryWithResults to store measurements for a serial number other than the current WIP. This was developed to create a test history for reference units used to store a Test the Tester History. First create a Operation Result, then add a measurement, then create the history with the results.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">$resullt</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">result of previous creation and measurements</td></tr><tr><td colspan="1" class="confluenceTd">$measurementLabel</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">The measurement name</td></tr><tr><td colspan="1" class="confluenceTd">$data</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">The measured value</td></tr><tr><td colspan="1" class="confluenceTd">$lowerLimit</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">The lower limit of which a failure will occur is data is outside this</td></tr><tr><td colspan="1" class="confluenceTd">$upperLimit</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"><span>The upper limit of which a failure will occur is data is outside this</span></td></tr><tr><td colspan="1" class="confluenceTd">$units</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">The Unit of Measure</td></tr><tr><td colspan="1" class="confluenceTd">$isParametric</td><td colspan="1" class="confluenceTd">Boolean</td><td colspan="1" class="confluenceTd">Is this data to be stored as parametric data true | false</td></tr><tr><td colspan="1" class="confluenceTd">$source</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">//valid values are AUTOMATEDPROCESS, USER</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong> <strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$resullt</td><td class="confluenceTd"><span style="color: rgb(255,0,0);">?</span></td><td class="confluenceTd"><p><span style="color: rgb(255,0,0);">???</span></p></td></tr></tbody></table>

**Usage Example(s):** 
Here's some sample test scripts for creating WIP histories for a WIP other than the one that is running:
$serialNumber = "ADAMTEST0034";
$material = "Adam Test C";
$plantCode = "TN01";
$customer = "Isilon";
$status = "ABORT";
//\*\*\*\*\* History - with data \*\*\*\*\*
$resullt = Phoenix_CreateOperationResult($status);
//CASE #1 - Add measure with no limits
$measurementLabel = "Measurement 1";
$measurementStatus = "PASS"; //valid values are PASS, FAIL
$data = 5.22;
$units = "Volts";
$isParametric = true;
$source = "USER"; //valid values are AUTOMATEDPROCESS, USER
$resullt = Phoenix_AddMeasurementToOperationResult($resullt, $measurementLabel, $measurementStatus, $data, $units, $isParametric, $source);
//CASE #2 - Add measure with limits
$measurementLabel = "Measurement 2";
$measurementStatus = "PASS"; //valid values are PASS, FAIL
$data = 5.22; //this will produce a FAIL measurement status b/c it is outside limits
$lowerLimit = 1;
$upperLimit = 5;
$units = "Volts";
$isParametric = true;
$source = "USER"; //valid values are AUTOMATEDPROCESS, USER
$resullt = Phoenix_AddMeasurementWithLimitsToOperationResult($resullt, $measurementLabel, $data, $lowerLimit, $upperLimit, $units, $isParametric, $source);
//Create history with data
$historyCreationSucessful = Phoenix_CreateWipHistoryWithResults($serialNumber, $material, $plantCode, $customer, $resullt);
UpdateStatus($historyCreationSucessful);
End;
