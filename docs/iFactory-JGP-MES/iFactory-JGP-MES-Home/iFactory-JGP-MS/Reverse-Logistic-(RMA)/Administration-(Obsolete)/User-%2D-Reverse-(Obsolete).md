# Introduction

People that need to access to 
***Reverse***  Application will need to have their user account created here by the Reverse Security Officer. Users log into ngMES using their domain Windows User ID and Password.
How
to
get there?


::: mermaid
graph LR
A("ADMINISTRATION")-->0("USER")

:::


### Screen Activity


Create User screen allow to perform the following activity:

- Validate the domain user is available

- Create new domain user records.

- Update domain user

- Inactive domain user


To Create a new domain user it is needed to enter the NT Login and click "Check". it will bring all the information available in IFactory.  Click in Okay to create the user, once the user it is created will be added to  the 
[role](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Administration-(Obsolete)/User-%2D-Reverse-(Obsolete).md)status as default.![image2017-9-26 23:15:27.png](/.attachments/29920862.png)


To Edit click on edit icon only will be possible to update bringing the information from Active Directory, if everything it is correct click in Update


![image2017-9-26 23:19:30.png](/.attachments/29920860.png)




#### Screen Dependency


N/A



#### Fields



<table class="wrapped confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="UserReverse(Obsolete)-User"><strong>User</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>NT Login*</p></td><td class="confluenceTd"><p>The unique Jabil domain NT login ID. The entered value will be use to validate from the selected domain.</p></td></tr><tr><td class="confluenceTd"><p><span>First Name</span></p></td><td class="confluenceTd"><p><span>The user's First name.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">The user's Last name.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Email </span></td><td colspan="1" class="confluenceTd"><span>The email address shall be used by other screens to send notification to user. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Employee Number</span></td><td colspan="1" class="confluenceTd"><span>The unique Jabil employee number. This employee number shall be used to identify the user for 'Passed Candidates Upload'.</span></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd">The email address shall be used by other screens to send notification to user. If no email address is configured here, user will not be able to receive these notifications.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">On/Off A button to click in order to Inactive user</td></tr><tr><td colspan="1" class="confluenceTd">Edit Users</td><td colspan="1" class="confluenceTd">A button to click in order to lead to 'Update User' screen.</td></tr></tbody></table>

**The user’s First name.** 
Last NameThe user’s Last name.Email The email address shall be used by other screens to send notification to user. Employee NumberThe unique Jabil employee number. This employee number shall be used to identify the user for 'Passed Candidates Upload'.
The email address shall be used by other screens to send notification to user. If no email address is configured here, user will not be able to receive these notifications.StatusOn/Off A button to click in order to Inactive userEdit UsersA button to click in order to lead to 'Update User' screen.

#### Attachments

[image2017-9-26 23:19:30.png](/.attachments/29920860.png)
[image2017-9-26 23:17:52.png](/.attachments/29920861.png)
[image2017-9-26 23:15:27.png](/.attachments/29920862.png)
