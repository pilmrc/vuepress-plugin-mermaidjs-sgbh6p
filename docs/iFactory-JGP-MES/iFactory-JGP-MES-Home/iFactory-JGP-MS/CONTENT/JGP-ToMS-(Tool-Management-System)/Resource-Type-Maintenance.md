# Introduction

Resource Type groups resources which resource type is Production Equipment.


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("RESOURCE TYPE MAINTENANCE")

:::


#### **Permission ( ToMS Application)** 



- Resource Type Maintenance


- Can modify Resource Type Maintenance



#### **Precondition** 


Automatically select Plant upon Data Partition assignment.


#### **Screen Activity** 


**Resource Type Maintenance enables user to perform the following activity:** 


- Create, view, update, delete, bulk upload and download resource type record
The resource type created in ToMS is for 
Resource Function = Production Equipment. The data created in ToMS will sync back to iFactory by logon site.

#### **Screen Dependency** 


The following screen(s) has direct dependency with Resource Type.

- Resource Maintenance.


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against
Resource Type Name.
![image2021-10-20_13-7-15.png](/.attachments/100893341.png)


If the Resource Type is in use in Resource Maintenance, then it is not allow to deleted
![image2021-10-20_13-10-38.png](/.attachments/100893343.png)


When the Resource Type deleted, the 
item will besoft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.![image2021-10-20_13-8-27.png](/.attachments/100893342.png)




#### **Fields** 



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Resource Type Name</td><td style="text-align: left;" class="confluenceTd"><p>The unique name given to the Resource Type.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description for the Resource Type can be entered in this field</p></td></tr></tbody></table>



#### **Fields available for File upload in Resource Type screen** 


<table class="relative-table confluenceTable" style="width: 84.2019%;"><colgroup><col style="width: 9.84355%;" /><col style="width: 90.1565%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Choose File</td><td colspan="1" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Resource Type template (CSV UTF-8 format) for batch upload. This file contains below columns:</span></p><ul><li><span style="color: rgb(23,43,77);">Resource Type</span></li><li><span style="color: rgb(23,43,77);">Description</span></li></ul><p><span style="color: rgb(23,43,77);">Note: </span>Description is optional.</p></td></tr><tr><td class="confluenceTd">Upload</td><td class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">System will check if all mandatory fields' values for each line items have been provided.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Resource Type is duplicated.</span></li><li><span style="color: rgb(23,43,77);">For each line item, the system will write if correctly loaded or in case of issue, writing the error.</span></li><li><span style="color: rgb(23,43,77);">If there is any error in the file, system will  not upload data and return error.</span></li><li><span style="color: rgb(23,43,77);">When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource Type are uploaded successfully” OR with error then prompt message with specific error message.</span></li><li><span style="color: rgb(23,43,77);">At the end of process, the PASS data will processed in the system. </span><span style="color: rgb(23,43,77);">System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is ResourceType.csv, the output file will be ResourceType.out.csv)</span></li><li><span style="color: rgb(23,43,77);"><em>Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</em></span></li></ul></td></tr></tbody></table>


- **System will check if all mandatory fields’ values for each line items have been provided.**


- System will check if the Resource Type is duplicated.


- For each line item, the system will write if correctly loaded or in case of issue, writing the error.


- If there is any error in the file, system will  not upload data and return error.


- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Resource Type are uploaded successfully” OR with error then prompt message with specific error message.


- At the end of process, the PASS data will processed in the system.

System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is ResourceType.csv, the output file will be ResourceType.out.csv)

- Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.



#### Attachments

[image2021-10-20_13-7-15.png](/.attachments/100893341.png)
[image2021-10-20_13-8-27.png](/.attachments/100893342.png)
[image2021-10-20_13-10-38.png](/.attachments/100893343.png)
