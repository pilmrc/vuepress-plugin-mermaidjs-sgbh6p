# Introduction

KPI Dashboard is to show the summary of each sample status in one site. Then it drills down to summary of each sample status by project . From the project summary , then it drills down to summary of each sample status by process step.


### How to get there?



::: mermaid
graph LR
A("SAMPLE REPORT & DASHBOARD")-->0("KPI DASHBOARD")

:::


#### **Permission ( Ifactory.SMS)** 



- KPI Dashboard

**Screen Activity** 
This screen enables user to perform the following activity:

- View Pie Chart , tables and stacked chart

- Download the chart

- Export the data from tables



#### **Screen Specification** 



- **Summary of each sample status**
![image2021-12-29_9-21-8.png](/.attachments/104924105.png)



- **In the pie chart shows quantity of each sample status and percentage for each of the sample status for one site.**


- Show the legend for each of the sample status.

- Show data in the table for this pie chart

- How to count the percentage for each of the sample status

- (Each sample status total/ Total Sample in the site ) \* 100 = % of sample status.

- User is allowed to download the data from table and export the chart.


- #### **Summary of each sample status by Project**

![image2021-12-29_9-23-43.png](/.attachments/104924106.png)



- **In the Stacked histogram shows quantity of each sample status by project.**


- Show the legend for each of the sample status.

- X -axis shows the project name , Y-axis shows the quantity.

- Show data in the table for this Stacked histogram

- User is allowed to download the data from table and export the chart.


- #### **Summary of each sample status by Process Steps**

![image2021-12-29_9-26-43.png](/.attachments/104924107.png)



- **This histogram chart will only show when user clicked on one of the stacked bar in summary of each sample status by project.**


- This histogram chart shows the quantity of each sample status for process step by project.

- Show the legend for each of the sample status.

- X -axis shows the process step , Y-axis shows the quantity.

- Show data in the table for this histogram

- User is allowed to download the data from table and export the chart.

- Note : N/A - those samples not yet assigned to process step by department owner.




#### Attachments

[image2021-12-29_9-18-57.png](/.attachments/104924104.png)
[image2021-12-29_9-21-8.png](/.attachments/104924105.png)
[image2021-12-29_9-23-43.png](/.attachments/104924106.png)
[image2021-12-29_9-26-43.png](/.attachments/104924107.png)
