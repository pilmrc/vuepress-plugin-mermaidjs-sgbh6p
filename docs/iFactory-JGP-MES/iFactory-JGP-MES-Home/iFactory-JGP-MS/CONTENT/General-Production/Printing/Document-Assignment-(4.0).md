# Introduction

In the production floor, various documents and labels are being printed. Each document configured can be assigned to a route step. User shall be able to configure the print trigger, print quantity and print sequence of the documents.

How to get there?
::: mermaid
graph LR
A("LABELS/PRINTERS")-->0("DOCUMENT ASSIGNMENT")

:::

**Precondition** 
The following items need to be pre-configured to assign document to a route step:

- Document

- Route Step Type

- Route




### Screen Activity


Document Assignment enables user to perform the following activity:

- Create, view, update and delete document assignments

- Configure the print quantity, print trigger and print sequence of the documents



#### Screen Dependency


The following screen(s) has direct dependency with document

- Document

- Route



Fields<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Scope</p></td><td class="confluenceTd"><p>The scope of the object that a document is to be associated against to be printed:</p><ul><li>Assembly Revision - All materials with the Assembly Revision selected would print the document</li><li>Material - All materials selected would print the document</li><li>Product Family - All materials associated to the Product Family selected would print the document</li><li>Container Type - All container type selected would print the document.</li><li>Order - All orders related to the customer selected would print the document.</li><li>Carrier Type - All carriers created would print the document (Only apply to 5.0) - Note selecting scope of "carrier type", available docs to select are filtered to "Carrier" type documents.</li><li>MSD Type – All MSD GRN related info would print the document.</li></ul></td></tr><tr><td class="confluenceTd">Applies To</td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);"><span style="color: rgb(51,51,51);">The specific value that identifies the object from the selected scope to print the document:</span></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(51,51,51);">Options to select depend on the selected scope.</span></span></p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh">Scope</th><th class="confluenceTh">Value to configure</th></tr><tr><td class="confluenceTd">Assembly Revision</td><td class="confluenceTd">Select a Assembly Number, Revision and Version</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">Select a Material Name and Plant Code</td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd">Select a Product Family name</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">Select a Container Type name</td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr><tr><td colspan="1" class="confluenceTd">Carrier Type</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr><tr><td colspan="1" class="confluenceTd">MSD Type</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd"><span>Print Trigger</span></td><td colspan="1" class="confluenceTd"><p>The specific point where a document is printed. Point selection depends on the Scope selected:</p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><br /></th><th class="confluenceTh"><p>Assembly Revision</p></th><th class="confluenceTh"><p>Material</p></th><th class="confluenceTh"><p>Product Family</p></th><th class="confluenceTh"><p>Container Type</p></th><th class="confluenceTh"><p>Order</p></th><th colspan="1" class="confluenceTh"><span style="color: rgb(0,0,128);">CarrierType</span></th><th colspan="1" class="confluenceTh">MSD Type</th></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Complete - Trigger when WIP is completed at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Pass - Trigger when WIP is completed with Pass status at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Start - Trigger when WIP is started at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Status Complete - Trigger when WIP Status is changed to Completed</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On Reserialization - Trigger when a Material is re-serialized</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On Assemble - Trigger when a Material is assembled in the Assemble screen</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><span>On Container Create - Trigger when a Container a created</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p>On Container Open - Trigger when a Container is opened. This is not applicable to the Lot Batch</p>(e.g. using in Receiving station to call external API when container open)</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><span>x</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Container Close - Trigger when a Container is closed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">On Container Hold - Trigger when a Container is put on hold</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Customer Order Complete - Trigger when a Customer </span><span>Order Status is changed to Completed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Delivery Complete - Trigger when a Delivery Order Status is changed to Completed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Delivery Release - Trigger when a Delivery Order is released</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><span>On Palletization Complete - Trigger when a Palletization is Completed.</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">On Carrier Create - Trigger when a Carrier is created.</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Lot Start - <span>Trigger when Lot is started at Route Step</span></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Super Lot Release - Trigger when super lot is released</td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Lot Complete - Trigger when lot is completed at a route step.</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bag Open</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bag Close</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Inside DryBox</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Outside DryBox</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bake In</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bake Out</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Demand</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd"><p>A user defined WIP attribute name may be optionally entered to further refine the Scope criteria. <br />This additional criterion is used when the Scope by itself is not detailed enough to specify when a document is to be printed. </p><p>Example:</p><p>If building Widgets for a customer, and a Widget can be either a Laser or non-Laser Widget, and Laser Widgets uses either a Red or Green Laser.</p><p>The customer defines the Product families of the Widget as “Widget” and “Laser Widgets”, but you need to print a special document only for Laser Widget that have green lasers. <br />Adding an Attribute Name of LaserType and a setting the Attribute Value to "Red" or “Green” will add the additional criterion to meet the customer printing requirements.  <br />Setting a “Product Family” of “Laser Widget” with a WIP Attribute of “LaserType” and Attribute Value to “Green” will print when this condition is met.  </p></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd"><p>A user defined WIP attribute value may be optionally entered to further refine the Scope criteria. It is required if Attribute Name is defined. <br />This additional criterion is used when the Scope is not enough detail to specify when a document is to be printed. <br />The Attribute Name and Attribute Value are required as a pair and used as a logical AND function with the 'Scope' / 'Applies To' pair. <br />The WIP attribute Name and Value would likely be set by the ngMES / Jabil Test script command. </p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route/version where this document will be printed</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>The route step where this document will be printed</p><p>If "On Super Lot Release" of Print Trigger is selected, Route Step will not be shown</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Document</span></td><td colspan="1" class="confluenceTd"><p>The document to be printed that has been configured in Document Maintenance.</p><p>If Route Step selected is belongs to Route with Process Step = Lot/Batch Build, Document will be filtered with Document Type = "CarrierContainer" and Applies to "Container Type" (Only Apply in 5.0)</p><p>If "On Lot Start" of Print Trigger is selected, Document will be filtered with Document Type = "Carrier"</p><p>If "On Super Lot Release" of Print Trigger is selected, Document will be filtered with Document Type = "Super Lot"</p><p>if "On Lot Complete" of Print Trigger is selected, Document will be filtered with Document Type = "Carrier"</p></td></tr><tr><td colspan="1" class="confluenceTd">Printer Type</td><td colspan="1" class="confluenceTd"><p>The printer type configured here needs to match the printer type of the printer that will be printing the document. <br />Mismatch or incorrect printer type setting here will result in no document being printed.</p><p>** If Scope = CarrierType, Printer Type selected should not assigned with any Resource.</p></td></tr><tr><td colspan="1" class="confluenceTd">Print Quantity</td><td colspan="1" class="confluenceTd">The quantity of the document to be printed</td></tr><tr><td colspan="1" class="confluenceTd">Print Sequence</td><td colspan="1" class="confluenceTd"><p>The sequence of the document to be printed</p><p>When user assigns multiple documents to the same Route and Route Step, user need to define the sequence for each document to be printed.</p></td></tr></tbody></table>

