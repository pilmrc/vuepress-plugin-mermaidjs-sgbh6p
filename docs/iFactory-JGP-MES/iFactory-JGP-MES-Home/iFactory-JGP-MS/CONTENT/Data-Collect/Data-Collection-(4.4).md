# Introduction

Data Collection allows user to set up a question or a set of questions to be presented to the operator during manufacturing process. Answers provided by the operator may be validated against a mask or a specified limit. Incorrect answer or value outside of the limit will prevent the WIP from further processing.




### How to get there?




::: mermaid
graph LR
A("QUALITY")-->0("DATA COLLECTION")

:::



#### Screen Activity


Data Collection Maintenance enables user to perform the following activity:

- Create, view, update and delete Data Collection records




#### Precondition


[Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)
needs to be configured before user configures Data Collection that requires a mask


#### Screen Dependency


The following screen(s) has direct dependency with Data Collection

- [Assemble Point Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md)

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md)

- Operator Station that has Data Collection configured (i.e.
[MIE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md), [MTE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md), [I&R](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md))



#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Data Collection</p></td><td class="confluenceTd"><p>The unique Name given to the data collection</p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><p>Additional description for the <span>data collection</span> can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Use Sampling</td><td colspan="1" class="confluenceTd"><p>User may not want the data collection to be prompted for every WIP. User can use sampling to control the frequency of the prompts.</p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Percentage</td><td colspan="1" class="confluenceTd"><p><em>* This function is not available yet *</em></p><p>Allows user to configure the frequency where the data collection is prompted. <br />When the WIP is started, system will generates a random number. If the sample percentage is 75% and if the random number generated is more than 75, the data collection prompts. <br />Otherwise, the data collection will not be prompted for the WIP.<span style="color: rgb(255,0,0);"><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd">Determines the order where the user prompt is presented to the operator. Useful when there are multiple user prompts in the data collection. <br />System will automatically assign new lines with sequence number in multiples of 10, but can be changed by the user in any increments. </td></tr><tr><td colspan="1" class="confluenceTd">Data Label</td><td colspan="1" class="confluenceTd">The name given to identify each user prompt in the data collection. This is not visible to the operator</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional description of the user prompt can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">User Prompt</td><td colspan="1" class="confluenceTd">The question/prompt to be displayed to the operator</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd">Select a validation mask and the answer provided by the operator will be validated against this mask</td></tr><tr><td colspan="1" class="confluenceTd">Data Type</td><td colspan="1" class="confluenceTd"><p>Restrict the data type for the answers entered by the operator</p><ul><li>String Single Line (Allows a single line of characters)</li><li>String Multi Line (Allows answers in multiple lines of characters)</li><li>Integer (Allows answer in integer format)</li><li>Decimal (Allows answer in decimal format)</li><li>List (Displays a list for user to select. User is required to configure the Option List if this data type is selected, user is allowed to perform search on the text box)</li><li>Validation-Match (User is required to scan a value to match the regular expression in Validation Mask)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Option List</td><td colspan="1" class="confluenceTd">Allows the user to create custom lists of choices to be displayed to the operator during data collection. Use a new line for each option list value</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Is a Parametric Measurement</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);"><em>* This function is not available yet *</em></span></p><p><span style="color: rgb(51,51,51);">If enabled, the system shall make the data available to aggregate</span><br /><span style="color: rgb(51,51,51);">If disabled, data cannot be aggregated </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Fail the Process if Data Value Exceeds Limits</span></td><td colspan="1" class="confluenceTd"><p><span style="background-color: transparent;font-size: 10.0pt;">If enabled, system will prevent the WIP from further processing if the upper or lower limit is exceeded. Upper and lower limit must be configured if it is enabled. The WIP will complete the process with status Fail (except for Assemble step)</span></p><p><span>If disabled, system will still allow the WIP to continue processing if the upper or lower limit is exceeded</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Display Limits to the User</span></td><td colspan="1" class="confluenceTd"><p><span>If enabled, system will display the upper and lower limit to the operator during the data collection prompts<br />If disabled, the upper and lower limit is not shown to the operator <span>during the data collection prompts</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Upper Limit</td><td colspan="1" class="confluenceTd"><p>The maximum value allowed for the data collection</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lower Limit</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">The minimum value allowed for the data collection</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Submit on Validation Mask Fail</span></td><td colspan="1" class="confluenceTd"><ul><li><span style="font-size: 10.0pt;line-height: 13.0pt;">This field is only applicable if a validation mask is configured for the data collection label.</span><br /><span style="color: rgb(0,0,0);font-size: 10.0pt;line-height: 13.0pt;"><br /></span></li><li>If <strong>enabled</strong>, system allows user to enter data collection answer that does not match its validation mask. The WIP will get a fail result for the step. For Inspection & Rework station, after all the required data collection questions are answered, user clicks the Data Collection "Complete" button. If all the answers are correct (match the validation mask), the WIP passed the data collection activity and user can proceed with their normal inspection/rework activities in that station. If some of the answers are incorrect, system will display "WIP pending fail due to failed data collection". User can also proceed with their normal inspection/rework activities. However, on WIP Complete of the inspection/rework route step, the WIP will be failed due to failed data collection. For MIE station a failure will be generated and user can complete the step but with Fail result. For MIE station a failure will be generated and user has to enter a defect before complete the step, that will provide a Fail result anyway. For Assemble station, user is required to answer all data collection questions correctly before they can assemble the material</li></ul><ul style="list-style-type: square;"><li>If <strong>disabled</strong>, user is not allowed to Complete the data collection activity until all the required data collection questions are answered correctly according to their validation mask. This means, unless all data collection questions are answered correctly, user is not able to proceed with the normal inspection/rework/test activities for the WIP. For Assemble Station, user is required to answer all data collection questions correctly before they can assemble the material</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Unit of Measure</td><td colspan="1" class="confluenceTd"><p>Allows user to enter the unit of measure in cm, mm, m, litres, kg, pound or other units of measure</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Required</td><td colspan="1" class="confluenceTd"><p>If enabled, operator is required to provide an answer to the data collection prompt<br />If disabled, operator has the option not to provide an answer to the data collection prompt. Optional data collection with value blank won't be stored in the system</p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Retain Entered Value</span></td><td colspan="1" class="confluenceTd"><p><span>By default, it set to disable. This field is using for batch entry mode operation screens only. Such as MOE batch entry, MIE batch entry and Disassemble batch entry screens. </span></p><span>Batch entry mode screen is design to minimize operator entering actions. Data collection items that sharing its value among the WIPs can contribute on this by retain its value (flag set to enable) on screen. With this feature, operator can continue to scan next WIPs without re-enter the same value on data collection item.</span></td></tr><tr><td colspan="1" class="confluenceTd">Require Barcode Scan</td><td colspan="1" class="confluenceTd">By default, it set to disable. Switch to ON will enforce barcode scan on this data collection item. Copy & paste and keyboard entry is not allowing during runtime in operation screen. This field can be override by site configuration enforce barcode scan switch to OFF.</td></tr></tbody></table>


