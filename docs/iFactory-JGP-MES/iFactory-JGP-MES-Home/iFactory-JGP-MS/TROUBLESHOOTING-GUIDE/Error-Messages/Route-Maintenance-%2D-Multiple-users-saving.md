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








