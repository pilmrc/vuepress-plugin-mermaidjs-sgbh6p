# Introduction

Generic workstation allows user to access different operations by scanning an available resource name 
(except resources having resource type: 'Test Equipment')
and WIP. System will prompt error message if the Resource is not found. Generic Workstation shows a list of Production Order and Planned Order with available Quantity for user to Release or Start a WIP if it is an Initial Route Step.

### **How to get there?** 



::: mermaid
graph LR
A("GENERIC WORKSTATION")-->0("SCAN RESOURCE NAME")

:::
![image2017-7-28 14:32:20.png](/.attachments/29920072.png)




#### Screen Activity


Generic workstation enables user to perform the following activity:

- Start WIP for Planned Order at Initial Route Step


- Release WIP for Production Order at Initial Route Step


- Filter Orders by Production Order or Planned Order if Resource assigned to an initial Route Step


- Filter Sales Order if Resource assigned to an initial Route Step


- Group by Sales Order to look for Production Order



- Access to station assigned to the scanned resource


- Start in Queue WIP at the the station assigned to the scanned resource


- Auto redirect to the next In Queue Route Step if the next Route Step have the same resource


- Release Lot for Planned Order at Initial Route Step for Lot/Batch Production

Pre Condition
The following data needs to be pre-configured to use generic workstation:

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)


- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Route-Step-Reporting-Name.md)


- *[Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)*

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)



Generic Workstation interface
![image2017-7-28 14:38:19.png](/.attachments/29920071.png)




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">1.Scan Resource</td><td colspan="1" class="confluenceTd"><p>Access work station by scanning the resource to begin. A list of Production Order and Planned Order is display if the scanned resource is an initial route step</p><p>Note: <span style="color: rgb(23,43,77);">Resources having resource type: 'Test Equipment' associated will not be visible on scan.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">2.Switch to Pull Mode</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Clicks the "Switch to Pull Mode" button if user wants to pull the scan WIP to the respective Route Step by selecting from the "—Select Pull Step—" drop down list. </p><p>The "Select Pull Step" list will show unique Route and Step from Active and Inactive routes. Steps that have been deleted are not visible.</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920070.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920070.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920070" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-28 14:39:13.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920068" data-linked-resource-container-version="5" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">3.Scan WIP</td><td colspan="1" class="confluenceTd"><p>Scan WIP to start at the scanned Resource (1). Start scanned WIP at the Route Step associated to the scanned Resource if the WIP is In Queue at the Route Step.<br />If scanned WIP does not In Queue at the Route Step, system switch to Pull Mode and system returns error: <a class="item" style="text-decoration: none;" rel="nofollow">This WIP can not start at any route step at this resource. </a><br />If scanned WIP not exist in the system, system returns error: <a class="item" style="text-decoration: none;" rel="nofollow">No WIP was found matching [Serial Number]</a></p><p>Once user scans a valid WIP, the screen will go to the station directly and the operations performed are based on the route/version of the scanned WIP.</p></td></tr><tr><td colspan="1" class="confluenceTd">Start Lot</td><td colspan="1" class="confluenceTd">This section displays if scanned resource belongs to the Lot/Batch Route.</td></tr><tr><td colspan="1" class="confluenceTd">4.Select Route Step</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Display Route and Route Step associate to the scanned Resource for Lot</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920069.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920069.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920069" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-28 14:42:1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920068" data-linked-resource-container-version="5" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">5.Existing Carrier #</td><td colspan="1" class="confluenceTd"><p><span style="background-color: transparent;font-size: 10.0pt;">Scan an existing carrier number with Lot assigned.<span>Start scanned Carrier at the Route Step associated to the scanned Resource if the Lot is In Queue at the Route Step.</span><br />If Carrier number scanned is not valid, system returns error message: </span><span style="background-color: transparent;font-size: 10.0pt;">Could not find carrier with serial number [Carrier#]<br /><span>This field only enabled after user selects a Route Step. </span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Order</td><td colspan="1" class="confluenceTd">A list of Production Order and Planned Order display at this section if the scanned Resource belongs to an initial Route Step</td></tr><tr><td colspan="1" class="confluenceTd">6.Filter Orders</td><td colspan="1" class="confluenceTd">Scan Production Order or Planned Order at this field to filter from "Order #" (11)</td></tr><tr><td colspan="1" class="confluenceTd">7.Filter Sales Order</td><td colspan="1" class="confluenceTd">Scan Sales Order at this field to filter from "Sales Order #" (9)</td></tr><tr><td colspan="1" class="confluenceTd">8.Group by Sales Order</td><td colspan="1" class="confluenceTd">Check this check box if want to view the list group by sales order</td></tr><tr><td colspan="1" class="confluenceTd">9.Sales Order #</td><td colspan="1" class="confluenceTd">Display Sales Order Number</td></tr><tr><td colspan="1" class="confluenceTd">10.Type</td><td colspan="1" class="confluenceTd">Display either Production for Production Order or Planned for Planned Order</td></tr><tr><td colspan="1" class="confluenceTd">11.Order #</td><td colspan="1" class="confluenceTd">Display Order Number</td></tr><tr><td colspan="1" class="confluenceTd">12.Material</td><td colspan="1" class="confluenceTd">Display Order's Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">13.Route</td><td colspan="1" class="confluenceTd">Display associated Route for the Order</td></tr><tr><td colspan="1" class="confluenceTd">14.Route Step</td><td colspan="1" class="confluenceTd">Display associated Route Step to the Resource</td></tr><tr><td colspan="1" class="confluenceTd">15.Priority</td><td colspan="1" class="confluenceTd">Display Order Priority for Production Order.</td></tr><tr><td colspan="1" class="confluenceTd">16.Creation Date</td><td colspan="1" class="confluenceTd">Display the Order creation date time</td></tr><tr><td colspan="1" class="confluenceTd">17.Qty Left</td><td colspan="1" class="confluenceTd">Display the Order Quantity that yet to released or start</td></tr><tr><td colspan="1" class="confluenceTd">18.Order Action</td><td colspan="1" class="confluenceTd">Display "Release Lot" for Lot/Batch based Planned Order. Release Lot leads user to Lot/Batch Production - <a href="29917829.html">Lot Release</a> Screen Display "Release WIP" for serialized Production order. Display "Start WIP" for WIP based Planned Order</td></tr></tbody></table>






