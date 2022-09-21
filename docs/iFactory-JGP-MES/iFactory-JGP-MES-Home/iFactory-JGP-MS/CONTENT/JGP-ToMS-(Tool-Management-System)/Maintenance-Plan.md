# Introduction

Maintenance Plan is used to identify a fixture's maintenace record and trace


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("MAINTENANCE PLAN")

:::


#### **Permission（ToMS Application）** 



- Can view Maintenance Plan

- Can modify Maintenance Plan


#### **Screen Activity** 


Maintenance Plan enables user to perform the following activity:

- Create,soft delete, update, view,upload and download


#### **Precondition** 



- Need to configure work cell , process function in Production and Project Data Maintenance Screen

- Automatically select Plant upon Data Partition assignment


#### **Screen Dependency** 


The following screen(s) has dependency 

- Production and Project Data Maintenance


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against Maintenance Cycle ID.
When a record is deleted, the item will be soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Work Cell / Business Group</p></td><td class="confluenceTd"><ul><li>Mandatory field</li><li>The list of selection is based on the logged-on Plant.</li></ul></td></tr><tr><td class="confluenceTd"><p>Process Function</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>The list of selection is based on the selected Work Cell.</li></ul></td></tr><tr><td class="confluenceTd"><p>Maintenance Category</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Drop down list with 2 options: [Normal Maintenance | Weekly Maintenance]</li></ul></td></tr><tr><td class="confluenceTd"><p>Maintenance Cycle ID</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>String</li></ul></td></tr><tr><td class="confluenceTd"><p>Cycle Interval</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Allow only Numeric.</li></ul></td></tr><tr><td class="confluenceTd"><p>Interval Category</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Drop down list with condition:</li><ul><li>If Maintenance Category = Normal Maintenance, then show 2 options [H | D]</li><li>If Maintenance Category = Weekly Maintenance, then show 3 options [D | W | M]</li></ul></ul></td></tr><tr><td class="confluenceTd"><p>Lead Time (Day)</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li></ul><ul><li>Allow only Numeric.</li></ul></td></tr><tr><td class="confluenceTd"><p>Tolerance Time (Day)</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Allow only Numeric.</li></ul></td></tr><tr><td class="confluenceTd"><p>Triggering Mode</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Drop down list with 2 fix options = [Automatic | Manual]</li></ul></td></tr><tr><td class="confluenceTd"><p>Maintenance Start Date</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Prompt Calendar when select on field.</li></ul></td></tr><tr><td class="confluenceTd"><p>Maintenance Plan Status</p></td><td class="confluenceTd"><ul><li>Default value = Active</li><li>Drop down field with 2 options: [Active | Inactive]</li></ul></td></tr><tr><td class="confluenceTd"><p>DRI Selection</p></td><td class="confluenceTd"><ul><li>Mandatory if Maintenance Category = [Weekly Maintenance]</li><ul><li>Drop down with 3 options: [Non-Inspection | In-Line Inspection | Lab Inspection]</li></ul><li>If Maintenance Category = [Normal Maintenance], remove this field from the form.</li></ul></td></tr></tbody></table>

