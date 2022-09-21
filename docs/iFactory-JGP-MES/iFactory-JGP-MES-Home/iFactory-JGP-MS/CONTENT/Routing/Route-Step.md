# Introduction

Route Steps define the basic process within the manufacturing of materials. 
Allow Retest On Failure
A collection of route step builds up a route. The configuration of route steps are performed in the **Edit Route Step** window. ![image2020-11-29_21-13-34.png](/.attachments/82903648.png)




It is possible to configure from this page pre-start rules, routing rules, 
[resources](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md), [certifications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)and [assemble types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide-%2D-Assemble-Type.md)required in each of the route steps. To create Route & Route Step, refer to **Creation Steps** section in Route Step documentation. In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. (e.g. Resource01 with MA01, MA02 and MA03). This is applicable to only Repetitive Process Type.
![image2020-11-29_21-5-27.png](/.attachments/82903649.png)


![image2020-11-29_21-8-54.png](/.attachments/82903650.png)


![image2020-11-29_21-8-12.png](/.attachments/82903651.png)




### How to get there?




::: mermaid
graph LR
A("ROUTE")
:::
-->0("ROUTE DESIGNER TAB")
0-->1("CLICK "ADD ROUTE STEP" BUTTON")
1-->2("ROUTE DESIGNER TAB")
2-->3("CLICK EDIT BUTTON")


#### Screen Activity


Route Step Edit enables user to perform the following activity:

- Configure general behavior of the route step (Example: Pull Step, Completion Step etc)

- Configure Pre-Start Rules

- Configure Routing Rules

- Create, View, Update, Delete Certifications required to operate in this route step

- Create, View, Update, Delete Resources for the route step

- Create, View, Update, Delete Assemble Types for the route step

- Create, View, Update, Delete Alternative Route step name for the route step



#### Pre Condition



- Route must be created first before user can add route steps into it

- Resources, certifications and assemble types must exist for association with the Route Steps

Screen DependencyThe following screen(s) has direct dependency with Route Step 

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM.md)


- [Pre-Start Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)

- [Routing Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Routing-Rules.md)

- [Assemble Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assembly-Type.md)

- [Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)

- [Route Step Alternative Name](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)



#### Fields



