# Introduction

Deviation is used to temporarily change the events for a period of time. A deviation can be requested by the customer or initiated internally. When a deviation is required, user is required to create a deviation request here. Within each deviation request, user can configure its 
deviation types which are [route deviation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Deviation/Route-(Process)-Deviation-(4.2).md),[ setup sheet deviation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Deviation/Setup-Sheet-Deviation-(4.2).md), [material deviation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Deviation/Material-Deviation.md)and [visual aid deviation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Deviation/Visual-Aid-Deviation-(4.2).md). A deviation request can contain a combination of multiple deviation types. A deviation request is made of one of the following scope types: Assembly Revision, Production Order or Planned Order. The deviation scope is not mixable. The deviation request will be associated to a BOM following the first Assembly/Planned Order/Production Order association to it. User can associate multiple Assemblies/Planned Orders/Production Orders to the deviation request provided they share the same BOM. Once a deviation is activated WIPs can be added to the deviation manually or through file upload or automatically on WIP release. Once the WIP is added to the deviation, the WIP will follow all the deviation rules as configured in the deviated request. If the WIP is manually (or through file upload) disassociated from the deviation request, then the WIP will stop complying to the deviation rules and return back to the standard processing. A deviation request can expire after it surpassed its validity date. User can also manually deactivate the deviation request. WIPs in expired and deactivated deviation request will still continue to follow the deviation rules unless they are manually  or through file upload disassociated from the deviation request. A WIP can only be associated to one deviation request at a time. 
Note: File upload for removal of associated WIP will only select the WIP rows and it will not delete directly as it may impact if user does it by mistake. The rows will be selected and the user can directly click the Disassociate button after verifying all selected rows.


### How to get there?




::: mermaid
graph LR
A("CONFIGURE")-->0("DEVIATION")
0-->1("GENERAL (TAB)")

:::


#### Screen Activity


Visual Aid Deviation enables user to perform the following activity:

- Create deviation request specifying the general information about the deviation

- Copy the deviation request

- Delete the deviation request

- Activate the deviation request

Pre Condition
The following data needs to be pre-configured before user configures Route Deviation

- Permission to "Can Configure General" under the parent permission "Can Access Deviation"

- Planned Order, Production Order or Assembly Revision depending on the scope of the deviation request



#### Fields 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Deviation-GeneralDeviation"><strong>General Deviation</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Initiated By</p></td><td class="confluenceTd"><p>Determination of whether the deviation is initiated by Customer or Internal</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer Deviation Number</td><td colspan="1" class="confluenceTd">An option to enter a customer deviation number if it exist as a reference</td></tr><tr><td colspan="1" class="confluenceTd">Valid From</td><td colspan="1" class="confluenceTd">The date where the deviation starts. The date on configuration or on Activation will be validated to ensure it is not in the past. This is to ensure that the deviation doesn't contain a start date in the past where it wasn't in use.</td></tr><tr><td colspan="1" class="confluenceTd">Valid To</td><td colspan="1" class="confluenceTd">The date where the deviation will expire</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">An option to provide an optional description about the deviation</td></tr><tr><td colspan="1" class="confluenceTd">Deviation Scope</td><td colspan="1" class="confluenceTd">Choose one of the scope type: Assembly, Production Order or Planned Order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Apply Deviation on WIP release</span></td><td colspan="1" class="confluenceTd"><p>If set to TRUE, WIPs released matching the deviation criteria will be automatically assigned to the deviation request<br /><span style="background-color: transparent;font-size: 10.0pt;">If set to FALSE, user has to manually add WIPs to the deviation request via the WIP tab in Deviation Maintenance</span></p><p>Note: This feature is only available for Assembly WIP and Production Order WIP Release.</p></td></tr><tr><td colspan="1" class="confluenceTd">Adding Planned Order/Production Order/Assembly</td><td colspan="1" class="confluenceTd"><p>The field changes according to the scope of the deviation request.</p><p>If the scope is Planned Order, user is can enter planned orders to be associated to the deviation request provided it is of the same BOM<br />If the scope is Production Order, <span>user is can enter production orders to be associated to the deviation request provided it is of the same BOM</span><br />If the scope is Assembly, <span>user is can enter assembly to be associated to the deviation request provided it is of the same BOM</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Max Quantity</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>An optional field if there is a maximum WIP quantity restriction for the assembly/planned order/production order.</p><p>Example: This assembly is set to Max Quantity = 10. At run time, a maximum of 10 WIPs from this assembly can be associated to this deviation request.</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918301.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918301.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918301" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-8-4 16:8:15.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918292" data-linked-resource-container-version="4" /></span></p></div></td></tr></tbody></table>