<table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh">Scope</th><th class="confluenceTh">Value to configure</th></tr><tr><td class="confluenceTd">Assembly Revision</td><td class="confluenceTd">Select a Assembly Number, Revision and Version</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">Select a Material Name and Plant Code</td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd">Select a Product Family name</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">Select a Container Type name</td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr><tr><td colspan="1" class="confluenceTd">Carrier Type</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr><tr><td colspan="1" class="confluenceTd">MSD Type</td><td colspan="1" class="confluenceTd">Select a Customer</td></tr></tbody></table>

Print TriggerThe specific point where a document is printed. Point selection depends on the Scope selected:

<table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><br /></th><th class="confluenceTh"><p>Assembly Revision</p></th><th class="confluenceTh"><p>Material</p></th><th class="confluenceTh"><p>Product Family</p></th><th class="confluenceTh"><p>Container Type</p></th><th class="confluenceTh"><p>Order</p></th><th colspan="1" class="confluenceTh"><span style="color: rgb(0,0,128);">CarrierType</span></th><th colspan="1" class="confluenceTh">MSD Type</th></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Complete - Trigger when WIP is completed at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Pass - Trigger when WIP is completed with Pass status at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Start - Trigger when WIP is started at Route Step</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On WIP Status Complete - Trigger when WIP Status is changed to Completed</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On Reserialization - Trigger when a Material is re-serialized</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><span>On Assemble - Trigger when a Material is assembled in the Assemble screen</span></td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td style="text-align: center;" class="confluenceTd">x</td><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><span>On Container Create - Trigger when a Container a created</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p>On Container Open - Trigger when a Container is opened. This is not applicable to the Lot Batch</p>(e.g. using in Receiving station to call external API when container open)</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><span>x</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Container Close - Trigger when a Container is closed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">On Container Hold - Trigger when a Container is put on hold</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Customer Order Complete - Trigger when a Customer </span><span>Order Status is changed to Completed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Delivery Complete - Trigger when a Delivery Order Status is changed to Completed</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><p><span>On Delivery Release - Trigger when a Delivery Order is released</span></p></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><span>On Palletization Complete - Trigger when a Palletization is Completed.</span></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">On Carrier Create - Trigger when a Carrier is created.</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Lot Start - <span>Trigger when Lot is started at Route Step</span></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Super Lot Release - Trigger when super lot is released</td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Lot Complete - Trigger when lot is completed at a route step.</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bag Open</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bag Close</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Inside DryBox</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Outside DryBox</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bake In</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On MSD Bake Out</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey">On Demand</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td style="text-align: center;" colspan="1" class="confluenceTd">x</td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table>






































































































































