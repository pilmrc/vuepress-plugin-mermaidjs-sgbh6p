# Introduction

The Phoenix system permits end users to inspect and place a failure/defect if the identified material is nonconforming. The examination of the original cause regarding the non-conformance is the analysis process. All non-conformance added are required to be closed. This is where the rework phase starts to find the root cause of the non conformance and perform the necessary repair/replace action to close the failure/defect.  Both inspection and rework operations share a similar interface. The ability of the station to perform different operations will depend on the configuration in Route Step Type screen.


### **How to get there?** 



::: mermaid
graph LR
A("1. GENERIC WORKSTATION")-->0("2. SCAN RESOURCE NAME")
0-->1("3. SCAN SERIAL NUMBER THAT IS ENQUEUED AT INSPECTION AND REWORK STEP")

:::
![image2015-5-28 15:55:18.png](/.attachments/29919616.png)




#### Screen Activity



Inspection and Rework station enables user to perform the following activity:

Note: The availability of these functions are based on the route step's route step type configuration. 

- Pass a WIP inspection

- Fail a WIP inspection by adding a failure. To allow this function, ensure "Allow Failures" is enabled in Route Step Type Maintenance.

- Fail a WIP inspection by adding a defect.
To allow this function, ensure "Allow Defects" is enabled in Route Step Type Maintenance.
- Perform rework on open defect.
To allow this function, ensure "Allow Defects" is enabled in Route Step Type Maintenance.



#### Pre Condition



The following data needs to be pre-configured (if used)