<table class="wrapped confluenceTable" style="width: 1358.0px;"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">General Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">ID</td><td style="width: 1246.0px;" class="confluenceTd">Unique value in the route to identify the step</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Route Step Type</td><td style="width: 1246.0px;" class="confluenceTd">The group where the Route Step belongs. The <a href="Route-Step-Type-29920000.html">route step type</a> is populated based on the route step type defined by the user during initial creation of the route step.<br />User has the ability to modify the route step type here. </td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Route Step Name</td><td style="width: 1246.0px;" class="confluenceTd"><span>The name of the route step. <span>This name is populated based on the route step name defined by the user during initial creation of the route step.</span><br /><span>User has the ability to modify the route step name here even there is WIP enqueue or started at the route step. Once user changed the route step name then the new name will be reflected to all the WIPs.</span></span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Route Step Reporting Name</td><td style="width: 1246.0px;" class="confluenceTd">Reporting Name is used to group several route steps for reporting display or dashboards calculations. <br />All the route steps under the same reporting name shall be aggregated into the report/dashboard calculation. </td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Building</td><td style="width: 1246.0px;" class="confluenceTd">The building where the manufacturing area belongs . This field is populated based on the selected manufacturing area.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Building Type Name</td><td style="width: 1246.0px;" class="confluenceTd">The type of building where the manufacturing area belongs. This field is populated based on the selected manufacturing area.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Auto Breakout</td><td style="width: 1246.0px;" class="confluenceTd"><p>This only applicable to Panel and allow System to perform Auto Breakout. <span>This option is only visible when the Route Step Type selected belongs to Manual Operation Entry and Manual Inspection Entry station type.</span></p><p>There are 3 options:</p><ul><li>All - Auto Breakout all boards in Panel once click on complete panel button</li><li>Defect Only - Auto Breakout boards that contain Defect Only <span>once click on complete panel button. *Applicable to MIE only, will not have effect for MOE.</span></li><li>N/A - By default, Auto Breakout should be this value (deactivate) and user have the option to activate it by selecting All or Defect Only. System will perform as per existing (Manual Breakout) without Auto Breakout any boards from Panel.</li></ul></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is Initial Route Step</td><td style="width: 1246.0px;" class="confluenceTd"><p>If checked, the route step will be identified as the initial route step in the route.</p><p>For BTO/CTO , only one route step in the route is permitted to be the initial route step.</p><p>For Lot/Batch and Repetitive, several route step in the route is permitted to be the initial route step so long it is not a "Is Pull Step" route step.</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is Pull Step</td><td style="width: 1246.0px;" class="confluenceTd"><p>If checked, Is Pull Step will allow the route step to pull WIP from any route steps in the route. </p><p>(Note: WIP is packed in container shall not allow to pull, system will prompt error and not allow to start WIP. As for parser, it is asynchronous process, if this validation require, can run OKToStart to accomplish this checking.)</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span style="color: rgb(45,46,47);">Allow Retest On Failure and Defect</span></td><td style="width: 1246.0px;" class="confluenceTd">If checked, will allow the WIP to be retested in the event of a failure or a defect<br />If unchecked, retesting is not allowed in the event of a failure or a defect. This helps to prevent operator from retesting the WIP without seeking advice from a Failure or a Defect Analyst</td></tr><tr><td colspan="1" class="confluenceTd">Allow Retest On Pass</td><td colspan="1" class="confluenceTd"><p>If checked, will allow the WIP to be retested in the event of a pass<br />Applicable for MOE step type (Include SMT), board allow being reprocessed if the option is turned on</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span style="color: rgb(0,0,0);">Allow Auto Release Failed Units</span></td><td style="width: 1246.0px;" class="confluenceTd">This option is only enabled to Route configured with Process Type "Lot/Batch Build" and Route Step type is referring to the "Manual Inspection Entry" Station Type and also it is enabled with "Is Initial Route Step". If checked, the Auto release failed unit screen will be showed when the MIE station login.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is Completion Step</td><td style="width: 1246.0px;" class="confluenceTd"><span>If checked, the route step will be identified as the last route step in the route. Several<span> route step in the route is permitted to be the completion route step</span></span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Allow Completed WIP Start</td><td style="width: 1246.0px;" class="confluenceTd">If checked, WIP that are at a "Completed" state is allowed to start at this route step. In normal circumstance, WIP that are completed is not allowed to start at any route step as they are Done.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is SAP Reporting Step</td><td style="width: 1246.0px;" class="confluenceTd">If checked, the route step can be used to report information back to SAP ECC. The SAP Work Center field becomes available for user configuration</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is Delivery Fulfillment Step</td><td style="width: 1246.0px;" class="confluenceTd">Used in palletization step. If checked, the route step will be identified as delivery fulfillment step. Only allow resources and certifications assignment. Since there is no WIP to start, it does not allow adding pre-start rules, routing rules or assembly types. Incoming and outgoing connections arrows are also not allowed.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Is Delivery Audit Step</td><td style="width: 1246.0px;" class="confluenceTd">If checked, the <span>route step will be identified as delivery audit step. Delivery Audit is performed after packout to determine if the items packed matches the items required by the order.<br /><span>Except for assigning resources and certifications, it does not allow adding pre-start rules, routing rules or assembly types. </span><span>Incoming and outgoing connections is also not allowed. </span> </span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Allow Manual Test Override</td><td style="width: 1246.0px;" class="confluenceTd">If checked, the Manual Test Entry station access (the Manual Test Entry button via Station Login) is available on top of the route step's station access. User is able to decide to enter either station for WIP processing. Example, this option is turned on for Manual Inspection Entry step. When user scans the resource and route step selection in Station Login, user can decide if they wanted to perform Manual Inspection or Manual Test.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Enable Hermes Controller</td><td style="width: 1246.0px;" class="confluenceTd">If checked, the Hermes service will be linked to this particular Step resource. In this case <span style="color: rgb(0,0,0);">Hermes service can control the board from going from Upstream machine to downstream machine.</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Generate IBN On Split</td><td style="width: 1246.0px;" class="confluenceTd">If checked, the Internal Batch Number will be generated during split so that the process can be optimized.</td></tr><tr><td colspan="1" class="confluenceTd"><p><label class="control-label">Restrict Manufacturing Area Change</label></p></td><td colspan="1" class="confluenceTd">Option to turn On/Off. If turn On, WIP is not allowed to change Manufacturing Area during the Station Login / Operation Station start whereas turn Off to allow WIP to change the manufacturing area according to the provided Resource.</td></tr><tr><td colspan="1" class="confluenceTd">Copy</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="41" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903653.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903653.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="82903653" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-11-29-21-39-53.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919996" data-linked-resource-container-version="27" /></span>Copy button is allowed user to replicate the Route Step to a New Route Step with different name.</p></div></td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Manufacturing Area Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Manufacturing Area</td><td style="width: 1246.0px;" class="confluenceTd"><p>This is a required field to be filled up before the Route Step can be created. Multiple manufacturing area is allowed to be associated to Route Step. Identify the Bay/ Line of the Production Floor, Resource need to be associated is filtered according to the Manufacturing Area defined.</p></td></tr><tr><td colspan="1" class="confluenceTd">Building</td><td colspan="1" class="confluenceTd">Building where the manufacturing belongs. This field is populated based on the selected manufacturing area. Not editable.</td></tr><tr><td colspan="1" class="confluenceTd">Floor</td><td colspan="1" class="confluenceTd">Floor where the manufacturing belongs . This field is populated based on the selected manufacturing area. Not editable.</td></tr><tr><td colspan="1" class="confluenceTd">Building Type</td><td colspan="1" class="confluenceTd">Type of building where the manufacturing area belongs. This field is populated based on the selected manufacturing area. Not editable.</td></tr><tr><td colspan="1" class="confluenceTd">Production Area</td><td colspan="1" class="confluenceTd">Production are where the manufacturing belongs. This field is populated based on the selected manufacturing area. Not editable.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Action </p></div></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="36" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903652.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903652.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="82903652" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-11-29-21-33-40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919996" data-linked-resource-container-version="27" /></span>Action to delete the Manufacturing Area added.</p></div></td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Pre-Start Rules Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Field</span></td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Priority</td><td style="width: 1246.0px;" class="confluenceTd">The sequence where the pre-start rule will be executed. A smaller number has a higher priority and it will be executed first.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Type</td><td style="width: 1246.0px;" class="confluenceTd">Phoenix has a list of pre-start rule types for user selection. Different rule types call for different rule parameters</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Name</td><td style="width: 1246.0px;" class="confluenceTd">The unique name given to the rule type</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Parameters</td><td style="width: 1246.0px;" class="confluenceTd">Depending on the Rule Type, user is required to configure the corresponding rule parameters. The value configured <span>will be used to execute the rule. <br /></span>For example, <strong>Rule Type</strong>: Basic Random Sampling has <strong>Rule Parameter</strong>: <em>Sampling Percentage</em><br />User is required to enter the sampling percentage. If the sampling percentage entered is 50%, then the WIP has a 50% probability to be used for sampling.</td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Routing Rule Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Priority</td><td style="width: 1246.0px;" class="confluenceTd"><span>The sequence where the routing rule will be executed. A smaller number has a higher priority and it will be executed first.</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Type</td><td style="width: 1246.0px;" class="confluenceTd"><span>Phoenix has a list of routing rule types for user selection. Different rule types call for different rule parameters</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Name</td><td style="width: 1246.0px;" class="confluenceTd"><span>The unique name given to the rule type</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Prompt Current Operator</td><td style="width: 1246.0px;" class="confluenceTd">This is applied when there are more than one routing steps available after the WIP completion in the current route step.<br />If checked, the operator completing the current route step is required to select the next route step to queue the WIP<br />If unchecked, the WIP will be queued in all of the possible next route step. The WIP can be started at any of the mentioned route step. Once started, the WIP is no longer in queue in the mentioned route steps.</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Destination Operation</td><td style="width: 1246.0px;" class="confluenceTd">The route step to route the WIP if the rule is met</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Rule Parameters</td><td style="width: 1246.0px;" class="confluenceTd"><span>Depending on the Rule Type, user is required to configure the corresponding destination operation and/or rule parameters. The value configured </span><span>will be used to execute the rule. <br /></span><span>For example, </span><strong>Rule Type</strong><span>: Route By Material has </span><strong>Destination Operation</strong><span>: </span><em>FA, </em><strong>Rule Parameter<em>: </em></strong><em>Assembly-X</em><br /><span>If <em>Assembly-X </em>is completed at this route step, then it will be routed to route step<em> FA</em></span></td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd"><span>Resources Tab</span></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Field</span></td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Sequence</td><td style="width: 1246.0px;" class="confluenceTd"><p>Sequence field to be optional to enter (If no sequence, it means the resource to be considered after all the sequenced resources. Adding same sequence no. to different resources is possible. User can Add, edit or delete Resource sequence anytime.</p><p>For Example if we have this configuration:</p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><td class="confluenceTd"><p><span style="color: black;">Seq. No</span></p></td><td class="confluenceTd"><p><span style="color: black;">Resources</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">1</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res01</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">2</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res02</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">2</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res03</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;"> </span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res04</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">10</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res05</span></p></td></tr></tbody></table></div><p>System will consider in following order:</p><ol><li>Swab-Res01</li><li>Swab-Res02, Swab-Res03 (Parallel resources)</li><li><strong>Swab-Res05</strong></li><li>Swab-Res04</li></ol></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><span>Resources</span></td><td style="width: 1246.0px;" class="confluenceTd">Configure available resources filtered according to the Manufacturing Area of Route Step. For example, a torque driver tool may be assigned to the route step to allow the operator to assemble parts. Resource can be shared resource (e.g. Resource01 with MA01, MA02 and MA03) or independent resource for each different manufacturing area (e.g. Resource01 with MA01 and Resource02 with MA02 respectively).</td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Certifications Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Certification</td><td style="width: 1246.0px;" class="confluenceTd"><p><span>Configure the certifications required by the operator to operate in this route step. For example, an operator must have a valid torque usage certification before they can work with a torque driver resource </span></p></td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Assemble Types Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Field</span></td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" data-highlight-colour="grey"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Assemble Type</td><td style="width: 1246.0px;" class="confluenceTd">If it is an assembly route step, user can configure the assemble type here. When the material arrives at the route step, system will prompt operator to assemble the component if the Assemble Type on the route step and the Assemble Type on the material match. Assemble Type is configured in <a href="Material-29919417.html">Material</a>'s Assemble Tab</td></tr><tr><td style="text-align: center;width: 1358.0px;" colspan="2" class="confluenceTd">Alternative Names Tab</td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" title="Background colour : Grey" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 1246.0px;" title="Background colour : Grey" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Add Alternative Name</td><td style="width: 1246.0px;" class="confluenceTd">Add a new alternative name for the Route Step. For description of the other screens refer to <a href="Route-Step-Alternative-Name-48168965.html">Route Step Alternative Name</a> page.</td></tr></tbody></table>





