# Introduction

Sample Scrap List screen is used to view all the samples with status = scrap .This to ease user to manage those scrapped samples in one screen.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT ")-->0("SAMPLE SCRAP LIST")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Scrap List

- Can edit Scrapped Sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Insert SAP Scrap No.



#### **Precondition** 


Sample needs to complete either one of the reviews with process B = SCRAP.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample List View


#### **Screen Specification** 


In this screen , user is only able to view the sample with status = Scrap and provide SAP scrap no.
User is able to view all the sample based on the assigned projects regardless of logged-on customer/division in Sample Scrap List.


#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 728.275px;"><colgroup><col style="width: 186.9px;" /><col style="width: 540.375px;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>SAP Scrap No.</p></td><td style="text-align: left;" class="confluenceTd"><p>User can fill in the SAP scrap no. to the respective sample that listed in Sample Scrap List.</p></td></tr></tbody></table>

