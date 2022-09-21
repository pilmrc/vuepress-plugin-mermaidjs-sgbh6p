# Introduction

The Container View Report is used to view container details and contents packed into the container in real time.



### How to get there?





::: mermaid
graph LR
A("REPORT")-->0("CONTAINER VIEW REPORT")

:::


#### Selection Criteria



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Specify the Customer. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number</td><td colspan="1" class="confluenceTd"><span>Specify the Delivery Number. Multiple selection is available<br />If Customer is selected, only the Delivery Number(s) associated to the Customer is available for selection </span></td></tr><tr><td colspan="1" class="confluenceTd">Container Name</td><td colspan="1" class="confluenceTd"><p><span>Specify the Container. Multiple selection is available<br /><span>If Customer and/or Delivery Number are selected, only the Container Name(s) associated to the Customer and Delivery Number are available for selection</span> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd">Clear the report and all the selection criterias</td></tr><tr><td colspan="1" class="confluenceTd">Generate Button</td><td colspan="1" class="confluenceTd">Generates the container view report once all mandatory fields are selected</td></tr><tr><td colspan="1" class="confluenceTd">Print Button</td><td colspan="1" class="confluenceTd">Prints the generated container view report</td></tr></tbody></table>





#### Report Fields




<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd">Header</td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Report Date</td><td colspan="1" class="confluenceTd">The date time when the container report or the parent container is generated.</td></tr><tr><td colspan="1" class="confluenceTd">Container Name</td><td colspan="1" class="confluenceTd">The unique name given to the container</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">The <a class="createlink" href="/pages/createpage.action?spaceKey=IJM&title=Container+Type+%283.0%29&linkCreation=true&fromPageId=29919838">container type</a> for the container</td></tr><tr><td colspan="1" class="confluenceTd">Created Date</td><td colspan="1" class="confluenceTd">The date and time where the container is created</td></tr><tr><td colspan="1" class="confluenceTd">Parent Container</td><td colspan="1" class="confluenceTd">If the container has a parent (packed in another container), user can click on the parent container name to view the parent's container report</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The customer where the container belongs</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number</td><td colspan="1" class="confluenceTd">The delivery number where the container is created. The Delivery Number hyperlink will bring user to the <a href="Customer-Order-29918754.html">Customer Order WIP Release Management</a> screen</td></tr><tr><td colspan="1" class="confluenceTd">Items Count</td><td colspan="1" class="confluenceTd">The total count of items packed into the container</td></tr><tr><td colspan="1" class="confluenceTd">Container Status</td><td colspan="1" class="confluenceTd">Displays the container status whether it is currently "Open", "Close", "Scrapped" or "Shipped"</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd">Grid</td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material packed into the container</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number/Inventory ID</td><td colspan="1" class="confluenceTd"><ul><li>If Phoenix material type is "WIP", this field displays the WIP's Serial Number. The WIP Serial Number will be hyperlinked to the Serial Number's WIP View report</li><li>If Phoenix material type is "Serialized Material", this field displays the Serial Number of the material</li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">If Phoenix material type is "Unserialized Material", this field displays "NA"</span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">If Phoenix material tyoe is "Inventory ID", this field displays the Inventory ID of the material </span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">If Phoenix material type is "Container, this field dislays the Container Name</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The quantity of the material packed into the container</td></tr><tr><td colspan="1" class="confluenceTd">Material Type</td><td colspan="1" class="confluenceTd"><p>Phoenix material type is configured in <a href="Material-29919417.html">Material Maintenance</a>. Currently, there are 5 types of Phoenix material types:</p><ul><li>WIP</li><li>Serialized Material</li><li>Unserialized Material</li><li>Inventory ID</li><li>Container</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The Route where the item is packed</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The Route Step where the item is packed</span></td></tr><tr><td colspan="1" class="confluenceTd">Packed Date</td><td colspan="1" class="confluenceTd">The date time when the item is packed</td></tr><tr><td colspan="1" class="confluenceTd">User ID</td><td colspan="1" class="confluenceTd">The user that packed the item into the container</td></tr><tr><td colspan="1" class="confluenceTd">Container Attachments</td><td colspan="1" class="confluenceTd">Displays all the attachment link(s) if there are attachment collected for the container during packout</td></tr></tbody></table>


