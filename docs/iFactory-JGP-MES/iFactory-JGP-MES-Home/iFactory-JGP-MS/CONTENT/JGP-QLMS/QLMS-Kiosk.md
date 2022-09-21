# Introduction

Kiosk is a standalone module that associated with QLMS system and it is allowed user to perform various operations such as: Cosmetic Inspection, collect , complete , pause and resume tasks. This is accessible for both NTID and Non-NT users. There is no permission control for QLMS Kiosk users but permissions need to be granted for service account user. User needs to scan the badge and provide employee name & employee ID before entering the Kiosk. System will auto register the information into QLMS database then auto retrieve the information when user scan their badge for sub-sequence login.


### How to get there?



::: mermaid
graph LR
A("QLMS Lab Operations")-->0("Kiosk")

:::


#### Permissions



- Need to grant access to service account user group with the following permissions:


- Kiosk( ifactory)


- QLMS (ifactory)


- Can Access Kiosk( ifactory)


- Can access WIP controller in API Wrapper( ifactory)


- Can access API Wrapper( ifactory)


- Kiosk (QLMS)


- Can Access Kiosk (QLMS)



#### **Screen Activity** 



- [Cosmetic Inspection](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Cosmetic-Inspection.md)

- [Collect Unallocated Task](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/QLMS-Kiosk/Collect-Unallocated-Task.md)

- [Collect Task - Allocated by Equipment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/QLMS-Kiosk/Collect-Task-%2D-Allocated-By-Equipment.md)

- [Collect Task - Allocated by Personnel](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/QLMS-Kiosk/Collect-Task-%2D-Allocated-by-Personnel.md)

- [Collected Tasks](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/QLMS-Kiosk/Collected-Tasks.md)


#### Screen Dependency



- [Task Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation.md)


- [Tasks List](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Tasks-List.md)



![image2019-9-19_7-14-38.png](/.attachments/57639124.png)




#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 7.6217%;" /><col style="width: 92.3505%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Scan badge</p></td><td colspan="1" class="confluenceTd"><p>User has to scan their employee badge in order to login Kiosk.</p><p>Note : For the first time user, user needs to scan their employee badge and register name & employee ID. Once registered , system will be auto retrieve employee name and employee ID for sub-sequence login by scanning the employee badge. </p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><p>For user who had logged in Kiosk before , name field value will automatically populates once user scanned his/her badge </p><p>For 1st time login , Non-NT user can manually enter the name whereas NT user can search their name with the search icon.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd"><p>For user who had logged in Kiosk before, employee ID value will automatically populated once user scanned his/her badge.</p><p>For 1st time login , Non-NT user can manually enter the employee ID whereas NT user's employee ID will be auto populated based on selected name. </p></td></tr></tbody></table>



#### Attachments

[image2019-9-19_7-14-38.png](/.attachments/57639124.png)
