# Introduction

NPI Fixture Drawing Number/version Maintenance is used to identify a fixture's drawing number and version


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("FIXTURE DRAWING NUMBER/VERSION MAINTENANCE")

:::


#### **Permission（ToMS Application）** 



- Can view NPI Fixture Drawing Number/version Maintenance

- Can modify NPI Fixture Drawing Number/version Maintenance


#### **Screen Activity** 


NPI Fixture Drawing Number/version Maintenance enables user to perform the following activity:

- Create, view, update,upgrade,soft delete, upload and download


#### **Precondition** 



- Need to configure plant , work cell , process function and project in JGP master data.

- Need to configure fixture process.


#### **Screen Dependency** 


The following screen(s) has dependency 

- Production and Project Data Maintenance

- Fixture Process


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against Plant, Workcell, Fixture Group Code,Version combination.
When a record is deleted, the item will be soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Work cell</p></td><td class="confluenceTd"><p>o   List for selection based on logged on plant.</p></td></tr><tr><td class="confluenceTd"><p>Process function</p></td><td class="confluenceTd"><p>o   List for selection based on the selected work cell.</p></td></tr><tr><td class="confluenceTd"><p>Production Type</p></td><td class="confluenceTd"><p>o   Value: Auto or manual</p></td></tr><tr><td class="confluenceTd"><p>Fixture Group Code</p></td><td class="confluenceTd"><p>o   Combine with Project-Fixture process -Fixture drawing number</p><p>o   Fixture drawing number no more than 4 characters</p><p>o   Example: AK-AAF-AM14</p></td></tr><tr><td class="confluenceTd"><p>Version</p></td><td class="confluenceTd"><p>o   Only accept Alphabet.  (A -Z)</p></td></tr><tr><td class="confluenceTd"><p>Require Customer Authorization</p></td><td class="confluenceTd"><p>o   Value: Yes or No ( Default to NO)</p></td></tr><tr><td class="confluenceTd"><p>Fixture Name</p></td><td class="confluenceTd"><p>o   Additional description for the Fixture Process can be entered in this field.</p></td></tr><tr><td class="confluenceTd"><p>Inspection Requirement</p></td><td class="confluenceTd"><p>o   Value: Cosmetic inspection, Cosmetic + Dimension Inspection</p></td></tr><tr><td class="confluenceTd"><p>Internal Inspection Specification</p></td><td class="confluenceTd"><p>o   Support user upload template(in CSV UTF-8 format)</p></td></tr><tr><td class="confluenceTd"><p>L/Q Dimension Specification</p></td><td class="confluenceTd"><p>o   Support user upload template(in CSV UTF-8 format)</p></td></tr></tbody></table>



#### **Internal Inspection Specification& L/Q Dimension Specification** 


Upload template
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Sequence number</p></td><td class="confluenceTd"><p>Serial number</p></td></tr><tr><td class="confluenceTd"><p>Dimension code</p></td><td class="confluenceTd"><p>Define by user and cannot be repeated</p></td></tr><tr><td class="confluenceTd"><p>Nominal</p></td><td class="confluenceTd"><p>support up to 6 decimal</p></td></tr><tr><td class="confluenceTd"><p>Upper</p></td><td class="confluenceTd"><p>support up to 6 decimal</p></td></tr><tr><td class="confluenceTd"><p>Lower</p></td><td class="confluenceTd"><p>support up to 6 decimal</p></td></tr><tr><td class="confluenceTd"><p>USL</p></td><td class="confluenceTd"><p>support up to 6 decimal</p></td></tr><tr><td class="confluenceTd"><p>LSL</p></td><td class="confluenceTd"><p>support up to 6 decimal</p></td></tr><tr><td class="confluenceTd"><p>Measurement Equipment </p></td><td class="confluenceTd"><p>Define by user</p></td></tr></tbody></table>

