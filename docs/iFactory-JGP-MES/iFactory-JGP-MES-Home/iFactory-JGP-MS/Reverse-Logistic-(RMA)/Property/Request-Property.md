# Introduction

Request Property provides 
an attribute, quality, or characteristic of an RMA Request.

It can be used for addition of RMA Request information that is specific per Site or Customer so is not part of standard RMA Request header. 


### How to get there?




::: mermaid
graph LR
A("PROPERTY")-->0("REQUEST PROPERTIES")

:::


#### Screen Activity


Request Property enables user to perform the following activity:

- Create, view, update and delete request properties.

- Activate and deactivate Request Property.

Pre Condition
N/A



#### Screen Dependency


The following screen(s) has direct dependency with Failure Categories:

- Request Creation

- Request Review

- Request Receipt



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="RequestProperty-Scope"><strong>Scope</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Site</p></td><td class="confluenceTd"><p>This is optional, to indicate the Request Property belongs to specific Site.</p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p>To indicate the Request properties belongs to specific Customer/Division.</p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RequestProperty-Configuration">Configuration</h5></td></tr><tr><td colspan="1" class="confluenceTd">Name*</td><td colspan="1" class="confluenceTd">The unique name given to the Request Property.</td></tr><tr><td colspan="1" class="confluenceTd">Is Required</td><td colspan="1" class="confluenceTd">If a RMA request Property is required, should be filled before an RMA is Accepted.</td></tr><tr><td colspan="1" class="confluenceTd">Active Status</td><td colspan="1" class="confluenceTd">Can be Activate (ON), Inactivate (OFF), By default is Activate.</td></tr><tr><td colspan="1" class="confluenceTd">Property Text*</td><td colspan="1" class="confluenceTd"><p>Exists 3 types of Request Item properties:</p><p><strong>Text:</strong> This is a free text with a maximum of 200 characters.</p><p><strong>List: </strong>Whit this type can create a fixed list of possibilities.</p><p><strong>Mask: </strong>This help to apply a validation mask to the free text using a Regular Expression:</p></td></tr><tr><td colspan="1" class="confluenceTd">Regular Expression*</td><td colspan="1" class="confluenceTd"><p>This is only available when Property text = Mask.</p><p>The single character or a group of brackets containing ranges and sets of characters that made up the validation mask. <br />User entries are validated by selecting one character from each bracketed group as well as literal characters. </p><p><em>Example:</em></p><p><strong>Regular Expression:</strong>  S[2-4][A,Z,E]</p><p>Accepted values are S2A, S2Z, S2E, S3A, S3Z, S3E, S4A, S4Z, S4E</p></td></tr><tr><td colspan="1" class="confluenceTd">Rework</td><td colspan="1" class="confluenceTd">If this is "ON" the Request property will be available for "Rework" RMA type.</td></tr><tr><td colspan="1" class="confluenceTd">Return</td><td colspan="1" class="confluenceTd">If this is "ON" the Request property will be available for"Return" RMA type.</td></tr><tr><td colspan="1" class="confluenceTd">Upgrade</td><td colspan="1" class="confluenceTd">If this is "ON" the Request property will be available for "Upgrade" RMA type.</td></tr></tbody></table>


