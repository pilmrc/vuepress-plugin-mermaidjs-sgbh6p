# Introduction

Production Area Assignment is a configuration that configure user to Production Area that so that can gatekeeping the fixed fixture that to be collected by operator back in production.


### How to get there?



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("Production Area Assignment")

:::


#### **Permission ( ToMS Application)** 



- Production Area Assignment


- Can modify Production Area Assignment



#### **Screen Activity** 


Production Area Assignment enables user to perform the following activity:

- Create, view, update, delete and download Production Area Assignment records


#### **Precondition** 



- Need to configure plant, work cell, process function and production area  in JGP master data.

- Need to configure user in the partition in security module


#### **Screen Dependency** 


The following screen(s) has dependency with Production Area Assignment.

- [Work Cell Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Work-Cell-Maintenance.md)

- [Production Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Production-Area.md)

- Tool Collection


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against
Plant, Work Cell, Process Function, Production Area, User combination.
When the Production Area deleted, the 
item will besoft deleted and not showing on the screen. Once detected the same configuration has been configured, then system restore the configured data.

#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Cell</p></td><td style="text-align: left;" class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Work Cell. </span>The drop down list base on the logged on plant.</p></td></tr><tr><td colspan="1" class="confluenceTd">Process Function </td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Process Function. </span>The drop down list base on the selected Work Cell.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Production Area</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Production Area. </span>The drop down list base on the selected Process Function.</p></td></tr><tr><td colspan="1" class="confluenceTd">Building</td><td colspan="1" class="confluenceTd">Base on the selected the Production Area<span style="color: rgb(23,43,77);"> is belong to which Building.</span></td></tr><tr><td colspan="1" class="confluenceTd">Floor</td><td colspan="1" class="confluenceTd">Base on the selected the Production Area<span style="color: rgb(23,43,77);"> is belong to which Floor.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>User Name</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to search by NTID or user name which is under the partition. The search will display user name, NTID and email.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Indicate the Production Area Assignment is still valid to use and it is set as "ON" by Default.</span></td></tr></tbody></table>



#### **Fields available for File upload in Production Area Assignment screen** 


<table class="relative-table wrapped confluenceTable" style="width: 1278.17px;"><colgroup><col style="width: 125.719px;" /><col style="width: 1151.45px;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Choose File</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Resource Type template (CSV UTF-8 format) for batch upload. This file contains below columns:</span></p><ul><li><span style="color: rgb(23,43,77);">Work Cell</span></li><li><span style="color: rgb(23,43,77);">Process Function</span></li><li><span style="color: rgb(23,43,77);">Building</span></li><li><span style="color: rgb(23,43,77);">Floor</span></li><li><span style="color: rgb(23,43,77);">Production Area</span></li><li><span style="color: rgb(23,43,77);">User NTID Active (<span style="color: rgb(0,0,0);">1 for active , 0 for inactive)</span></span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">System will check if all mandatory fields' values for each line items have been provided.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource Type is duplicated.</span></li><li><span style="color: rgb(23,43,77);">For each line item, the system will write if correctly loaded or in case of issue, writing the error.</span></li><li><span style="color: rgb(23,43,77);">If there is any error in the file, system will  not upload data and return error.</span></li><li><span style="color: rgb(23,43,77);">When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource Type are uploaded successfully” OR with error then prompt message with specific error message.</span></li><li><span style="color: rgb(23,43,77);">At the end of process, the PASS data will processed in the system. </span><span style="color: rgb(23,43,77);">System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is ResourceType.csv, the output file will be ResourceType.out.csv)</span></li><li><span style="color: rgb(23,43,77);"><em>Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</em></span></li></ul></td></tr></tbody></table>


- **System will check if all mandatory fields’ values for each line items have been provided.**


- System will check if the Resource Type is duplicated.


- For each line item, the system will write if correctly loaded or in case of issue, writing the error.


- If there is any error in the file, system will  not upload data and return error.


- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource Type are uploaded successfully” OR with error then prompt message with specific error message.


- At the end of process, the PASS data will processed in the system.

System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is ResourceType.csv, the output file will be ResourceType.out.csv)

- Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.