#### Behavior at runtime


For all stations, the Fail result will affect both Data Collection value and WIP status.
Value of data collection item will be validated 
as soon as keypress entered/scanned/cursor lost focus. Data collection item value will be validated and response as below conditions: 

- If required field is blank then the f
ield frame border color will be changed to red . 

- If value is exceed limits defined then the f

ield frame border color will be changed to red with message showed as "The number is not in range
".

- If "Fail the Process if Data Value Exceeds Limits" is set to "off" then the border color will not be changed to red and d

ata collection submission is allowed
.


- If invalid Barcode Mask then the field frame border color will be changed to red with message showed as "Must enter correct barcode mask value".



- If "Submit on Validation Mask Fail" is set to "on" then border color will not be changed to red but error message will be still noted and data collection submission is allowed.



- "Submit" button will be activated as soon as all required values have been inserted (blank value is considered "not inserted" for required fields)



- All data collection blank (optional item) will not be recorded.



![](/.attachments/35356840.png)



![](/.attachments/35356841.png)



**Data Collection in Manual Inspection Entry station (MIE)** 
Data collection will appear as soon as the inspection has completed (user press "Complete" button). If data collection entered is good then the WIP has completed and retrieve a Pass status result.
If the Data collection is not good (i.e. bad barcode mask or outside the range of values) the system will highlight the field showing the problem (i.e. Does not match validation mask, etc.) and allow user to fix the value. If the value is not fixed then, at submission, the system will create a failure (the failure label is the name of the failed data collection) and the user is forced to enter a defect.
When multiple data collection are failed, then multiple failures are created and the requested defect will be associated to all failures. 
The WIP will retrieve a Fail status result.
At data collection prompt, if the user decides to skip the data collection (pressing Cancel) the entire MIE operation will abort and the WIP will retrieve an Abort status result.

