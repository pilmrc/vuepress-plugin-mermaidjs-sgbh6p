# Introduction

The Board History Details Report shows more details information such as:

- General information of WIP’s processed steps

- WIP is in panel

- WIP’s assembly progression information at a route step

- WIP’s container packed/unpacked and pallet information

- WIP’s is return from RMA and related information

- WIP’s is with fixture at a route step

- WIP’s failure, defect and rework information

- WIP’s assembled/disassemble items at a route step

- WIP’s deviation at a route step

- WIP's container attribute
(Note: WIP Attribute and Data collection are not in this scope as could be huge information involve. Whereas WIP attribute can be adhoc insert. Both information can be check in DataCollection and WIPAttribute reports accordingly.)


### How to get there?


**SQL SERVER REPORTING SERVICES**  


IFACTORY_QA 


SFS-IFACTORY-STANDARD-REPORTS 


BOARDHISTORYDETAIL
![image2020-8-26_16-28-56.png](/.attachments/77136422.png)





#### Screen Activity


The BoardHistoryDetail Report allows the following activity:

- View board history details information base on the given serial number.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.

- Merging or separate display search result and export result


#### Pre-Condition


The following data needs to be pre-configured before user runs the BoardHistoryDetail Report: 

- Existing WIP with at least 1 history step captured that is unique to query.
Select the mandatory fields: Customer; Division and Material. Provide WIP Serial Number which is match with selected criteria. Unmatched WIP or WIP without any history will be ignore and not return with result.

![image2022-4-1_16-40-45.png](/.attachments/110920657.png)


![image2022-4-1_16-41-9.png](/.attachments/110920658.png)






