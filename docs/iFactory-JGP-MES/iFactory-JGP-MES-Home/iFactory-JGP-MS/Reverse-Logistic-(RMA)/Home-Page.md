# Introduction

Purpose

Return Material Authorization (RMA) is a part of the process of returning a product in order to receive a refund, replacement, upgrade or repair during the product's warranty period.


### How to get there?


Select the module Reverse 
![image2017-7-4 16:55:36.png](/.attachments/29920854.png)




#### Permission



iFactory Permission: User is require to have the following Reverse Logistic - RMA application permission assigned to it's group.

- Can Access All

![image2020-11-26_14-1-44.png](/.attachments/82903554.png)




#### Pre Condition



Previous configuration is required in the shop floor system in order for Reverse to correctly receive the information.

***MES***  will transferthe information (Customer, assembly / revision / version and associated barcode mask, Factory, MA, Route) 
to iFactory Reverse if th
e data is correctly configured. 

**1** stStep: MES Configuration 
- The Factory needs to be associated to the Site that is configured for the RMA Agent in Octopus Deploy.

- The Route needs to contain at least one Route Step

- The Assembly needs to be associated to at least one Route

- Site/Factory needs to be associated to Manufacturing Area in MES.
The Manufacturing Area and Route information associated to the assembly will be used during the dispatching process in the 
[Request Dispatch](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Home-Page.md)screen in iFactory Reverse.***IFactory***  
will transferthe information (Customer, Material/ assembly / revision / version and associated barcode mask, Factory, MA, Route) 
to iFactory Reverse if th
e data is correctly configured. **1** 
stStep: Ifactory Configuration 
- The Material/Assembly needs to have a BOM type: Fixed

- The Material/Assembly needs to be associated to at least one Route type: RMA/Production


The Manufacturing Area and Route information associated to the material/assembly will be used during the dispatching process in the 
[Request Dispatch](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Home-Page.md)screen in iFactory Reverse.**For both MES & iFactory Configuration** 

- The user needs to be associated to the Customer in the Partition screen in order to be able to create requests for that customer in the Reverse application. This customer will be listed in the Current Scope screen for the user account. See more details in
[User Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Reverse-Logistic-(RMA)/Home-Page.md).
Screen Activity

Reverse Home Screen displays the next menu options
- Request – This module is for tracking returned customer's units to Jabil for additional work.

- Contact – This module is for managing customer and Jabil Contacts.

- Shipping - This module is for managing the shipping for customer and Jabil sites.

- Timeout – Time Settings for controlling the Request Processing.

- Configuration – Failure Category and Failure Symptoms management

- Property – Properties Management for Request and Request Item.



#### Screen Dependency


N/A



#### Open Home Page 


Once you enter in Reverse by default you will be redirected to the home 
If not it is possible to open the screen clicking in Ifactory Manufacturing Suite icon. 
![image2017-7-4 17:5:49.png](/.attachments/29920851.png)



or in the icon next the Login and Messages and click in Search Partition

![image2017-9-26 16:34:51.png](/.attachments/29920850.png)




#### Select Scope 



The scope sets the Customer and Division on which the rest of the Reverse modules will work.

Notes: The user should be assigned to the customer in Administration --" Partition to see the customer. 

![image2017-7-4 16:56:32.png](/.attachments/29920853.png)





#### Fields




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="HomePage-Timeouts"><strong>Timeouts</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Select the Scope</td><td colspan="1" class="confluenceTd"><p>Select the scope.</p><p>Note: The scope includes Site/Customer/Division. The user account could be assocuiated to customers from different sites.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Change and Set a default scope</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Pption is useful to a user that manages product for only one customer.  Setting this option will start the Reverse application consistently to this customer division.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Change Scope</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">option is useful to a user that manages product for multiple customer/divisions and must frequently change between them.</span></td></tr></tbody></table>




#### Set Result Count 



![image2017-7-4 17:0:42.png](/.attachments/29920852.png)





#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="HomePage-Timeouts.1"><strong>Timeouts</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Set Result Count</td><td colspan="1" class="confluenceTd"><p>Will setup the numbers of records that will return the system on each search, it is setup by user</p></td></tr><tr><td colspan="1" class="confluenceTd">Clear Result Count</td><td colspan="1" class="confluenceTd">Will reset to the default option that is 100 records per search</td></tr></tbody></table>



#### Attachments

[image2017-9-26 16:34:51.png](/.attachments/29920850.png)
[image2017-7-4 17:5:49.png](/.attachments/29920851.png)
[image2017-7-4 17:0:42.png](/.attachments/29920852.png)
[image2017-7-4 16:56:32.png](/.attachments/29920853.png)
[image2017-7-4 16:55:36.png](/.attachments/29920854.png)
[image2020-11-26_14-1-44.png](/.attachments/82903554.png)
