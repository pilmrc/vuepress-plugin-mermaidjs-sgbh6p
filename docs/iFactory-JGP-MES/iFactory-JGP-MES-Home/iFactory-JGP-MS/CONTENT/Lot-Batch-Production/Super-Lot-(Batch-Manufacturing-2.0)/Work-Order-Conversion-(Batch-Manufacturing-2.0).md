# Introduction

Planned Order Conversion is performed to move Lot from one planned order to another planned order. This screen basically converts the Lot to inherit properties from the new Planned Order. When the Lot is successfully converted in the system, user will scan the converted Lots into the assemble station (normally an ad-hoc assemble station) to physically remove or add materials to complete the Lot transformation.


### How to get there?



::: mermaid
graph LR
A("PLANNED ORDER CONVERSION")
:::


#### Screen Activity


Planned Order Conversion enables user to perform the following activity:

- Convert Lot from one planned order to another planned order


#### Pre Condition


In order to perform a successful Planned Order Conversion, the following rules must be met:

Note: **Source Planned Order** signifies the order to transfer out Lots while**Destination Planned Order** signifies the order that will receive the Lots.
- Source Planned Order must be in one of the following status "In Progress", "Completed" and "Cancelled"

- Destination Production Order must be in one of the following status "Ready" and "In Progress"

- Destination Planned Order assigned must be in the same route as the Source Planned Order

- Destination Planned Order must have the same product with Source Planned Order.

- The Source Planned Order's SuperLot with the following status are not available for conversion:



- on Hold

- In Progress but consists of partial lot which is "Completed" status

- Completed

- In Progress but consists of partial lot which is "Hold" status

- In Progress but consists of partial lot which is "Packed" status

- The Source Planned Order's SuperLot with the following status is available for conversion:

- In Progress

- New


#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 21.1506%;" /><col style="width: 78.8494%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Carrier / Internal Batch Number (IBN) / Super Lot</td><td class="confluenceTd">Allow user to scan the Carrier / Internal Batch Number / Super Lot based on the radio button selected</td></tr><tr><td class="confluenceTd">Material Name</td><td class="confluenceTd">Material Name of the scan carrier / Internal Batch Number / Super Lot</td></tr><tr><td class="confluenceTd">Order Numbers</td><td class="confluenceTd">Planned Order of the scan carrier / Internal Batch Number / Super Lot</td></tr><tr><td class="confluenceTd">Quantity in Super Lot</td><td class="confluenceTd">Total lot of the Super Lot of the scan carrier / Internal Batch Number / Super Lot</td></tr><tr><td class="confluenceTd">Planned Order</td><td class="confluenceTd">List the Planned Order available for the conversion</td></tr><tr><td colspan="1" class="confluenceTd">Material Name</td><td colspan="1" class="confluenceTd">Material Name of the selected Planned Order</td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd">Planned Order name of the selected Planned Order</td></tr><tr><td colspan="1" class="confluenceTd">Order Quantity</td><td colspan="1" class="confluenceTd">Total quantity of the selected Planned Order</td></tr><tr><td colspan="1" class="confluenceTd">Remaining Quantity</td><td colspan="1" class="confluenceTd">Remaining quantity of the selected Planned Order</td></tr><tr><td colspan="1" class="confluenceTd">Transfer</td><td colspan="1" class="confluenceTd">Execute the conversion</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Cancel the conversion and return to the order conversion page</td></tr></tbody></table>

