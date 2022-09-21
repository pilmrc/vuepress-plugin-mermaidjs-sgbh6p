# Introduction

Lot Maintenance is to maintain a Lot to assign Lot Attribute, edit the changes of the existing Lot Attribute or to remove the existing Lot Attribute. 
This screen is restricted to user with permission. 


### How to get there?



::: mermaid
graph LR
A("LOT MAINTENANCE")
:::


#### Permission



- Lot Maintenance - Can Access to Lot Maintenance

- Lot - Lot Move - Can Access to Lot Move tab


#### Screen Activity


Lot Maintenance enables the user to perform the following activity:

- Add Lot Attribute

- Update Lot Attribute

- Remove Lot Attribute

- View history of the performed action (Audit Log)

- Manually move Lot from one Route Step to previously completed Route Step



#### Pre-Condition



- Permission - Can Access Lot/Batch Build " Lot Maintenance (Can Access to Lot Maintenance)

- Lot is released to a Carrier

- Only unique Lot Attribute name and Value can be added

- Lot is not started at any Route Step

- Lot is not placed on hold

- Planned order for the Lot is not on hold

- Lot is not packed into a container


#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 15.5668%;" /><col style="width: 84.4332%;" /></colgroup><tbody><tr><th style="width: 15.6382%;" class="confluenceTh">Field</th><th style="width: 84.3618%;" class="confluenceTh">Description</th></tr><tr><td style="text-align: center;width: 100.0%;" colspan="2" class="confluenceTd">Lot Attribute</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Add Lot Attribute</td><td style="width: 84.3618%;" class="confluenceTd"><span style="color: rgb(23,43,77);">Add a new attribute (multiple value allowed) to the lot</span></td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Edit</td><td style="width: 84.3618%;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Update the existing Lot Attribute value</span></p><p><span style="color: rgb(23,43,77);">User is unable to edit the Lot Attribute value if is system assigned (e.g. "Internal Batch Number" attribute name)</span></p></td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Delete</td><td style="width: 84.3618%;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Delete the existing Lot Attribute Name and Value<br /></span></p><p><span style="color: rgb(23,43,77);">User is unable to delete the existing Lot Attribute if is system assigned (e.g. "Internal Batch Number" attribute name)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">Name of the lot attribute. I<span style="color: rgb(23,43,77);">f user tries to add an attribute with the name "Internal Batch Number", system will prompt warning mes</span><span style="color: rgb(0,51,102);">sage. "Internal Batch Number" is a restricted attribute name for lot and it cannot be configured manually by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd">Value for the attribute name.</td></tr><tr><td style="text-align: center;width: 100.0%;" colspan="2" class="confluenceTd">Audit Log</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Event</td><td style="width: 84.3618%;" class="confluenceTd">The action perform to the lot</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Original Value</td><td style="width: 84.3618%;" class="confluenceTd">Value recorded before the change</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">New Value</td><td style="width: 84.3618%;" class="confluenceTd">Value recorded after the change or the newly added value</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Action</td><td style="width: 84.3618%;" class="confluenceTd"><span style="color: rgb(23,43,77);">Add, Update, Delete and Move Lot</span></td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Updated At</td><td style="width: 84.3618%;" class="confluenceTd">The time when the lot event is updated</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Updated By</td><td style="width: 84.3618%;" class="confluenceTd">The user that updated the lot event</td></tr><tr><td style="width: 15.6382%;" class="confluenceTd">Comment</td><td style="width: 84.3618%;" class="confluenceTd">Comment recorded when action perform</td></tr><tr><td style="text-align: center;width: 100.0%;" colspan="2" class="confluenceTd">Lot Move</td></tr><tr><td style="width: 15.6382%;text-align: left;" class="confluenceTd"><p>In Queue Route / Route Step</p></td><td style="width: 84.3618%;text-align: left;" class="confluenceTd"><p>Carrier, Lot or Internal Batch Number current in queue Route and Route Step</p></td></tr><tr><td style="width: 15.6382%;text-align: left;" class="confluenceTd"><p>Route Step</p></td><td style="width: 84.3618%;text-align: left;" class="confluenceTd">Search a Route Step that the Carrier started/completed before</td></tr><tr><td style="text-align: left;width: 15.6382%;" class="confluenceTd">Lot Comment</td><td style="text-align: left;width: 84.3618%;" class="confluenceTd">Mandatory field to enter comment for Lot Move</td></tr><tr><td style="text-align: left;width: 15.6382%;" class="confluenceTd">Move</td><td style="text-align: left;width: 84.3618%;" class="confluenceTd">Only available when a Route Step selected and move the Carrier to the selected Route Step</td></tr><tr><td style="text-align: left;width: 15.6382%;" class="confluenceTd">Cancel</td><td style="text-align: left;width: 84.3618%;" class="confluenceTd">Close Carrier Maintenance Screen and go back to Carrier Menu</td></tr></tbody></table>


