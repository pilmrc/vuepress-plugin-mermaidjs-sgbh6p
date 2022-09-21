# Introduction


User Group, as the name states, groups users into common categories in order to reduce maintenance. A user can be associated to multiple user groups. Any modification to the user group will automatically apply to all the users assigned to the user group. 



### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("USER")
0-->1("USER GROUP")

:::

Precondition[User](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User.md)
and [Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)need to be configured before the configuration of User Groups
Screen Activity
User Group Maintenance enables administrator to perform the following activity:

- Create, view, update and delete user group

- Assign or unassign user from a user group

- Maintain certifications for the user group. The User Group certification tab and User certification tab shares the same purpose. (Refer to
[Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)). The difference is, user group certification allows administrator to add certifications that applies to all user in the user group. [User Certification](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User.md)on the other hand requires administrator to add certification to each individual user. 
- Configure user access to Phoenix screens





#### Screen Dependency


The following screen(s) has direct dependency with User Group

- *[User Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/User-Group-(obsolete,-please-refers-to-security-Groups-Maintenance).md)*

- Access to all screens in Phoenix is controlled in User Group's Permission tab




#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGroup(obsolete,pleasereferstosecurity'sGroupsMaintenance)-UserGroupTab"><strong>User Group Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>User Group</p></td><td class="confluenceTd"><p>Unique name given to the User Group</p></td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Additional description for the User Group can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">User Count</td><td colspan="1" class="confluenceTd">The number of users found in this User Group</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGroup(obsolete,pleasereferstosecurity'sGroupsMaintenance)-UserAssignmentTab"><span style="color: rgb(51,51,51);">User Assignment Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Available Users</td><td colspan="1" class="confluenceTd"><p>Lists all users that can be assigned to this user group. There are several ways to search and move users between the<span> 'Available Users' and  </span><span>'Assigned Users' panes.<br /></span></p><ul><li><span style="line-height: 0.0px;">Select</span> users from the list and use the single or double arrow button to <span>move users between the 'Available Users' and  <span>'Assigned Users' panes. <br />Single arrow moves the selected user while double arrow moves all the users from one pane to another</span></span></li><li><span>To perform multiple user selection, click on the user while holding down the CTRL key </span></li><li><span>To select all or a range of users in consecutive sequence, click on the first user and the last user in the range while holding down the SHIFT key</span></li><li><span>Administrator can speed up user search by<span> entering their user name or login ID and click the 'Search Available Users' button<br /></span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Assigned Users</td><td colspan="1" class="confluenceTd"><span>Lists all users that are assigned to this user group</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="UserGroup(obsolete,pleasereferstosecurity'sGroupsMaintenance)-PermissionsTab"><strong>Permissions Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><p>Each screens will have their own Create, Read, Update or Delete permission. The tree view for <a href="Permissions-29920134.html">permissions</a> spans into 4 levels. <br />Newer screens will only have a Access or No Access permission.  </p><ul><li>1st level: Enables or disables all permissions to every screens in Phoenix</li><li>2nd level:Enables or disables all<span> permissions to every screens grouped under this menu. </span></li><li>3rd level: <span>Enables or disables all</span><span> permissions for the specific screen</span></li><li><p>4th level: Allows enabling or disabling selective permissions for the specific screen. <br />For example, the user group can only Read but cannot perform any data manipulation such as Create, Update or Delete in that specific screen.</p></li></ul><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920118.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920118.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920118" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2012-8-22 15:31:24.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920117" data-linked-resource-container-version="2" /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Description of the permission</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGroup(obsolete,pleasereferstosecurity'sGroupsMaintenance)-CertificationsTab"><strong>Certifications Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Certification</span></td><td colspan="1" class="confluenceTd"><span>List the certifications that the user group possesses<br /></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Certification Expires</span></td><td colspan="1" class="confluenceTd"><span>If enabled, the certification is only valid within the effectivity date range.</span><br /><span>If disabled, the certification is considered never expire and defaulted by the system to 12/31/2099 12:00AM. User does not need to take re-certification</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Effective From</span></td><td colspan="1" class="confluenceTd"><span>The start date where the certification is in effect. Users in this user group cannot access the operation, resource or material earlier than the effective date</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Effective To</span></td><td colspan="1" class="confluenceTd"><span>The end date where the certification is in effect. When the certification expires, users in this user group cannot access the operation, resource or material that requires this certification</span></td></tr></tbody></table>










#### Attachments

[image2012-8-22 15:31:24.png](/.attachments/29920118.png)
