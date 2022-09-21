# Introduction

iFactory 
requires the creation of shifts in order to accurately track data for various functions, specifically those used with Manufacturing Metrics and Quality Management (such as Manual Inspection Entry).
How to get there?

::: mermaid
graph LR
A("ADMIN")-->0("SHIFT MAINTENANCE")

:::

Screen Activity

Shift 
Maintenance enables user to perform the following activity:

- Create, view, update and delete Shifts


### **Fields** 



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division<span style="color: rgb(255,0,0);">*</span></p></td><td class="confluenceTd"><p><span>To indicate the shift belongs to specific Customer/Division</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Start Time<span style="color: rgb(255,0,0);">*</span></span></p></td><td class="confluenceTd">when the shift starts</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Stop Time<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd">when the shift ends</td></tr><tr><td colspan="1" class="confluenceTd">Shift Name<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span>The unique name given to the shift</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Break Start Time<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd">when the break time starts within shift</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Break End Time<span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd">when the break time ends within shift</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Available Hours</span></td><td colspan="1" class="confluenceTd">System auto-calculates the value in read-only mode: <ul><li>Available Hours<span>  </span>= (Stop Time – Start Time ) – ( Break<span>  </span>End time – Break start time)</li></ul></td></tr></tbody></table>



- #### **Shift Grid consists:**


![image2019-8-9_15-3-52.png](/.attachments/53773375.png)





#### **Screen has validation:** 


Two shifts must not overlap
![image2019-8-9_15-9-52.png](/.attachments/53773376.png)


Break time should be within shift time
![image2019-8-9_15-10-52.png](/.attachments/53773377.png)






#### Attachments

[image2019-8-9_15-3-52.png](/.attachments/53773375.png)
[image2019-8-9_15-9-52.png](/.attachments/53773376.png)
[image2019-8-9_15-10-52.png](/.attachments/53773377.png)
