# Introduction

The Phoenix system permits end users to diagnose an operation at which the actual inspection and repair are completed on an identified material as nonconforming. The examination of the original cause regarding the nonconformance is the analysis process. However, when the 
**root cause** is removed or corrected the non-conformance can be eliminated preventing **rework** for correcting defects. End user can add and remove Failures, Defects and Rework while inspecting a WIP. Both inspection and rework operations are share a similar screen. The ability of the station to perform different operations will depend on the configuration in Route Step Type screen.**How to get there?** 

::: mermaid
graph LR
A("PRODUCTION")-->0("STATION LOGIN")

:::
![image2013-5-16 15:48:1.png](/.attachments/29919703.png)



The “
**login to a production station** ” permits team members to select the “**Inspection and Rework** ” operation. This includes choosing the correct factory, routes, resources and route steps then selecting the **“login** ” button. ![image2013-7-11 14:39:42.png](/.attachments/29919701.png)


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Station Type</p></td><td class="confluenceTd"><p>All predefined station types will be displayed here for user selection.</p></td></tr><tr><td class="confluenceTd"><p>Factory</p></td><td class="confluenceTd"><p>Search field for all the factories that have been configured in system.</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Search field for all the Routes that have been configured in system and is associated to the selected Factory.</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Search field for all the Route Steps that have been configured in the selected Route and are associated to the selected Station Type.</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>Search field for all the Resources that have been associated to the selected Route Step.</p></td></tr><tr><td class="confluenceTd"><p>Login Button</p></td><td class="confluenceTd"><p>Click this button to enter the selected station. Only authorized user can enter the station.</p></td></tr><tr><td class="confluenceTd"><p>Reset Button</p></td><td class="confluenceTd"><p>Click this button to clear all selections.</p></td></tr><tr><td class="confluenceTd"><p>Recent Login Stations</p></td><td class="confluenceTd"><p>Select and click on the recent login station. This section allow user to log in to frequent visited stations without making all selections repeatingly.</p></td></tr></tbody></table>

**In the Inspection And Rework station, Station Details displays station details regarding route, route step, resources being used at an operation and login operator. WIP details permits users to enter/scan valid WIP serial numbers using this station. If several matching serial numbers are located, the system shows each selected number.**  
![image2013-7-11 14:44:0.png](/.attachments/29919700.png)



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Station Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>This field will display the Route of the current station</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>This field will display the Route Step of the current station</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>This field will display the Resource being used by current station</p></td></tr><tr><td class="confluenceTd"><p>Operator</p></td><td class="confluenceTd"><p>This field will display the Operator that log in to the current station</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>WIP Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>This field allow user to enter/scan/search WIP Serial Number that needs to be inspected or reworked.</p></td></tr><tr><td class="confluenceTd"><p>Division</p></td><td class="confluenceTd"><p>This field will display the division that is associated to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>This field will display the material name of the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>This field will display the customer that is associated to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>This field will display the product family that is associated to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Order</p></td><td class="confluenceTd"><p>This field will display the Planned/Customer Order of the WIP.</p></td></tr><tr><td class="confluenceTd"><p>WIP Last Scan</p></td><td class="confluenceTd"><p>This field will display the last route step that the WIP has completed operation.</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>This field will display the batch number that is associated to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Clear Button</p></td><td class="confluenceTd"><p>This button will clear all the information and WIP entered by user.</p></td></tr><tr><td class="confluenceTd"><p>WIP Status</p></td><td class="confluenceTd"><p>Status of the WIP will be displayed here. WIP Status such as: Not Started, Pending Pass, Pending Fail.</p></td></tr></tbody></table>