**Auto Redirect to different station with the same Resource at Generic Workstation** 
User can perform activity for a WIP continuously at different operations with the same resource at Generic workstation.
![image2016-7-5 10:5:25.png](/.attachments/29920075.png)



**Start Remaining WIP Quantity at Generic Work Station** 
System will link to the following page if there is remaining WIP in queue for the same Order at same Resource. System display the remaining WIP Left and 
User can clicks on "Start WIP" to start the next in Queue WIP for the same Order at the scanned Resource.
![image2016-7-11 15:56:7.png](/.attachments/29920074.png)












#### Attachments

[image2017-7-28 14:42:1.png](/.attachments/29920069.png)
[image2017-7-28 14:39:13.png](/.attachments/29920070.png)
[image2017-7-28 14:38:19.png](/.attachments/29920071.png)
[image2017-7-28 14:32:20.png](/.attachments/29920072.png)
[image2017-7-28 14:29:13.png](/.attachments/29920073.png)
[image2016-7-11 15:56:7.png](/.attachments/29920074.png)
[image2016-7-5 10:5:25.png](/.attachments/29920075.png)
[image2016-7-4 15:28:34.png](/.attachments/29920076.png)
[image2016-7-4 14:49:9.png](/.attachments/29920077.png)
[image2016-7-4 14:45:51.png](/.attachments/29920078.png)
[image2016-7-4 14:42:3.png](/.attachments/29920079.png)
[image2016-7-4 14:41:43.png](/.attachments/29920080.png)
[image2016-7-4 14:37:21.png](/.attachments/29920081.png)
[image2016-7-4 14:14:7.png](/.attachments/29920082.png)
[image2016-7-4 14:12:43.png](/.attachments/29920083.png)