- [F](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Resource-Type-Maintenance.md)
[ailure Labe](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure-Label/Failure-Label-(3.0).md)lneeds to be configured to display the list of failure labels for user selection when adding a failure
- [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
needs to be pre-loaded by system administrator to display the list of defects for user selection when adding a defect. 
Note: Defect types should adhere to the global quality approved defects and should not be simply added by anyone.
- [Rework Category](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Repair-&-Rework/Rework-Category.md)
needs to be configured to display the list of rework categories for user selection when adding a rework
- Route Step's
[Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)needs to be properly configured to control specific action allowable at the inspection and rework step 



#### Screen Dependency



The following screen(s) has direct dependency with Inspection and Rework

- *[Failure Label (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure-Label/Failure-Label-(3.0).md)*

- *[Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)*

- *[Rework Category](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Repair-&-Rework/Rework-Category.md)*

- *[Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*

- Quality Reports



#### **Inspection and Rework interface** 


![image2015-5-28 16:9:50.png](/.attachments/29919612.png)


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><ol><li>WIP Serial Number</li></ol></td><td colspan="1" class="confluenceTd">Displays the WIP Serial Number being inspected. Clicking on the Serial Number brings up the WIP View window that provide details of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">2. Material</td><td colspan="1" class="confluenceTd">Displays the material of the WIP being inspected</td></tr><tr><td class="confluenceTd"><p>3. Arrive/Complete Button</p></td><td class="confluenceTd"><p><span>Arrive button - Record the arrival date and time of the WIP into the system. Will change to "Complete" after the WIP is started<br />Complete button - Completes the WIP in the route step </span></p></td></tr><tr><td colspan="1" class="confluenceTd">4. Start/Abort Button</td><td colspan="1" class="confluenceTd"><span>Start button - Starts the WIP in the route step<br />Abort - Abort the current operation. <br />Note on Abort: If a failure or defect was added and user aborts the operation in FRU QC, when the WIP is restarted in FRU QC, the open failure/defect will be auto closed by the system. This is because system treats the abort as an incomplete action and restarting of the WIP signals a brand new inspection session. However, if the WIP is brought to a different inspection and rework other than FRU QC, the open failure/defect will not be auto-closed by the system. System will only auto-close failure/defect if the WIP was aborted and restarted at the <u>same</u> route step.</span></td></tr><tr><td colspan="1" class="confluenceTd">5. WIP Status box</td><td colspan="1" class="confluenceTd"><p>Provides the inspection status of the WIP. <br /><br />These are the following statuses displayed:</p><ul><li>Not Started</li><li>Pass (<span>When the WIP contains no open failure or defect. Completing the inspection when this result is displayed will give the WIP a Pass status)</span></li><li>Fail (<span>When the WIP contains an open failure or defect. <span>Completing the inspection when this result is displayed will give the WIP a Fail status</span>)</span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">. </span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">6. Deselect All check box</td><td colspan="1" class="confluenceTd"><span>Allows user to de-select all selections. failures to apply the analysis details</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>7. Select All check box</span></td><td colspan="1" class="confluenceTd"><span>Multiple failures can be found/added within an inspection instance .<span>Allows user to select all failures to apply the analysis details</span></span></td></tr><tr><td colspan="1" class="confluenceTd">8. All Failures</td><td colspan="1" class="confluenceTd">Filter and displays the WIPs past failures</td></tr><tr><td colspan="1" class="confluenceTd">9. Open Failures</td><td colspan="1" class="confluenceTd">Filter and displays only open failure for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">10. Failure section</td><td colspan="1" class="confluenceTd">Displays all the failures recorded for this WIP</td></tr><tr><td colspan="1" class="confluenceTd">11. Open Defects</td><td colspan="1" class="confluenceTd"><span>Displays all open defects recorded for this WIP</span></td></tr><tr><td colspan="1" class="confluenceTd">12. Closed Defects</td><td colspan="1" class="confluenceTd"><span>Displays all closed defects after the WIP has been reworked</span></td></tr></tbody></table>








- #### **Arrive a WIP**



- Click the Arrive button to arrive the WIP at the inspection step


Note: It is not necessary to arrive the WIP before starting inspection. Arrive the WIP only if there is a business need to record the time as soon as the WIP reaches the inspection station. This is to record the WIP aging time waiting to be inspected. User is still required to click the Start button to begin inspection work.


#### Start a WIP




- Click the Start button to start the WIP at the inspection step


Passing a WIP inspection


- After the WIP is started, the system will determine if there was an open failure/defect for the WIP. If no open failure/defect, the WIP status box will display a Green "Pass" result.


- Click on the Complete button. The WIP will complete at this step with a Pass result



![image2015-5-29 10:15:16.png](/.attachments/29919611.png)




#### Adding a Failure




- After the WIP is started, click on the "Add Failure" button to bring up the Add Failure wizard.


- In the Add Failure window, there are two options to add a failure to the WIP


- Select Failure Label (Choose to add a pre-defined Failure Label that was created in

[Failure Label Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure-Label/Failure-Label-(3.0).md))
- Create Failure Label (On the spot creation of the failure label)

3. Click the "Confirm" button to add the failure to the WIP 

![image2015-5-29 10:20:44.png](/.attachments/29919610.png)



4.  Once the failure is added, the WIP Status box is changed to "Fail"
5. The trash can icon next to the failure allows user to delete the failure added within the current inspection session. 

Note: Deletion of failures and defects added in previous inspection sessions are not allowed. 6. Click in the "Failure Details" to view more information about the failure
![image2015-5-29 10:44:1.png](/.attachments/29919607.png)





#### View Failure Details


![image2015-5-29 10:42:46.png](/.attachments/29919608.png)



<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Recorded By</td><td class="confluenceTd">The user who added the failure</td></tr><tr><td colspan="1" class="confluenceTd">Failure Date</td><td colspan="1" class="confluenceTd">The time when the failure was recorded</td></tr><tr><td colspan="1" class="confluenceTd">Route/Route Step</td><td colspan="1" class="confluenceTd">The Route and Route Step where the failure was recorded</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The Resource where the failure was recorded</td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">The time when the WIP was started at the inspection route step</td></tr><tr><td colspan="1" class="confluenceTd">End Time</td><td colspan="1" class="confluenceTd">The time when the WIP completed the inspection route step. The End Time will be blank if the WIP is still in progress in the inspection route step</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,51,102);">Process Loop Count</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The number of times the WIP has been started/processed in this inspection step</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure Label</td><td colspan="1" class="confluenceTd">The failure label recorded</td></tr><tr><td colspan="1" class="confluenceTd">Failure Message</td><td colspan="1" class="confluenceTd">The failure message associated to the failure label</td></tr></tbody></table>




#### Adding a Defect





- Select the Failure to add an analysis record (add defect)


- Click on the "Add Defect" button to bring up the Add Defect wizard.

![image2015-5-29 10:47:19.png](/.attachments/29919605.png)


**Add Defect Wizard - Step 1** 
Select the Defect Type from the drop down list. User can also perform a defect type search by entering text in the Search Defects search box. Click the Next button. 
![image2015-5-29 10:54:45.png](/.attachments/29919601.png)


**Add Defect Wizard - Step 2** 
There are 3 options to select the material where the defect is found. 

- CRD (Define the Component Reference Designator/Location where the defect is found. CRD will directly associate the material assembled at that location as defective. This option is commonly used for SMT manufacturing where each component assembled in the circuit board is designated a CRD)


- Assembled Item (List all the materials that has been assembled to the WIP. This option is commonly used in the BTO/CTO manufacturing)

- BOM Item (List all materials from the WIP's BOM including phantom materials. To display the BOM Items, in the "Assembled Item" option, select the parent line item also known as the WIP's material name. Then click the "BOM Item" option)
Once the defective material is selected, click the Next button
![image2015-5-29 10:50:39.png](/.attachments/29919603.png)


**Add Defect Wizard - Step 3** 

Provide details of the defect. Once completed, click Save to add the defect to the WIP.
![image2015-5-29 10:51:29.png](/.attachments/29919602.png)


Defect is added. 
The trash can icon next to the defect allows user to delete the defect added within the current inspection session. 
Deletion of failures and defects added in previous inspection sessions are not allowed. 

User may repeat the steps above to add any additional failure/defect found. Once the inspection is completed. Click the Complete button. System will en-queue the WIP to the next route step according to the routing rule. Normally, a defective WIP will be routed to the rework station.
![image2015-5-29 11:11:18.png](/.attachments/29919600.png)


A Defect may be added by an operator without a failure label. In such event, system will auto generate a failure label when the defect was added. You will notice the autogenerated failure with a failure message "Symptom was auto generated by Inspection and Rework Station"
![image2015-5-29 16:26:39.png](/.attachments/29919590.png)




#### View Open Defect Details


![image2015-5-29 16:11:42.png](/.attachments/29919591.png)



<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The defective material</td></tr><tr><td class="confluenceTd">Identifier</td><td class="confluenceTd">The identifier of the defective material</td></tr><tr><td class="confluenceTd">Defect</td><td class="confluenceTd">The defect recorded for the material</td></tr><tr><td colspan="1" class="confluenceTd">Defect Date</td><td colspan="1" class="confluenceTd">The date/time when the defect is recorded</td></tr><tr><td colspan="1" class="confluenceTd">Termination</td><td colspan="1" class="confluenceTd">In Inspection & Rework, this field represents number of defective connecting points/pins of a component to a board</td></tr><tr><td colspan="1" class="confluenceTd">Pass Status</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(34,34,34);">Overall WIP's status of either the WIP has passed or still fails</span></p><p><span style="color: rgb(34,34,34);">Types of statuses:<br />Unconfirmed, Confirmed, Incorrect</span></p><p><span style="color: rgb(34,34,34);">Unconfirmed is when the there is pending retest/re-inspection for the failure. <br />Confirmed and Incorrect status are given based on the following truth table<br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919592.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919592.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919592" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-29 14:51:6.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919589" data-linked-resource-container-version="1" /></span> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(34,34,34);">Analysis status to determine the operator's analysis accuracy</span></p><p><span style="color: rgb(34,34,34);">Refer above for the definition of each status</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Route Step</td><td colspan="1" class="confluenceTd">The route and route step where the defect was recorded</td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd">The user that recorded the defect</td></tr></tbody></table>







#### Adding a Rework




- Login to the rework station. Follow the same steps as how you login into the QC station. You'd need to specify the correct resource name for the rework station.


Note: If you are unable to add a rework, check the route step allows you to perform a rework. Go to the route step's [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)configuration. Ensure "Allow Rework" is enabled.
- Start the WIP at the rework station


- Drag and drop the open defect to the Closed Defects section


- The Add Rework window is displayed. Select the rework category. If the defective material has a Serial Number, selecting rework category of "Replacement" type will prompt the user to enter the replacement identifier (Replacement Serial Number).


- Enter Rework Comment


- Once the rework details is entered, click on the "Confirm" button


- After all the open defects are reworked, the WIP Status box will be updated from "Fail" to "Pass"


Click on the "Complete" button to complete rework
![image2015-5-29 11:22:59.png](/.attachments/29919598.png)


![image2015-5-29 14:16:19.png](/.attachments/29919596.png)



<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Rework Category</td><td class="confluenceTd"><span style="font-size: 10.0pt;line-height: 13.0pt;">Rework categories in the drop down list are maintained in <a href="Rework-Category-29919806.html">Rework Category Maintenance</a>. The determination of whether the rework category is of "Replacement" type is configured in Rework Category Maintenance. For rework categories that is of "replacement type", they need to be configured with "Is Replacement" enabled. Only rework categories with "Is Replacement" enabled will prompt for a replacement identifier at rework.<br />  <br />The standard rework categories configured are:</span><ul><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Repair</span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Replace</span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Repair and Replace</span></li><li><span style="font-size: 10.0pt;line-height: 13.0pt;">False Call</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Rework Comment</td><td colspan="1" class="confluenceTd">User to provide additional details of the rework action</td></tr><tr><td colspan="1" class="confluenceTd">Identifier</td><td colspan="1" class="confluenceTd">Only prompts if the rework category is of "Replacement" type. User is required to enter a replacement</td></tr><tr><td colspan="1" class="confluenceTd">Material (read only)</td><td colspan="1" class="confluenceTd">The material being reworked</td></tr><tr><td colspan="1" class="confluenceTd">Identifier (read only)</td><td colspan="1" class="confluenceTd">The original defective material's identifier</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Cancels the rework action</td></tr><tr><td colspan="1" class="confluenceTd">Confirm</td><td colspan="1" class="confluenceTd">Saves the rework activity. <span>Rework category of "replacement type" cannot be removed once it is confirmed. Non replacement rework category can be removed only if they are added within the current rework session </span></td></tr></tbody></table>




- After all the open defects are reworked, the WIP Status box will be updated from "Fail" to "Pass"

![image2015-5-29 14:35:56.png](/.attachments/29919594.png)





#### View Rework Details


Click on the desired closed defects in the Closed Defects section. The Closed Defect Details is displayed containing the rework details. 

![image2015-5-29 14:38:30.png](/.attachments/29919593.png)


<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="2" class="confluenceTd">Closed Defect Details contain the same information as found in the Open Defect Details window. Refer to the View Open Defect Details section above for field definitions.</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td colspan="1" class="confluenceTd">The rework category entered when performing the rework</td></tr><tr><td colspan="1" class="confluenceTd">Replacement Identifier</td><td colspan="1" class="confluenceTd">The replacement identifier. Only applicable for rework category of "replacement type"</td></tr><tr><td colspan="1" class="confluenceTd">Rework Route/Route Step</td><td colspan="1" class="confluenceTd">The route and route step where the rework is performed</td></tr><tr><td colspan="1" class="confluenceTd">Reworked By</td><td colspan="1" class="confluenceTd">The user that performed the rework</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Rework comment recorded when performing the rework</td></tr></tbody></table>





#### Attachments

[image2015-5-29 16:26:39.png](/.attachments/29919590.png)
[image2015-5-29 16:11:42.png](/.attachments/29919591.png)
[image2015-5-29 14:51:6.png](/.attachments/29919592.png)
[image2015-5-29 14:38:30.png](/.attachments/29919593.png)
[image2015-5-29 14:35:56.png](/.attachments/29919594.png)
[image2015-5-29 14:35:6.png](/.attachments/29919595.png)
[image2015-5-29 14:16:19.png](/.attachments/29919596.png)
[image2015-5-29 14:10:51.png](/.attachments/29919597.png)
[image2015-5-29 11:22:59.png](/.attachments/29919598.png)
[image2015-5-29 11:20:44.png](/.attachments/29919599.png)
[image2015-5-29 11:11:18.png](/.attachments/29919600.png)
[image2015-5-29 10:54:45.png](/.attachments/29919601.png)
[image2015-5-29 10:51:29.png](/.attachments/29919602.png)
[image2015-5-29 10:50:39.png](/.attachments/29919603.png)
[image2015-5-29 10:49:53.png](/.attachments/29919604.png)
[image2015-5-29 10:47:19.png](/.attachments/29919605.png)
[image2015-5-29 10:46:39.png](/.attachments/29919606.png)
[image2015-5-29 10:44:1.png](/.attachments/29919607.png)
[image2015-5-29 10:42:46.png](/.attachments/29919608.png)
[image2015-5-29 10:39:25.png](/.attachments/29919609.png)
[image2015-5-29 10:20:44.png](/.attachments/29919610.png)
[image2015-5-29 10:15:16.png](/.attachments/29919611.png)
[image2015-5-28 16:9:50.png](/.attachments/29919612.png)
[image2015-5-28 16:8:47.png](/.attachments/29919613.png)
[image2015-5-28 16:5:16.png](/.attachments/29919614.png)
[image2015-5-28 15:57:45.png](/.attachments/29919615.png)
[image2015-5-28 15:55:18.png](/.attachments/29919616.png)
[image2013-5-9 11:30:2.png](/.attachments/29919617.png)
[image2013-5-9 14:11:32.png](/.attachments/29919618.png)
[image2013-5-9 14:12:44.png](/.attachments/29919619.png)
[image2013-5-9 14:40:52.png](/.attachments/29919620.png)
[image2013-5-9 14:42:36.png](/.attachments/29919621.png)
[image2013-5-9 14:59:10.png](/.attachments/29919622.png)
[image2013-5-10 11:28:34.png](/.attachments/29919623.png)
[image2013-5-10 14:32:35.png](/.attachments/29919624.png)
[image2013-5-10 14:37:31.png](/.attachments/29919625.png)
[image2013-5-16 13:31:15.png](/.attachments/29919626.png)
[image2013-5-16 13:51:50.png](/.attachments/29919627.png)
[image2013-5-16 14:40:0.png](/.attachments/29919628.png)
[image2013-5-16 14:45:25.png](/.attachments/29919629.png)
[image2013-5-16 15:48:1.png](/.attachments/29919630.png)
[image2013-5-16 15:49:31.png](/.attachments/29919631.png)
[image2013-7-11 14:39:42.png](/.attachments/29919632.png)
[image2013-7-11 14:44:0.png](/.attachments/29919633.png)
[image2013-7-11 14:46:32.png](/.attachments/29919634.png)
[image2013-7-11 15:25:42.png](/.attachments/29919635.png)
[image2013-7-11 15:29:44.png](/.attachments/29919636.png)
[image2013-7-11 15:28:26.png](/.attachments/29919637.png)
[image2013-7-11 15:40:32.png](/.attachments/29919638.png)
[image2013-7-11 15:32:46.png](/.attachments/29919639.png)
[image2013-7-11 15:43:40.png](/.attachments/29919640.png)
[image2013-7-11 15:41:8.png](/.attachments/29919641.png)
[image2013-7-11 15:47:53.png](/.attachments/29919642.png)
[image2013-7-11 15:47:2.png](/.attachments/29919643.png)
[image2013-7-11 15:51:25.png](/.attachments/29919644.png)
[image2013-7-11 15:49:39.png](/.attachments/29919645.png)
[image2013-7-11 15:53:33.png](/.attachments/29919646.png)
[image2014-5-20 23:33:4.png](/.attachments/29919647.png)
