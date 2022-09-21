# Introduction


Allow to import courses from HR system or other training system via csv/txt file format. The csv shall follow predefined fields/columns as per this [Course Upload sample](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Courses/Course-Upload.md)file.The uploaded courses later can be select and configure as required courses for a certificate (Please refer to 
[Certificate Course Requirements](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Courses/Certification-Course-Requirements.md)). 


### How to get there?



::: mermaid
graph LR
A("COURSES")-->0("COURSE UPLOAD")

:::


#### Screen Activity


Course upload enables user to perform the following activity:

- upload courses via csv/txt




#### Pre Condition


The following items need to be ready before can upload courses: 

- Upload csv file with the courses info that require to be upload.



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="CourseUpload-Coursefieldsforupload">Course fields for upload</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>IsObsolete*</p></td><td class="confluenceTd"><p>To indicate the course status. '0' means active, '1' means this course is obsolete. Courses with obsolete status will not be considered during validation.</p></td></tr><tr><td class="confluenceTd"><p>CourseName*</p></td><td class="confluenceTd"><p>The name of the course. The maximum length is 200 characters. System will prompt an error if exceed acceptable length</p></td></tr><tr><td class="confluenceTd"><p>CourseRevision*</p></td><td class="confluenceTd"><p>The revision of the course, The maximum length is 10 characters. System will prompt an error if exceed acceptable length.</p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">The description of the course. The maximum length is 1000 characters, any character beyond acceptable length will be truncated.</td></tr><tr><td colspan="1" class="confluenceTd">EffectivityDateInDays*</td><td colspan="1" class="confluenceTd"><p>The number of days use to define the passed candidate's validity period on this course. (<span style="background-color: transparent;"><span style="font-size: 10.0pt;line-height: 13.0pt;">eg. value 30 means </span>based<span style="font-size: 10.0pt;line-height: 13.0pt;"> on the passed date 1-Jun-2015 of User A, this course will be valid until 30-Jun-2015)</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Choose File button</td><td colspan="1" class="confluenceTd"><p>Click this button to choose the csv/txt source file for upload.</p></td></tr></tbody></table>



#### Attachments

[course sample.csv](/.attachments/29918051.csv)
