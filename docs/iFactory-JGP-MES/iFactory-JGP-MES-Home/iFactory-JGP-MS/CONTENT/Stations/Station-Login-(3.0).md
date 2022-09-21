# Introduction


This screen allows user to login to different Production Stations such as Analysis and Rework station, Assemble station, Quality Control station and others. Recent login stations will be displayed according to user's most recent activity. This will be very convenient for user to log into frequently visit stations by just clicking once instead of going through all the selection criteria.


### How to get there?





::: mermaid
graph LR
A("PRODUCTION")-->0("STATION LOGIN")

:::


#### Screen Activity


Station Login enables user to perform the following activity:

- Login to different Production Stations

- View recently login stations and select to login by just one click



#### Screen Dependency


The following screen(s) has direct dependency with Station Login

- *[Factory Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)*

- *[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)*

- *[Route Step Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*

- *[Resource Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)*

- *[Resource Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)*




#### Selection Criteria


<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Station Type</td><td class="confluenceTd">Select the Station Type of the production station. Example: Analysis and Rework, OBA, Quality Control, Packout and Assemble.</td></tr><tr><td class="confluenceTd"><a href="Factory-29918690.html">Factory</a></td><td class="confluenceTd">Select the factory of the station</td></tr><tr><td colspan="1" class="confluenceTd"><a href="Route-29919991.html">Route</a></td><td colspan="1" class="confluenceTd">Select the route of the station</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Select the route step of the station</td></tr><tr><td colspan="1" class="confluenceTd"><a href="Resources-Maintenance-29919982.html">Resource</a></td><td colspan="1" class="confluenceTd">Select the resource that will be utilized in the station</td></tr><tr><td colspan="1" class="confluenceTd">Login Button</td><td colspan="1" class="confluenceTd">This button will trigger the system to check user's authorization such as permission rights and certificate validity. If all passes, system will load the station's main screen.</td></tr><tr><td colspan="1" class="confluenceTd">Reset Button</td><td colspan="1" class="confluenceTd">This will clear all selection criteria selected by user</td></tr></tbody></table>




#### Recent Login Stations



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Select icon</td><td colspan="1" class="confluenceTd">This icon will trigger the system to login to the station</td></tr><tr><td class="confluenceTd"><p>Station Type</p></td><td class="confluenceTd"><p>Station Type of the production station</p></td></tr><tr><td class="confluenceTd"><p><a href="Factory-29918690.html">Factory</a></p></td><td class="confluenceTd"><p>Factory of the production station</p></td></tr><tr><td colspan="1" class="confluenceTd"><a href="Route-29919991.html">Route</a></td><td colspan="1" class="confluenceTd">Route of the production station</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Route step of the production station</td></tr><tr><td colspan="1" class="confluenceTd"><a href="Resources-Maintenance-29919982.html">Resource</a></td><td colspan="1" class="confluenceTd">Resource that is being utilized at the production station</td></tr><tr><td colspan="1" class="confluenceTd">Login Count</td><td colspan="1" class="confluenceTd">Total login occurrence of the user into that production station</td></tr><tr><td colspan="1" class="confluenceTd">Last Login Date</td><td colspan="1" class="confluenceTd">The most recent login date and time of the user into that production station</td></tr></tbody></table>

