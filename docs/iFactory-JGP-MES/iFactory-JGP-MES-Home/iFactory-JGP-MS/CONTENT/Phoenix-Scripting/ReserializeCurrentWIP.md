# Introduction

**Usage:** $Success = ReserializeCurrentWIP($NewSerialNumber, $FailOperationOnSerializationFailure);

**Description:** Reserialization occurs when the WIP's temporary serial number is replaced with the permanent serial number. This function determines if the WIP is either successfully or fail to reserialize. 

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$NewSerialNumber</td><td class="confluenceTd">String</td><td class="confluenceTd">The new Serial Number</td></tr><tr><td class="confluenceTd">$FailOperationOnSerializationFailure</td><td class="confluenceTd">Boolean</td><td class="confluenceTd"><p>The flag to fail the test on the Reserialization Failure</p></td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter </strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong> <strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$Success</td><td class="confluenceTd"><span>Boolean</span></td><td class="confluenceTd"><p>The operation result of the reserialization</p></td></tr></tbody></table>

**Usage Example(s):** 
$NewSerialNumber
=  "JL9112282";
$FailOperationOnSerializationFailure
= false;
$Success = ReserializeCurrentWIP($NewSerialNumber,$FailOperationOnSerializationFailure);

