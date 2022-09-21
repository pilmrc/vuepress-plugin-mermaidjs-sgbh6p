# Introduction

Failure Categories is used to maintain the list of predefined Failure Categories that usually come from the Customer. Failure Category is used for grouping of Failure Symptoms.

They will appear at RMA Request Creation and Review and Receipt screen when user wants to assign failure category to a RMA Item. 

### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("FAILURE CATEGORY")

:::


#### Screen Activity


Failure Categories enables user to perform the following activity:

- Create, view, update and delete Failure Category



#### Pre Condition


N/A


#### Screen Dependency



The following screen(s) has direct dependency with Failure Categories:

- Failure Symptom

- Request Creation

- Request Review

- Request Receipt


#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">To indicate this Failure Category applies to specific Customer/Division.</span></p></td></tr><tr><td class="confluenceTd"><p>Failure Category*</p></td><td class="confluenceTd"><p>The unique name given to the Failure Category.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>The complete text to describe the Failure Category <span>can be entered here.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Active*</td><td colspan="1" class="confluenceTd">Can be Active (ON) , Inactive (OFF), By default is Activated.</td></tr></tbody></table>

