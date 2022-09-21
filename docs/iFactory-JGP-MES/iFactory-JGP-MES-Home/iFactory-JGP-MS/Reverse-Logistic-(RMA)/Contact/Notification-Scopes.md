# Introduction

The person involved in RMA processing needs to be notified when some actions are performed in the RMA request, it helps to track the status or changes based on the configuration.
The configuration of RMA notification per E-Mail address consist of two steps:

- Assignment of E-Mail Address to different actions related with RMA Request processing (Email Notifications).

- Assignment of E-Mail Address to the notification Scope (Notification Scopes).
Assignment of E-Mail Address to Notification Scope is used to configure RMA notifications only to specific 
"Site", "Customer/Division", "Product Family" or "Assembly".
Notification Scope is assigned per E-Mail Address, so it is valid for all types of assigned notifications.
By default the Reverse application will send an email to the Jabil Contact and Customer Contact when a request is created (in the management screen) regardless of notification scope or email subscription configured for the user.


### How to get there?



::: mermaid
graph LR
A("CONTACT")-->0("NOTIFICATION SCOPE")

:::


#### Screen Activity


"Notification Scopes" enables user to perform the following activity:

- View E-Mails assigned to selected Notification Scope

- Add E-Mail address to the selected Notification Scope (Subscribed)

- #### Delete E-Mail Address from the selected Notification Scope (Unsubscribed)

"Filtering" can be used to limit the list of E-Mail Addresses displayed per selected Notification Scope.


#### Pre Condition


E-Mail Address must be configured via "Email Notification". 


#### Screen Dependency


EMail Notification.


#### Fields



<table class="confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="NotificationScopes-EmailNotifications"><strong>Email Notifications</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer Division</p></td><td class="confluenceTd"><p><span>Indicates "Customer/Division" for the configured Notification Scope. Selection of "All Customers" is possible..</span></p></td></tr><tr><td class="confluenceTd"><p>Site</p></td><td class="confluenceTd"><p><span>Indicates "Site" for the configured Notification Scope. <span>Selection of "All Sites" is possible.</span></span></p></td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p><span>Indicates "Product Family" for the configured Notification Scope. </span><span>"Product Family" indication is optional.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p><span>Indicates "Assembly" for the configured Notification Scope. </span><span>"Assembly" indication is optional.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly Revision</td><td colspan="1" class="confluenceTd"><span>Indicates "Assembly Revision" for the configured Notification Scope. </span><span>"Revision" indication is optional.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>First Name</span></td><td colspan="1" class="confluenceTd"><span>First name of a user assigned for the selected notification scope.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Last Name</span></td><td colspan="1" class="confluenceTd"><span>Last name of a user assigned for the selected notification scope.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>EMail</span></td><td colspan="1" class="confluenceTd"><span>E-Mail Address of a user assigned for the selected notification scope.</span></td></tr></tbody></table>



#### **Buttons** 


<table class="confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="NotificationScopes-EmailNotifications.1"><strong>Email Notifications</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p>Button</p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Filtering</p></td><td class="confluenceTd"><p>Allows to display fields used for filtering of the displayed data.</p></td></tr><tr><td class="confluenceTd"><p>Filtering->All</p></td><td class="confluenceTd"><p>Display all E-Mail Addresses configured via "Email Notification" and their subscription status.</p></td></tr><tr><td class="confluenceTd"><p>Filtering->Unsubscribed</p></td><td class="confluenceTd"><p><span>Display only these E-Mail Addresses configured via "Email Notification" that are not subscribed for the selected Notification Scope.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Filtering->Subscribed</td><td colspan="1" class="confluenceTd"><p><span>Display only these E-Mail Addresses that are subscribed for the selected Notification Scope.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Unsubscribed/Subscribed</td><td colspan="1" class="confluenceTd">Indicates subscription status of E-Mail Address. Clicking this button will change subscription status.</td></tr></tbody></table>

