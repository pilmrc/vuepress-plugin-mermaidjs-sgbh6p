# Introduction



### Screen Activity



- Allow user to allocate the tasks for the selected work order.

- Allow user to select task allocations type = Equipment

- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.
- The resource selection in Task Allocation by equipment is getting from iFactory. The soft deleted resource will not be display in Measuring Equipment Model field.



#### Screen Dependency



- [Part Cycle Time](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)


- [Dimension Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Dimension-Maintenance.md)


- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)



#### Field


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 17.7101%;" /><col style="width: 82.2899%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Total quantity of the selected work order ID.</td></tr><tr><td class="confluenceTd">Allocated By</td><td class="confluenceTd">Allow user to select task allocation type = Equipment</td></tr><tr><td class="confluenceTd">Measuring Shift</td><td class="confluenceTd"><p>Allow user to select measuring shift.</p><p>The selected measuring shift will define the measuring equipment model available hours.</p></td></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd">Display the current activities of resource so user will determine whether to assign any task to the resource.</td></tr><tr><td class="confluenceTd">Measuring Equipment Model</td><td class="confluenceTd"><p>All the measuring equipment models that belong to configured measuring equipment type will be displayed here.</p><p>If the measuring equipment model is soft deleted in Resource screen, user is unable to configure the soft deleted resource. The soft deleted resource will not be display in Measuring Equipment Model field.</p></td></tr><tr><td class="confluenceTd">Available time</td><td class="confluenceTd"><p>Available time is to display equipment's available time for measuring and this will be checked against the estimated completion datetime of others assigned task.</p><p>Pre-condition : user needs to create the time shift at Shift Maintenance.</p></td></tr><tr><td class="confluenceTd">Available hours</td><td class="confluenceTd"><p>Shift configuration will define the available hours for measuring equipment.</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity Required for Measuring </td><td colspan="1" class="confluenceTd"><p>User is able to assign the quantity for each resource.</p><p>System will validate if the assigned quantity has exceeded the submitted quantity.</p></td></tr><tr><td colspan="1" class="confluenceTd">Estimated Duration (mins)</td><td colspan="1" class="confluenceTd">Estimated duration is showing the time required for measuring. This will be based on the part cycle time configuration.</td></tr><tr><td colspan="1" class="confluenceTd">Estimated Completion Datetime</td><td colspan="1" class="confluenceTd"><p>Estimated completion datetime is showing based on the available time + estimated duration(mins)</p><p>Note :Estimated completion datetime will minus out the break time hour if it can only be completed after the break time</p></td></tr></tbody></table>


Add the task allocation to work order
![image2019-10-25_16-0-13.png](/.attachments/59441317.png)


Choose Allocated By Equipment
![image2019-12-3_9-19-28.png](/.attachments/61079827.png)


Choose the Measuring Shift
![image2019-12-3_9-19-58.png](/.attachments/61079828.png)


Enter the Quantity Required for Measuring
![image2019-12-3_9-20-28.png](/.attachments/61079829.png)




#### Attachments

[image2019-10-25_16-0-13.png](/.attachments/59441317.png)
[image2019-10-25_16-1-26.png](/.attachments/59441318.png)
[image2019-10-25_16-2-29.png](/.attachments/59441319.png)
[image2019-10-25_16-4-6.png](/.attachments/59441320.png)
[image2019-12-3_9-19-28.png](/.attachments/61079827.png)
[image2019-12-3_9-19-58.png](/.attachments/61079828.png)
[image2019-12-3_9-20-28.png](/.attachments/61079829.png)
