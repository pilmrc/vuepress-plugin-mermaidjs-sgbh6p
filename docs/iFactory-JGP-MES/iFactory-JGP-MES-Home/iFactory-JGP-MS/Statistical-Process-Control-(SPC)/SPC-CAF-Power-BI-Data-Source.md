# Introduction

The Data Source from SPC to further analysis and monitor the productivity for Power BI and it required 1 year data. All the violate rule data point will all in the list. All the data base on the site export

**How to get there?** 


::: mermaid
graph LR
A("SFOTWARE CENTER")-->0("MICROSOFT POWER BI DESTOP")

:::


### **Pre Condition** 


Have violate rule data point or Submitted the Corrective Action Form in the SPC system.



#### **Report link in QA** 


The Link will base on the site to get the data.

- SPC CAF Source (CSV):
[http://azapseemisql82/ReportServer?%2fSPC%2fSPC+-+QA%2fSPCCAFReport&SiteName=Memphis%2C%20TN&rs:Format=CSV](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Statistical-Process-Control-(SPC)/SPC-CAF-Power-BI-Data-Source.md)
or
- SPC CAF Source (Excel):
[http://azapseemisql82/ReportServer?%2fSPC%2fSPC+-+QA%2fSPCCAFReport&SiteName=Memphis%2C%20TN&rs:Format=](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Statistical-Process-Control-(SPC)/SPC-CAF-Power-BI-Data-Source.md)[excel](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Statistical-Process-Control-(SPC)/SPC-CAF-Power-BI-Data-Source.md)
**Report Fields** 
![image2021-4-13_11-8-38.png](/.attachments/94404817.png)


<table class="relative-table wrapped confluenceTable" style="width: 76.5771%;"><colgroup><col style="width: 15.1971%;" /><col style="width: 84.8029%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">SPC Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Corrective Action Form is <span style="color: rgb(23,43,77);">retrieved from</span> which SPC Number</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Site</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which site.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Corrective Action Form is <span style="color: rgb(23,43,77);">retrieved from</span> which Customer.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Corrective Action Form is <span style="color: rgb(23,43,77);">retrieved from</span> which Division.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Project</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Corrective Action Form is <span style="color: rgb(23,43,77);">retrieved from</span> which Project.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Material.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Route.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Resource</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Resource.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measure Route Step</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Measure Route Step.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measure Equipment</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Measure Equipment.</span></td></tr><tr><td colspan="1" class="confluenceTd">Subgroup size</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which subgroup size.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Control Chart</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Corrective Action Form is retrieved from which Control Chart.</span></td></tr><tr><td colspan="1" class="confluenceTd">Data Point Value</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Data Point Value which is violated the rules.</span></td></tr><tr><td colspan="1" class="confluenceTd">Data Datetime</td><td colspan="1" class="confluenceTd">The Data Point Value which is retrieved from which datetime.</td></tr><tr><td colspan="1" class="confluenceTd">Violated Rules</td><td colspan="1" class="confluenceTd"><p>The Data Point is violated which rules.</p><p><span style="color: rgb(0,0,0);">If 1 data point value violate 2 rules then will have 2 records.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Correction Action Cause</td><td colspan="1" class="confluenceTd">The category of the cause (Common / Special) which is submitted.</td></tr><tr><td colspan="1" class="confluenceTd">Root Cause</td><td colspan="1" class="confluenceTd">The root cause of the data point value fail.</td></tr><tr><td colspan="1" class="confluenceTd">Correction Action Text</td><td colspan="1" class="confluenceTd">The action of corrective action.</td></tr><tr><td colspan="1" class="confluenceTd">Submitter</td><td colspan="1" class="confluenceTd">The person who has submitted the Corrective Action Form.</td></tr><tr><td colspan="1" class="confluenceTd">Submitted Datetime</td><td colspan="1" class="confluenceTd">The Corrective Action Form submitted datetime</td></tr><tr><td colspan="1" class="confluenceTd">Approval Note</td><td colspan="1" class="confluenceTd">The filed shows the comment that provided by approer.</td></tr><tr><td colspan="1" class="confluenceTd">Approver</td><td colspan="1" class="confluenceTd">The person who has approved the Corrective Action Form.</td></tr><tr><td colspan="1" class="confluenceTd">Approved Datetime</td><td colspan="1" class="confluenceTd">The Corrective Action Form approved datetime.</td></tr><tr><td colspan="1" class="confluenceTd">PIC-Correction Action Group</td><td colspan="1" class="confluenceTd">The group which need to do the action when the data violate the rule. The data get from the configuration.</td></tr><tr><td colspan="1" class="confluenceTd">PIC-Action Approval Group</td><td colspan="1" class="confluenceTd">The group which need to do the approval for the submitted form. The data get from the configuration.</td></tr></tbody></table>

**PIC_Correction Action Group** 
The group which need to do the action when the data violate the rule. The data get from the configuration.PIC_Action Approval GroupThe group which need to do the approval for the submitted form. The data get from the configuration.

#### Attachments

[image2021-4-13_11-8-38.png](/.attachments/94404817.png)
