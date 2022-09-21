# Introduction

**Usage:** 
$visualAidForm = CreateVisualAidViewerNonblocking($blockForUnviewed, $rememberViewed);



### ***Page Under Construction - Needs Verification:***  



**Description:** This function will create a visual aid that can be loaded and then subsequently viewed. This allows the assemble operations to continue without having the 
visual
aid
pop up and and disrupt focus on the scan fields. Use this to create the visual aid and then call **LoadVisualAidViewerNonblocking**  to load and view the visual aid.
<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(34,34,34);">$blockForUnviewed</span></td><td style="text-align: center;" class="confluenceTd">Boolean</td><td class="confluenceTd">when set to true, calls to LoadVisualAidViewerNonblocking() will block script execution if there are any required <span class="il">visual</span> aids that have not been viewed yet.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">$rememberViewed</span></td><td colspan="1" style="text-align: center;" class="confluenceTd"><span>Boolean</span></td><td colspan="1" class="confluenceTd">when set to true, the <span class="il">viewer</span> will remember any <span class="il">visual</span> aids that have already been viewed, and not require a second viewing when the next call to LoadVisualAidViewerNonblocking() is made</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span style="color: rgb(34,34,34);">$visualAidForm</span></td><td style="text-align: center;" class="confluenceTd">Object</td><td class="confluenceTd">a handle to the empty <span class="il">visual</span> <span class="il">aid</span> <span class="il">viewer</span> form.</td></tr></tbody></table>


**Usage Example(s):** 
Hey guys, I modified the 
Visual
Aid
functions to behave similar to the new non
-blocking
assemble screen. This allows the assemble operations to continue without having the visual
aid
pop up and and disrupt focus on the scan fields.I renamed the original function and split it in two. The 
Visual
Aid
viewer
form is created in a global initialization script, and the visual
aids are loaded in the test cell script for the currently executing WIP. Here are the two new functions:
**$visualAidForm = CreateVisualAidViewerNonblocking($blockForUnviewed, $rememberViewed);** 
Parameters:

- **$blockForUnviewed**

- bool - when set to true, calls to LoadVisualAidViewerNonblocking() will block script execution if there are any required visual
aids that have not been viewed yet.
- **$rememberViewed**
- bool - when set to true, the viewer
will remember any visual
aids that have already been viewed, and not require a second viewing when the next call to LoadVisualAidViewerNonblocking() is madeReturns:

- **$visualAidForm**

- object - a handle to the empty visual
aid
viewer
form.**LoadVisualAidViewerNonblocking($visualAidForm, $silentLoadingMode, $silentOperatingMode);** 
Parameters:

- **$visualAidForm**

- object - handle to the form returned by the CreateVisualAidViewerNonblocking() function
- **$**
**silentLoadingMode**  - bool - when true, any visual
aid
loading errors are visually suppressed
- **$**
**silentOperatingMode**  - bool - when true, any visual
aid
viewing errors are visually suppressedReturns:

- none

Sample scripts:
**"Test Cell script"** 
$silentLoadingMode = false;
$silentOperatingMode = false;
LoadVisualAidViewerNonblocking($visualAidForm, $silentLoadingMode, $silentOperatingMode);
OperatorPrompt("This happens AFTER the 
visual
aid
is done!", "OK");End;
**"Global Initialization script"** 
function Initialize()
{
$blockForUnviewed = true;
$rememberViewed = true;
$visualAidForm = CreateVisualAidViewerNonblocking($blockForUnviewed, $rememberViewed);

End;
}
Creating the 
visual
aid
view with blockForUnviewed and rememberViewed should probably be the default behavior. This will cause the script to pause the first time any required visual
aids are loaded, and force the user to manually view them, then click continue. After that, the visual
aid
viewer
will not prompt them again unless a new required visual
aid
is encountered.
