# Introduction

The person involved in RMA processing needs to be notified when some actions are performed in the RMA request, it helps to track the status or changes based on the configuration.
The configuration of RMA notification per E-Mail address consist of two steps:

- Assignment of E-Mail Address to different actions related with RMA Request processing (Email Notifications).

- Assignment of E-Mail Address to
the notification Scope (Notification Scopes). By default the Reverse application will send an email to the Jabil Contact and Customer Contact when a request is created (in the management screen) regardless of notification scope or email subscription configured for the user.


### How to get there?



::: mermaid
graph LR
A("CONTACT")-->0("EMAIL NOTIFICATION")

:::


#### Screen Activity


Email notification enables user to perform the following activity:

- Create an Email Address

- Review an
Email Address
- Modify an
Email Address
- #### Delete an

Email Address

Pre Condition
N/A


#### Screen Dependency


N/A


#### Fields



<table class="confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="EmailNotifications-EmailNotifications"><strong>Email Notifications</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Email Address*</p></td><td class="confluenceTd"><p><span>The email address used to send notification to the user.</span></p></td></tr><tr><td class="confluenceTd"><p>First Name*</p></td><td class="confluenceTd"><p><span>The user's First Name name.</span></p></td></tr><tr><td class="confluenceTd"><p>Last Name*</p></td><td class="confluenceTd"><p><span>The user's Last Name name.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Notifications</td><td colspan="1" class="confluenceTd"><p>In this panel of the screen you can turn "ON" or turn "OFF" type of e-mail notification.</p><p><strong>RMA Request Creation: </strong>The user<strong> </strong>will receive a notification when the RMA request is created.</p><p><strong>RMA Request Review: </strong><span style="color: rgb(51,51,51);">The user will receive a notification when the RMA request is reviewed, including the RMA request status. </span></p><p><span><span><strong>RMA Request Change:</strong> <span>The user</span><strong> </strong><span>will receive a notification when the RMA request changes. The list of added serial numbers will be included in the notification e-mail.</span></span></span></p><p><strong>RMA Jabil Receipt: </strong>The user will receive a notification when the RMA request is received.</p><p><span><span><span><strong>RMA Request Dispatch:</strong> <span>The user</span><strong> </strong><span>will receive a notification when the RMA request is dispatched. </span></span></span></span></p><p><span><span><span><strong>RMA Request Completion:</strong> <span>The user</span><strong> </strong><span>will receive a notification when the RMA request is completed. </span></span></span></span></p><p><span><span><span><strong>RMA Timeouts Notification:</strong> A notification is triggered to the configured user once a configured time or limit is reached for the timeouts.</span></span></span></p><p><strong>Failure Symptom Threshold: </strong><span>A notification is triggered once the limit of failures symptom is reached. (not implemented yet).</span></p></td></tr></tbody></table>

**The user’s First Name name.** 
Last Name\*
The user’s Last Name name.
NotificationsIn this panel of the screen you can turn "ON" or turn "OFF" type of e-mail notification.
**RMA Request Creation:**  
The user**will receive a notification when the RMA request is created.** **RMA Request Review:**  
The user will receive a notification when the RMA request is reviewed, including the RMA request status. 
**RMA Request Change:** 
The user**will receive a notification when the RMA request changes. The list of added serial numbers will be included in the notification e-mail.** **RMA Jabil Receipt:**  
The user will receive a notification when the RMA request is received.**RMA Request Dispatch:** 
The user**will receive a notification when the RMA request is dispatched.**  **RMA Request Completion:** 
The user**will receive a notification when the RMA request is completed.**  **RMA Timeouts Notification:** 
A notification is triggered to the configured user once a configured time or limit is reached for the timeouts.**Failure Symptom Threshold:**  
A notification is triggered once the limit of failures symptom is reached. (not implemented yet).