- once click on complete panel button. \*Applicable to MIE only, will not have effect for MOE.


- N/A - By default, Auto Breakout should be this value (deactivate) and user have the option to activate it by selecting All or Defect Only. System will perform as per existing (Manual Breakout) without Auto Breakout any boards from Panel.
Is Initial Route StepIf checked, the route step will be identified as the initial route step in the route.
For BTO/CTO , only one route step in the route is permitted to be the initial route step.
For Lot/Batch and Repetitive, several route step in the route is permitted to be the initial route step so long it is not a "Is Pull Step" route step.
Is Pull StepIf checked, Is Pull Step will allow the route step to pull WIP from any route steps in the route. 
(Note: WIP is packed in container shall not allow to pull, system will prompt error and not allow to start WIP. As for parser, it is asynchronous process, if this validation require, can run OKToStart to accomplish this checking.)
Allow Retest On Failure and Defect
If checked, will allow the WIP to be retested in the event of a failure or a defect
If unchecked, retesting is not allowed in the event of a failure or a defect. This helps to prevent operator from retesting the WIP without seeking advice from a Failure or a Defect AnalystAllow Retest On PassIf checked, will allow the WIP to be retested in the event of a pass

Applicable for MOE step type (Include SMT), board allow being reprocessed if the option is turned onAllow Auto Release Failed Units
This option is only enabled to Route configured with Process Type "Lot/Batch Build" and Route Step type is referring to the "Manual Inspection Entry" Station Type and also it is enabled with "Is Initial Route Step". If checked, the Auto release failed unit screen will be showed when the MIE station login.Is Completion StepIf checked, the route step will be identified as the last route step in the route. Severalroute step in the route is permitted to be the completion route stepAllow Completed WIP StartIf checked, WIP that are at a "Completed" state is allowed to start at this route step. In normal circumstance, WIP that are completed is not allowed to start at any route step as they are Done.Is SAP Reporting StepIf checked, the route step can be used to report information back to SAP ECC. The SAP Work Center field becomes available for user configurationIs Delivery Fulfillment StepUsed in palletization step. If checked, the route step will be identified as delivery fulfillment step. Only allow resources and certifications assignment. Since there is no WIP to start, it does not allow adding pre-start rules, routing rules or assembly types. Incoming and outgoing connections arrows are also not allowed.Is Delivery Audit StepIf checked, the route step will be identified as delivery audit step. Delivery Audit is performed after packout to determine if the items packed matches the items required by the order.
Except for assigning resources and certifications, it does not allow adding pre-start rules, routing rules or assembly types. Incoming and outgoing connections is also not allowed. Allow Manual Test OverrideIf checked, the Manual Test Entry station access (the Manual Test Entry button via Station Login) is available on top of the route step's station access. User is able to decide to enter either station for WIP processing. Example, this option is turned on for Manual Inspection Entry step. When user scans the resource and route step selection in Station Login, user can decide if they wanted to perform Manual Inspection or Manual Test.Enable Hermes ControllerIf checked, the Hermes service will be linked to this particular Step resource. In this case Hermes service can control the board from going from Upstream machine to downstream machine.
Generate IBN On SplitIf checked, the Internal Batch Number will be generated during split so that the process can be optimized.Restrict Manufacturing Area Change
Option to turn On/Off. If turn On, WIP is not allowed to change Manufacturing Area during the Station Login / Operation Station start whereas turn Off to allow WIP to change the manufacturing area according to the provided Resource.Copy![image2020-11-29_21-39-53.png](/.attachments/82903653.png)


