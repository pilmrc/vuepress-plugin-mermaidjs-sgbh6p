# Introduction

Fixture Process is

used to identify the fixture process in fixture drawing number and version maintenance.

### How to get there?



::: mermaid
graph LR
A("TOMS Configuration")-->0("FIXTURE Process Maintenance")

:::


#### **Permission ( ToMS Application)** 



- Fixture Process Maintenance


- Can modify fixture process maintenance



#### **Screen Activity** 


Fixture Process Maintenance enables user to perform the following activity:

- Create, view, update, delete and download Fixture Process records


#### **Precondition** 


Need to configure plant in JGP master data.


#### **Screen Dependency** 


The following screen(s) has dependency with Fixture Process.

- Production and Project Data Maintenance

- Fixture drawing number and version maintenance

- Fixture View


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against
Plant, Production Type, Fixture Process combination.
When the Fixture Process deleted, the 
item will besoft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Production Type</p></td><td style="text-align: left;" class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(23,43,77);">Allows user to define the purpose of fixture process.</span></p><p style="text-align: left;"><span style="color: rgb(23,43,77);">The available production types for selection are Auto and Manual. </span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Fixture Process Name</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The unique name given to the Fixture Process. Ensure the Fixture Process is unique by Plant, Production Type, Fixture Process.</span></p><p><span style="color: rgb(23,43,77);">Only accept Alphabet (A-Z) and no more than 3 characters.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Fixture Process Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description for the Fixture Process can be entered in this field.</p></td></tr></tbody></table>