The Submit button is enabled as soon as all 
*required* fields are entered (with good or bad value). The result can be Pass or Fail depending on the data entered.If "Submit on Validation Mask Fail" is enabled for some data collection field, then the Submit button will remain disabled until the correct value is entered.

**Data Collection in Manual Test Entry station (MTE)** 
Data collection will appear as soon as the test has completed (user press "Complete" button). If data collection entered is good then the WIP has completed and retrieve a Pass status result.
If the Data collection is not good (i.e. bad barcode mask or outside the range of values) the system will highlight the field showing the problem (i.e. barcode mask does not match, etc.) and allow user to fix the value. If the value is not fixed then, at submission, the system will create a failure (the failure label is the name of the failed data collection).
When multiple data collection are failed, then multiple failures are created. The WIP will retrieve a Fail status result.
At data collection prompt, if the user decides to skip the data collection (pressing Cancel) the entire MTE operation will abort and the WIP will retrieve an Abort status result.

The Submit button is enabled as soon as all 
*required* fields are entered (with good or bad value). The result can be Pass or Fail depending on the data entered.If "Submit on Validation Mask Fail" is enabled or some data collection field, then the Submit button will remain disabled until the correct value is entered.

**Data Collection in Inspection & Rework station (I&R)** 
Data collection will appear as soon as the WIP started in I&R. If data collection entered is good then the user can continue with I&R operation.
If the Data collection is not good (i.e. bad barcode mask or outside the range of values)  the system will highlight the field showing the problem (i.e. barcode mask does not match, etc.) and allow user to fix the value. If the value is not fixed then, at submission, the system will create a failure (the failure label is the name of the failed data collection).
When multiple data collection are failed, then multiple failure are created. The user can continue with I&R operation managing also the new failure created.
At data collection prompt, if the user decides to skip the data collection (pressing Cancel) the entire I&R operation will abort and the WIP will retrieve an Abort status result.

The Submit button is enabled as soon as all 
*required* fields are entered (with good or bad value). The result can be Pass or Fail depending on the data entered.If "Submit on Validation Mask Fail" is enabled or some data collection field, then the Submit button will remain disabled until the correct value is entered.

**Data Collection in Assemble station (Assemble)** 
Data collection will appear as soon as the material with data collection associated has scanned in Assemble step.
It is  not possible to proceed with assemble activity if the entered data collection is not good. The system will stay pending awaiting for correct data to enter.

**Data Collection in Manual Operation Entry (MOE)** 
Similar behavior as Assemble station; data collection will appear as soon as the material with data collection associated has scanned in MOE step.
It is not possible to proceed with MOE activity if the entered data collection is not good. The system will stay pending awaiting for correct data to enter. User is able to cancel the data collection entry at prompt dialog, in this case the WIP will be abort from the step.
Data Collection of List data type in MOE and MIE Batch Entry Mode have the search text box enabled user to search the predefined option values. Partial search is allowed.
![image2019-3-1_14-18-21.png](/.attachments/44761534.png)




#### Attachments

[image2018-9-19_16-29-50.png](/.attachments/35356840.png)

[image2018-9-19_16-30-48.png](/.attachments/35356841.png)

[image2019-3-1_14-18-21.png](/.attachments/44761534.png)

