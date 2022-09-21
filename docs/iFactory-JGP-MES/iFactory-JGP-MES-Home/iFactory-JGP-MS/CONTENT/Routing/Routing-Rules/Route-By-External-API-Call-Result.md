# Introduction

The phoenix system checks that 
**“route by WIP attribute”** routing rule types are selected at the route step.  If the rule is configured, the system first checks its **material parameters** . If a material has been specified but does not match WIP materials, then this rule does not apply and the system continues to the next row.  If materials were not specified or matches WIP materials, the system will check the **product family** .  If the product family has been specified but does not match the WIP product family, then this rule does not apply and the system will continue to the next row.If the product family was not specified or matches WIP materials, the system proceeds to check 
**customer parameters** .  If the customer has been specified but does not match the WIP customer, then the rule does not apply and the system continue to the next row. If a customer was not specified or matches the WIP customer, the system checks for**Completion Status** If Completion Status was not matches WIP Status, the rule does not apply and system continue to the next row. If Completion Status matched the WIP Status, then system called the API which configure in the "API Url":

- System passed the "API Parameter" called "
CustomParameter
" to API, system passed the parameters as the same as the paramters of pre-start rule : External API Call as well
If system got the API result matched "API Result", system could in queue in the destination operation station, If system got the API result don't match the "API Result", system will continue the next row rule type
![image2022-6-23_17-8-15.png](/.attachments/120750332.png)



![image2022-6-23_17-4-25.png](/.attachments/120750326.png)


The Rule Parameter as below:
![image2022-6-23_17-6-52.png](/.attachments/120750328.png)


![image2022-6-23_17-7-12.png](/.attachments/120750329.png)




#### Attachments

[image2022-6-23_16-30-39.png](/.attachments/120750316.png)
[image2022-6-23_16-41-28.png](/.attachments/120750318.png)
[image2022-6-23_16-45-35.png](/.attachments/120750319.png)
[image2022-6-23_16-47-34.png](/.attachments/120750320.png)
[image2022-6-23_16-47-49.png](/.attachments/120750321.png)
[image2022-6-23_17-0-48.png](/.attachments/120750322.png)
[image2022-6-23_17-1-12.png](/.attachments/120750323.png)
[image2022-6-23_17-3-43.png](/.attachments/120750325.png)
[image2022-6-23_17-4-25.png](/.attachments/120750326.png)
[image2022-6-23_17-6-52.png](/.attachments/120750328.png)
[image2022-6-23_17-7-12.png](/.attachments/120750329.png)
[image2022-6-23_17-8-15.png](/.attachments/120750332.png)
