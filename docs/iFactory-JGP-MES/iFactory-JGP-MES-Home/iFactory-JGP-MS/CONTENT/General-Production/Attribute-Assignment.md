# Introduction

Attribute Assignment is used to configure the way to collect attribute value during completion of a route step based on the scope selected. The attribute can be normal attribute or batch tag attribute. Batch tag attribute is an attribute that reference to batch tag name for WIP assignment.


### How to get there?



::: mermaid
graph LR
A("ASSEMBLE")-->0("ATTRIBUTE ASSIGNMENT")

:::


#### Permission


1. Can Assign Attributes - Can Assign Attributes Permission 

2. Can Access Assembly Configuration - Can Access Assembly Configuration

#### Screen Activity


Attribute Assignment enables user to perform the following activity:

- Assign Attribute by the scope configured for (Assembly, Material, Product Family Customer and Container Type). For Lot is only working the scope = Material

- Add, Edit, Delete for attribute assignment


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Attribute Assignment

- Assembly

- Material

- Product Family

- Customer

- Route Step

- Container Type


#### Screen Dependency



- Operation Station to collect attribute as per configured on WIP / Lot Complete at the station.

- WIP View on WIP Attribute

- Lot View on Lot Attribute

- Container view and Container Maintenance on Container Attribute


#### Select a Scope


**Step 1: Select one of the scope  Assembly ,Material, Product Family Customer or Container Type to assign attribute** 
![image2019-2-4_11-50-7.png](/.attachments/42991797.png)


**Step 2: Select a  Assembly /Material / Product Family / Customer / Container Attribute to configure the attribute assignment** 
Assembly scope selected:

![image2019-2-4_11-51-32.png](/.attachments/42991798.png)


Material scope selected:
![image2019-2-4_11-52-26.png](/.attachments/42991799.png)


Product Family scope selected
![image2019-2-4_11-53-8.png](/.attachments/42991800.png)


Customer scope selected
![image2019-2-4_11-53-39.png](/.attachments/42991801.png)



Container Type scope selected 
![image2019-2-4_11-54-51.png](/.attachments/42991802.png)



Fields

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Step 2</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Select the Assembly to view attribute assignment configuration for the Assembly. Not implement for Lots.</td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Select the Material to view attribute assignment configuration for the material</p></td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>Select the Product Family to view the attribute assignment for the product family. Not implemented for Lots</p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>Select the Customer to view the attribute assignment for the customer. <span> Not implemented for Lots</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><span>Select the Container Type to view the attribute assignment for Container. This is the option where user can configure OBA type batch-tag assignment after selecting toggle 'Is Batch Tag'. Once selected, user can search only OBA type batch-tag name and the route step station type is restricted to only WIP Packout. Not implemented for Lots. </span></td></tr></tbody></table>


