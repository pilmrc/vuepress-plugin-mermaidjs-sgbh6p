# Introduction

The Material Group 
comes in the Material Master from SAP. It helps to identify to which Customer/Division belongs the Material when is assigned the Material Group. This is used as a filter in Assembly Configuration when the BOM is selected. 


### How to get there?



::: mermaid
graph LR
A("PRODUCT")-->0("MATERIAL GROUP")

:::

Screen Activity

Material Group Maintenance enables user to perform the following activity:

- Associate / Disassociate the customer/Division from a Material Group


#### Pre Condition


The following data needs to be pre-configured before user configures the Material Group: 

- Customer/Divsion


#### Screen Dependency


The following screen(s) has direct dependency with Material Group

- Material

- Assembly Configuration




#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Material Group*</p></td><td class="confluenceTd"><p>The unique name for the Material Group. The field is populated by SAP. The user can select only</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division*</td><td colspan="1" class="confluenceTd">To indicate the Material Group belongs to specific Customer/Division</td></tr><tr><td colspan="1" class="confluenceTd">Shared Material Group</td><td colspan="1" class="confluenceTd"><p>The <span style="color: rgb(0,0,0);">toggle is turn ON, the material associated to it should be able to be added in BOM Item and Setup Sheet (setup verification) <span> </span>bypassing data partition restriction. Every customer can use components coming from Shared Material Group.</span></p><p><span style="color: rgb(0,0,0);">PS. The Material plant code should be same in different partition. Only Material Type Unserialized Material and Inventory ID is only able to work as Share Material</span></p></td></tr></tbody></table>



