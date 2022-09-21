# Introduction

***Introduction to Production Order Details***  
The 
**Production Order Details** screen will display all details such as **Production Order Overview** , **Production Order Details Attributes** , **Line Item Attributes** , **SFO’s/ WIP** items related with this **Production Order** and the historical data from this **Production Order** .

## ***How to navigate to Production Order Details***  


Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***The following screens should be configured as predecessors to***  


***Production Order Details***  

- BOM

- Material



## ***Topic 1:***  


*How to search a Production Order* **Click** 
to enlarge the image!![image2018-5-22_12-28-52.png](/.attachments/29918837.png)




- **Enter**
a **PO** 
- **Production Order Overview**
will be displayed
- The
**Report** options are
- **Overview**

- **Attributes**

- **Line Item Attributes**

- **SFO's/WIP items**

- **History**


## ***Overview***  


**Click**  
to enlarge the image!![image2018-5-22_12-31-56.png](/.attachments/29918836.png)



- **Click**

on **Overview** 
- Within this view, the user can access the
**Top-Level Product** , the **SAP Quantity Ordered** , as well as all material required to manufacture this product.  (See red circles in screen capture
).
- By right clicking on the
**Production Order Details** , the system offers the option to Print the **Production Order Details** .![image2018-5-22_12-33-30.png](/.attachments/29918835.png)



- By

**clicking** once on **BOM** , the system will open a new tab and display the **BOM View Details** .


## ***Topic 2: Attributes***  


**Click**  
to enlarge the image!![image2018-5-22_12-38-35.png](/.attachments/29918834.png)



- **Click**

on**Attributes** . The system will display additional fields, not required to be displayed in the **Production Order Details** . The **Attributes** may provide assistance to the manufacturing process.
***Topic 3: Line Item/Attributes***  
**Click**  
to enlarge the image!
![image2018-5-22_12-41-50.png](/.attachments/29918833.png)



- **Click**

on **Line Item Attributes** . This screen will provide the **Item Number** by **Hierarchy** and **Material Name** .

## ***SFO’s/WIP Items***  


**Click**  
to enlarge the image!![image2018-5-22_12-44-1.png](/.attachments/29918832.png)



- **Click**

on **SFO’s /WIP** items. The user has the ability to identify **SFO** details. Upon selection of the **WIP SerialNumber** hyperlink, the system will open a new tab and display the **WIP View Screen** (From there, the following tabs are available: **Overview** , **Genealogy** , **Attributes** , **Data Collections** , **Test & Repair** , **Unique Data** , **Holds** , **Attachments** , **WIP Audit Log** , **RMA** , **Purges** ).

## ***History***  


**Click**  
to enlarge the image!![image2018-5-22_12-45-52.png](/.attachments/29918831.png)



- **Click**

on **History** . **History** tab will provide the detail history of each unit.

## ***Field Description***  


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><ul><li><strong>New</strong> – The production order has been imported and displayed</li><li><strong>Ready</strong>- A route has been assigned to the Production Order.</li><li><strong>In Progress</strong> – SFO/WIP have been generated.</li><li><strong>Cancelled</strong> – The production Order has been cancelled. All manufacturing processes are disabled. New SFO's cannot be generated.</li><li><strong>Completed</strong> – The production Order is completed. All SFO's have been build, and all system generated messages have been transmitted to ECC.</li><li><strong>Shipped</strong> – ECC has shipped product and transmitted the Shipped message to Phoenix to identify the Handling Units as such, for future RMA processes.</li><li><strong>On Hold</strong> – The production Order has been placed on Hold. All manufacturing processes are disabled. New SFO's cannot be generated.</li><li><strong>Suspended</strong> – The Production Order has been Suspended. In progress SFO's for this Production Order may continue to be built to completion. New SFO's cannot be generated.</li></ul></td></tr><tr><td class="confluenceTd"><p>Priority</p></td><td class="confluenceTd"><p>1-9</p><p>The system interprets the priority as follow:</p><ul><li>Priority 1</li></ul><p>Highest Priority</p><ul><li>Priority 9</li></ul><p>Lowest Priority</p><p>The Priority displayed is either sent via ECC or updated through Phoenix.</p></td></tr><tr><td class="confluenceTd"><p>Quantity</p></td><td class="confluenceTd"><p>Displays the quantity of the Production Order</p></td></tr><tr><td class="confluenceTd"><p>Performed At</p></td><td class="confluenceTd"><p>Displays the Date and Time stamp of a change to the Production Order.</p></td></tr><tr><td class="confluenceTd"><p>Performed By</p></td><td class="confluenceTd"><p>Displays the User, who performed the change.</p></td></tr><tr><td class="confluenceTd"><p>Comments</p></td><td class="confluenceTd"><p>Select the icon, to display the comment that the User entered when making a change to the Production Order.</p></td></tr></tbody></table>


- **– The production Order has been cancelled. All manufacturing processes are disabled. New SFO’s cannot be generated.**


- **Completed**
– The production Order is completed. All SFO’s have been build, and all system generated messages have been transmitted to ECC.
- **Shipped**
– ECC has shipped product and transmitted the Shipped message to Phoenix to identify the Handling Units as such, for future RMA processes.
- **On Hold**
– The production Order has been placed on Hold. All manufacturing processes are disabled. New SFO’s cannot be generated.
- **Suspended**
– The Production Order has been Suspended. In progress SFO’s for this Production Order may continue to be built to completion. New SFO’s cannot be generated.Priority
1-9
The system interprets the priority as follow:

- Priority 1
Highest Priority

- Priority 9
Lowest Priority
The Priority displayed is either sent via ECC or updated through Phoenix.
Quantity
Displays the quantity of the Production Order
Performed At
Displays the Date and Time stamp of a change to the Production Order.
Performed By
Displays the User, who performed the change.
Comments
Select the icon, to display the comment that the User entered when making a change to the Production Order.

***Instructor Presentations and User Guides***  
Not all of the 
**iFactory** screens have associated **PowerPoint**  presentations with **Note**  pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.





#### Attachments

[image2018-5-22_12-45-52.png](/.attachments/29918831.png)
[image2018-5-22_12-44-1.png](/.attachments/29918832.png)
[image2018-5-22_12-41-50.png](/.attachments/29918833.png)
[image2018-5-22_12-38-35.png](/.attachments/29918834.png)
[image2018-5-22_12-33-30.png](/.attachments/29918835.png)
[image2018-5-22_12-31-56.png](/.attachments/29918836.png)
[image2018-5-22_12-28-52.png](/.attachments/29918837.png)
