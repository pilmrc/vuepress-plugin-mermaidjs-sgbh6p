# Introduction

Repair Station is

used to configure a repair location / repair physical location where the repair activities are performed at. 

### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS Configuration")-->0("Repair Station")

:::


#### **Permission ( Ifactory Application)** 



- Can view Repair Station


- Can modify Repair Station



#### **Screen Activity** 


Job Type Maintenance enables user to perform the following activity:

- Create, view, update and delete Repair Station records


#### **Screen Dependency** 


The following screen(s) has dependency with Repair Station.

- Production and Project Data Maintenance


#### **Screen Specification** 



- System will validate against duplicate record:

- The uniqueness lies against
Work Cell, Process Function & Repair Station combination.

- System allow user to download the template and perform upload for Repair Station.

When the Repair Station deleted, the 
item will besoft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

#### **Fields** 



<table class="relative-table confluenceTable" style="width: 53.8124%;"><colgroup><col style="width: 19.1821%;" /><col style="width: 80.8179%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Cell</p></td><td style="text-align: left;" class="confluenceTd"><p style="text-align: left;"><span style="letter-spacing: 0.0px;">Allow user to identify the Repair Station created for which work cell. </span></p><p style="text-align: left;"><span style="letter-spacing: 0.0px;">The drop down is sync from Production and Project Data Maintenance Screen.  </span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Process Function</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to identify the Repair Station created for which process function. </span></p><p><span style="color: rgb(23,43,77);">The drop down is sync from <span>Production and Project Data Maintenance Screen.  </span></span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Repair Station</p></td><td style="text-align: left;" class="confluenceTd"><p>Repair Station naming, <span style="color: rgb(0,0,0);">configure a repair location / repair physical location where the repair activities are performed at.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Repair Station's Description</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">Active / Inactive toggle button</td></tr></tbody></table>

