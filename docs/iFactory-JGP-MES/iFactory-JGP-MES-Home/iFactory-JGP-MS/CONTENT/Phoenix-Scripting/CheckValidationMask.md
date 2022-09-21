# Introduction

**Usage:** 
($Errors, $TestStatus) = CheckValidationMask($ValidationMask, $StringToValidate, $FailTestOnValidationErrors);


**Description:** **Allows the user to check (validate) that a passed in string passed a required validation mask check.** 
**Note:**  
The mask ($ValidationMask) will have been previously set be a 
call to either the GetValidationMaskByName() 
or the GetValidationMaskForMaterial() 
functions.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><p>$ValidationMask</p></td><td style="text-align: center;" class="confluenceTd"><p align="center">String</p></td><td class="confluenceTd"><p>The Validation Mask we'll use to validate</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>$ StringToValidate</p></td><td colspan="1" style="text-align: center;" class="confluenceTd"><p align="center">String</p></td><td colspan="1" class="confluenceTd"><p>The string you want to validate against a mask</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>$ FailTestOnValidationErrors</p></td><td colspan="1" style="text-align: center;" class="confluenceTd"><p align="center">String </p></td><td colspan="1" class="confluenceTd"><p>Should this whole test fail if this check fails?</p></td></tr></tbody></table>


**The Validation Mask we’ll use to validate** 
$ StringToValidate
String
The string you want to validate against a mask
$ FailTestOnValidationErrors
String 
Should this whole test fail if this check fails?


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><p>$Errors</p></td><td style="text-align: center;" class="confluenceTd"><p align="center"><strong>String</strong></p></td><td class="confluenceTd"><p>The return error description</p></td></tr><tr><td colspan="1" class="confluenceTd">$TestStatus</td><td colspan="1" class="confluenceTd">Enum</td><td colspan="1" class="confluenceTd">Pass, Fail</td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $TestStatus) = CheckValidationMask (“415-0040-01 S/N”, “415-Test-01”, True);
($Errors, $TestStatus) = CheckValidationMask (“415-0040-01 S/N”, “415-Test-01”, False);
