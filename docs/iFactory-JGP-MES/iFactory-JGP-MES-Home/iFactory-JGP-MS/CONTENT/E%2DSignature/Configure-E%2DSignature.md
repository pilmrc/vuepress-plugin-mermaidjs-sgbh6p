# Introduction

E-Signature is a plugin that use to re-authenticate the current user is the correct person who is performing the task. This configuration screen mainly is to provide the information such as which 'Customer/Division', at which route step and when should trigger e-signature process before commit the action. If re-authentication is successful, system shall continue to commit the operation and log this e-signature event for audit purpose. If 
re-authentication is failed, system shall not continue until the password is correctly entered.In current phase, system only allow e-signature feature on the following operations, any configured route step is not matching to predefine trigger shall be ignore:

- Packout (Trigger:
Item Packed / Container Closed)
- Assemble (Trigger:
Item Assembled / Item Disassembled)
- Manual Inspection Entry (Trigger: MIE completion)



### How to get there?



::: mermaid
graph LR
A("E-SIGNATURE")-->0("CONFIGURATION")

:::


#### Screen Activity


Configure E-Signature screen allow to perform the following activity
:
- Add/Remove route step and triggering point by 'Customer/Division'.

Pre Condition
The following items need to be ready before can configure e-signature:

- 'Customer/Division' configured.

- Route and Route Step configured.



#### Screen Dependency


The following screen(s) has direct dependency with Configure E-Signature.

- Customer Maintenance

- Division Maintenance

- Route Maintenance



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="ConfigureESignature-ConfigureE-Signature">Configure E-Signature</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division</p></td><td class="confluenceTd"><p>Authorised 'Customer/Division' available to select.</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Available route to select base on the selected customer.</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Identify which route step will initiate E-signature feature. Route Step and Trigger Description shall populated on the table once configured.  </p></td></tr><tr><td colspan="1" class="confluenceTd">Trigger Description</td><td colspan="1" class="confluenceTd"><p>The e-signature triggering point for an operation. Each operation will have their own triggering point such as:</p><ol><li>Item Packed - During pack an item at Packout operation.</li><li>Container Closed - During container closure at Packout operation.</li><li>Item Assembled - During item assemble at Assemble operation</li><li>Manual Inspection Entry - During completion of Manual Inspection Entry operation.</li><li>Item Disassembled - During disassemble an item or disassemble all at Assemble operation.</li></ol><p> </p></td></tr></tbody></table>

