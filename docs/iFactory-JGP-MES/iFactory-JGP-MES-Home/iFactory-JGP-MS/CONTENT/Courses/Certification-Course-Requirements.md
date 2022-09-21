# Introduction

Allow to configure one/more course requirement group for a certificate. Resource type, route steps or materials that associated with this course certificate will b
ase on this "Certification Course Requirements" configuration to validate the user have the access to perform the task. Course certification shall not allow to mix with user/user group certification. Any certificate associated to user/user group shall not allow to configure with course here.During runtime, when operator tries to access a resource, a material or an operation, system will check if a certification is required. If certification is required and is associated in this screen with courses (in this case the certificate is not use for user certification but course certification), system will check whether the operator has passed all required courses in at least one of the requirement group it configured, then this operator will consider has valid certification and allow to access. Operator without the certificate (any require course not fulfill in any requirement groups), system 
will block the operator from proceeding with their task.



### How to get there?



::: mermaid
graph LR
A("COURSES")-->0("COURSE REQUIREMENTS FOR CERTIFICATIONS")

:::


#### Screen Activity


Certification Course Requirements screen allow to perform the following activity
:
- Add/Remove requirements group on a certificate.

- Add/Remove courses on a requirement group.

Pre Condition
The following items need to be ready before can configure the Certification Course Requirements:

- Available certificates without associated with user/user group.

- Required course(s) must exist in the system (Course Upload)



#### Screen Dependency


The following screen(s) has direct dependency with Certification Course Requirements.

- Certification Maintenance

- Course Upload



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="CertificationCourseRequirements-CertificationCourseRequirements"><strong>Certification Course Requirements</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Certification</p></td><td class="confluenceTd"><p>The selection of the certificate for course requirement configuration. User shall not able to select on those certificates already associated to user/user group.</p></td></tr><tr><td class="confluenceTd"><p>Course Requirement Group</p></td><td class="confluenceTd"><p>A certificate is allow to add one/more requirement groups. Each requirement <span>group consists of course(s) that require to fulfill for a certificate. But one requirement group is alternate to other requirement group. For example Certificate A consists of the following certificate requirement group.</span></p><ul><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Requirement Group 1 consists of Course A and Course B</span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Requirement Group 2 consists of Course A1, A2 and Course B.</span></li></ul><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">In order to fulfill the certification validation, user must passed all the courses in either requirement group 1 or group 2. Assume that the user have passed Course A, A1 and Course B; Since group 1 is fulfill, the user will consider granted Certificate A.</span></p><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;"><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918049.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918049.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918049" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-7-2 14:34:14.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918047" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Add new course requirement group.</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918048.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918048.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918048" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-7-2 14:38:32.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918047" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Add new course to course requirement group.</td></tr><tr><td colspan="1" class="confluenceTd">Course/Revision</td><td colspan="1" class="confluenceTd">The required course and revision identify to fulfill by a requirement group. Same 'course/revision' is allowed to configured in different requirement group.</td></tr></tbody></table>




#### Attachments

[image2015-7-2 14:38:32.png](/.attachments/29918048.png)
[image2015-7-2 14:34:14.png](/.attachments/29918049.png)
