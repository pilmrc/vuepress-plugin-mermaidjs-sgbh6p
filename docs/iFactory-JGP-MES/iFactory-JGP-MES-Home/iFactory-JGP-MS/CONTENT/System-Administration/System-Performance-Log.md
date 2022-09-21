# Introduction

User activities in Phoenix triggers the execution of certain functions. System Performance Log provides system administrator the ability to view the execution duration of functions in Phoenix system. This feature is useful to track down long running functions that may impact system performance. 



### How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("SYSTEM PERFORMANCE LOG")

:::


#### **Screen Activity** 


System Performance Log enables user to perform the following activity:

- View the duration of functions ran in Phoenix system. Functions displayed can be filtered by selecting the start and end date time.

- Track the user who executed the function.




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Start Date & Time</p></td><td class="confluenceTd"><p>Provides function filtering by Start Date and Time</p></td></tr><tr><td class="confluenceTd"><p>End Date & Time</p></td><td class="confluenceTd"><p>Provides function filtering by End Date and Time</p></td></tr><tr><td class="confluenceTd"><p>Function Name</p></td><td class="confluenceTd"><p>The function that was executed</p></td></tr><tr><td class="confluenceTd"><p>Execution Start</p></td><td class="confluenceTd"><p>Date and time where the function starts execution</p></td></tr><tr><td class="confluenceTd"><p>Execution End</p></td><td class="confluenceTd"><p>Date and time where the function completes execution</p></td></tr><tr><td class="confluenceTd"><p>Execution Duration</p></td><td class="confluenceTd"><p>Total time the function takes to complete its execution</p></td></tr><tr><td class="confluenceTd"><p>Last Updated</p></td><td class="confluenceTd"><p>Date where this record is updated into the LogEntry table</p></td></tr><tr><td class="confluenceTd"><p>Last Updated By</p></td><td class="confluenceTd"><p>System or user ID who execute this function</p></td></tr></tbody></table>

