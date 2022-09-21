# Introduction

Failure Symptom is used to create a list of predefined Failure Symptoms with association to a Failure Category.

They appear at RMA Request Creation and Review and Receipt screens when user wants to assign a symptom to a RMA Item. 

### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("FAILURE SYMPTOM")

:::


#### Screen Activity


Failure Symptom enables user to perform the following activity:

- Create, view, update and delete Failure Symptom and associate it to a Failure Category.



#### Pre Condition


The following data needs to be pre-configured before user configures Failure Symptom:

- Failure Category


#### Screen Dependency



The following screen(s) has direct dependency with Failure Categories:
- Request Creation

- Request Review

- Request Receipt


#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">To indicate this Failure symptom applies to specific Customer/Division.</span></p></td></tr><tr><td class="confluenceTd"><p>Failure Category*</p></td><td class="confluenceTd"><p>To indicate thus Failure Symptom belongs to this Failure Category.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Failure Symptom*</span></td><td colspan="1" class="confluenceTd"><span>The unique name given to the Failure Symptom.</span></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>The complete text to describe the Failure Symptom <span>can be entered here.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Active*</td><td colspan="1" class="confluenceTd">Can be Active (ON), Inactive (OFF), By default is Activated.</td></tr></tbody></table>

