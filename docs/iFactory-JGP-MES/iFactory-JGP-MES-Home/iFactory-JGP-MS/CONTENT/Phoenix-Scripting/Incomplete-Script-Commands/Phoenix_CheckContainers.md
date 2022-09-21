# Introduction

**Usage:** 
($allValid, $invalidContainerInfoTable) = 
Phoenix_CheckContainers
($containerNames);


### ***Page Under Construction - Needs Verification:***  



**Description:** This function will take an array of container names and check to see if they are valid container names and if they are empty or not. The results are returned in a datable for review.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"> <span style="color: rgb(34,34,34);">$containerNames</span></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd"> An array of container names</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"> <span style="color: rgb(34,34,34);">$allValid</span></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$invalidContainerInfoTable</span></td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>


**Usage Example(s):** 
This script:

$containerNames = Array1DCreate("STRING", 5);
Array1DSetValue($containerNames, 0, "SX400-301326-0662-04TB-200000002");
//ValidArray1DSetValue($containerNames, 1, "SX400-301326-0662-04TB-300000004");
//ValidArray1DSetValue($containerNames, 2, "SX400-301326-0662-04TB-300000005");
//ValidArray1DSetValue($containerNames, 3, "SN400-301321-0006-03TB-X00000000");
//Invalid - no itemsArray1DSetValue($containerNames, 4, "SX400-301321-0004-01TB-X00000002");
//Invalid - items from other WIP//Array1DSetValue($containerNames, 5, "XXX");
//Container not found!($allValid, $invalidContainerInfoTable) = 
Phoenix_CheckContainers
($containerNames);UpdateStatus($allValid);
DataTable_ShowInWindow($invalidContainerInfoTable);
End;
Produces this output:
![image.png](https://mail.google.com/mail/u/0/?ui=2&ik=f09b9d9a16&view=fimg&th=140185b9be8a61e1&attid=0.1&disp=emb&realattid=ii_140185a1a827613b&attbid=ANGjdJ_FUuucfVM9RAvSpUz79tZyOTKfRgHjcTSlbSgDS_SEYYPZGmweNdmnodKb3wpbOtcX7uR0hx1Yk-Nfc-G-7hgZQcmfBikwAJOpEJaETky6-WfZHTF6etKBilk&sz=s0-l75-ft&ats=1440170029913&rm=140185b9be8a61e1&zw&atsh=1)


I updated it to include unknown containers in the list of invalid items (instead of bombing out the function):
Script:
$containerNames = Array1DCreate("STRING", 6);

Array1DSetValue($containerNames, 0, "00000040"); //Valid
Array1DSetValue($containerNames, 1, "SX400-301312-0014-03TB-X00000008"); //Empty
Array1DSetValue($containerNames, 2, "0800073977-L1-01"); //Empty
Array1DSetValue($containerNames, 3, "0800073158-L1"); //Invalid - container not found
Array1DSetValue($containerNames, 4, "SX400-301321-0004-01TB-X00000002"); //Invalid - container not found
Array1DSetValue($containerNames, 5, "XXX"); //Invalid - container not found($allValid, $invalidContainerInfoTable) = Phoenix_CheckContainers($containerNames);

UpdateStatus($allValid);
DataTable_ShowInWindow($invalidContainerInfoTable);