Copy button is allowed user to replicate the Route Step to a New Route Step with different name.
Manufacturing Area Tab**Field** 
**Description** 
Manufacturing AreaThis is a required field to be filled up before the Route Step can be created. Multiple manufacturing area is allowed to be associated to Route Step. Identify the Bay/ Line of the Production Floor, Resource need to be associated is filtered according to the Manufacturing Area defined.
BuildingBuilding where the manufacturing belongs. This field is populated based on the selected manufacturing area. Not editable.FloorFloor where the manufacturing belongs . This field is populated based on the selected manufacturing area. Not editable.Building TypeType of building where the manufacturing area belongs. This field is populated based on the selected manufacturing area. Not editable.Production AreaProduction are where the manufacturing belongs. This field is populated based on the selected manufacturing area. Not editable.Action 
![image2020-11-29_21-33-40.png](/.attachments/82903652.png)


Action to delete the Manufacturing Area added.
Pre-Start Rules TabField
Description
PriorityThe sequence where the pre-start rule will be executed. A smaller number has a higher priority and it will be executed first.Rule TypePhoenix has a list of pre-start rule types for user selection. Different rule types call for different rule parametersRule NameThe unique name given to the rule typeRule ParametersDepending on the Rule Type, user is required to configure the corresponding rule parameters. The value configured will be used to execute the rule. 
For example, **Rule Type** : Basic Random Sampling has **Rule Parameter** : Sampling Percentage
User is required to enter the sampling percentage. If the sampling percentage entered is 50%, then the WIP has a 50% probability to be used for sampling.Routing Rule TabFieldDescriptionPriorityThe sequence where the routing rule will be executed. A smaller number has a higher priority and it will be executed first.Rule TypePhoenix has a list of routing rule types for user selection. Different rule types call for different rule parametersRule NameThe unique name given to the rule typePrompt Current OperatorThis is applied when there are more than one routing steps available after the WIP completion in the current route step.
If checked, the operator completing the current route step is required to select the next route step to queue the WIP
If unchecked, the WIP will be queued in all of the possible next route step. The WIP can be started at any of the mentioned route step. Once started, the WIP is no longer in queue in the mentioned route steps.Destination OperationThe route step to route the WIP if the rule is metRule ParametersDepending on the Rule Type, user is required to configure the corresponding destination operation and/or rule parameters. The value configured will be used to execute the rule. 
For example, **Rule Type** : Route By Material has **Destination Operation** : FA, **Rule Parameter** : Assembly_X
If Assembly_X is completed at this route step, then it will be routed to route stepFAResources TabField
Description
SequenceSequence field to be optional to enter (If no sequence, it means the resource to be considered after all the sequenced resources. Adding same sequence no. to different resources is possible. User can Add, edit or delete Resource sequence anytime.
For Example if we have this configuration:
<table class="wrapped confluenceTable"><tbody><tr><td class="confluenceTd"><p><span style="color: black;">Seq. No</span></p></td><td class="confluenceTd"><p><span style="color: black;">Resources</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">1</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res01</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">2</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res02</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">2</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res03</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;"> </span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res04</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">10</span></p></td><td class="confluenceTd"><p><span style="color: black;">swab-Res05</span></p></td></tr></tbody></table>

swab_Res01
2
swab_Res02
2
swab_Res03

swab_Res04
10
swab_Res05
System will consider in following order:

- Swab_Res01

- Swab_Res02, Swab_Res03 (Parallel resources)

- **Swab_Res05**

- Swab_Res04
ResourcesConfigure available resources filtered according to the Manufacturing Area of Route Step. For example, a torque driver tool may be assigned to the route step to allow the operator to assemble parts. Resource can be shared resource (e.g. Resource01 with MA01, MA02 and MA03) or independent resource for each different manufacturing area (e.g. Resource01 with MA01 and Resource02 with MA02 respectively).Certifications TabFieldDescriptionCertificationConfigure the certifications required by the operator to operate in this route step. For example, an operator must have a valid torque usage certification before they can work with a torque driver resource 
Assemble Types TabField
Description
Assemble TypeIf it is an assembly route step, user can configure the assemble type here. When the material arrives at the route step, system will prompt operator to assemble the component if the Assemble Type on the route step and the Assemble Type on the material match. Assemble Type is configured in [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)'s Assemble TabAlternative Names TabFieldDescriptionAdd Alternative NameAdd a new alternative name for the Route Step. For description of the other screens refer to [Route Step Alternative Name](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)page.



#### Attachments

[image2018-6-27_15-42-28.png](/.attachments/29919997.png)











