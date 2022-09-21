# Introduction

Allow to import candidates who (identify by employee number) have passed the course(s) from HR system or other training system via csv/txt file format. The csv shall follow predefined fields/columns as per this 
[Passed Candidates sample](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Courses/Passed-Candidates-Upload.md)file.System will base on these uploaded passed candidates information to determine the login user have the access to use the resource, route step or material that required course certificate validation.



### How to get there?



::: mermaid
graph LR
A("COURSES")-->0("PASSED CANDIDATES UPLOAD")

:::


#### Screen Activity


Passed Candidates Upload enables user to perform the following activity:

- upload passed candidates on which courses via csv/txt

Pre Condition
The following items need to be ready before can upload passed candidates:

- Upload.csv file with the passed candidates info that require to be upload.

- Employee number must exist in user table.

- Courses Name and Revision must exist in course table.



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="PassedCandidatesUpload-PassedCandidatesfieldsforupload"><strong>Passed Candidates fields for upload</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Remove</p></td><td class="confluenceTd"><p>Value '1' to remove existing record from the system if found match record with the following fields:</p><ul><li style="list-style-type: none;"><ul><li>EmployeeId</li><li>CourseName</li><li>CourseRevision</li></ul></li></ul><p>Value '0' will not perform delete record action. It will either:</p><ul><li style="list-style-type: none;"><ul><li>Add new record if no existing record found.</li><li>Override existing record if found.</li></ul></li></ul></td></tr><tr><td class="confluenceTd"><p>EmployeeId*</p></td><td class="confluenceTd"><p>The employee number exist in user table. Use to identify the user.</p></td></tr><tr><td class="confluenceTd"><p>CourseName*</p></td><td class="confluenceTd"><p>The name of the course. Both course name and revision are use to identify a course.</p></td></tr><tr><td colspan="1" class="confluenceTd">CourseRevision*</td><td colspan="1" class="confluenceTd">The revision of the course. <span>Both course name and revision are use to identify a course.</span></td></tr><tr><td colspan="1" class="confluenceTd">PassedDate*</td><td colspan="1" class="confluenceTd"><p>Indicate when the user passed this course.</p></td></tr><tr><td colspan="1" class="confluenceTd">Choose File button</td><td colspan="1" class="confluenceTd"><p><span>Click this button to choose the csv/txt source file for upload.</span></p></td></tr></tbody></table>



#### Attachments

[Passed Candidate sample.csv](/.attachments/29918053.csv)