**There are multiple functions available in the Inspection and Rework screen. The command buttons that trigger those functions are listed below WIP Details. There are also a few type of displaying options for the station to display the information on the grid view.** 
![image2013-7-11 14:46:32.png](/.attachments/29919699.png)


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Show Machine False Call</p></td><td class="confluenceTd"><p>This button will load a list of machine false calls recorded into the system.</p></td></tr><tr><td class="confluenceTd"><p>Board History</p></td><td class="confluenceTd"><p>This button will load the WIP View dashboard that contains all information and genealogy of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Add WIP Attachment</p></td><td class="confluenceTd"><p>This button allow user to add attachment files to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Arrive</p></td><td class="confluenceTd"><p>This button will record the arrival date and time of the WIP into the system</p></td></tr><tr><td class="confluenceTd"><p>Start / Complete</p></td><td class="confluenceTd"><p>This button allow user to Start and Complete operation. The button will change to “Complete” when a WIP is started.</p></td></tr><tr><td class="confluenceTd"><p>Abort</p></td><td class="confluenceTd"><p>This button allow user to abort the operation without adding a Pass or Fail record to the WIP.</p></td></tr><tr><td class="confluenceTd"><p>Show Last Operation and Failures</p></td><td class="confluenceTd"><p>If this radio button is selected, the grid view will show all failures result from previous operation</p></td></tr><tr><td class="confluenceTd"><p>Show Last Failure</p></td><td class="confluenceTd"><p>If this radio button is selected, the grid view will show on the latest failure of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Show All</p></td><td class="confluenceTd"><p>If this radio button is selected, the grid view will show all Pass and Fail results of the WIP</p></td></tr></tbody></table>

**The grid view will display information in 4 levels of a tree view:** 
1
stLevel Tree View – WIP Status
- This level displays all grid view columns populated in a tree view and shows detailed regarding WIP status.  The phoenix system exhibits pass and fail status regarding WIP test results; displays start and end dates, times, routes, route steps and resources being used in a process. The bottom screen will present routes and route steps, resources, In-queue and arrival (date and time) regarding a process. This includes start and end time, status, operator, process loop and loop count regarding a specific process.
2
ndLevel Tree View – Failure
- This level describes columns displaying tree view malfunctions.  Being displayed are system label failures, messages, operators responsible for recording failures, dates and times. This screen also exhibits routes and route step of failures, resources used for tracking failures, displaying process start and time of failures. This includes displaying process loop counts regarding failures.
3
rdLevel Tree View – Defect
- This level depicts all columns populated in tree view for communicating defects. A checkbox indicates if a defect has been opened or closed. The system displays defect categories, defect types and defect locations of the analysis. This includes displaying materials causing a defect during an analysis, an operator (i.e. analysis by) performing the analysis, date and time (i.e. analyzed at) regarding an analysis, route step of analysis, resources being used and displaying comments generated by an operator.
4
thLevel Tree View – Rework
- This level describes columns displaying detailed rework status. The system shows rework categories of the rework process, material names and operator performing (rework by) the rework process. The system displays dates and times of the rework process (i.e. worked at), route steps, resources being used and comments provided by an operator during the rework process and displays the “rework id” and termination information. This screen also displays routes, route steps regarding the rework process
![image2013-7-11 15:25:42.png](/.attachments/29919698.png)






### Adding Failures to WIP

When user started a WIP, a STARTED process record will be added to the grid view. User is able to right click on the record and a menu will be displayed. Menu contains these features:

- Show Operation Details


- A pop up screen will be loaded to display the Operation View of the WIP at that Route Step

- Add Failure


- A pop up screen will be displayed to allow user to add Failure

- Add Defect With No Analysis


- A pop up screen will be displayed to allow user to add Defect. An auto-generated failure record will be created by system and associates with the defect added by user.

- Add Attachment


- A pop up screen will be displayed to allow user to add attachment files

![image2013-7-11 15:28:26.png](/.attachments/29919697.png)



Click on “Add Failure” in right-click menu, a pop up screen will be displayed. User shall be able to select Failure label that has been configured in system. User shall also be able to manual enter the Failure Label and Failure Message.
![image2013-7-11 15:29:44.png](/.attachments/29919696.png)



<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Failure Label</p></td><td class="confluenceTd"><p>User can search for Failure labels that have been pre-configured in the system. It also allows users to manually enter failure labels.</p></td></tr><tr><td class="confluenceTd"><p>Message</p></td><td class="confluenceTd"><p>Selected failure message will be displayed here.  System also allows users to manually enter failure messages.</p></td></tr><tr><td class="confluenceTd"><p>Add Failure Button</p></td><td class="confluenceTd"><p>This button allows user to add the failure to the WIP.</p></td></tr></tbody></table>

**Users can delete a failure by right-clicking on the defect. User can delete a failure that has been added within the same session (i.e. a WIP start that has not been completed).** 
![image2013-7-11 15:32:46.png](/.attachments/29919695.png)






### Adding Defects to WIP

