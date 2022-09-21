# Introduction

**Usage:** 
$WIPDataTable = 
Phoenix_GetAsBuiltData
($OnlySerialized, $MaxLevels);

### ***Page Under Construction - Needs Verification:***  



**Description:** This function will return a datatable that will contain materials from the genealogy of the current WIP. The returned data may be Only Serialized materials or Serialized materials and UnSerialized materials. The recursive retrieval is level is set by the MaxLevels. 

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">$</span><span style="color: rgb(0,51,102);">OnlySerialized</span></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd">A flag indicating if only serialized or all materials are returned in the data table from the WIP genealogy of the current WIP.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,51,102);">$MaxLevels</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"><p>An integer value indicating the number of levels deep to return the genealogy</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,51,102);">$WIPDataTable</span></td><td style="text-align: center;" class="confluenceTd"><span style="color: rgb(255,0,0);"><strong>?</strong></span></td><td class="confluenceTd"><span style="color: rgb(255,0,0);">? Data table with results</span></td></tr></tbody></table>


**Usage Example(s):** 
function SetNodeType()
// This function is called for any node being processed, it determines the NodeType (SX200, SS200, NL400, or SX400)
// and then sets the WIP Attribute NodeType to the appropriate value. This was developed for all nodes to be
// evaluated, not just the X-SERIES. 
{
// Show this specific WIP
SetTestName("Set Node Type"); 
$MaxLevels = "10";
$OnlySerialized = "true";
UpdateStatus("
GetAsBuiltData
-WIP Only Serialized");$WIPDataTable = 
Phoenix_GetAsBuiltData
($OnlySerialized, $MaxLevels);$DTcount = DataTable_RowCount($WIPDataTable);
// comment this next one out
// DataTable_ShowInWindow($WIPDataTable);
$NodeTypeValue = "Unknown";
$RowIndex = 0;
$ColumnName = "MaterialName";
$NodeTypeFound = false;
UpdateStatus("Search BOM data");
// RKR while($RowIndex " $DTcount)
while($RowIndex " $DTcount && $NodeTypeFound == false)
{
$MyValue1= DataTable_GetValueByColumnName($WIPDataTable,$RowIndex,$ColumnName);
if($MyValue1 == "400-0034-03")
{
$NodeTypeValue = "SX200";
// data record found don't need to process more records   
$NodeTypeFound = true;
}   
if($MyValue1 == "400-0029-01")
{
$NodeTypeValue = "SX400";
// data record found don't need to process more records   
$NodeTypeFound = true;
} 
if($MyValue1 == "400-0036-01")
{
$NodeTypeValue = "NL400";
// data record found don't need to process more records   
$NodeTypeFound = true;
} 
if($MyValue1 == "400-0033-03")
{
$NodeTypeValue = "SS200";
// data record found don't need to process more records   
$NodeTypeFound = true;
} 

$RetMatl = "Row " + $RowIndex + " Material " + $MyValue1;
UpdateStatus($RetMatl);
$RowIndex = $RowIndex + 1;
}
UpdateStatus("Search BOM data completed");
if($NodeTypeValue == "Unknown")
{
$PromptString = "Unable to determine SERIES 'NodeType' Contact Support, This will now Abort!";
$ButtonOptions = "OK";
$output = OperatorPrompt($PromptString,$ButtonOptions);
Abort("Unable to determine SERIES 'NodeType' Contact Support, This will now Abort!");
}
UpdateStatus($NodeTypeValue);
$attribName = "NodeType";
$attribType = "STRING";
$attribValue = $NodeTypeValue;
SaveWIPAttribute($attribName, $attribType, $attribValue);
return;
}
