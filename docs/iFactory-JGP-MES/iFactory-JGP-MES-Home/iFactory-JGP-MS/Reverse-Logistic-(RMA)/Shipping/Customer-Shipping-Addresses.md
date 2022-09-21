# Introduction

Jabil can return customer’s RMA items to this address after RMA work completion. Each customer shipping address is specific to particular Customer/Division at Jabil Site.

Customer Shipping Address is required for RMA Requests with "Rework" and "Upgrade" types.

### How to get there?



::: mermaid
graph LR
A("SHIPPING")-->0("CUSTOMER SHIPPING ADDRESS")

:::


#### Screen Activity


Customer Shipping Addresses enables user to perform the following activity:

- Create, view, update and delete
Customer Shipping Addresses
Pre Condition
N/A



#### Screen Dependency



The following screen(s) has direct dependency with Failure Categories:
- Request Creation

- Request Review

- Request Receipt


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="CustomerShippingAddresses-CustomerShippingAddress."><strong>Customer Shipping Address. </strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Site*</p></td><td class="confluenceTd"><p><span>To indicate the Customer Shipping Address belongs to specific customer Site.</span></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p><span>To indicate the</span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;"> Customer Shipping Address applies to specific Customer/Division.</span></p></td></tr><tr><td class="confluenceTd"><p>Description*</p></td><td class="confluenceTd"><p><span>The description of the <span>Customer Shipping Addresses</span> can be entered here. <br />It can be useful for the selection of a proper Customer Shipping Address.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Phone number</td><td colspan="1" class="confluenceTd"><span>The customer building phone number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Fax number</td><td colspan="1" class="confluenceTd"><span>The customer building fax number number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Street1* to Street4</td><td colspan="1" class="confluenceTd"><span>The streets customer building can be entered here. At least one street is mandatory to fill in.</span></td></tr><tr><td colspan="1" class="confluenceTd">Town*</td><td colspan="1" class="confluenceTd">The town where the building resides.</td></tr><tr><td colspan="1" class="confluenceTd">City</td><td colspan="1" class="confluenceTd"><span>The city where the building resides. </span></td></tr><tr><td colspan="1" class="confluenceTd">State/Region</td><td colspan="1" class="confluenceTd"><span>The State/Region where the building resides. </span></td></tr><tr><td colspan="1" class="confluenceTd">Country*</td><td colspan="1" class="confluenceTd"><span>The Country where the building resides. </span></td></tr><tr><td colspan="1" class="confluenceTd">Postal Code</td><td colspan="1" class="confluenceTd">The zip code of the customer building.</td></tr></tbody></table>


Street1\* to Street4The streets customer building can be entered here. At least one street is mandatory to fill in.Town\*The town where the building resides.CityThe city where the building resides. State/RegionThe State/Region where the building resides. Country\*The Country where the building resides. Postal CodeThe zip code of the customer building.

