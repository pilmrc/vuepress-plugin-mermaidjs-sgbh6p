# Introduction

When user


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("TOOL TYPE")

:::


#### **Permission ( ToMS Application)** 



- Tool Type maintenance


- Can modify Tool Type



#### **Screen Activity** 


Job Type Maintenance enables user to perform the following activity:

- Create, view, update , delete  and download vendor records


#### **Screen Dependency** 



- NA


#### **Fields** 



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Tool Type</p></td><td class="confluenceTd"><ul><li>Allows user to select the general function of the tool type</li><li>Tool type is defined in advance as follows<ul><li style="text-align: left;">Cutter</li><li style="text-align: left;">Feeder</li><li style="text-align: left;">Fixture</li><li style="text-align: left;">Golden Sample</li><li style="text-align: left;">Inspection Tool</li><li style="text-align: left;">Jig</li><li style="text-align: left;">Manufacturing Equipment</li><li style="text-align: left;">Manufacturing Tool/Device</li><li style="text-align: left;">Measuring Equipment</li><li style="text-align: left;">Measuring Tool/Device</li><li style="text-align: left;">Molding</li><li style="text-align: left;">Stencil</li><li style="text-align: left;">Test Device</li><li style="text-align: left;">Test Equipment</li><li style="text-align: left;">Torque Driver</li></ul></li></ul></td></tr><tr><td class="confluenceTd"><p>Tool Type Description</p></td><td class="confluenceTd"><ul><li>Additional description for the Tool Type can be entered in this field</li></ul></td></tr></tbody></table>


- #### **Screen Specification**

System will validate against duplicate record:

- Tool type is a unique code to identify a supplier.

- If there is any error in the application, system should return error .

