# Introduction

iFactory permits end users to inspect and place a defect if the identified material is nonconforming. The examination of the original cause regarding the non-conformance is the analysis process. All non-conformance added are required to be closed. This is where the rework phase starts to find the root cause of the non conformance and perform the necessary repair/replace action to close the failure/defect.  Both inspection and rework operations share a similar interface. The ability of the station to perform different operations will depend on the configuration in Route Step Type screen.
In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
WIP can be updated with the "Last Scanned Manufacturing Area" of the operation station completed. With the Manufacturing Area of the WIP during the operation start, system refer to "Restrict to Manufacturing Area Change" option at Route Step, if turned On, user will be stopped to change the Manufacturing Area whereas if turned Off to allow WIP to be changed to other Manufacturing Area.
If Option is turned On, scanned WIP to be notified that the Resource at the Route Step have different Manufacturing Area whereas the option is turned Off, WIP can into resource at Route Step other than the Manufacturing Area and "Last Scanned Manufacturing Area" of the WIP to be changed to the Manufacturing Area of Resource at Route Step.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
ON":
- If scanned WIP MA is same with scanned resource MA, operation start

- If scanned WIP MA is different than scanned resource MA, system to prompt toaster message and operation halt.

- If the Route Step option "Restrict WIP Manufacturing Area Change" is turned "
OFF":
- Operation start

- "Last scanned Manufacturing Area" of the WIP change to the MA of the Route Step

- If scanned WIP MA is same with scanned resource MA, Operation start

- If scanned WIP MA is different than the scanned resource MA:


### **How to get there?** 




Method 1: Using Generic Workstation


::: mermaid
graph LR
A("1. GENERIC WORKSTATION")-->0("2. SCAN RESOURCE NAME")
0-->1("3. SCAN SERIAL NUMBER THAT IS ENQUEUED AT INSPECTION AND REWORK STEP")

:::
![](/.attachments/29919616.png)


**Method 2: Using Stations Login** 

::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK INSPECTION & REWORK ICON")

:::
![](/.attachments/29919666.png)




#### Screen Activity



Inspection and Rework station enables user to perform the following activity:

Note: The availability of these functions are based on the route step's route step type configuration. 

- Pass a WIP inspection

- Fail a WIP inspection by adding a defect. To allow this function, ensure "Allow Defects" is enabled in Route Step Type Maintenance.

- Perform rework on open defect. To allow this function, ensure "Allow Defects" is enabled in Route Step Type Maintenance.




#### Pre Condition



The following data needs to be pre-configured (if used)

- [F](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Resource-Type-Maintenance.md)
[ailure Labe](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)l needs to be configured to display the list of failure labels for user selection when adding a failure
- [Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)
needs to be pre-loaded by system administrator to display the list of defects for user selection when adding a defect. 
Note: Defect types should adhere to the global quality approved defects and should not be simply added by anyone.
- [Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)
needs to be configured to display the list of rework categories for user selection when adding a rework
- Route Step's
[Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)needs to be properly configured to control specific action allowable at the inspection and rework step 



#### Screen Dependency



The following screen(s) has direct dependency with Inspection and Rework
- *[Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)*

- *[Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)*

- *[Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)*

- Quality Reports



#### Inspection and Rework interface



Screen will show how many units Completed/Started at current session.


- Re-entering the station or selecting the Refresh button will reset the Counter to Zero

- Abort Operation will not increase the Counter

![](/.attachments/29919657.png)




#### Assembly Progression


When all the defective units are reworked successfully (applicable only for repetitive Route step station) and user tries to complete Rework operation with PASS, assembly progression happens. If there are multiple configuration against same occurrence step, system populates window providing option to select one progression option to proceed with station operation completion. Once progression completes, WIP gets en-queued in following way:

- If there is only default configuration, WIP follows Default PASS rule of that step

- If there is only cross route configuration available, WIP follows only the assembly progression destination step(s)

