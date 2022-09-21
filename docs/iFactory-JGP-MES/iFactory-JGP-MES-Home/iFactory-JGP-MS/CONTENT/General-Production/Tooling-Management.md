# Introduction

In Jabil manufacturing plants, it is common for sites to use additional tooling to aid in building products. 
This screen enables the user to create and manage the various tooling they use.


### How to get there?




::: mermaid
graph LR
A("CONFIGURE")-->0("TOOLING")

:::


#### Screen Activity


Tooling Management enables user to perform the following activity:

- Create Tooling Number

- Tool Type assignment to the Tooling Number

- Define the Max Usage for the Tooling Number

- Bulk upload tooling



#### Pre Condition


The following data needs to be pre-configured before user configures Tooling:

- Tool Type


#### Screen Dependency



- [[Tool Type Maintenance]](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Tool-Type-Maintenance.md)





#### Fields


![image2022-3-17_20-42-17.png](/.attachments/110919820.png)



**Bulk Upload** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Field</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .UTF-8 format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li>Tooling<span style="color: rgb(0,0,0);">（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Tool Type（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Decription（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Validity Date（Mandatory-date）</span></li><li><span style="color: rgb(0,0,0);">Max Usage（Optional-Positive integer）</span></li><li><span style="color: rgb(0,0,0);">Active（Mandatory-Active or Inactive）</span></li><li><span style="color: rgb(0,0,0);">Action（Mandatory-Add/Update/Delete）</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li>The bulk upload support user to add，update，delete</li><li><span>Add – Add the new tooling into Tooling Management. If the tooling data is available in the system, then not allowed to add into system.</span></li><li><span>Delete – Delete the available tooling data from Tooling Management. If tooling data not available in the system, then deleting action will be failed.</span></li><li><span>Update – Update the existing tooling into Tooling Management. If tool type data not available in the system, then updating action will be failed.</span></li><li><span>If user leaves the action column as blank, then no action should be taken.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>System will check if the provided project name<span> </span><span style="color: rgb(0,0,0);">available and duplicate</span><span> </span>in the system.</li><li>System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For each line, the system will write if correctly loaded or in case of issue, writing the error</li></ul><li>If there is any error in the file, system should process the pass data and return error.</li><li>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System will check if the provided project name
available and duplicate
in the system.
- System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processed result.

- For each line, the system will write if correctly loaded or in case of issue, writing the error

- If there is any error in the file, system should process the pass data and return error.

- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”


#### Attachments

[image2017-5-25 14:51:20.png](/.attachments/29918465.png)
[image2017-5-25 14:36:47.png](/.attachments/29918466.png)
[image2022-3-17_20-42-17.png](/.attachments/110919820.png)
