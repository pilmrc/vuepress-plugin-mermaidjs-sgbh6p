# Introduction

An audit log table created to capture any changes made on each security module screens. This audit log table should able to provide the following information:

- who make the change

- what action the user used

- when it change

- which screen

- which record

- which field and

- what value it change to.

The audit log will only captured history record when changes was made thru security screens. Any changes not thru security screens such as de-active/dormant by service will not be record in this audit log table. Data Partition screen also will not trigger any audit records, since the add/edit/delete actions is update by backend sync job every minute when encountered any Customer and Division created/change/delete from iFactory side.
Note: There is no screen to display the audit log records, DBA to query as per request by user.
![image2020-3-4_9-46-55.png](/.attachments/66093801.png)



Application and Application|Permission screen.
Add/edit/delete application and it’s permission will captured in audit log. Delete application will also deleted it’s permission, therefore audit log will captured the application’s permission was deleted as well. However, Group that de-associated to these removed application and permission will not capture, since group is able to trace back the removed application and permission at application/permission level.

User, User update by AD, User|Group and User|Partition screen.
Add/delete user, user’s partition and User’s Group will captured in audit log. Click on “Update user info from AD” will update the necessary field if not match with AD. Updated field will be captured in audit log as well.

Group, Group|Permission and Group|User screens
Add/edit/delete group, Group’s permission and Group’s user will captured in audit log.

Data Partition screen
Data Partition screen will NOT trigger any audit records, since the add/edit/delete actions is update by backend sync job every minute when encountered any Customer and Division created/change/delete from iFactory side.

Batch User Upload screen
Batch user upload will causing add/edit/delete on related field will be captured in audit log.

Certification, Uer Certification Assignment and Group Certification Assignment screen
Batch user upload that causing add/edit/delete on related field will be captured in audit log.


#### Attachments

[image2020-1-23_10-51-12.png](/.attachments/66093767.png)
[image2019-9-21_17-4-3.png](/.attachments/66093768.png)
[image2019-9-21_13-25-21.png](/.attachments/66093769.png)
[image2020-3-4_9-46-55.png](/.attachments/66093801.png)
