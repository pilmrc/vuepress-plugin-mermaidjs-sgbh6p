# Introduction

It is a transit screen, the data comes from MDO and provides data sources for various functions of ToMS


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("PRODUCTION AND PROJECT DATA MAINTENANCE")

:::


#### **Permission（ToMS Application）** 



- Can view Production and Project Data Maintenance

- Can modify Production and Project Data Maintenance


#### **Screen Activity** 


Production and Project Data Maintenance enables user to perform the following activity:

- Create, view, update,soft delete and download


#### **Precondition** 



- Need to configure work cell and project in JGP master data

- Need to configure plant，process function，production area，production line，process and process step type in Ifactory


#### **Screen Dependency** 


The following screen(s) has dependency 

- Production and Project Data Maintenance

- Fixture Process


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against Plant, Workcell, Process Function,Project, Process combination.
When a record is deleted, the item will be soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Work Cell</p></td><td class="confluenceTd"><p>The list of selection is based on the logged-on Plant.</p></td></tr><tr><td class="confluenceTd"><p>Process function</p></td><td class="confluenceTd"><p>The list of selection is based on the selected Work Cell.</p></td></tr><tr><td class="confluenceTd"><p>Project</p></td><td class="confluenceTd"><p>The selection should be display based on the logged-on data partition.</p></td></tr><tr><td class="confluenceTd"><p>Process</p></td><td class="confluenceTd"><ul><li>Search Field</li><li>The search should display based on the selected process function.</li><li>The search window should allow user search for process.</li><li>Once process selected, then listed down all the process steps, production line, production area, floor and building for selection.</li><li>Allow user to select the process steps.</li><li>Once saved, then display all the selected process, process steps, production line, production area, floor and building at the list view.</li></ul></td></tr><tr><td class="confluenceTd"><p>Process Step</p></td><td class="confluenceTd"><p>View only</p></td></tr><tr><td class="confluenceTd"><p>Production Line</p></td><td class="confluenceTd"><p>View only</p></td></tr><tr><td class="confluenceTd"><p>Building</p></td><td class="confluenceTd"><p>View only</p></td></tr><tr><td class="confluenceTd"><p>Floor</p></td><td class="confluenceTd"><p>View only</p></td></tr><tr><td class="confluenceTd"><p>Production Area</p></td><td class="confluenceTd"><p>View only</p></td></tr><tr><td class="confluenceTd"><p>Active</p></td><td class="confluenceTd"><p>Default to Active</p></td></tr></tbody></table>

