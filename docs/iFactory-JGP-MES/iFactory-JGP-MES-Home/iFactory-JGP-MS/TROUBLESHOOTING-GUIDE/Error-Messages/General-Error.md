# Introduction


- **System raises error: {"Message":"(WARNING: UNHANDLED EXCEPTION!!!) Object reference not set to an instance of an object."}**

![image2019-3-21_14-40-26.png](/.attachments/45973726.png)


***Steps to***  
***Troubleshoot***  
1) You can open and trace in google chrome console, press F12 and start to simulate the steps that causing error message. Click on the Network tab and find the red color wording e.g: 31659. You will know the Request URL that cause the error message.
![image2019-3-21_15-22-19.png](/.attachments/45973736.png)



2) Try to simulate same steps in other environment to confirm whether is the iFactory version cause the issue.
3) Request DBA to help trace at back-end database.
4) Can try to re-do and save the data configuration for example: Clear Setup → Scan GRN to install Setup if related to Assemble issue.




#### Attachments

[image2019-3-21_14-40-26.png](/.attachments/45973726.png)
[image2019-3-21_15-22-19.png](/.attachments/45973736.png)
