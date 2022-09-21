# Introduction


Data Collection allows user to set up a question or a set of questions to be presented to the operator during manufacturing process. Answers provided by the operator may be validated against a mask or a specified limit. Incorrect answer or value outside of the limit will prevent the WIP from further processing.




### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("DATA COLLECTION")

:::



#### Screen Activity


Data Collection Maintenance enables user to perform the following activity:

- Create, view, update and delete Data Collection records




#### Precondition


[Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)
needs to be configured before user configures Data Collection that requires a mask


#### Screen Dependency


The following screen(s) has direct dependency with Data Collection

- [Assemble Point Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point-(Retired).md)

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- Operator Station that has Data Collection configured




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Data Collection</p></td><td class="confluenceTd"><p>The unique Name given to the data collection</p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><p>Additional description for the <span>data collection</span> can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Use Sampling</td><td colspan="1" class="confluenceTd"><p>User may not want the data collection to be prompted for every WIP. User can use sampling to control the frequency of the prompts.</p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Percentage</td><td colspan="1" class="confluenceTd"><p><em>* This function is not available yet *</em></p><p>Allows user to configure the frequency where the data collection is prompted. <br />When the WIP is started, system will generates a random number. If the sample percentage is 75% and if the random number generated is more than 75, the data collection prompts. <br />Otherwise, the data collection will not be prompted for the WIP.<span style="color: rgb(255,0,0);"><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd">Determines the order where the user prompt is presented to the operator. Useful when there are multiple user prompts in the data collection. <br />System will automatically assign new lines with sequence number in multiples of 10, but can be changed by the user in any increments. </td></tr><tr><td colspan="1" class="confluenceTd">Data Label</td><td colspan="1" class="confluenceTd">The name given to identify each user prompt in the data collection. This is not visible to the operator</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional description of the user prompt can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">User Prompt</td><td colspan="1" class="confluenceTd">The question/prompt to be displayed to the operator</td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd">Select a validation mask and the answer provided by the operator will be validated against this mask</td></tr><tr><td colspan="1" class="confluenceTd">Data Type</td><td colspan="1" class="confluenceTd"><p>Restrict the data type for the answers entered by the operator</p><ul><li>String Single Line (Allows a single line of characters)</li><li>String Multi Line (Allows answers in multiple lines of characters)</li><li>Integer (Allows answer in integer format)</li><li>Decimal (Allows answer in decimal format)</li><li>List (Displays a list for user to select. User is required to configure the Option List if this data type is selected)</li><li>Validation-Match (User is required to scan a value to match the regular expression in Validation Mask)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Option List</td><td colspan="1" class="confluenceTd">Allows the user to create custom lists of choices to be displayed to the operator during data collection. Use a new line for each option list value</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Is a Parametric Measurement</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);"><em>* This function is not available yet *</em></span></p><p><span style="color: rgb(51,51,51);">If enabled, the system shall make the data available to aggregate</span><br /><span style="color: rgb(51,51,51);">If disabled, data cannot be aggregated </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Fail the Process if Data Value Exceeds Limits</span></td><td colspan="1" class="confluenceTd"><p><em>* This function is not available yet *</em></p><p>If enabled, system will prevent the WIP from further processing if the upper or lower limit is exceeded. Upper and lower limit must be configured if it is enabled.<br /><span>If disabled, system will still allow the WIP to continue processing if the upper or lower limit is exceeded</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Display Limits to the User</span></td><td colspan="1" class="confluenceTd"><p><span><em>* This function is not available yet *</em></span></p><p><span>If enabled, system will display the upper and lower limit to the operator during the data collection prompts<br />If disabled, the upper and lower limit is not shown to the operator <span>during the data collection prompts</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Upper Limit</td><td colspan="1" class="confluenceTd"><p><em>* This function is not available yet *</em></p><p>The maximum value allowed for the data collection</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lower Limit</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);"><em>* This function is not available yet *</em></span></p><p><span style="color: rgb(0,0,0);">The minimum value allowed for the data collection</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Validate Data Collection on Complete</span></td><td colspan="1" class="confluenceTd"><ul><li style="margin-left: 15.0px;">If enabled the operator is allowed to answer all data collection questions first before system validates all answers against the validation masks. To determine if the data collection activity pass or fail is based on whether a validation mask is setup for it and if the Allow Incorrect Validation Mask is enabled or disabled.</li><li style="margin-left: 15.0px;"><span style="font-size: 10.0pt;line-height: 13.0pt;">If </span><span style="font-size: 10.0pt;line-height: 13.0pt;">disabled then the answer entered must meet the validation mask at the time of answering. If "Allow Incorrect Validation Mask" is disabled, system expects the user to answer according to the validation mask. User is not even allowed to proceed to question 2 until question 1 is answered correctly.</span></li></ul><p style="margin-left: 15.0px;"><span>Example: <br />The data collection consists of 2 questions. If the user answers incorrectly (not meeting validation mask) for question 1, user is not allowed to proceed to question 2. </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allow Incorrect Validation Mask</span></td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);font-size: 10.0pt;line-height: 13.0pt;">This field is only applicable if a validation mask is configured for the data collection label.</span><br /><span style="color: rgb(0,0,0);font-size: 10.0pt;line-height: 13.0pt;"><br /></span></li><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">If <strong>enabled</strong>, system allows user to enter data collection answer that does not match its validation mask. </span></span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;color: rgb(0,0,0);">For Inspection & Rework station, after all the required data collection questions are answered, user clicks the Data Collection "Complete" button. </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">If all the answers are correct (match the validation mask), the WIP passed the data collection activity and user can proceed with their normal inspection/rework activities in that station. </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">If some of the answers are incorrect, system will display "WIP pending fail due to failed data collection". User can also proceed with their normal inspection/rework activities. However, on WIP Complete of the inspection/rework route step, the WIP will be failed due to failed data collection. </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">For Phoenix Assemble Client, user is required to answer all data collection questions correctly before they can assemble the material</span></li></ul><ul style="list-style-type: square;"><li><span style="background-color: transparent;color: rgb(0,0,0);font-size: 10.0pt;line-height: 13.0pt;">If <strong>disabled</strong>, at Inspection & Rework station, user is not allowed to Complete the data collection activity until all the required data collection questions are answered correctly according to their validation mask. This means, unless all data collection questions are answered correctly, user is not able to proceed with the normal inspection/rework activities for the WIP. </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">For Phoenix Assemble Client, user is required to answer all data collection questions correctly before they can assemble the material</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Unit of Measure</td><td colspan="1" class="confluenceTd"><p><em>* This function is not available yet *</em></p><p>Allows user to enter the unit of measure in cm, mm, m, litres, kg, pound or other units of measure</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Required</td><td colspan="1" class="confluenceTd"><p>If enabled, operator is required to provide an answer to the data collection prompt<br />If disabled, operator has the option not to provide an answer to the data collection prompt</p></td></tr></tbody></table>




