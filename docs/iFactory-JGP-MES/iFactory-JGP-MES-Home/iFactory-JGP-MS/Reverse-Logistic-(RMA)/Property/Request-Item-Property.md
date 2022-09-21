# Introduction

Request Item Property provides 
an attribute, quality, or characteristic of an RMA Item.

It can be used for addition of RMA Item information that is specific per Site or Customer so is not part of standard RMA Item details. 

### How to get there?




::: mermaid
graph LR
A("PROPERTY")-->0("REQUEST ITEM PROPERTIES")

:::


#### Screen Activity


Request Item Property enables user to perform the following activity:

- Create, view, update and delete request item properties.

- Activate or Deactivate Item Property.

Pre Condition
N/A



#### Screen Dependency


The following screen(s) has direct dependency with Failure Categories:

- Request Creation

- Request Review

- Request Receipt


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="RequestItemProperty-PropertyItemScope"><strong>Property Item Scope</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Site</p></td><td class="confluenceTd"><p><span>This is optional ("All Sites"), to indicate the Request Item Property belongs to specific Site.</span></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p><span>To indicate </span><span>the Request Item Property belongs to</span><span> specific Customer/Division.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span>This is optional, to indicate that the scope for the Request Item property is </span><span>specific for the assembly.</span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RequestItemProperty-Configuration">Configuration</h5></td></tr><tr><td colspan="1" class="confluenceTd">Name*</td><td colspan="1" class="confluenceTd"><span>The unique name given to the Request Item Property.</span></td></tr><tr><td colspan="1" class="confluenceTd">Is Required</td><td colspan="1" class="confluenceTd">If a RMA request Item Property is required, should be filled before an RMA is Accepted.</td></tr><tr><td colspan="1" class="confluenceTd">Active Status</td><td colspan="1" class="confluenceTd"><span>Can be Active (ON), Inactive (OFF), By default is Activated.</span></td></tr><tr><td colspan="1" class="confluenceTd">Property Text*</td><td colspan="1" class="confluenceTd"><p>Exists 3 types of Request Item properties:</p><p><strong>Text:</strong> This is a free text with a maximum of 200 characters.</p><p><strong>List: </strong>With this type you can create a fixed list of values.</p><p><strong>Mask: </strong>This help to apply a validation mask to the free text using a Regular Expression.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Regular Expression*</span></td><td colspan="1" class="confluenceTd"><p>This is only available when Property Type is "Mask".</p><p>The single character or a group of brackets containing ranges and sets of characters that made up the validation mask. <br />User entries are validated by selecting one character from each bracketed group as well as literal characters. </p><p><a href="https://en.wikipedia.org/wiki/Regular-expression#POSIX-extended" class="external-link" rel="nofollow">https://en.wikipedia.org/wiki/Regular-expression#POSIX-extended</a></p><p><em>Example:</em></p><p><strong>Regular Expression:</strong>  S[2-4][A,Z,E]</p><p>Accepted values are S2A, S2Z, S2E, S3A, S3Z, S3E, S4A, S4Z, S4E</p></td></tr><tr><td colspan="1" class="confluenceTd">Rework</td><td colspan="1" class="confluenceTd">If this is ON the Request Item property will be available for this RMA type.</td></tr><tr><td colspan="1" class="confluenceTd">Return</td><td colspan="1" class="confluenceTd"><span>If this is ON the Request Item property will be available for this RMA type. </span></td></tr><tr><td colspan="1" class="confluenceTd">Upgrade</td><td colspan="1" class="confluenceTd"><span>If this is ON the Request Item property will be available for this RMA type. </span></td></tr></tbody></table>


https://en.wikipedia.org/wiki/Regular_expression#POSIX_extended
Example:
**Regular Expression:** 
S[2-4][A,Z,E]Accepted values are S2A, S2Z, S2E, S3A, S3Z, S3E, S4A, S4Z, S4E
ReworkIf this is ON the Request Item property will be available for this RMA type.ReturnIf this is ON the Request Item property will be available for this RMA type. UpgradeIf this is ON the Request Item property will be available for this RMA type. 

