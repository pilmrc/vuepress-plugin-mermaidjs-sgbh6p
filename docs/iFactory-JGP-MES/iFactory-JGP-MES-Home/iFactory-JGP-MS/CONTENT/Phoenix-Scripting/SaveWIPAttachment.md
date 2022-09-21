# Introduction

**Usage:** 
SaveWIPAttachment($fileName, $Comment);


**Description:** This function adds a symptom to the operation's result structure.


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$fileName</td><td style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td class="confluenceTd"><p>The name of the file to attach.</p></td></tr><tr><td colspan="1" class="confluenceTd">$Comment</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>Comments to save with the attachment.</p></td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong style="text-align: center;">Variable</strong><br style="text-align: center;" /><strong style="text-align: center;">Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><em>None.</em></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd"><p> </p></td></tr></tbody></table>


**Usage Example(s):** 
$fileName
=  "C:\\Temp\\FileToAttach.txt
";
$Comment
= "There is a file attached.";SaveWIPAttachment($fileName, $Comment);