#### Create a Deviation Request



1. Provide a unique Deviation Number. Enter all the mandatory fields in the General tab as shown below
![image2017-8-4 16:16:33.png](/.attachments/29918299.png)


2. Save the Deviation Request. On successful creation, you will see the screen below. The deviation header is populated with information about the Customer/Division, Scope and Status = New.
![image2017-8-4 16:18:25.png](/.attachments/29918298.png)


3. Since the Deviation Request is scoped to Planned Order, enter the Planned Order(s). The deviation request will use the BOM from the first record added. The deviation header will be populated with the BOM and Material of the deviation. A confirmation prompt is displayed for user to confirm the BOM to be established for the deviation request. This step is irreversible once confirmed. 
![image2017-8-7 14:43:27.png](/.attachments/29918297.png)





#### Activate a Deviation Request


User can activate the deviation request when it is fully configured by clicking on this button 
![image2017-8-8 15:40:34.png](/.attachments/29918296.png)


![image2017-8-8 15:43:18.png](/.attachments/29918295.png)


User can activate the deviation request in advance if they set a future date in the Valid From & Valid To of the deviation request. Although it's activated, system will still check the validity dates in the deviation request before WIPs are allowed to be associated to the deviation request. Modification of an activated deviation is restricted for data integrity. Once a deviation request is activated, user can only modify:

- Valid To date to reduce the duration of the deviation


- Turn on/off the "Apply Deviation on WIP Release" configuration


- Description





#### Deactivate a Deviation Request



User can deactivate the deviation request by clicking on this button 
![image2017-8-8 15:44:28.png](/.attachments/29918293.png)



Only deviation request that is in "Active" state can be deactivated.

![image2017-8-8 15:44:7.png](/.attachments/29918294.png)







#### Expired or Deactivated Deviation Request


Expired or deactivated deviation request is non modifiable except the ability to disassociate WIP(s) from it. No new or disassociated WIP(s) can be associated to this deviation request. WIPs assigned to expired or deactivated deviation will continue to follow the deviation rules unless they are manually disassociated from the deviation.



#### Multiple Deviations Request



- WIP
allows the use of multiple deviations at the same time.
- Allow multiple deviations:


Route Deviation/Setup Sheet Deviation
- Not allow multiple deviations: Material Deviation/Visual Aid Deviation


- Conflict Deviations define:


- Route Deviation

: Prestart Rule-Rules Route/Route Step/Rule Type exactly the same, just can related one deviation.
- Route Deviation

: Routing Rule-Rules Route/Route Step/Rule Type exactly the same, just can related one deviation.
- Route Deviation

: WIP Move-Route Steps Assembly Number exactly the same, just can related one deviation.
- Setup Sheet Deviation

: Original Setup Sheet ID exactly the same, just can related one deviation
- When Deviation A has multiple rules, any one that is exactly the same as the rule in Deviation B is considered a conflict.


- Run Time:


- When WIP has multiple deviations, WIP will follow all deviations rules that it has.

- The priority of Deviations execution starts from the most recent “Valid From” Deviation.


#### Attachments

[image2017-8-8 15:44:28.png](/.attachments/29918293.png)
[image2017-8-8 15:44:7.png](/.attachments/29918294.png)
[image2017-8-8 15:43:18.png](/.attachments/29918295.png)
[image2017-8-8 15:40:34.png](/.attachments/29918296.png)
[image2017-8-7 14:43:27.png](/.attachments/29918297.png)
[image2017-8-4 16:18:25.png](/.attachments/29918298.png)
[image2017-8-4 16:16:33.png](/.attachments/29918299.png)
[image2017-8-4 16:14:58.png](/.attachments/29918300.png)
[image2017-8-4 16:8:15.png](/.attachments/29918301.png)
