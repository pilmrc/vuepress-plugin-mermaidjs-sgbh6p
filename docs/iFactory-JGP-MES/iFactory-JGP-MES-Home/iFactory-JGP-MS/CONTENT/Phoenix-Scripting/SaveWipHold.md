# Introduction

**Usage:** 
($Errors, $Hold) = SaveWipHold($SerialNumber, $MaterialName, $CustomerName, $HoldReason, $Comments, $FailTestOnErrors);


**Description:** **Places a hold on a user specified serial number (user can fully qualify duplicate serials by optionally passing in Material and Customer name as well.)** 

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$SerialNumber</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>Serial Number from the WipItems table (Required)</p></td></tr><tr><td colspan="1" class="confluenceTd">$MaterialName</td><td colspan="1" style="text-align: center;" class="confluenceTd">String </td><td colspan="1" class="confluenceTd">Material Name this serial number is assigned to (Optional)</td></tr><tr><td colspan="1" class="confluenceTd">$CustomerName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><span>String </span></td><td colspan="1" class="confluenceTd">Customer Name this serial number is assigned to. (Optional)</td></tr><tr><td colspan="1" class="confluenceTd">$HoldReason</td><td colspan="1" class="confluenceTd"><span>String </span></td><td colspan="1" class="confluenceTd">The reason this serial number is placed on hold. (Required)</td></tr><tr><td colspan="1" class="confluenceTd">$Comments</td><td colspan="1" class="confluenceTd">String</td><td colspan="1" class="confluenceTd">User Comments for the hold record (Required)</td></tr><tr><td colspan="1" class="confluenceTd">$FailTestOnErrors</td><td colspan="1" class="confluenceTd">Bool</td><td colspan="1" class="confluenceTd">True or False – Do you want the test to fail if this operation fails? (Required)</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$Errors</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd">The return error description</td></tr><tr><td colspan="1" class="confluenceTd">$Hold</td><td colspan="1" class="confluenceTd">Boolean</td><td colspan="1" class="confluenceTd">Returns (False) or (True) based on the success of the hold.</td></tr></tbody></table>


**Usage Example(s):** 
($Errors, $Hold) = SaveWipHold($SerialNumber, $MaterialName, $CustomerName, $HoldReason, $Comments, $FailTestOnErrors);
