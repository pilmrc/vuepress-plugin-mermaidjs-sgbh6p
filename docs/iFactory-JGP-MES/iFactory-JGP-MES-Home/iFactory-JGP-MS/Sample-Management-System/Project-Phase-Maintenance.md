# Introduction

Project Phase Maintenance screen is used to configure which phase currently the project is belong to , phase's end of life (EOL) and switch from one phase to another phase by the effective date. This configuration is needed for system to determine when the sample is required for EOL review and trigger email notification.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT CONFIGURATION")-->0("Project Phase MAINTENANCE")

:::


#### **Permission ( Ifactory.SMS)** 



- Project Phase Maintenance


- Can modify Project Phase Maintenance


- Can perform EOL Extension


- Can perform Phase Change


- Can bulk upload Project Phase

**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update and delete records

- Download template and upload template

- Associate phase to project and product group.

- Configure phase EOL date

- Change one phase to another phase and when it will take effect

- View the changes log.



#### **Precondition** 


Product group and  project needs to be configured in ifactory before configuration.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample Application Form

- Sample List View

- Sample Distribution

- Sample Reception

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 



- System validates unique
configuration combination of project and product group. If duplicates, throws error and new data does not get created. 
When the records deleted, the 
item will be

soft deleted and not showing on the screen. Once detected the same configuration has been configured, then system restore the configured data. There is
audit log which allow user to view the changes done to Phase , Phase change effective date and EOL date in project phase maintenance.
- System support download template and bulk upload template. The Project、Product Group、Phase、Phase Change Effective date and EOL Date  are mandatory, the Description is optional.


- When upload successfully or fails, the system will ouput a files to explain valid or invalid data, and the bulk upload function only allows user to upload up to 1000 rows



#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 74.3572%;"><colgroup><col style="width: 20.7694%;" /><col style="width: 79.2435%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd"><p>Project that require for phase configuration.</p><ul style="text-align: left;"><li><span>The value for selection is displayed based on the assigned customer/division and project regardless of the logged-on customer/division.</span></li><li><span>This project is retrieving from project maintenance ifactory.</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Product Group</p></td><td style="text-align: left;" class="confluenceTd"><p>Product Group that belong to project that require for phase configuration.</p><ul style="text-align: left;"><li><span>The product group selection is displayed based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Current phase</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Phase that the selected project and product group currently at.</p><ul style="text-align: left;"><li><span>The phase selection is displayed based on the logged-on customer data partition.</span></li><li><span>Once saved, this field will be disabled.</span></li><li><span>This field can be enabled for changes if the authorized person clicks on the Phase Change button.</span></li><li><span>The customized phase is configured in phase maintenance screen that associated to the standard phase name.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Next Phase</td><td colspan="1" class="confluenceTd">Phase that project and product group going to switch  based on phase change effective date.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Phase Change Effective Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>When the phase change will take effect.</p><ul style="text-align: left;"><li><span>Mandatory if there is a change to the project phase.</span></li><li><span>This field will be enabled if the authorized person clicks on the Phase Change button.</span></li><li><span>This date also will determine when user need to do Phase change review on the sample and email triggering.</span></li><li><span>Only able to select current and future date.</span></li><li><span>phase change effective date will be removed if the phase is changed which passed the phase change effective date.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">EOL date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>When project and product group is going to end of life (EOL).</p><ul style="text-align: left;"><li><span>Mandatory if the selected phase's standard phase belong to MP</span><span> e</span><span>lse this field will be hidden.</span></li><li><span>Once saved, this field will be disabled.</span></li><li><span>This fields can be enabled if the authorized person clicks on the EOL extension button.</span></li><li><span>Once clicked on the EOL extension , user is allowed to select the future date not  backward date.</span></li><li><span>This date will determined when user need to do EOL review on the sample and email triggering.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional description can be entered in this field.</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Audit Log Tab</strong></td></tr><tr><th colspan="1" class="confluenceTh">Field </th><th colspan="1" class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Event</td><td colspan="1" class="confluenceTd"><p>There are only 2 events will be tracking in audit log.</p><ul style="text-align: left;"><li>Phase change – if the phase is changed and phase change effective date is provided.</li><li>EOL Extension – If the EOL date has changed.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Original Value</td><td colspan="1" class="confluenceTd"><p>Display the original value based on the event.</p><ul style="text-align: left;"><li>Phase change - Show the original phase value</li><li>Phase change – Show the original phase change effective date value</li><li>EOL Extension – Show the original EOL date value</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">New Value</td><td colspan="1" class="confluenceTd"><p>Display the new value based on the event.</p><ul style="text-align: left;"><li>Phase change - Show the new phase value</li><li>Phase change – Show the new phase change effective date value</li><li>EOL Extension – Show the new EOL date value</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Modified Datetime</td><td colspan="1" class="confluenceTd"><p>Display the modified datetime.</p></td></tr><tr><td colspan="1" class="confluenceTd">Modified by</td><td colspan="1" class="confluenceTd"><p>Display who modified the values</p></td></tr></tbody></table>


- #### **Upload via Template**

Bulk upload is allowed user to bulk upload Sample Location by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Project Phase Maintenance screen. The information in the bulk upload file will be validating.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">File</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li>Project ( Mandatory - String)</li><li>Product Group ( Mandatory - String)</li><li>Phase (Mandatory -String)</li><li>Phase Change Effective date ( Optional - date)</li><li>EOL Date ( Date -Mandatory if the Phase is associated to standard phase name =MP)</li><li>Description (Optional -String)</li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check  all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">System will check the provided project and product group is matched with the configuration that available in the system</span></li><li>System <span style="color: rgb(0,0,0);">will check</span> the provided phase name is available in the system.</li><li>System <span style="color: rgb(0,0,0);">will check</span> the provided phase change effective date and EOL date is current or forward date.</li><li>System <span style="color: rgb(0,0,0);">will check</span> the provided phase change effective date uploaded by authorized user who can perform phase change.</li><li>System <span style="color: rgb(0,0,0);">will check </span>the phase is associated to standard phase name =MP then only allow to upload EOL date else write the error.</li><li>System <span style="color: rgb(0,0,0);">will</span> create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system need to write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>


- System will check  all mandatory fields’ values for each line item are provided.


- System will check the provided project and product group is matched with the configuration that available in the system


- System
will check
the provided phase name is available in the system.
- System
will check
the provided phase change effective date and EOL date is current or forward date.
- System
will check
the provided phase change effective date uploaded by authorized user who can perform phase change.
- System
will check 
the phase is associated to standard phase name =MP then only allow to upload EOL date else write the error.
- System
will
create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)
- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system need to write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.