- If both default and cross route configuration available, WIP follows both Default PASS destination step(s) and Progression cross route step(s) available in progression configuration
Note: Progression can happen only when user completes the step with PASS status. If user opts for document printing after assembly Progression (or at the same station of assembly progression configured), user has to assign the Document as per progressed assembly. Also system has feasibility to print both Original and Current assembly after progression.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><ol><li>WIP Serial Number</li></ol></td><td colspan="1" class="confluenceTd">Displays the WIP Serial Number being inspected. Clicking on the Serial Number brings up the WIP View window that provide details of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">2. Material</td><td colspan="1" class="confluenceTd">Displays the material of the WIP being inspected. Alias Assembly' Material to show if the blank CRD is selected if the WIP is converted to other Alias Assembly.</td></tr><tr><td class="confluenceTd"><p>3. Arrive/Complete Button</p></td><td class="confluenceTd"><p>Arrive button - Record the arrival date and time of the WIP into the system. Will change to "Complete" after the WIP is started<br />Complete button - Completes the WIP in the route step </p></td></tr><tr><td colspan="1" class="confluenceTd">4. Start/Abort Button</td><td colspan="1" class="confluenceTd">Start button - Starts the WIP in the route step<br />Abort - Abort the current operation. <br />Note on Abort: If a failure or defect was added and user aborts the operation in FRU QC, when the WIP is restarted in FRU QC, the open failure/defect will be auto closed by the system. This is because system treats the abort as an incomplete action and restarting of the WIP signals a brand new inspection session. However, if the WIP is brought to a different inspection and rework other than FRU QC, the open failure/defect will not be auto-closed by the system. System will only auto-close failure/defect if the WIP was aborted and restarted at the <u>same</u> route step.</td></tr><tr><td colspan="1" class="confluenceTd">5. WIP Status box</td><td colspan="1" class="confluenceTd"><p>Provides the inspection status of the WIP. <br /><br />These are the following statuses displayed:</p><ul><li>Not Started</li><li>Pass (When the WIP contains no open failure or defect. Completing the inspection when this result is displayed will give the WIP a Pass status)</li><li>Fail (When the WIP contains an open failure or defect. Completing the inspection when this result is displayed will give the WIP a Fail status)<span>. </span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">6. Deselect All check box</td><td colspan="1" class="confluenceTd">Allows user to de-select all selections. failures to apply the analysis details</td></tr><tr><td colspan="1" class="confluenceTd">7. Select All check box</td><td colspan="1" class="confluenceTd">Multiple failures can be found within an inspection instance .Allows user to select all failures to apply the analysis details</td></tr><tr><td colspan="1" class="confluenceTd">8. All Failures</td><td colspan="1" class="confluenceTd">Filter and displays the WIPs past failures</td></tr><tr><td colspan="1" class="confluenceTd">9. Open Failures</td><td colspan="1" class="confluenceTd">Filter and displays only open failure for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">10. Failure section</td><td colspan="1" class="confluenceTd">Displays all the failures recorded for this WIP</td></tr><tr><td colspan="1" class="confluenceTd">11. Open Defects</td><td colspan="1" class="confluenceTd">Displays all open defects recorded for this WIP</td></tr><tr><td colspan="1" class="confluenceTd"><span>12. Closed Defects</span></td><td colspan="1" class="confluenceTd"><span>Displays all closed defects after the WIP has been reworked</span></td></tr><tr><td colspan="1" class="confluenceTd">13. Completed/Started</td><td colspan="1" class="confluenceTd">The number of started and completed units for the current session. Restart a new session or Refresh button will restart the counter.</td></tr></tbody></table>








- #### Arrive a WIP



- Click the Arrive button to arrive the WIP at the inspection step


Note: It is not necessary to arrive the WIP before starting inspection. Arrive the WIP only if there is a business need to record the time as soon as the WIP reaches the inspection station. This is to record the WIP aging time waiting to be inspected. User is still required to click the Start button to begin inspection work.
- System could lookup WIP by associated UPD value, 'Is Lookup' configuration in UPD maintenance screen should be turned on, after lookup successfully system could perform arrive/start as normally.



#### Start a WIP




- Click the Start button to start the WIP at the inspection step


Passing a WIP inspection


- After the WIP is started, the system will determine if there was an open failure/defect for the WIP. If no open failure/defect, the WIP status box will display a Green "Pass" result.


- Click on the Complete button. The WIP will complete at this step with a Pass result



![](/.attachments/29919656.png)



Adding a Defect


- Select the Failure to add an analysis record (add defect)


- Click on the "Add Defect" button to bring up the Add Defect wizard.

![](/.attachments/29919655.png)


**Add Defect Wizard - Step 1** 
Select the Defect Type from the drop down list. User can also perform a defect type search by entering text in the Search Defects search box. Click the Next button. 
![](/.attachments/29919601.png)


User can also perform a defect type search by entering numeric defect ID  in the Search Defects search box. System will search and showing as long as any entering numeric defect ID is matched.
Click the Next button.

![image2021-7-7_16-5-22.png](/.attachments/94405383.png)




**Add Defect Wizard - Step 2** 
There are 3 options to select the material where the defect is found. 

- CRD (Define the Component Reference Designator/Location where the defect is found. CRD will directly associate the material assembled at that location as defective. This option is commonly used for SMT manufacturing where each component assembled in the circuit board is designated a CRD).


- Assembled Item (List all the materials that has been assembled to the WIP. This option is commonly used in the BTO/CTO manufacturing)

- All parts under any level of sub-assemblies are listed for selection.

