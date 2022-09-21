# Introduction

**Usage:** 
$DataTable = Phoenix_
GetLastProcessResultByStep
($
CustomerName, $MaterialName, $SerialNumber, $Route, $RouteStep);


### ***Page Under Construction - Needs Verification:***  



**Description:** This function will return a datatable that will contain the last process results of a WIP as a specific route step. It was developed to support testing the tester to identify the last test result of the tester reference unit.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(34,34,34);">$</span><span style="color: rgb(34,34,34);">CustomerName</span></td><td style="text-align: center;" class="confluenceTd">String </td><td class="confluenceTd">The Customers Name. e.g. "Isilon" or "NetApp"</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$MaterialName</span></td><td colspan="1" style="text-align: center;" class="confluenceTd">String </td><td colspan="1" class="confluenceTd"><p>The material name of the WIP</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$SerialNumber</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"><span>String</span></td><td colspan="1" class="confluenceTd">The serial number of the WIP you want the last Process Result by step</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$Route</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"><span>String</span></td><td colspan="1" class="confluenceTd">The Route of the WIP</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$RouteStep</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"><span>String</span></td><td colspan="1" class="confluenceTd"><span>The Route step of the WIP</span></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">$DataTable</span></td><td style="text-align: center;" class="confluenceTd"><span style="color: rgb(255,0,0);"><strong>?</strong></span></td><td class="confluenceTd"><span style="color: rgb(255,0,0);">? Data table with results</span></td></tr></tbody></table>


**Usage Example(s):** 
UpdateStatus("Read last ProcessResult of Reference Unit");

$DataTable = Phoenix_GetLastProcessResultByStep($RESERVED_CustomerName, $RefUnitMaterialName, $RefUnitSerialNumber, $RESERVED_RouteName, $RESERVED_RouteStepName);
$ColumnName = "ProcessResult";
// DataTable_ShowInWindow($DataTable); uncomment to see datatable columns and data$status = DataTable_GetValueByColumnName($DataTable,0,$ColumnName);

$ColumnName = "EndDateTime"; 
$stopTime = DataTable_GetValueByColumnName($DataTable,0,$ColumnName);
$ValidationPassed = StringContains($status,"P");
ScriptIf($ValidationPassed,"GOTO","","PerformTest"); 
($Days,$Hours,$Minutes,$Seconds,$Milliseconds) = GetTimeSpan($stopTime,$currentTime);
$LowLimit = NumericComparison($Hours,8,""")
ScriptIf($LowLimit,"GOTO","PerformTest","ValidationCurrent");