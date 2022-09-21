# Introduction

Alternative name is a name which can be used other than the iFactory Route Step Name. Multiple Route step from different Route can be associated to a same Alternative Name. Route Step associated could be identified and referred by different scope. 


### How to get there?



::: mermaid
graph LR
A("ROUTE")-->0("Route step alternative name")

:::


#### Screen Activity


Screen enables user to perform the following activity:

- Add / Update / Delete / Clear Actions for Alternative name

- Associate iFactory Route and Route Steps to Alternative Name

- Update / Delete associated Route Step


#### Dependent Access Required



- "Can Access NG" " "Route Step Alternative Name" " "Can Access
Route Step Alternative Name
"
- "Can Access NG" " "Route Step Alternative Name" " "
Can Modify Route Step Alternative Name
"
- "Production Configuration" " "Route" " "Read Route"


#### Fields 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">General Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Alternative Name</td><td style="text-align: left;" class="confluenceTd">Name is referring by other scope. This can be referred as an alternative name by a group of iFactory Route Step name. </td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Description</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>This to help user to understand the usage of the alternative name.</span></td></tr><tr><td colspan="1" class="confluenceTd">Add</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">No redundant Alternative Name can be created. Once the “Alternative Name” is found or added, “+” button is enabled to allow user to add new route step name. After the "+" clicked, system to allow user to fill up Route Name, Route Step Name and Scope. All fields are mandatory.</span></td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Once Alternative Name deleted, all the associated Route steps will be disassociated from the alternative name. Delete is to remove the entire Alternative Name details as well as the Route step associated.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Route should be filtered by the customer associated to the User. T</span></span>he search screen for route will show by default the Active Route/Version, but as option the user can also filter for Route/Version that is in Inactive or New status.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Route Step should be filtered by the Route/Version.</span></td></tr><tr><td colspan="1" class="confluenceTd">Scope</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scope is a free Text and identified as reference of system or modules.</span></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Indicate the route step is still valid to use and it is set as "Off" by Default.</span></td></tr><tr><td colspan="1" class="confluenceTd">Associated Route Step</td><td colspan="1" class="confluenceTd">Route, Route Step and Scope should be identified uniquely. Delete and Update action are available.</td></tr></tbody></table>

