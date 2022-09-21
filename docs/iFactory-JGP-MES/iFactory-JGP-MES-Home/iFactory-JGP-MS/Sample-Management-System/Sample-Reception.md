# Introduction

Sample Reception is a screen that allowed department owner to accept the assigned sample number and assign the sample number to the respective route step (station) for usage.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT ")-->0("SAMPLE RECEPTION")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Reception

- Can Modify Sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Accept or Reject the sample


#### **Screen Dependency** 


The following screen(s) has dependency with Sample Application Form.

- Sample List View

- Routine Checkup List


#### **Screen Specification** 



- Sample Reception is control by data partition. User is able to view all the samples that assigned to him/her regardless of customer/division even user has logged-on with the specific customer/division.

- The sample number with the following task status will be available
in Sample distribution list:
- Pending Reception - Sample Number is distributed but pending for reception.

- User only able to view the assigned sample number.

- User is able to view the sample information by clicking the sample number.

- User is allowed to Accept OR Reject the sample number.

- If accepted ,

- The process step and manufacturing area fields are required to update.

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong><span style="color: black;">Fields</span></strong></p></td><td class="confluenceTd"><p><strong><span style="color: black;">Description</span></strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Process Step</span></p></td><td class="confluenceTd"><ul><li><span>The available process step selection is filtered by the selected Process.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Manufacturing Area</span></p></td><td class="confluenceTd"><ul><li><span>The available manufacturing area selection is filtered by the selected Process step.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Building</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Floor</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Production Area</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr></tbody></table>


- **System will update the Receipt datetime and start calculating the routine checkup date based on the configured routine checkup frequency.**


- The accepted sample number's task status will be update as "Receipted" and  sample status as "In-Use".

- The accepted sample number will be available in Routine Checkup List.

- System will trigger notification to
user group has only permission to Sample Distribution screen about the Acceptance.![image2022-1-14_11-11-9.png](/.attachments/106463373.png)



- If rejected ,


- User needs to provide Comment .

- System will update the rejected sample number's task status to " Rejected Reception" and sample status is remained as " Approved".

- System will
trigger notification to user group has only permission to Sample Distribution screen about the rejection. 
- Email template as below.
![image2021-10-9_13-24-41.png](/.attachments/100892840.png)



- If the sample number is pending reception more than 24 hours ,


- It is based on sample number's distributed date time.

- Trigger notification to assigned department owner.

- Group all the sample number with same distributed date time in one notification.

- Email template as below.
![image2021-10-9_13-23-26.png](/.attachments/100892839.png)



- Sample Reception is a screen that allowed department owner to accept the assigned sample number and assign the sample number to the respective route step (station) for usage.



#### How to get there?



::: mermaid
graph LR
A("S")-->0("AMPLE MANAGEMENT ")
0-->1("SAMPLE RECEPTION")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Reception

- Can Modify Sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Accept or Reject the sample


#### **Screen Dependency** 


The following screen(s) has dependency with Sample Application Form.

- Sample List View

- Routine Checkup List


#### **Screen Specification** 



- Sample Reception is control by data partition. User is able to view all the samples that assigned to him/her regardless of customer/division even user has logged-on with the specific customer/division.

- The sample number with the following task status will be available
in Sample distribution list:
- Pending Reception - Sample Number is distributed but pending for reception.

- User only able to view the assigned sample number.

- User is able to view the sample information by clicking the sample number.

- User is allowed to Accept OR Reject the sample number.

- If accepted ,

- System will check if EOL and Validity date is current date or future date once click on Accept button.

- The process step and manufacturing area fields are required to update.

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong><span style="color: black;">Fields</span></strong></p></td><td class="confluenceTd"><p><strong><span style="color: black;">Description</span></strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Process Step</span></p></td><td class="confluenceTd"><ul><li><span>The available process step selection is filtered by the selected Process.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Manufacturing Area</span></p></td><td class="confluenceTd"><ul><li><span>The available manufacturing area selection is filtered by the selected Process step.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Building</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Floor</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Production Area</span></p></td><td class="confluenceTd"><ul><li><span>Auto populated once Manufacturing Area is selected.</span></li></ul></td></tr></tbody></table>


- **System will update the Receipt datetime and start calculating the routine checkup date based on the configured routine checkup frequency.**


- The accepted sample number's task status will be update as "Receipted" and  sample status as "In-Use".

- The accepted sample number will be available in Routine Checkup List.

- System will trigger notification to
user group has only permission to Sample Distribution screen about the Acceptance.![image2022-1-14_11-11-9.png](/.attachments/106463373.png)



- If rejected ,


- User needs to provide Comment .

- System will update the rejected sample number's task status to " Rejected Reception" and sample status is remained as " Approved".

- System will
trigger notification to user group has only permission to Sample Distribution screen about the rejection. 
- Email template as below.
![image2021-10-9_13-24-41.png](/.attachments/100892840.png)



- If the sample number is pending reception more than 24 hours ,


- It is based on sample number's distributed date time.

- Trigger notification to assigned department owner.

- Group all the sample number with same distributed date time in one notification.

- Email template as below.
![image2021-10-9_13-23-26.png](/.attachments/100892839.png)




#### Attachments

[image2021-10-9_13-21-45.png](/.attachments/100892838.png)
[image2021-10-9_13-23-26.png](/.attachments/100892839.png)
[image2021-10-9_13-24-41.png](/.attachments/100892840.png)
[image2022-1-14_11-11-9.png](/.attachments/106463373.png)