Users can add defects to a failure by right clicking on the failure record in the grid view. The system allows users to enter a Defect ID for loading defect types.  Defect categories are related to defect types which are selected by end users. Users can select Customer Defect that have been pre-configured in the system. The system allows users to choose a method for adding defects.  They can add defects against component reference designator (CRD), bill of material (BOM) item and assembled material. End users are permitted to choose a material name (i.e. defective material) for recording a defect and displaying material descriptions. If end users choose the CRD method; the system permits selecting a defective materials location. The system also displays a complete list of CRDs regarding WIP. Team members can enter termination information, material quantities and comments. The “add defect” button prompts the system to enter a record and refresh the main display.  The Phoenix system confirms required fields have been populated. If not, an error message is presented and activity is terminated.


If user attempts to start a WIP where its previous failure label has no defect analysis attach to it, system automatically assigns a No Analysis defect type on the previous failure label. 
Example:<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Date Time</th><th class="confluenceTh">Failure Label</th><th class="confluenceTh">Defect Type</th></tr><tr><td class="confluenceTd">5/5/2014 11:00:00AM</td><td class="confluenceTd">Electrical Shock</td><td class="confluenceTd">-</td></tr><tr><td colspan="1" class="confluenceTd"><span>5/5/2014 11:00:00AM</span></td><td colspan="1" class="confluenceTd">No Boot</td><td colspan="1" class="confluenceTd">Cable Problem</td></tr><tr><td colspan="3" style="text-align: center;" class="confluenceTd"><em>Restart WIP at 5/5/2014 11:30:00AM</em></td></tr><tr><td colspan="1" class="confluenceTd"><span>5/5/2014 11:30:00AM</span></td><td colspan="1" class="confluenceTd"><span>Electrical Shock</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,255);">No Analysis</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>5/5/2014 11:30:00AM</span></td><td colspan="1" class="confluenceTd"><span>No Boot</span></td><td colspan="1" class="confluenceTd"><span>Cable Problem</span></td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Defect Id</p></td><td class="confluenceTd"><p>Every defect type is associated to a Defect Id. User shall be able to enter the Id without the needs to browse through a list of defect types.</p></td></tr><tr><td class="confluenceTd"><p>Defect Category</p></td><td class="confluenceTd"><p>Display the defect category that is associated to the selected Defect Type</p></td></tr><tr><td class="confluenceTd"><p>Jabil Defect</p></td><td class="confluenceTd"><p>User shall be able to browse through a list of Jabil Defects to make selection. Selected defect type will be added to the fail WIP at the end of the process.</p></td></tr><tr><td class="confluenceTd"><p>Indict By CRD</p></td><td class="confluenceTd"><p>System allow user to record the defect against the material's CRD</p></td></tr><tr><td class="confluenceTd"><p>Indict By Browse BOM Item</p></td><td class="confluenceTd"><p>System allow user to record the defect against BOM Item.</p></td></tr><tr><td class="confluenceTd"><p>Indict By Assembled Material</p></td><td class="confluenceTd"><p>System allow user to record the defect against assembled material. If this is selected, a list of assembled parts will be displayed for user selection.</p></td></tr><tr><td class="confluenceTd"><p>Indicted Material</p></td><td class="confluenceTd"><p>Allow user to select the BOM item of the material. This field will only be active if user selects Indict By Bom Item</p></td></tr><tr><td class="confluenceTd"><p>Material Description</p></td><td class="confluenceTd"><p>This field will display the description of the selected BOM item.</p></td></tr><tr><td class="confluenceTd"><p>Location</p></td><td class="confluenceTd"><p>Allow user to select the CRD of the defect material. This field will only be active if user selects Indict By CRD</p></td></tr><tr><td class="confluenceTd"><p>Termination</p></td><td class="confluenceTd"><p>Allow user to enter the quantity of termination of the components</p></td></tr><tr><td class="confluenceTd"><p>Qty</p></td><td class="confluenceTd"><p>Allow user to enter the quantity of defective parts</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>Allow user enter comments for the defect</p></td></tr><tr><td class="confluenceTd"><p>Add Defect Button</p></td><td class="confluenceTd"><p>This button allow user to add the selections into the main screen grid view.</p></td></tr></tbody></table>

