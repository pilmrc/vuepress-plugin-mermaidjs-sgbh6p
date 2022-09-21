# Introduction

The On Time Orders report provides user the ability to view orders that are completed on time or completed late from the committed date. The report is also shown in a pie chart to easily view the percentage between on time and late orders within the specified time period. 



### How to get there?




::: mermaid
graph LR
A("REPORT")-->0("ON TIME ORDERS")

:::
![image2014-5-6 11:24:6.png](/.attachments/29919927.png)




#### *Selection Criteria* 



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date</td><td colspan="1" class="confluenceTd">The start date to filter the on time orders report</td></tr><tr><td colspan="1" class="confluenceTd">End Date</td><td colspan="1" class="confluenceTd"><span>The end date to filter the on time orders report</span></td></tr><tr><td colspan="1" class="confluenceTd">Order Type</td><td colspan="1" class="confluenceTd">The on time report will be able to display on time report calculation for Production Order, Delivery Order and Planned Order within the specified time range</td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd">The <span>Production Order Number, Delivery Order Number or Planned Order Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Commit Date</td><td colspan="1" class="confluenceTd"><p>The committed completion date for the order. <br />For Production Order, it is specified in the End Date. <br /><span>For Delivery Order, it is specified in the Delivery Date.</span><br />For Planned Order, it is specified in the Scheduled End Date.<span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;"> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Completed Date</td><td colspan="1" class="confluenceTd">The date where the order is marked as completed</td></tr><tr><td colspan="1" class="confluenceTd">Days Late</td><td colspan="1" class="confluenceTd"><p>The number of days where the order is completed past the commit date</p><p>[Days Late] = [Completed Date] - [Commit Date]</p></td></tr><tr><td colspan="1" class="confluenceTd">On Time Orders (Pie Chart)</td><td colspan="1" class="confluenceTd">Total number of orders that is completed on time</td></tr><tr><td colspan="1" class="confluenceTd"><span>Late Orders (Pie Chart)</span></td><td colspan="1" class="confluenceTd">Total number of orders that is completed past the commit date</td></tr><tr><td colspan="1" class="confluenceTd"><span>OnTime Orders Percent (Pie Chart)</span></td><td colspan="1" class="confluenceTd"><span>OnTime Orders Percent = [<span>On Time Orders] / [<span>On Time Orders + <span>Late Orders] x 100%</span></span></span></span></td></tr></tbody></table>






#### Attachments

[image2014-5-6 11:24:6.png](/.attachments/29919927.png)
