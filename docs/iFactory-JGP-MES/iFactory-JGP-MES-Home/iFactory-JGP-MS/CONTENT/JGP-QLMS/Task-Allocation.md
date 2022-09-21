# Introduction

Task Allocation is a page where allow user to assign tasks to each measuring equipment and personnel based on the available hours so that the tasks can be assigned equally. User is able to skip the task if not going to assign task to equipment or personnel. After skipping the task, the task will be directed to Unallocated Task option under Collect Task in the kiosk. For the assigned task, it will be directed to Allocated by Equipment or Allocated by Personnel under Collect Task in the kiosk. 


### How to get there?



::: mermaid
graph LR
A("QLMS LAB OPERATIONS")
:::
![image2019-9-23_14-22-33.png](/.attachments/57639331.png)



::: mermaid
graph LR
A("TASK ALLOCATION")
:::


#### Permission (QLMS)



- QLMS Task Allocation


- Can Access Task Allocation


- Can Modify Task Allocation



#### Screen Activity


Task Allocation enables user to perform the following activities:

- View, Select task allocations type (Equipment / Personnel)


- User is allow to skip the task if not going to assign the task to equipment or personnel by providing the skip comment.



#### Precondition


Work order need to be confirmed before user configures Task Allocation.
User have to create a work order in Inspection Registration and submit the work order.
User have to update the work order and confirm the work order in Work Order Confirmation screen.


#### Screen Dependency



- [Work Order Confirmation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Work-Order-Confirmation.md)


- [Dimension Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Dimension-Maintenance.md)



#### **Screen Specification**  


If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:

- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.
- The resource selection in Task Allocation by equipment is getting from iFactory



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.3305%;" /><col style="width: 81.6695%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Action </td><td class="confluenceTd"><p>User is able to select the work order</p><ul><li>Allow user to allocated by Equipment or by Personnel</li></ul><p>User is able to skip the work order by providing the skip comment.</p><ul><li>The skipped work order will be directed to Unallocated Task option under Collect Task in Kiosk </li></ul></td></tr><tr><td class="confluenceTd">Workorder ID</td><td class="confluenceTd"><p>Will only show work order ID with status “Confirm and Pending Allocation.”</p><p>The work order ID to be displayed here will be based on the measuring equipment type configured in the Dimension Configuration.</p><p>For instance , the submitted work order with job type that configured in Dimension Configuration have 2 measuring equipment type then the submitted work order needs 2 measuring equipment type to complete the tasks. Hence , the same work order ID will be displayed 2 times for 2 measuring equipment type. Then user is allowed to allocate task by equipment/personnel or skip the task allocation for this work order ID with 2 measuring equipment type.</p></td></tr><tr><td class="confluenceTd">Project </td><td class="confluenceTd">The project of product that need to be measuring.</td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd">The product family that need to be measuring.</td></tr><tr><td class="confluenceTd">Material </td><td class="confluenceTd">The material that need to be measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route that produced product(s) need to be measuring. This field showed route value and route version which <span style="color: rgb(23,43,77);">registered in inspection registration and display NA if there is no route registered for workorder.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step  that produced product(s) need to be measuring. This field showed route step value which <span style="color: rgb(23,43,77);">registered in inspection registration and  display NA if there is no route step registered for workorder.</span></td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd"><p>Total quantity of units to be measuring.</p></td></tr><tr><td class="confluenceTd">Job Type</td><td class="confluenceTd">The measurement method that needed to be executed.</td></tr><tr><td class="confluenceTd">Measuring Equipment Type</td><td class="confluenceTd"><p>The measuring equipment type that needed to measure the dimension of the product. This field showed Measuring Equipment Type based on</p><ul><li>the selected SIP Version/Drawing Revision/System Version in Work Order Confirmation for planned work order ID.</li><li>the selected dimension codes that confirmed in Work Order Confirmation for unplanned work order ID.</li></ul></td></tr><tr><td class="confluenceTd">Work Order Status</td><td class="confluenceTd">The current work order status of the work order ID.</td></tr><tr><td class="confluenceTd">Urgency Status</td><td class="confluenceTd">How urgent is the work order.</td></tr><tr><td colspan="1" class="confluenceTd">Confirmation Datetime</td><td colspan="1" class="confluenceTd">When the work order being confirmed by lab personnel.</td></tr><tr><td colspan="1" class="confluenceTd">Submission Unit</td><td colspan="1" class="confluenceTd">The unit that submitted the work order .</td></tr><tr><td colspan="1" class="confluenceTd">Submitter</td><td colspan="1" class="confluenceTd">The person who submitted the work order.</td></tr></tbody></table>



#### Attachments

[image2019-9-23_14-22-15.png](/.attachments/57639330.png)
[image2019-9-23_14-22-33.png](/.attachments/57639331.png)