#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select a Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select a Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select a Material only. Filter by Customer/Division.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><p>Specify a WIP serial number that match with the selected criteria above. Allow multiple WIP entry. Unmatched WIP or WIP without any history will be ignore and not return with result. The return board history for each WIP will be separate by page. Max WIP SN count are 300 rows. System will show error "Message: Max 300 Serial Number Allowed!" if WIP SN count are more than 300 rows.</p></td></tr><tr><td colspan="1" class="confluenceTd">Display Mode</td><td colspan="1" class="confluenceTd">Display Mode has two values: Merging Display and Separate Display, If user chooses "Merging Display", system should merge all the wips together and export file will export to one page. If user chooses "Separate Display", system should display one wip in one page and export file will one wip in one page</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd"><p>The WIP's customer/division as per recorded.</p></td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd"><p>The WIP's batch number as per recorded</p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's serial number</td></tr><tr><td colspan="1" class="confluenceTd">Panel</td><td colspan="1" class="confluenceTd"><p>Panel number show for a WIP still in a panel. Blank value if not.</p></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">The WIP's product family as per recorded.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Rev</td><td colspan="1" class="confluenceTd">The assembly/rev/ver value for a WIP at this step. Value will be change accordingly when progression happen on this step.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Progression Type </td><td colspan="1" class="confluenceTd">The type of progression occurred during this step.</td></tr><tr><td colspan="1" class="confluenceTd">Packed Event</td><td colspan="1" class="confluenceTd">The packed/unpacked event when the WIP is pack in a container or unpack from a container at a route step.</td></tr><tr><td colspan="1" class="confluenceTd">Container</td><td colspan="1" class="confluenceTd">The Container number that a WIP that packed into or unpacked from this container at a route step..</td></tr><tr><td colspan="1" class="confluenceTd">Pallet</td><td colspan="1" class="confluenceTd">The pallet number to indicate a container is currently packed into this pallet.</td></tr><tr><td colspan="1" class="confluenceTd">IsRMA</td><td colspan="1" class="confluenceTd">To indicate this WIP has been return from RMA.</td></tr><tr><td colspan="1" class="confluenceTd">RMA Number</td><td colspan="1" class="confluenceTd">A RMA number to shown when WIP return from RMA to this step.</td></tr><tr><td colspan="1" class="confluenceTd">Return Count</td><td colspan="1" class="confluenceTd">A number of return count from RMA to this step.</td></tr><tr><td colspan="1" class="confluenceTd">Route Version</td><td colspan="1" class="confluenceTd">A route ver that this WIP processed.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">A route step that this WIP processed.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">A resource that this WIP processed.</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">A MA that this WIP processed.</td></tr><tr><td colspan="1" class="confluenceTd">Fixture</td><td colspan="1" class="confluenceTd">The fixture that captured at this step as per WIP View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Cell Number</td><td colspan="1" class="confluenceTd">The cell number that captured at this step as per WIP View shows, if any.</td></tr><tr><td colspan="1" class="confluenceTd">Software Doc</td><td colspan="1" class="confluenceTd">The software document that captured at this step as per WIP View shows, if any.</td></tr><tr><td colspan="1" class="confluenceTd">Software Rev</td><td colspan="1" class="confluenceTd">The software rev that captured at this step as per WIP View shows, if any.</td></tr><tr><td colspan="1" class="confluenceTd">Arrival Date Time</td><td colspan="1" class="confluenceTd">The WIP arrival data and time on a step.</td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">The WIP process start data and time on a step.</td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd">The WIP process end data and time on a step.</td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd">The operator who perform this WIP on a step.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of the WIP on a step.</td></tr><tr><td colspan="1" class="confluenceTd">Failure Label</td><td colspan="1" class="confluenceTd">The failure label capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Failure Results</td><td colspan="1" class="confluenceTd">The failure result capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Test Date Time</td><td colspan="1" class="confluenceTd">The failure date time capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Defect Category</td><td colspan="1" class="confluenceTd">The defect category capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Defect</td><td colspan="1" class="confluenceTd">The defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Classification</td><td colspan="1" class="confluenceTd">The classification capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Customer Defect</td><td colspan="1" class="confluenceTd">The customer defect label capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Defect Location</td><td colspan="1" class="confluenceTd">The location of a defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Defect Material</td><td colspan="1" class="confluenceTd">The material of a defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Analyst By</td><td colspan="1" class="confluenceTd">The personal who analyst a defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Analyst Comment</td><td colspan="1" class="confluenceTd">The analyst comment of a defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td colspan="1" class="confluenceTd">The rework category capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Rework Material</td><td colspan="1" class="confluenceTd">The rework material capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Rework Comment</td><td colspan="1" class="confluenceTd">The rework comment capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Rework By</td><td colspan="1" class="confluenceTd">The personal who rework on a defect capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Rework Date Time</td><td colspan="1" class="confluenceTd">The rework date time capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Assembled Action</td><td colspan="1" class="confluenceTd">The assemble/disassemble action perform for a step as per capture in Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Assemble Material Type</td><td colspan="1" class="confluenceTd">The assemble material type capture as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Identifier</td><td colspan="1" class="confluenceTd">The unit's serial number to identify capture as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet</td><td colspan="1" class="confluenceTd">The setup sheet used to assemble the unit(s) on a step as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">The CRD as per as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Assembled Material</td><td colspan="1" class="confluenceTd">The assembled material capture as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The consume quantity of assemble item capture as per genealogy shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Assembled Date</td><td colspan="1" class="confluenceTd">The assemble date and time capture as per Operation View shows, if any</td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd">The deviation number that perform date time match with a step processing time as per capture in WIP View, if any</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Defect Area Rows</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The material display the total rows of areas configured in material maintenance screen. If no value, just display blank.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Defect Area Columns</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The material display the total columns of areas configured in material maintenance screen. If no value, just display blank.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Defect Areas</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The material display the areas associated to current defect, the format like this:  A1,A2,B1,B2， </span><span style="color: rgb(0,0,0);">if no value, just display blank.</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Attribute</td><td colspan="1" class="confluenceTd">The wip in container's Attribute, display all the Attribute and Attribute value, for example: DN:8000000012; PONumber:70000001</td></tr></tbody></table>

