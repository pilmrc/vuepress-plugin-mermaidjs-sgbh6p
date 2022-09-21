# Introduction

The Carrier View is intended to provide the general details about the Carrier and a history of the Lot assignments for the Carrier that have occurred over time. The Carrier is used as a material transport typically with in the factory.


### How to get there?



::: mermaid
graph LR
A("CARRIER VIEW")
:::


#### Permission


1. View Carrier Detail - Allows the user to 
view details about Carrier


#### Screen Activity


Carrier View screen enables user to perform the following activity:

- View Carrier general details

- View the Lot(s) that have been assigned to the Carrier over time

- Open a Lot View screen for Lots that have been assigned for Lot specific details


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures [Item/Module you are writing]

- A Carrier must have been Created from
Create Carrierto see the general details of a Carrier
- A Lot must have had a Carrier assigned during
Lot Release

#### Screen Dependency


Carrier View

- Create Carrier

- Lot Release
![image2020-12-1_14-6-11.png](/.attachments/82903727.png)




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>General Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Carrier Search</p></td><td style="text-align: left;" class="confluenceTd"><p>The Carrier Serial Number, user enters to perform a search and retrieval. Exact match, partial match, and wild card searches are supported</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(45,46,47);">Carrier Serial Number</span></p></td><td style="text-align: left;" class="confluenceTd"><p>The specific Carrier Serial Number</p></td></tr><tr><td colspan="1" class="confluenceTd">Carrier Template</td><td colspan="1" class="confluenceTd">The specific carrier template used to create the Carrier</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rows</p></td><td style="text-align: left;" class="confluenceTd"><p>The number of Rows the Carrier is defined to have</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Columns</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The number of Columns the Carrier is defined to have</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Size</p></td><td style="text-align: left;" class="confluenceTd"><p>The size or capacity of the Carrier (Rows x Columns = Size)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Status</p></td><td style="text-align: left;" class="confluenceTd"><p>The Carrier Status ( one of these; Unassigned, Assigned, Packed, Retired )</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Maximum Cycles</td><td style="text-align: left;" colspan="1" class="confluenceTd">The number of times that this Carrier is permitted to be used. Meaning the number of cycles from UnAssigned to Assigned<span> </span><span>... back to </span>Unassigned</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd">Which Customer this Carrier was labeled and configured for</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Actual Uses</td><td style="text-align: left;" colspan="1" class="confluenceTd">The number of actual uses the Carrier has gone through.<span> </span><span>from UnAssigned to Assigned ... back to Unassigned</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Container</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Container Number when Carrier is packed</td></tr></tbody></table>



#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Lot Assignment Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Lot ID</td><td colspan="1" class="confluenceTd">The Lot number that the Carrier has been assigned. Carriers may be reused and a list of multiple Lots may occur over time. A hyperlink exists to open the Lot View for the Lot</td></tr><tr><td class="confluenceTd"><p>Assigned Lot</p></td><td class="confluenceTd"><p>The Internal Batch Number that the Carrier has been assigned</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Assigned Date / Time</span></p></td><td class="confluenceTd"><p>The Date time that the Lot was Assigned to the Carrier</p></td></tr><tr><td colspan="1" class="confluenceTd">Unassigned Date / Time</td><td colspan="1" class="confluenceTd">The Date time that the Lot was Unassigned to the Carrier</td></tr></tbody></table>



#### Attachments

[image2020-12-1_14-5-51.png](/.attachments/82903725.png)
[image2020-12-1_14-6-11.png](/.attachments/82903727.png)
[image2020-12-1_14-7-50.png](/.attachments/82903729.png)
[image2020-12-1_14-9-6.png](/.attachments/82903731.png)