**Step 3: Display the list selected from Step 2. User can perform Add, Edit (Not for batch tag), Delete at this section** 
Fields

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Step 3</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Is Batch Tag</td><td colspan="1" class="confluenceTd">To indicate the attribute name is configured as Batch Tag. By default, Is Batch Tag field is set to OFF. </td></tr><tr><td class="confluenceTd">Attribute Name</td><td class="confluenceTd"><p>The Attribute Name to collect during the completion of operation. Free text to configure for normal attribute. If batch tag is ON, Attribute Name textbox will be change to selection for user to select valid batch tag name value. Valid means batch tag name is active and within the configuration period to use. Allow partial search and clear the value. </p><p>For 'Assembly' scope, system allow user to search and select a batch tag with 'Manual Sampling' type, and the batch tag should meet below conditions:</p><p style="margin-left: 30.0px;">1: Active and not expired.</p><p style="margin-left: 30.0px;">2: Already got sample plan configuration with 'By Customized Time' range type.</p><p style="margin-left: 30.0px;"><br /></p><p>For lot batch material type, if user tries to add an attribute with the name "Internal Batch Number" for a lot batch material, system will prompt warning mes<span style="color: rgb(0,51,102);">sage. "Internal Batch Number" is a restricted attribute name for lot and it cannot be configured manually by user.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The Route Name and Route Version to assign attribute</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>The Route Step Name to assign attribute.</p><p>If attribute name is a batch tag with 'Manual Sampling' type, system will automated fill out route step with value from sample plan 'Evaluation Route Step'.</p></td></tr><tr><td colspan="1" class="confluenceTd">Allowed Multiple Values</td><td colspan="1" class="confluenceTd"><p>The indicator to have multiple values for the Attribute during Lot Merge. Only apply for Material Scope.</p><p>If YES, allow to merge Lot with different Lot Attribute Value and stored the value with separator. E.g "Value1 | Value2"<br />If NO, only allow to merge Lot with same Lot Attribute Value for the Attribute Name</p></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Type</td><td colspan="1" class="confluenceTd"><p>The Type to assign attribute (Prompt, Constant, List, Auto Generate).</p><p>For normal attribute:</p><ul><li>Only Prompt, Constant and List works for WIP.</li><li>Only Prompt and List works for Lots.</li></ul><p>For batch tag attribute:</p><ul><li>Only Auto Generate works for batch tag with next number configured.</li><li>Only Prompt works for batch tag didn't configure with next number.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">User Prompt</td><td colspan="1" class="confluenceTd">Question that will prompt to user to collect the attribute value if Attribute Type = Prompt / List. This is the only option available for Container Type -> OBA Batch-tag assignment.</td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd"><p>If Attribute Type = Constant, the value entered will be collect as the attribute value.</p><p>If Attribute Type = List, the value entered will be displayed as user selection for attribute value.</p><p><span>If Attribute Type = Auto Generate, the value will be disable and defaulted to Next Number name.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><label class="css-label ng-binding">Retain Entered Value</label></td><td colspan="1" class="confluenceTd"><p>By default, it set to disable. This field is using for Container Attribute Assignment and it is available at WIP Packout and Repetitive Warehouse operation screens only. Container Attribute items that sharing its value among the containers can contribute on this by retain its value (flag set to enable) on configuration screen. With this feature, operator can continue to scan next containers without re-enter the same value on container attribute item.</p></td></tr><tr><td colspan="1" class="confluenceTd">Attribute by Result</td><td colspan="1" class="confluenceTd"><p>Scope: <span style="color: rgb(0,0,0);">Assembly、Material、Product Family、Customer</span></p><p>Values: Pass、Fail、Pass + Fail , default value is "Pass"</p><p>When "For WIP Release" turns on, <span style="color: rgb(0,0,0);">system will auto change to "Pass + Fail" for "</span><span style="color: rgb(0,0,0);">Attribute by Result</span><span style="color: rgb(0,0,0);">"</span></p><p><span style="color: rgb(0,0,0);">If the route step is not MIE station, system will auto change to "Pass" and "Attribute by Result" will disable</span></p><p><span style="color: rgb(0,0,0);">If the route step is MIE station, system will give popup attribute assignment screen by the value of "Attribute by Result"</span></p><ul><li><span style="color: rgb(0,0,0);">Pass - System will give popup attribute assignment screen when MIE Pass(Batch Entry Mode and Single Mode)</span></li><li><span style="color: rgb(0,0,0);">Fail -  System will give popup attribute assignment screen when MIE Fail(Batch Entry Mode and Single Mode)</span></li><li><span style="color: rgb(0,0,0);">Pass + Fail - System will give popup attribute assignment screen when MIE Pass and Fail(Batch Entry Mode and Single Mode)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Validation Mask</span></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span style="color: rgb(45,46,47);">Container Type</span></p><p><span style="color: rgb(45,46,47);">Is Batch Tag field is set to OFF</span></p><p>The user can configure the "validation mask", if the selected Attribute Type is“ Prompt”, then the rules will be validated by WOE and Packout stations; if the selected Attribute Type is Constant and List, the Mask will be validated on this page.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/125993471.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/125993471.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="125993471" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-8-29-10-21-7.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918260" data-linked-resource-container-version="25" /></span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/125993472.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/125993472.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="125993472" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-8-29-10-22-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918260" data-linked-resource-container-version="25" /></span></p><p>If the mask system is not satisfied, an error message can be given</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd"><p>Container Typed scope, Is Batch Tag turned on</p><p>System could list all the MA for selected Route Step, support to <span style="letter-spacing: 0.0px;">select multiple MA</span></p><p><span style="letter-spacing: 0.0px;">In packout station, </span><span>System could search the attribute name which the MA of Attribute configuration match with the ManufacturingArea of current packout station</span></p></td></tr></tbody></table>




