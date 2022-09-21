# Introduction

**Usage:** 
($authenticated, $userName, $domainName) = RecordDigitalSignature($displayPhrase, $defaultCurrentUser, $defaultCurrentDomain, $failOnBad, $attempts, $signatureLabel);


**Description:** This function prompts user to enter their digital signature and authenticates the signature.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$displayPhrase</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd">A phrase to display to the user.</td></tr><tr><td colspan="1" class="confluenceTd">$defaultCurrentUser</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td colspan="1" class="confluenceTd">Whether to use the current user as the default.</td></tr><tr><td colspan="1" class="confluenceTd">$defaultCurrentDomain</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td colspan="1" class="confluenceTd"><p>Whether to use the current domain name as the default.</p></td></tr><tr><td colspan="1" class="confluenceTd">$failOnBad</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td colspan="1" class="confluenceTd">Whether to fail the test step if authentication fails.</td></tr><tr><td colspan="1" class="confluenceTd">$attempts</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>Integer</strong></td><td colspan="1" class="confluenceTd">The number of attempts allowed for authentication.</td></tr><tr><td colspan="1" class="confluenceTd">$signatureLabel</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The name of the item the signature is attached to.</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$authenticated</td><td style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td class="confluenceTd">Whether the digital signature was authenticated.</td></tr><tr><td colspan="1" class="confluenceTd">$userName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The authenticated user name.<br />null if not authenticated.</p></td></tr><tr><td colspan="1" class="confluenceTd">$domainName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">String</strong></td><td colspan="1" class="confluenceTd"><p>The authenticated domain name.<br />null if not authenticated.</p></td></tr></tbody></table>




**Usage Example(s):** 
$displayPhrase
= "Enter your signature here";
$defaultCurrentUser
= true;
$defaultCurrentDomain= true;
$failOnBad= false;
$attempts= 4;
$signatureLabel= ""signature label"";($authenticated, $userName, $domainName) = RecordDigitalSignature($displayPhrase, $defaultCurrentUser, $defaultCurrentDomain, $failOnBad, $attempts, $signatureLabel);
