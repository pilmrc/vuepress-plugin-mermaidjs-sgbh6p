# Introduction

**Error: Cannot insert duplicate key row in object 'dbo,RouteSteps' with unique index 'UK_RouteSteps_RouteId_Name'. The duplicate key value is (). The statement has been terminated. Class: [JMES_DomainModeal.RouteStep - Modified]** 
![image2019-3-21_13-47-11.png](/.attachments/45973711.png)



***CAUSE:***  

Multiple users add / save new route step concurrently in Route Maintenance

***SOLUTION:***  

- VSTS 148437 fixed had been applied and only 1 user able to add / save new route step


- When multiple users trying to add / save new route step concurrently, below error message will be shown to others and don't allow the user to add / save new route step.

![image2019-3-21_13-55-50.png](/.attachments/45973713.png)






#### Attachments

[image2019-3-8_10-55-4.png](/.attachments/45973701.png)
[image2019-3-8_10-54-53.png](/.attachments/45973702.png)
[image2019-3-8_10-19-41.png](/.attachments/45973703.png)
[image2015-9-4 14:40:57.png](/.attachments/45973704.png)
[image2015-9-4 14:31:40.png](/.attachments/45973705.png)
[image2015-9-4 14:29:11.png](/.attachments/45973706.png)
[image2015-9-4 14:27:43.png](/.attachments/45973707.png)
[image2019-3-21_13-47-11.png](/.attachments/45973711.png)
[image2019-3-21_13-55-50.png](/.attachments/45973713.png)
