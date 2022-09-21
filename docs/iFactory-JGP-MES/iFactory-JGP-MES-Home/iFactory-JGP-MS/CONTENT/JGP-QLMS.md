# Introduction

QLMS ( Quality Laboratory Management System ) is a system that allows quality team to :

- Manage inspection plan

- Manage work-order submission process and keep tracking the tasks progress.

- Record cosmetic inspection results

- Allocate tasks by equipment and personnel

- Keep tracking operators ( both NTID and non-NTID user) and equipment efficiency.

- Auto upload (API) / manual insert measured data

- Manage measurement results approval process

- Manage the measurement results publishing.

- Generate report with defined templates ( FAI, GRR, SPC and CPK).
The figure below is to show what need to be configured before using QLMS and followed by QLMS process flow.

![image2020-9-10_8-18-34.png](/.attachments/77136805.png)




**Process flow :** 

- User needs to configure all the modules that mentioned in the configurations box in Ifactory before using QLMS.

- Next , user needs to configure Part Cycle Time Configuration,Dimension Configuration,Submission Unit Maintenance ,and Workflow Maintenance  in QLMS before starting to continue QLMS processes.

- QA users can configure Inspection Plan to remind operations on when to deliver produced units for inspection/measuring.

- Operator needs to register all the necessary related to produced units before send to lab for inspection/measuring. User is able to view all the created work orders' status/information through work order view .

- Laboratory person will verify and confirm if the information/ units are valid for inspection/measuring. If  Lab person rejected the work order (WO) , then WO submitter & report requester will receive a rejected notification. If lab person confirmed the WO , then will continue to next step either cosmetic inspection ( if units are required cosmetic inspection ) or task allocation ( if task allocation is required ).

- Cosmetic inspection is  an optional process and it is depending whether the material is needed to perform cosmetic inspection. This can be configured in Part Cycle Time configuration.

- Task allocation is an optional process and it is depending whether need to allocate tasks by personnel or by equipment. User is allowed to skip the task allocation by providing the skip comment.

- QLMS Kiosks is to support both NTID and non- NTID user to perform cosmetic inspection , collect assigned/ unassigned tasks , complete/pause/resume the collected tasks.

- For those equipment that can't generate log file , user is allowed to manually fill the measured data through Manual Measurement screen.

- For those equipment that can generate  log file , system will help to translate log file into Json format then upload to QLMS system with upload measurement results API.

- Once all the tasks for a WO is completed with measured data , user is allowed to submit measurement results for approval through Measurement Result Submission.

- User can keep tracking those submitted measurement results' status through My Submission module.

- Approver will receive notification to review submitted measurement results and able to approve / reject submitted measurement result through My Approval List module.

- Once submitted measurement results is approved , measurement results will be published at Approved Measurement Results and the WO is considered as Closed. For those required sample return , measurement result submitter & report requester will receive a notification to collect the sample from lab.

- If submitted measurement results is rejected , measurement result submitter & report requester will be receiving a rejected notification . User is allowed to retest and submit the measurement results through Measurement Result Submission.

- Sample return is an optional process and it is depending whether the sample need to be collected once the measurement result is approved.

- There are few reports that allow user to keep tracking WO progress , equipment/personnel efficiency , compare measurement results by dimension code.




#### Attachments

[image2019-11-9_18-55-43.png](/.attachments/59441515.png)
[image2019-11-18_8-47-29.png](/.attachments/61079617.png)
[image2019-11-18_8-48-11.png](/.attachments/61079619.png)
[image2019-11-18_12-47-7.png](/.attachments/61079621.png)
[image2019-11-28_9-38-59.png](/.attachments/61079754.png)
[image2020-9-9_21-47-34.png](/.attachments/77136765.png)
[image2020-9-10_8-17-9.png](/.attachments/77136804.png)
[image2020-9-10_8-18-34.png](/.attachments/77136805.png)
