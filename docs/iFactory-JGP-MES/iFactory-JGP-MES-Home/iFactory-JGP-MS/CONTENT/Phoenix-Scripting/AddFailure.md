# Introduction

**Usage:** 
$failure = AddFailure($failLabel, $failMessage);


**Description:** This function adds a failure to the operation's result structure.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$failLabel</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The failure's label.</p></td></tr><tr><td colspan="1" class="confluenceTd">$failMessage</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The message associated with the failure.</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$failure</td><td style="text-align: center;" class="confluenceTd"><strong>Object</strong></td><td class="confluenceTd"><p>The new failure created.<br />Returned to script so defects can be added against it.</p></td></tr></tbody></table>



**Usage Example(s):** 
$failLabel
=  ""failure label"";
$failMessage
= ""failure message"";$failure = AddFailure($failLabel, $failMessage);