- BOM Item (List all materials from the WIP's BOM including phantom materials. To display the BOM Items, in the "Assembled Item" option, select the parent line item also known as the WIP's material name. Then click the "BOM Item" option)
Once the defective material is selected, click the Next button
![image2021-7-7_16-5-22.png](/.attachments/29919603.png)


**Add Defect Wizard - Step 3** 

Provide details of the defect. Once completed, click Save to add the defect to the WIP.
![image2021-7-7_16-5-22.png](/.attachments/29919602.png)


Defect is added. 
The trash can icon next to the defect allows user to delete the defect added within the current inspection session. 
Deletion of failures and defects added in previous inspection sessions are not allowed. 

User may repeat the steps above to add any additional failure/defect found. Once the inspection is completed. Click the Complete button. System will en-queue the WIP to the next route step according to the routing rule. Normally, a defective WIP will be routed to the rework station.
![image2021-7-7_16-5-22.png](/.attachments/29919654.png)


A Defect may be added by an operator without a failure label. In such event, system will auto generate a failure label when the defect was added. You will notice the autogenerated failure with a failure message "Symptom was auto generated by Inspection and Rework Station"
![image2021-7-7_16-5-22.png](/.attachments/29919590.png)




#### View Open Defect Details


![image2021-7-7_16-5-22.png](/.attachments/29919591.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The defective material. Alias Assembly' Material to show if the blank CRD is selected if the WIP is converted to other Alias Assembly.</td></tr><tr><td class="confluenceTd">Identifier</td><td class="confluenceTd">The identifier of the defective material</td></tr><tr><td class="confluenceTd">Defect</td><td class="confluenceTd">The defect recorded for the material</td></tr><tr><td colspan="1" class="confluenceTd">Defect Date</td><td colspan="1" class="confluenceTd">The date/time when the defect is recorded</td></tr><tr><td colspan="1" class="confluenceTd">Termination</td><td colspan="1" class="confluenceTd">In Inspection & Rework, this field represents number of defective connecting points/pins of a component to a board</td></tr><tr><td colspan="1" class="confluenceTd">Pass Status</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span style="color: rgb(34,34,34);">Overall WIP's status of either the WIP has passed or still fails</span></p><p><span style="color: rgb(34,34,34);">Types of statuses:<br />Unconfirmed, Confirmed, Incorrect</span></p><p><span style="color: rgb(34,34,34);">Unconfirmed is when the there is pending retest/re-inspection for the failure. <br />Confirmed and Incorrect status are given based on the following truth table<br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919592.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919589/image2015-5-29%2014%3A51%3A6.png?version=1&modificationDate=1530103846087&api=v2" /></span> </span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Detail</td><td colspan="1" class="confluenceTd">Displays the defect details as entered by the operator when adding the defect</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd"><span>Displays the defect comment as entered by the operator <span>when adding the defect</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(34,34,34);">Analysis status to determine the operator's analysis accuracy</span></p><p><span style="color: rgb(34,34,34);">Refer above for the definition of each status</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Route Step</td><td colspan="1" class="confluenceTd">The route and route step where the defect was recorded</td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd">The user that recorded the defect</td></tr></tbody></table>







#### Adding a Rework




- Login to the rework station. Follow the same steps as how you login into the QC station. You'd need to specify the correct resource name for the rework station.


Note: If you are unable to add a rework, check the route step allows you to perform a rework. Go to the route step's [Inspection and Rework (4.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Inspection-and-Rework/Inspection-and-Rework-(4.0).md)configuration. Ensure "Allow Rework" is enabled.
- Start the WIP at the rework station


- Drag and drop the open defect to the Closed Defects section


- The Add Rework window is displayed. Select the rework category. If the defective material has a Serial Number, selecting rework category of "Replacement" type will prompt the user to enter the replacement identifier (Replacement Serial Number).


- Enter Rework Comment


- Once the rework details is entered, click on the "Confirm" button


- After all the open defects are reworked, the WIP Status box will be updated from "Fail" to "Pass"


Click on the "Complete" button to complete rework


Note: Rework Category "Rework" and "False Call" can be deleted within the same session. Rework Category "Replace" and "Remove Only" cannot be deleted once added as this action has changed the WIP's genealogy and data collected at rework. 


![image2021-7-7_16-5-22.png](/.attachments/29919649.png)


![image2021-7-7_16-5-22.png](/.attachments/29919596.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Rework Category</td><td class="confluenceTd"><span>Rework categories in the drop down list are maintained in <a href="29919648.html">Rework Category Maintenance</a>. The determination of whether the rework category is of "Replacement" type is configured in Rework Category Maintenance. For rework categories that is of "replacement type", they need to be configured with "Is Replacement" enabled. Only rework categories with "Is Replacement" enabled will prompt for a replacement identifier at rework.<br /><br />The standard rework categories configured are:</span><ul><li><span>Rework</span></li><li><span>Replace</span></li><li><span>Remove Only </span></li><li><span>False Call</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Rework Comment</td><td colspan="1" class="confluenceTd">User to provide additional details of the rework action</td></tr><tr><td colspan="1" class="confluenceTd">Identifier</td><td colspan="1" class="confluenceTd"><p>Only prompts if the rework category is of "Replacement" type. User is required to enter a replacement</p><p>When a part that is more than 1 level below the current in-process WIP is being replaced, a process history will be added to the parent of that part, with the current WIP route step information. The genealogy of the parent will also be updated to reflect the change of that part's identifier.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material (read only)</td><td colspan="1" class="confluenceTd">The material being reworked</td></tr><tr><td colspan="1" class="confluenceTd">Identifier (read only)</td><td colspan="1" class="confluenceTd">The original defective material's identifier</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Cancels the rework action</td></tr><tr><td colspan="1" class="confluenceTd">Confirm</td><td colspan="1" class="confluenceTd">Saves the rework activity. Rework category of "replacement type" cannot be removed once it is confirmed. Non replacement rework category can be removed only if they are added within the current rework session</td></tr></tbody></table>





- After all the open defects are reworked, the WIP Status box will be updated from "Fail" to "Pass"

![image2021-7-7_16-5-22.png](/.attachments/29919652.png)




#### View Rework Details


Click on the desired closed defects in the Closed Defects section. The Closed Defect Details is displayed containing the rework details. 

![image2021-7-7_16-5-22.png](/.attachments/29919593.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="2" class="confluenceTd">Closed Defect Details contain the same information as found in the Open Defect Details window. Refer to the View Open Defect Details section above for field definitions.</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td colspan="1" class="confluenceTd">The rework category entered when performing the rework</td></tr><tr><td colspan="1" class="confluenceTd">Replacement Identifier</td><td colspan="1" class="confluenceTd">The replacement identifier. Only applicable for rework category of "replacement type"</td></tr><tr><td colspan="1" class="confluenceTd">Rework Route/Route Step</td><td colspan="1" class="confluenceTd">The route and route step where the rework is performed</td></tr><tr><td colspan="1" class="confluenceTd">Reworked By</td><td colspan="1" class="confluenceTd">The user that performed the rework</td></tr><tr><td colspan="1" class="confluenceTd">Rework Detail</td><td colspan="1" class="confluenceTd"><span>Rework detail recorded when performing the rework</span></td></tr><tr><td colspan="1" class="confluenceTd">Rework Comment</td><td colspan="1" class="confluenceTd">Rework comment recorded when performing the rework</td></tr></tbody></table>



#### Inspection and Rework from Panel



**Rework - The panel has defects** 
.

- These WIPs should show red marks(Which already record defects) when operating the Rework station.

- When operating this WIP complete, it should be shown a yellow mark.
![image2021-9-15_10-48-18.png](/.attachments/99221693.png)



**Rework - The panel has failed label** 
.

- These WIPs should show red marks(Which already record failed labels) when operating the Rework station.

- When operating this WIP complete, it should be shown a yellow mark.




#### Attachments

[image2018-5-2 14:40:10.png](/.attachments/29919649.png)
[image2018-4-9 14:10:55.png](/.attachments/29919650.png)
[image2018-4-9 14:10:3.png](/.attachments/29919651.png)
[image2017-7-27 11:30:0.png](/.attachments/29919652.png)
[image2017-7-27 11:27:33.png](/.attachments/29919653.png)
[image2017-7-27 11:25:6.png](/.attachments/29919654.png)
[image2017-7-27 11:21:17.png](/.attachments/29919655.png)
[image2017-7-27 11:17:39.png](/.attachments/29919656.png)
[image2017-7-27 11:6:29.png](/.attachments/29919657.png)
[image2017-7-27 10:59:25.png](/.attachments/29919658.png)
[image2016-7-1 0:7:7.png](/.attachments/29919659.png)
[image2016-7-1 0:5:35.png](/.attachments/29919660.png)
[image2016-7-1 0:4:13.png](/.attachments/29919661.png)
[image2016-7-1 0:2:13.png](/.attachments/29919662.png)
[image2016-6-30 23:58:44.png](/.attachments/29919663.png)
[image2016-6-30 23:57:22.png](/.attachments/29919664.png)
[image2016-6-30 23:54:32.png](/.attachments/29919665.png)
[image2016-6-30 23:45:22.png](/.attachments/29919666.png)
[image2021-7-7_16-5-22.png](/.attachments/94405383.png)
[image2021-9-15_10-48-18.png](/.attachments/99221693.png)