**System allow user to record the defect against the material’s CRD** 
Indict By Browse BOM Item
System allow user to record the defect against BOM Item.
Indict By Assembled Material
System allow user to record the defect against assembled material. If this is selected, a list of assembled parts will be displayed for user selection.
Indicted Material
Allow user to select the BOM item of the material. This field will only be active if user selects Indict By Bom Item
Material Description
This field will display the description of the selected BOM item.
Location
Allow user to select the CRD of the defect material. This field will only be active if user selects Indict By CRD
Termination
Allow user to enter the quantity of termination of the components
Qty
Allow user to enter the quantity of defective parts
Comments
Allow user enter comments for the defect
Add Defect Button
This button allow user to add the selections into the main screen grid view.

The end user can delete a defect by right-clicking on the defect.  Users can only delete a defect that has been added within the same session (i.e. a WIP start that has not been completed). If a defect contains a rework added within the same session, when a defect is removed, the rework is removed if it is not a replacement. If a defect contains a replacement rework added within the same session, the defect cannot be removed.
![image2013-7-11 15:43:40.png](/.attachments/29919692.png)




### Adding Rework to WIP


Users can add rework against a defect by right clicking on the defect record in grid view. The system will pop up a screen and display the Defect ID regarding defect types and shows a defect category associated to the defect type.  The system exhibits defect types, dates and times relating to the analysis process. The defect by field indicates the operator performing an analysis and displaying comments added.  The system allows end users to select rework categories that have been performed on a defect type.  A complete rework work category list has been configured in the rework category maintenance screen.  The “add rework” button prompts the system to enter records and refreshes the main display.  The Phoenix system confirms required fields have been populated, if not an error message is presented and activity is terminated.
![image2013-7-11 15:47:2.png](/.attachments/29919691.png)


![image2013-7-11 15:47:53.png](/.attachments/29919690.png)


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Defect Id</p></td><td class="confluenceTd"><p>Every defect type is associated to a Defect Id. User shall be able to enter the Id without the needs to browse through a list of defect types.</p></td></tr><tr><td class="confluenceTd"><p>Defect Category</p></td><td class="confluenceTd"><p>Display the defect category that is associated to the defect type</p></td></tr><tr><td class="confluenceTd"><p>Defect Type</p></td><td class="confluenceTd"><p>Display the defect type that is associated to the failure</p></td></tr><tr><td class="confluenceTd"><p>Defect Date/Time</p></td><td class="confluenceTd"><p>The date and time of the analysis when the defect is added to the failure</p></td></tr><tr><td class="confluenceTd"><p>Defect By</p></td><td class="confluenceTd"><p>The user who performed the analysis and added the defect to the failure</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>Additional remarks that has been added by the user who performed the analysis.</p></td></tr><tr><td class="confluenceTd"><p>Rework Category</p></td><td class="confluenceTd"><p>User is able to select the rework category that has been pre-configured in the system. If replacement type rework category is selected, Indicted Material will be displayed and user has to add replacement identifier (serial number of the WIP/Material)</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>User is able to add in additional remarks for the rework. This is an optional field.</p></td></tr><tr><td class="confluenceTd"><p>Indicted Material</p></td><td class="confluenceTd"><p>This field will be displayed and enabled if Rework Category that need need replacement is selected. System will display the material and serial number of the material to be replaced.</p></td></tr><tr><td class="confluenceTd"><p>Replacement Identifier</p></td><td class="confluenceTd"><p>This field will be displayed and enabled if Rework Category that need replacement is selected. System allow user to enter the serial number of the replacement material.</p></td></tr></tbody></table>

**Users can delete rework by right-clicking on the rework.  User can only remove rework that has been added within the same session (i.e. a WIP start that has not been completed). An end user is not allowed to remove a rework that involves material replacement.** 
![image2013-7-11 15:49:39.png](/.attachments/29919689.png)




### Adding Attachments


Phoenix permits users to select an attachment type (i.e. image or other) and enter comments regarding attachments. They can add attachments to the WIP, Failure, Defect or Rework. The file selector (choose file button) permits users to attach files and the “add attachment” button allows team members to add a selected document. 
![image2013-7-11 15:51:25.png](/.attachments/29919688.png)


