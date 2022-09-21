# Introduction

**Usage:** 
**$assembleForm = CreateAssembleOperationFormNon** 
blocking
($TestCellNumber, $StartMode, $PostCompleteAction, $BatchMode, $AutoComplete);

### ***Page Under Construction - Needs Verification:***  



**Description:** This function used to create a handle for the new 
assemble
screen. It must be called in the client's Global Initialization script so that it can be shared across test runs. This works in conjunction with the **ExecuteAssembleOperationNonblocking** command which must be used subsequent to this command to actually display the assemble form by using the handle created.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><strong>$TestCellNumber</strong></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd">the Test Cell that the <span class="il">assemble</span> form will control. Usually cell #1</td></tr><tr><td colspan="1" class="confluenceTd"><strong>$StartMode</strong></td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">controls how the Test Cell is started. Valid options are "AUTOSTART", which automatically grabs the next WIP in queue, and "SERIALSCAN", which requires a serial # to be scanned to start</td></tr><tr><td colspan="1" class="confluenceTd"><strong>$PostCompleteAction</strong></td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">determines the test result when <span class="il">assemble</span> is completed with items remaining to be assembled. Valid options are "PASS", "FAIL", and "ABORT"</td></tr><tr><td colspan="1" class="confluenceTd"><strong>$BatchMode</strong></td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">boolean that determines whether the <span class="il">assemble</span> <span class="il">operation</span> runs in batch mode or not. If true, all validation occurs when the <span class="il">assemble</span><span class="il">operation</span> is complete. If false, each assembled item is validated instantly.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>$AutoComplete</strong></td><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd">boolean that determines whether the <span class="il">assemble</span> <span class="il">operation</span> is automatically completed when the last item to be assembled is done. If set to false, the 'COMPLETE' button must be manually pressed to end the <span class="il">assemble</span> <span class="il">operation</span>.</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><strong>$assembleForm</strong></td><td style="text-align: center;" class="confluenceTd"> </td><td class="confluenceTd">handle to the <span class="il">assemble</span> screen created in the global initialization script</td></tr></tbody></table>


**Usage Example(s):** 
The new persistent 
assemble
screen is complete. It is (visually) almost identical to the original screen, with the addition of a Test Cell panel at the top:
![](https://mail.google.com/mail/u/0/?ui=2&ik=f09b9d9a16&view=fimg&th=1406dddeb5d778e5&attid=0.1&disp=emb&realattid=ii_1406dc80594c0746&attbid=ANGjdJ8S_Utmx4v1x6SzKooHpuEfQpdsrV0O6nDOgpqlTHlrdQt0iLhxf3HpgPGjBjrL16u186_SIq8tRyjAcf5N6Cnad001srYXxF8ymgu7zZn_WP3VOcf42-FlMmU&sz=s0-l75-ft&ats=1440163856889&rm=1406dddeb5d778e5&zw&atsh=1)


The Test Cell panel controls and communicates with the underlying Test Cell, synchronizing the 
assemble
screen (which never closes) with the cell's script.There are two new commands for using the new screen:
**$assembleForm = CreateAssembleOperationFormNon** 
blocking
($TestCellNumber, $StartMode, $PostCompleteAction, $BatchMode, $AutoComplete);Used to launch the new 
assemble
screen. It must be called in the client's Global Initialization script so that it can be shared across test runs.Parameters:

- $TestCellNumber - the Test Cell that the

assemble
form will control. Usually cell #1
- $StartMode - controls how the Test Cell is started. Valid options are "AUTOSTART", which automatically grabs the next WIP in queue, and "SERIALSCAN", which requires a serial # to be scanned to start

- $PostCompleteAction - determines the test result when
assemble
is completed with items remaining to be assembled. Valid options are "PASS", "FAIL", and "ABORT"
- $BacthMode - boolean that determines whether the
assemble
operation
runs in batch mode or not. If true, all validation occurs when the assemble
operation
is complete. If false, each assembled item is validated instantly.
- $AutoComplete - boolean that determines whether the
assemble
operation
is automatically completed when the last item to be assembled is done. If set to false, the 'COMPLETE' button must be manually pressed to end the assemble
operation
.Returns:

- $assembleForm - handle to the

assemble
screen form created in the global initialization script that will be used in the test cell script**ExecuteAssembleOperationNonblocking($assembleForm, "$assembleTimeout")** 
Enables the 
assemble
portion of the form and loads the assemble
data for the currently running WIP in the Test Cell. This blocks script execution until the assemble
operation
is completed (I kept the name consistent with the form).Parameters:

- $assembleForm - handle to the

assemble
screen created in the global initialization script
- $assemblleTimeout - (optional) Timeout in seconds to block script execution. If no value is given, the script blocks indefinitely. When the timeout occurs, if any items remain to be assembled the post-complete action is fired
Returns:

- none

Sample Scripts:
**"global initialization script"** 
function Initialize()
{
$testCellNumber = 1;
$postCompleteAction = "ABORT";
$batchMode = false;
$startMode = "AUTOSTART";
$autoComplete = true;
$assembleForm = CreateAssembleOperationFormNon
blocking
($testCellNumber, $startMode, $postCompleteAction, $batchMode, $autoComplete);
End;
}
**"Test Cell script"** 
ExecuteAssembleOperationNonblocking($assembleForm);
OperatorPrompt("This happens AFTER the 
assemble
is done!", "OK");End;
Because this and other tests are using the Global Initialization scripts so frequently, I plan on adding two new 
operation
assignment scopes soon --**GlobalInitialization** and **GlobalCleanup** . This way the clients will automatically download the global init/cleanup scripts after a successful login. This will save having to manually configure those scripts. Of course, I will be adding this after the production pilot.