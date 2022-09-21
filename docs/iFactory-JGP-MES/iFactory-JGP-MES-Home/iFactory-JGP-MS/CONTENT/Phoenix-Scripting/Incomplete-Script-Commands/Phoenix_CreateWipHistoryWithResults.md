# Introduction

**Usage:** $historyCreationSucessful = Phoenix_CreateWipHistoryWithResults($serialNumber, $material, $plantCode, $customer, $resullt);


### ***Page Under Construction - Needs Verification:***  



**Description:** This function creates the results history in Phoenix . It is used to store the Operation Result which is used in conjunction with Phoenix_CreateOperationResult, Phoenix_AddMeasurementToOperationResult, and Phoenix_AddMeasurementWithLimitsToOperationResult to store measurements for a serial number other than the current WIP. This was developed to create a test history for reference units used to store a Test the Tester History. First create a Operation Result, then add a measurement, then create the history with the results.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">$serialNumber</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">WIP Serial Number for which to save the history</td></tr><tr><td colspan="1" class="confluenceTd">$material</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">The material Name of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">$plantCode</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">The plant code e.g."TN01"</td></tr><tr><td colspan="1" class="confluenceTd">$customer</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">The Customer for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">$resullt</td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">result of previous creation and measurements</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong> <strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$historyCreationSucessful</td><td class="confluenceTd"><span style="color: rgb(255,0,0);">?</span></td><td class="confluenceTd"><p><span style="color: rgb(255,0,0);">???</span></p></td></tr></tbody></table>

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