- Example 1 (Lot, normal attribute):

![image2020-4-14_16-49-0.png](/.attachments/69632097.png)


![image2022-8-7_22-56-4.png](/.attachments/122750650.png)



Attribute Assignment will prompt on the completion of configured route and route step KKW-JGP-MOE01

Example 2 (WIP, Batch tag attribute with sampling type):

![image2022-8-7_22-57-48.png](/.attachments/122750651.png)


Attribute assignment will show during WIP Release - Assembly. A batch tag number will be generated by system and assigned to the configured attribute name (e.g. batch tag name) after completion of WIP released.





#### Attachments

[image2017-7-19 10:42:12.png](/.attachments/29918261.png)
[image2017-7-19 10:40:50.png](/.attachments/29918262.png)
[image2016-12-19 16:45:39.png](/.attachments/29918263.png)
[image2016-12-19 16:44:37.png](/.attachments/29918264.png)
[image2016-12-19 16:29:54.png](/.attachments/29918265.png)
[image2016-12-19 16:29:34.png](/.attachments/29918266.png)
[image2016-12-19 16:29:12.png](/.attachments/29918267.png)
[image2016-12-19 16:28:42.png](/.attachments/29918268.png)
[image2016-12-19 16:23:55.png](/.attachments/29918269.png)
[image2018-11-26_12-55-35.png](/.attachments/38273323.png)
[image2018-11-26_12-56-14.png](/.attachments/38273324.png)
[image2018-11-26_12-56-28.png](/.attachments/38273325.png)
[image2018-11-26_12-56-40.png](/.attachments/38273326.png)
[image2018-11-26_13-16-11.png](/.attachments/38273327.png)
[image2018-11-26_13-16-29.png](/.attachments/38273328.png)
[image2018-11-26_15-19-54.png](/.attachments/38273330.png)
[image2018-11-26_15-22-38.png](/.attachments/38273331.png)
[image2018-11-26_15-23-10.png](/.attachments/38273332.png)
[image2018-11-26_15-23-29.png](/.attachments/38273333.png)
[image2019-2-4_11-37-2.png](/.attachments/42991796.png)
[image2019-2-4_11-50-7.png](/.attachments/42991797.png)
[image2019-2-4_11-51-32.png](/.attachments/42991798.png)
[image2019-2-4_11-52-26.png](/.attachments/42991799.png)
[image2019-2-4_11-53-8.png](/.attachments/42991800.png)
[image2019-2-4_11-53-39.png](/.attachments/42991801.png)
[image2019-2-4_11-54-51.png](/.attachments/42991802.png)
[image2019-2-4_12-4-29.png](/.attachments/42991803.png)
[image2019-2-4_12-5-11.png](/.attachments/42991804.png)
[image2020-4-14_16-45-46.png](/.attachments/69632096.png)
[image2020-4-14_16-49-0.png](/.attachments/69632097.png)
[image2022-8-7_22-53-32.png](/.attachments/122750649.png)
[image2022-8-7_22-56-4.png](/.attachments/122750650.png)
[image2022-8-7_22-57-48.png](/.attachments/122750651.png)
[image2022-8-29_10-21-7.png](/.attachments/125993471.png)
[image2022-8-29_10-22-36.png](/.attachments/125993472.png)
