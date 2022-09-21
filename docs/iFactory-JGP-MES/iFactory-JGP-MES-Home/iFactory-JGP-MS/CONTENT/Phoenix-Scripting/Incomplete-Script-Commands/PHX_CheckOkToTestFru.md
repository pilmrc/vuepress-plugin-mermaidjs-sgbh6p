# Introduction

**Usage:** 
($okToTest, $arrayOfFailureReasons) = 
**PHX_CheckOkToTestFru** ($serialNumber,$materialName,$CustomerName
);


### ***Page Under Construction - Needs Verification:***  



**Description:** This function will verify that a FRU material of a specific serial number for a customer is valid to be tested.
(Note: This description is terse and needs additional information as to when and how to use the command. 
Additionally, validation rules need to be defined, used for NetApp EPG)


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$serialNumber</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd">The serial number of the material to be checked.</td></tr><tr><td colspan="1" class="confluenceTd">$materialName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The material name.<br />Must be able to be resolved to an existing material ID.</p></td></tr><tr><td colspan="1" class="confluenceTd">$customerName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The customer name.<br />eg.: "Isilon" or "<span style="color: rgb(0,0,0);">NetApp"</span>.</p></td></tr></tbody></table>




<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(34,34,34);">$okToTest</span></td><td style="text-align: center;" class="confluenceTd"><span style="color: rgb(255,0,0);"><strong>?</strong></span></td><td class="confluenceTd"><span style="color: rgb(255,0,0);">? </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$arrayOfFailureReasons</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"><span style="color: rgb(255,0,0);">?</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(255,0,0);">?</span></td></tr></tbody></table>


**Usage Example(s):** 
($okToTest, $arrayOfFailureReasons) = PHX_CheckOkToTestFru($TempSN, $TempMat, $customer);


UpdateStatus($okToTest);
$numberOfFailures = ArrayGetLength($arrayOfFailureReasons);
UpdateStatus($numberOfFailures);
$currentFailure = 0;
$failure = "";
while($currentFailure " $numberOfFailures)
{
$failureMessage = Array1DGetValue($arrayOfFailureReasons, $currentFailure);
$currentFailure = Add($currentFailure, 1);
$failure = StringCat($failure,$failureMessage);
$failure = StringCat($failure,"\n");
UpdateStatus($failureMessage);

}

if ($numberOfFailures " 0)
{
OperatorPrompt($failure);
Abort();
}