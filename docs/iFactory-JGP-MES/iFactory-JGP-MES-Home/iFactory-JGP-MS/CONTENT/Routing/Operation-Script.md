# Introduction

Script Maintenance allows user to import a custom script to be attached to a Route Step. These scripts can contain conditional or validation rules that may only apply to the specific Route Step. During production, system will trigger certain activities according to the script placed on the Route Step. User can upload customized scripts to execute activities such as prompt for data collection, print a document, validate time sensitive threshold, send data to another destination etc. This feature is useful since each workcell may have non-standard process rules in their route step.


### How to get there?





::: mermaid
graph LR
A("ROUTE")-->0("OPERATION")
0-->1("SCRIPT")

:::


#### Screen Activity


Script Maintenance enables user to perform the following activity:

- Upload, view and delete custom scripts



#### Screen Dependency


The following screen(s) has direct dependency with script

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- *[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)*


Do NOT overwrite scripts!
Always use versioning when there is a change in the script.
**Standard Versioning Format: [Major.Minor.Bug]** 
Example of a Script Name: DriveTest | Script Version: A.01.01

- When there is a major enhancement or major script rewrite, change the script version in the Major section from A to B.

Example: **A** 
.01.01 becomes **B** 
.01.01

- When there is a minor update in the script, change the script version in the Minor section from 01 to 02.


Example: A.**01** 
.01 to A.
**02** 
.01


- When there is a bug in the script that requires correction, change the script version in the Bug section from 01 to 02.


Example: A.01.**01** 
to A.01.
**02** 





#### Fields


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Script Name</p></td><td class="confluenceTd"><p>The unique name given to the uploaded script. In Route Step Maintenance, user will browse and hook the required custom script according to the script name given here.</p></td></tr><tr><td class="confluenceTd"><p>Version</p></td><td class="confluenceTd"><p>Enables user to track the version of the script</p></td></tr><tr><td class="confluenceTd"><p>Script Description</p></td><td class="confluenceTd"><p>Description of the script can be entered here to provide insight of the script activities</p></td></tr><tr><td class="confluenceTd"><p>Hash</p></td><td class="confluenceTd"><p>This field is computed and auto populated by the system once the record is saved. Hash value provides a thumbprint for each uploaded file. It provides the ability to check for <br />duplicate content uploaded to the system<span style="color: rgb(255,0,0);">.</span></p></td></tr><tr><td class="confluenceTd"><p>Script File</p></td><td class="confluenceTd"><p>Browse to the path where the script file is located. After the script file is selected, system will display the entire path and script file name to the user. Once the record is saved, <br />system will copy and save the content of the script file and display in the Script Code box</p></td></tr><tr><td class="confluenceTd"><p>Script Code</p></td><td class="confluenceTd"><p>Displays the content of the script</p></td></tr></tbody></table>



