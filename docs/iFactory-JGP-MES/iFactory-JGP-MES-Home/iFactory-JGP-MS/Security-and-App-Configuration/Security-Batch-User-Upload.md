# Introduction

People that need to access to iFactory will need to have their user account created in iFactory Security module. This feature allow to add new or update existing user thru file in batch method.
How
to
get there?

::: mermaid
graph LR
A("SECURITY MODULE")-->0("Batch user upload")

:::


### Permission



- iFactory Security Application’s “Allow to Perform Batch User Upload permission” permission to allow user access batch user upload screen.


#### Screen Activity


Batch User Upload screen allow to perform the following activity:

- Validate the user is exist in Active Directory

- Validate if the field is filled up / expected result (TRUE/FALSE)

- Validate if the Group is existed

- Validate if the Customer is existed

- Validate the user is in domain only

- Create new domain user records / Update user records

- Return error summary with fail reason.


#### Pre-Condition


User must exist in Active Directory.


#### Screen Dependency



- User

- Group

- Partition


#### How Does It Works?


1. Download the sample upload file from Batch User Upload screen
![image2021-12-1_16-49-51.png](/.attachments/103252905.png)


2. Fill up the fields' value as below:

- All required fields value must be provided otherwise error will be showed in the list.

Add New User

- The user (identify by user login) should not exist in the system but exist in AD.

- "Is Service Account" to be updated as per value from the source file.

- "User Is Active" to be updated as per value from the source file.

- “User is Domain” MUST set to true.

- Blank value in "Group Assignment" field (from source file) will be treated as no group assigned to this user. "Group Assignment" field value shall have a separator(
**;** ) in between if it contains more than one group assigned. Only existing Group can be assigned to user. Error will be show if any user group cannot be found in the system.
- Blank value in "Customers/Division & Project Assignment" field (from source file) will be treated as no customer assigned to this user.
For multiple customer , this need to be split by semicolon (;).For multiple project , this need to be split by pipe (|).Project that assigned to the specific customer need to be split by vertical bar colon (: ). For example: Customer/Division : ALL ;SONY/SONY :PRJ1 | PRJ2 ; GOPRO/GORPO :PRJ1 | PRJ2 .Only existing customer/project can be assigned to user. Error will be show if any customer cannot be found in the system.
- "Keep Existing Group" and "Keep Existing Customer/Division & Project" fields can be set to "TRUE" or "FALSE" since both have no effect to the new create user record(s).
Update Existing User

- The user (identify by User Login) must be exist in the system (of course it is exist in AD as well).

- "Is Service Account" to be updated as per value from the source file.

- "User Is Active" to be updated as per value from the source file.

- “User is Domain” MUST set to true.

- "Group Assignment" field value shall have a separator(
**;** ) in between if it contains more than one group assigned. Only existing Group can be assigned to user. Error will be show if any user group cannot be found in the system.
- If value in "Group Assignment" field is not blank , then add the group value from the source file without remove existing assigned group.

- If value in "Group Assignment" field is blank , nothing to be updated.

- If value in "Group Assignment" field is not blank , then remove existing assigned group and add the group value.

- If value in "Group Assignment" field is blank , then remove all existing assigned group only.

- When "Keep Existing Group" field set to "TRUE"

- When "Keep Existing Group" set to "FALSE"

- Customers/Division & Project Assignment field value shall have corresponding interval symbol.
For multiple customer , this need to be split by semicolon (;).For multiple project , this need to be split by pipe (|).Project that assigned to the specific customer need to be split by vertical bar colon (: ) Only existing customer can be assigned to user. Error will be show if any customer cannot be found in the system.
- If value in "Customers/Division & Project Assignment " field is not blank , then add the  Customers/Division & Project value from the source file without remove existing assigned Customers/Division & Project

- If value in "Customers/Division & Project Assignment" field is blank , nothing to be updated.

- If value in "Customers/Division & Project Assignment " field is not blank, then remove existing assigned Customer/Division & Project and add the Customer/Division & Project value.

- If value in "Customers/Division & Project Assignment " filed is blank , then remove all existing assigned Customer/Division & Project only.

- When "Keep Existing Customer/Division & Project" set to "TRUE"

- When "Keep Existing Customer/Division & Project" set to "FALSE"
3. "Upload" button will be enabled after provide the 
File path location of the source file.4. Once the user clicks the "Upload" button, system shall show total of user records successfully processed and failed (if any) on the screen.
Error Summary
![image2021-12-1_17-13-15.png](/.attachments/103252906.png)



Notes: All the error transactions are stored in iFactory Security Audit Log. 


#### CSV Fields


<table class="wrapped relative-table confluenceTable" style="width: 90.7575%;"><colgroup><col style="width: 23.0546%;" /> <col style="width: 76.9588%;" /> </colgroup><tbody><tr><td style="text-align: center;width: 1146.0px;" colspan="2" class="confluenceTd"><strong>New User</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 162.0px;" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" style="width: 984.0px;" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td style="width: 162.0px;" class="confluenceTd">User Login*</td><td style="width: 984.0px;" class="confluenceTd"><p>The unique Jabil domain NT login ID. The entered value will be used to validate from domain (exist in AD).</p></td></tr><tr><td style="width: 162.0px;" class="confluenceTd">Is Service Account*</td><td style="width: 984.0px;" class="confluenceTd"><p>To indicate the user record is belong to Service Account (TRUE) or normal user account (FALSE).</p></td></tr><tr><td style="width: 162.0px;" class="confluenceTd">User Is Active*</td><td style="width: 984.0px;" class="confluenceTd">If user is active. This field is allow to fill in TRUE/FALSE value only.</td></tr><tr><td style="width: 162.0px;" class="confluenceTd">User Is In Domain*</td><td style="width: 984.0px;" class="confluenceTd">If user is with NT login domain. This field only allow TRUE value.</td></tr><tr><td style="width: 162.0px;" class="confluenceTd">Keep Existing Group*</td><td style="width: 984.0px;" class="confluenceTd">Set the value as "TRUE" if the group assigned to the user (only existing user) need to be retained. This field is allow to fill in TRUE/FALSE value only.</td></tr><tr><td style="width: 162.0px;" class="confluenceTd">Group Assignment</td><td style="width: 984.0px;" class="confluenceTd">Assign the group to the user created.</td></tr><tr><td style="width: 162.0px;" class="confluenceTd">Keep Existing Customer/Division & Project*</td><td style="width: 984.0px;" class="confluenceTd">Set the value as "TRUE" if the customer assigned to the user (only <span>existing</span> user) need to be retained. This field is allow to fill in TRUE/FALSE value only.</td></tr><tr><td style="width: 162.0px;" class="confluenceTd">Customers/Division & Project Assignment</td><td style="width: 984.0px;" class="confluenceTd">Assign the customer and project to the user created.</td></tr></tbody></table>

**\* Required Field** 
Notes:

- Certification Assignment is not in the scope


#### Attachments

[image2018-9-18_16-43-5.png](/.attachments/64421957.png)
[SampleBatchUserUpload.csv](/.attachments/64421958.csv)
[image2018-9-18_16-27-25.png](/.attachments/64421959.png)
[image2020-1-16_12-53-50.png](/.attachments/64421961.png)
[image2020-1-16_12-56-22.png](/.attachments/64421962.png)
[iFactorySecuritySampleBatchUserUpload.csv](/.attachments/64421963.csv)
[image2021-12-1_16-49-51.png](/.attachments/103252905.png)
[image2021-12-1_17-13-15.png](/.attachments/103252906.png)