Attribute NameA user defined WIP attribute name may be optionally entered to further refine the Scope criteria. 

This additional criterion is used when the Scope by itself is not detailed enough to specify when a document is to be printed. Example:
If building Widgets for a customer, and a Widget can be either a Laser or non-Laser Widget, and Laser Widgets uses either a Red or Green Laser.
The customer defines the Product families of the Widget as “Widget” and “Laser Widgets”, but you need to print a special document only for Laser Widget that have green lasers. 

Adding an Attribute Name of LaserType and a setting the Attribute Value to "Red" or “Green” will add the additional criterion to meet the customer printing requirements.  
Setting a “Product Family” of “Laser Widget” with a WIP Attribute of “LaserType” and Attribute Value to “Green” will print when this condition is met.  Attribute ValueA user defined WIP attribute value may be optionally entered to further refine the Scope criteria. It is required if Attribute Name is defined. 

This additional criterion is used when the Scope is not enough detail to specify when a document is to be printed. 
The Attribute Name and Attribute Value are required as a pair and used as a logical AND function with the ‘Scope’ / ‘Applies To’ pair. 
The WIP attribute Name and Value would likely be set by the ngMES / Jabil Test script command. Route/VersionThe route/version where this document will be printedRoute StepThe route step where this document will be printed
If "On Super Lot Release" of Print Trigger is selected, Route Step will not be shown
DocumentThe document to be printed that has been configured in Document Maintenance.
If Route Step selected is belongs to Route with Process Step = Lot/Batch Build, Document will be filtered with Document Type = "CarrierContainer" and Applies to "Container Type" (Only Apply in 5.0)
If "On Lot Start" of Print Trigger is selected, Document will be filtered with Document Type = "Carrier"
If "On Super Lot Release" of Print Trigger is selected, Document will be filtered with Document Type = "Super Lot"
if "On Lot Complete" of Print Trigger is selected, Document will be filtered with Document Type = "Carrier"
Printer TypeThe printer type configured here needs to match the printer type of the printer that will be printing the document. 

Mismatch or incorrect printer type setting here will result in no document being printed.\*\* If Scope = CarrierType, Printer Type selected should not assigned with any Resource.
Print QuantityThe quantity of the document to be printedPrint SequenceThe sequence of the document to be printed
When user assigns multiple documents to the same Route and Route Step, user need to define the sequence for each document to be printed.
