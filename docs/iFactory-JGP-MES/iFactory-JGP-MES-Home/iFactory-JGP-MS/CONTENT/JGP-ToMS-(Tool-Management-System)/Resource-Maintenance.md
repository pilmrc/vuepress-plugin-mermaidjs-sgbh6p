# Introduction

Resource which is the Production Resource. 


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("RESOURCE MAINTENANCE")

:::


#### **Permission ( ToMS Application)** 



- Resource Maintenance


- Can modify Resource Maintenance



#### **Precondition** 



- Automatically select Plant upon Data Partition assignment.

- Need to configure Work Cell, Process Function, Project, Production Area, Production Line, Process & Process Step in Production and Project Data Maintenance Screen.


#### **Screen Activity** 


**Resource Maintenance enables user to perform the following activity:** 


- Create, view, update, delete, bulk upload and download resource record
The resource created in ToMS is Production Resource. The data created in ToMS will sync back to iFactory by logon site.


#### **Screen Dependency** 


The following screen(s) has direct dependency with Resource.

- [Resource Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Resource-Type-Maintenance.md)

- [Production and Project Data Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Production-and-Project-Data-Maintenance.md)


- The Work Cell, Process Function, Production Line, Production Area data source is coming from Production and Project data Maintenance.


#### **Screen Specification** 



- The Work Cell, Process Function, Production Line, Production Area data source is coming from Production and Project data Maintenance.

- Resource Type data source is coming from Resource Type.

- System will validate against duplicate record:

- The uniqueness lies against
Resource Name or Equipment Number.

![image2021-10-22_10-41-47.png](/.attachments/100893439.png)




- If the Resource is in use in Resource Maintenance, then it is not allow to deleted


- When the Resource deleted, the

item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

![image2021-10-22_10-44-37.png](/.attachments/100893440.png)





#### **Fields** 



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Resource Name</td><td style="text-align: left;" class="confluenceTd"><p>The unique name given to the Resource for the site.</p></td></tr><tr><td colspan="1" class="confluenceTd">Resource Type</td><td colspan="1" class="confluenceTd">Resource Type is helped categorize Resource.</td></tr><tr><td colspan="1" class="confluenceTd">Equipment Number</td><td colspan="1" class="confluenceTd">The unique number given to the Resource for whole site. <span style="color: rgb(23,43,77);">Only accept numeric value.</span></td></tr><tr><td colspan="1" class="confluenceTd">Work Cell</td><td colspan="1" class="confluenceTd">The Resource  is belong to which work cell.</td></tr><tr><td colspan="1" class="confluenceTd">Process Function</td><td colspan="1" class="confluenceTd">The Resource is belong to which process function.</td></tr><tr><td colspan="1" class="confluenceTd">Resource Short Name</td><td colspan="1" class="confluenceTd">The alternative name/short name of the Resource.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Resource Description</p></td><td colspan="1" class="confluenceTd"><p>Additional description for the Resource can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Production Line</td><td colspan="1" class="confluenceTd">The Resource is belong to which production line.</td></tr><tr><td colspan="1" class="confluenceTd">Production Area</td><td colspan="1" class="confluenceTd">The Resource is belong to which production line that is which production area.</td></tr><tr><td colspan="1" class="confluenceTd">Primary Tool Location</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Primary tool location to indicate how many tools in this location. For instance , cutter quantity. Only accept numeric value.</span></td></tr><tr><td colspan="1" class="confluenceTd">Secondary Tool Location</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Secondary tool location to indicate how many tools in this location and it is default to 1.Only accept numeric value.</span></td></tr></tbody></table>



#### **Fields available for File upload in Resource Type screen** 


<table class="relative-table confluenceTable" style="width: 1278.17px;"><colgroup><col style="width: 125.719px;" /><col style="width: 1151.45px;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Choose File</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Resource template (CSV UTF-8 format) for batch upload. This file contains below columns:</span></p><ul><li><span style="color: rgb(23,43,77);">Work Cell</span></li><li><span style="color: rgb(23,43,77);">Process Function</span></li><li><span style="color: rgb(23,43,77);">Resource Name</span></li><li><span style="color: rgb(23,43,77);">Resource Short Name</span></li><li><span style="color: rgb(23,43,77);">Resource Type</span></li><li><span style="color: rgb(23,43,77);">Description</span></li><li><span style="color: rgb(23,43,77);">Production Line</span></li><li><span style="color: rgb(23,43,77);">Production Area</span></li><li><span style="color: rgb(23,43,77);">Equipment Number</span></li><li><span style="color: rgb(23,43,77);">Primary Tool Location</span></li><li><span style="color: rgb(23,43,77);">Secondary Tool Location</span></li></ul><p><span style="color: rgb(23,43,77);">Note: Resource Short Name, </span>Description, Production Line, Production Area, Primary Tool Location, Secondary Tool Location is optional.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">System will check if all mandatory fields' values for each line items have been provided.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource / Equipment Number is duplicated.</span></li><li><span style="color: rgb(23,43,77);">For each line item, the system will write if correctly loaded or in case of issue, writing the error.</span></li><li><span style="color: rgb(23,43,77);">If there is any error in the file, system will  not upload data and return error.</span></li><li><span style="color: rgb(23,43,77);">When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource are uploaded successfully” OR with error then prompt message with specific error message.</span></li><li><span style="color: rgb(23,43,77);">At the end of process, the PASS data will processed in the system. </span><span style="color: rgb(23,43,77);">System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is Resource.csv, the output file will be Resource.out.csv)</span></li><li><span style="color: rgb(23,43,77);"><em>Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</em></span></li></ul></td></tr></tbody></table>


- **System will check if all mandatory fields’ values for each line items have been provided.**


- System will check if the Resource / Equipment Number is duplicated.


- For each line item, the system will write if correctly loaded or in case of issue, writing the error.


- If there is any error in the file, system will  not upload data and return error.


- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource are uploaded successfully” OR with error then prompt message with specific error message.


- At the end of process, the PASS data will processed in the system.

System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is Resource.csv, the output file will be Resource.out.csv)

- Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.



#### Attachments

[image2021-10-20_13-7-15.png](/.attachments/100893346.png)
[image2021-10-20_13-10-38.png](/.attachments/100893347.png)
[image2021-10-20_13-8-27.png](/.attachments/100893348.png)
[image2021-10-20_13-38-26.png](/.attachments/100893349.png)
[image2021-10-20_14-5-56.png](/.attachments/100893350.png)
[image2021-10-22_10-41-47.png](/.attachments/100893439.png)
[image2021-10-22_10-44-37.png](/.attachments/100893440.png)
[image2021-10-25_11-52-36.png](/.attachments/102039572.png)
[image2021-10-29_16-43-7.png](/.attachments/102040032.png)