**The WIP’s customer/division as per recorded.** 
BatchThe WIP’s batch number as per recorded
Serial NumberThe WIP’s serial numberPanelPanel number show for a WIP still in a panel. Blank value if not.
Product FamilyThe WIP’s product family as per recorded.Assembly RevThe assembly/rev/ver value for a WIP at this step. Value will be change accordingly when progression happen on this step.Assembly Progression Type The type of progression occurred during this step.Packed EventThe packed/unpacked event when the WIP is pack in a container or unpack from a container at a route step.ContainerThe Container number that a WIP that packed into or unpacked from this container at a route step..PalletThe pallet number to indicate a container is currently packed into this pallet.IsRMATo indicate this WIP has been return from RMA.RMA NumberA RMA number to shown when WIP return from RMA to this step.Return CountA number of return count from RMA to this step.Route VersionA route ver that this WIP processed.Route StepA route step that this WIP processed.ResourceA resource that this WIP processed.MAA MA that this WIP processed.FixtureThe fixture that captured at this step as per WIP View shows, if anyCell NumberThe cell number that captured at this step as per WIP View shows, if any.Software DocThe software document that captured at this step as per WIP View shows, if any.Software RevThe software rev that captured at this step as per WIP View shows, if any.Arrival Date TimeThe WIP arrival data and time on a step.Start Date TimeThe WIP process start data and time on a step.End Date TimeThe WIP process end data and time on a step.OperatorThe operator who perform this WIP on a step.StatusThe status of the WIP on a step.Failure LabelThe failure label capture as per Operation View shows, if anyFailure ResultsThe failure result capture as per Operation View shows, if anyTest Date TimeThe failure date time capture as per Operation View shows, if anyDefect CategoryThe defect category capture as per Operation View shows, if anyDefectThe defect capture as per Operation View shows, if anyClassificationThe classification capture as per Operation View shows, if anyCustomer DefectThe customer defect label capture as per Operation View shows, if anyDefect LocationThe location of a defect capture as per Operation View shows, if anyDefect MaterialThe material of a defect capture as per Operation View shows, if anyAnalyst ByThe personal who analyst a defect capture as per Operation View shows, if anyAnalyst CommentThe analyst comment of a defect capture as per Operation View shows, if anyRework CategoryThe rework category capture as per Operation View shows, if anyRework MaterialThe rework material capture as per Operation View shows, if anyRework CommentThe rework comment capture as per Operation View shows, if anyRework ByThe personal who rework on a defect capture as per Operation View shows, if anyRework Date TimeThe rework date time capture as per Operation View shows, if anyAssembled ActionThe assemble/disassemble action perform for a step as per capture in Operation View shows, if anyAssemble Material TypeThe assemble material type capture as per genealogy shows, if anyIdentifierThe unit’s serial number to identify capture as per genealogy shows, if anySetup SheetThe setup sheet used to assemble the unit(s) on a step as per genealogy shows, if anyCRDThe CRD as per as per genealogy shows, if anyAssembled MaterialThe assembled material capture as per genealogy shows, if anyQuantityThe consume quantity of assemble item capture as per genealogy shows, if anyAssembled DateThe assemble date and time capture as per Operation View shows, if anyDeviationThe deviation number that perform date time match with a step processing time as per capture in WIP View, if anyDefect Area Rows
The material display the total rows of areas configured in material maintenance screen. If no value, just display blank.
Defect Area Columns
The material display the total columns of areas configured in material maintenance screen. If no value, just display blank.
Defect Areas
The material display the areas associated to current defect, the format like this:  A1,A2,B1,B2， 
if no value, just display blank.
Container AttributeThe wip in container's Attribute, display all the Attribute and Attribute value, for example: DN:8000000012; PONumber:70000001



#### Attachments

[image2020-5-29_16-55-45.png](/.attachments/77136410.png)
[image2020-5-29_16-54-9.png](/.attachments/77136411.png)
[image2020-5-29_16-53-38.png](/.attachments/77136412.png)
[image2020-3-25_14-18-49.png](/.attachments/77136413.png)
[image2020-3-25_14-6-43.png](/.attachments/77136414.png)
[image2013-7-9 13:35:13.png](/.attachments/77136415.png)
[image2013-7-9 13:36:46.png](/.attachments/77136416.png)
[image2013-7-9 13:37:43.png](/.attachments/77136417.png)
[7-9-2013 2-58-11 PM.jpg](/.attachments/77136418.jpg)
[Smaller.jpg](/.attachments/77136419.jpg)
[image2020-5-18_16-16-17.png](/.attachments/77136420.png)
[image2020-5-18_16-20-22.png](/.attachments/77136421.png)
[image2020-8-26_16-28-56.png](/.attachments/110920651.png)
[image2020-8-26_16-30-45.png](/.attachments/77136423.png)
[image2020-8-26_16-28-56.png](/.attachments/77136422.png)
[image2022-4-1_16-27-38.png](/.attachments/110920652.png)
[image2022-4-1_16-36-11.png](/.attachments/110920653.png)
[image2022-4-1_16-37-55.png](/.attachments/110920654.png)
[image2022-4-1_16-39-35.png](/.attachments/110920655.png)
[image2022-4-1_16-40-45.png](/.attachments/110920657.png)
[image2022-4-1_16-41-9.png](/.attachments/110920658.png)