<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Wip Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Id</p></td><td class="confluenceTd"><p>This is the ID of the WIP in system</p></td></tr><tr><td class="confluenceTd"><p>Shop Floor Order</p></td><td class="confluenceTd"><p>The SFO that is associated to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>The serial number of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>Display the Batch number of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Order</p></td><td class="confluenceTd"><p>This is the Customer/ Planned Order that is associated to the WIP</p></td></tr><tr><td class="confluenceTd"><p>BOM</p></td><td class="confluenceTd"><p>Display the BOM of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Last Location</p></td><td class="confluenceTd"><p>Display the last location that the WIP has been processed</p></td></tr><tr><td class="confluenceTd"><p>Current Status</p></td><td class="confluenceTd"><p>Display the latest status of the WIP</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Add Attachment</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Attachment Type</p></td><td class="confluenceTd"><p>User is able to select the file type of the attachment.</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>User is able to add in additional remarks for the attachment</p></td></tr><tr><td class="confluenceTd"><p>File</p></td><td class="confluenceTd"><p>User is able to select a file that is stored in local drive</p></td></tr><tr><td class="confluenceTd"><p>Add Attachment Button</p></td><td class="confluenceTd"><p>This button will trigger the system to add upload and add the attachment information into the grid view</p></td></tr><tr><td class="confluenceTd"><p>Wip Status</p></td><td class="confluenceTd"><p>Display the latest status of the WIP</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Attachments</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>View/D</p></td><td class="confluenceTd"><p>This button will trigger the system to load the attachment.</p></td></tr><tr><td class="confluenceTd"><p>Delete</p></td><td class="confluenceTd"><p>This button will trigger the system to delete the attachment</p></td></tr><tr><td class="confluenceTd"><p>File</p></td><td class="confluenceTd"><p>Display the file name of the attachment</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>Display the additional remarks that has been added by user</p></td></tr><tr><td class="confluenceTd"><p>Created By</p></td><td class="confluenceTd"><p>Display the user who uploaded the attachment</p></td></tr><tr><td class="confluenceTd"><p>Created On</p></td><td class="confluenceTd"><p>Display the date and time when the attachment is being uploaded</p></td></tr><tr><td class="confluenceTd"><p>Attachment Type</p></td><td class="confluenceTd"><p>Display the file type of the attachment</p></td></tr></tbody></table>



### **Showing Machine False Calls** 


Phoenix is capable of loading machine false call screens. This only applies to machines that have the capability to integrate with Phoenix system.
![image2013-7-11 15:53:33.png](/.attachments/29919687.png)




#### Attachments

[image2014-5-20 23:33:4.png](/.attachments/29919686.png)
[image2013-7-11 15:53:33.png](/.attachments/29919687.png)
[image2013-7-11 15:51:25.png](/.attachments/29919688.png)
[image2013-7-11 15:49:39.png](/.attachments/29919689.png)
[image2013-7-11 15:47:53.png](/.attachments/29919690.png)
[image2013-7-11 15:47:2.png](/.attachments/29919691.png)
[image2013-7-11 15:43:40.png](/.attachments/29919692.png)
[image2013-7-11 15:41:8.png](/.attachments/29919693.png)
[image2013-7-11 15:40:32.png](/.attachments/29919694.png)
[image2013-7-11 15:32:46.png](/.attachments/29919695.png)
[image2013-7-11 15:29:44.png](/.attachments/29919696.png)
[image2013-7-11 15:28:26.png](/.attachments/29919697.png)
[image2013-7-11 15:25:42.png](/.attachments/29919698.png)
[image2013-7-11 14:46:32.png](/.attachments/29919699.png)
[image2013-7-11 14:44:0.png](/.attachments/29919700.png)
[image2013-7-11 14:39:42.png](/.attachments/29919701.png)
[image2013-5-16 15:49:31.png](/.attachments/29919702.png)
[image2013-5-16 15:48:1.png](/.attachments/29919703.png)
[image2013-5-16 14:45:25.png](/.attachments/29919704.png)
[image2013-5-16 14:40:0.png](/.attachments/29919705.png)
[image2013-5-16 13:51:50.png](/.attachments/29919706.png)
[image2013-5-16 13:31:15.png](/.attachments/29919707.png)
[image2013-5-10 14:37:31.png](/.attachments/29919708.png)
[image2013-5-10 14:32:35.png](/.attachments/29919709.png)
[image2013-5-10 11:28:34.png](/.attachments/29919710.png)
[image2013-5-9 14:59:10.png](/.attachments/29919711.png)
[image2013-5-9 14:42:36.png](/.attachments/29919712.png)
[image2013-5-9 14:40:52.png](/.attachments/29919713.png)
[image2013-5-9 14:12:44.png](/.attachments/29919714.png)
[image2013-5-9 14:11:32.png](/.attachments/29919715.png)
[image2013-5-9 11:30:2.png](/.attachments/29919716.png)
