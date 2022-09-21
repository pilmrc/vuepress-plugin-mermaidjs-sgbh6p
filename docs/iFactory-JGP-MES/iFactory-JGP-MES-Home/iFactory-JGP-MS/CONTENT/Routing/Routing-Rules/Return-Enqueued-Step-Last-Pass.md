# Introduction

System allow user configure 'Return Enqueued Step Last Pass' rule at a target route step. After that system will route the 
**passed** WIP to original enqueue before process at target route step. ![image2021-5-27_14-8-3.png](/.attachments/92733967.png)


Notes: 

- Can only be configured one record for a route step.

- Only working for WIP level. It means can't work for Panel, Container level.

- Only working when WIP Pass at configured route step.

**Pre-Conditions for below scenarios:** 
Route Step: Inspection 1
Is Pull: True
Configured Routing Rules:

- Return Enqueued Step Last Pass(Highest priority)

- Default Pass:

- Link Attribute 2

- Manual Assemble 1

- Default Fail:

- Rework
**Scenarios:** 
1: When WIP Pass at configured route step.
WIP(SN0001) is enqueue for '
Link DataCollection 1', and then pull it to 'Inspection 1' to process as **Pass** 
status.Result: The enqueue of WIP(SN0001) still keeping as 'Likn DataCollection 1' 

2: When WIP Fail at configured route step.
WIP(SN0002) 
is enqueue for 'Link DataCollection 1', and then pull it to 'Inspection 1' to process as **Fail** 
status.Result: The enqueue of WIP(SN0002) was 'Rework'(follow the default fail routing rules).

3: When WIP Fail at configured route step and then back to configured route step got Pass.
WIP(SN003)
is enqueue for 'Link DataCollection 1'.Step1: pull it to 'Inspection 1' to process as 
**Fail** 
status.Step2:  Go to Rework to close all the defect.
Step3: Back to 'Inspection 1' to process as 
**Pass** 
status.Result: The enqueue of WIP(SN0003) still can back to original enqueue 'Likn DataCollection 1' .


#### Attachments

[image2020-1-8_16-40-34.png](/.attachments/92733963.png)
[image2021-5-27_14-8-3.png](/.attachments/92733967.png)
