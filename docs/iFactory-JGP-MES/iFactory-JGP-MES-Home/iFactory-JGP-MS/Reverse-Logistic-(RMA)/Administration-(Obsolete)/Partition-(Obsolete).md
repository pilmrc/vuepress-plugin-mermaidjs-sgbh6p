# Introduction

Partition determine to which site/customer/division the user is authorized to enter 


### How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("PARTITION")

:::


#### Precondition


[User](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide.md)
need to be configured before the assignation of Partition. The Partition (Customer/Division). It is populated from both system MES and iFactory. (To see more detail about the prerequisites see [HOME](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Administration-(Obsolete)/Partition-(Obsolete).md))
Screen Activity
Partition allow to perform the following activity:

- Add user to a Partition


- Remove user from a Partition
![image2017-9-26 23:48:20.png](/.attachments/29920866.png)




#### Screen Dependency


The following screen(s) has direct dependency with User Group

- [User](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide.md)




#### Fields





<table class="wrapped confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Partition(Obsolete)-Role"><strong>Role</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Partition</td><td colspan="1" class="confluenceTd"><p>Site\Customer\Division. <span>It is populated from both system MES and iFactory. (To see more detail about the prerequisites see </span><a href="http://usplnd0wiki01:8090/display/ngRMA/Digital+Factory+-+iFactory+-++Reverse+Home">HOME</a><span> </span><span>)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Add User</td><td colspan="1" class="confluenceTd">It is for search the user that wants to be added, It search by First Name</td></tr><tr><td class="confluenceTd"><p>NT Login*</p></td><td class="confluenceTd"><p>The unique Jabil domain NT login ID. The entered value will be use to validate from the selected domain.</p></td></tr><tr><td class="confluenceTd"><p>First Name</p></td><td class="confluenceTd"><p>The user's First name.</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">The user's Last name.</td></tr><tr><td colspan="1" class="confluenceTd">Email</td><td colspan="1" class="confluenceTd">The email address shall be used by other screens to send notification to user.</td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd">Desasociate the user from the Role</td></tr></tbody></table>

**The user’s First name.** 
Last NameThe user’s Last name.EmailThe email address shall be used by other screens to send notification to user.DeleteDesasociate the user from the Role

#### Attachments

[image2017-9-26 23:48:20.png](/.attachments/29920866.png)
