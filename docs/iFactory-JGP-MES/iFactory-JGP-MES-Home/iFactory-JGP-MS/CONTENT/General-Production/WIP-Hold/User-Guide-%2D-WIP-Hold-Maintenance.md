# Introduction

***Introduction to WIP Hold Maintenance***  

**WIP Hold** 
is used to temporarily halt **WIP** processing. There could be various reasons (quality issues, customer request, and so forth) to place a **WIP** on **hold** . A user can either place the **WIP** on**immediate** or **future**  **hold** .If an 
**immediate hold** is placed, as soon as the operator scans in the **Serial Number** , the system will block the operator from processing the **WIP** . If a **future hold** is placed, the **WIP** can still be processed along the **Route** . The system will only block **WIP** processing when it reaches the configured **future hold** step. 

## ***How to navigate to***  


*WIP Hold Maintenance* 
Please refer to the following user guide link - 

***Navigating to iFactory Screens***  
- for detailed information.


## ***The following screens should be configured as predecessors to***  


*WIP Hold Maintenance* 

- *Hold Reason Code*

- *Operation Assignment*
(
**WIP Serial Number** is affected in operation process).

## ***Topic 1: How to Add New Hold***  



**Click** 
to enlarge the image!![2018-05-21_17-07-25.png](/.attachments/29918503.png)



User can 
performa single or multiple 
**WIP(s)** **hold**  or**release hold** .   Options include:
- **Place immediate WIP Hold**


- **Place future WIP Hold**


- **Release immediate WIP Hold**


- **Release future WIP Hold**


- In this example, the user will

**select Add New Hold.**   **(** 
**Note** 
:  
This is a required field
**)** 

- In

**Search Filter section** , the user can **search** by **Serial Number, Material,**  or**Birth Date** and **click** **Search**  (See icon circled in Red)
. 
- The

**Filter list** will be displayed. **Click**  the **Check Box** to identify the **Serial Numbers** that need to be on **hold** .
- In

**Add New Hold Section:** 
- **Select**

the**Reason Code.** (
**Note** :  This is a required field)
- **Enter**

the**comment.** 
- **Click**

**Add New Hold** and the **WIP Serial Numbers** selected will be on **hold** .


## ***Topic 2:  How to Release Hold***  



**Click**  
to enlarge the image!![image2018-6-6_6-50-7.png](/.attachments/29918502.png)




- **Select Release Hold.**

**(** 
**Note** 
:  
This is a required field
**)** 

- **Search Serial Number**

or by any other field**and**  **c** **lick Search**  (See icon circled in Red)
. 
- **Select**

the 
**Check Box or Check Boxes** to identify the 
**Serial Numbers** that need to be **released** .
- **Enter Comments**

in**Release Hold Section.**   (
**Note** 
:  
This is a required field
**)** 

- **Click**

**Release Hold** .


## ***Topic 3:  How to Add New Future Hold***  


**Click**  
to enlarge the image!![2018-05-21_17-44-38.png](/.attachments/29918506.png)



- **Select Add New Future Hold.**

**(** 
**Note** 
:  
This is a required field
**)** 

- **Search Serial Number**
or by any other field
**and**  
**Click Search**  (See icon circled in Red)
. 

- **Select**

the 
**Check Box** to identify the 
**Serial Numbers** that need to be assigned at this operation.
- **Enter Reason Code, Route, Route Step**

and **Comments.**   **(** 
**Note** 
:  
These are required fields
**)** 

- **Click**

**Add New Future Hold.** 

***Topic 4:  How to Delete New Future Hold***  

**Click**  
to enlarge the image!
![2018-05-21_17-55-53.png](/.attachments/29918504.png)




- **Select Delete Future Hold.**

**(** 
**Note** 
:  
This is a required field
**)** 

- by any other field

**and**  **Click Search** 
(See icon circled in Red)
. 

- **Check**

the **Serial Numbers** that need to be assigned at this operation.
- **Click**

**the** **Delete Future Hold**  button**.** 

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Activity</p></td><td class="confluenceTd"><p>User is required to select the desired activity from the drop down list.</p><ul><li>Add New Hold.</li><li>Add New Future Hold. For Future Hold Operation.</li><li>Release Hold.</li><li>Delete Future Hold.</li></ul></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: center;" colspan="2" data-highlight-colour="grey"><strong>Search Filters</strong></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Use this filter to search for a single WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Use this filter to search for all Serial Numbers with the same Material. User can select multiple Serial Numbers to place hold or release hold.</td></tr><tr><td colspan="1" class="confluenceTd">Birth Start</td><td colspan="1" class="confluenceTd">Search for WIPs that were released after this date.</td></tr><tr><td colspan="1" class="confluenceTd">Birth End</td><td colspan="1" class="confluenceTd">Search for WIPs that were released before this date.</td></tr><tr><td colspan="1" class="confluenceTd">Reason Code</td><td colspan="1" class="confluenceTd">This filter is only visible for the Release Hold or Delete Future Hold button. Use this filter to search for WIPs that were placed on a particular hold reason code.</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: center;" colspan="2" data-highlight-colour="grey"><strong>Activity Grid</strong></td></tr><tr><td colspan="1" class="confluenceTd">Reason Code</td><td colspan="1" class="confluenceTd">Every immediate or future hold requires a hold reason code. Hold reason codes are pre-configured in <a href="http://usplnd0wiki01:8090/display/PB/Hold+Reason+Code" rel="nofollow">Hold Reason Code Maintenance</a>.</td></tr><tr><td colspan="1" class="confluenceTd">Future Hold Route</td><td colspan="1" class="confluenceTd">Only activated if Add New Future Hold activity is selected. For future hold, the future hold route and route step is required. <br />This means, when the WIP reaches the route/route step, the system will block the WIP from futher processing.</td></tr><tr><td colspan="1" class="confluenceTd">Future Hold Route Step</td><td colspan="1" class="confluenceTd">Only activated if Add New Future Hold activity is selected. See Future Hold Route above.</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">User needs to specify details of placing WIP on hold and releasing it from hold. This field will not be activated if Delete Future Hold activity is selected.</td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: center;" colspan="2" data-highlight-colour="grey"><strong>WIP Hold Grid</strong></td></tr><tr><td colspan="1" class="confluenceTd">WIP Details</td><td colspan="1" class="confluenceTd">Displays WIP hold details in a separate screen.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Displays the WIP dashboard.</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">WIP's material.</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">Only visible if Add New Hold or Add New Future Hold activity is selected. WIP's BOM.</td></tr><tr><td colspan="1" class="confluenceTd">Hold Count</td><td colspan="1" class="confluenceTd">Only visible if Add New Hold or Add New Future Hold activity is selected. A WIP can be placed in multiple holds. This field displays the number of holds for the WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Future Hold Count</td><td colspan="1" class="confluenceTd">Only visible if Add New Hold or Add New Future Hold activity is selected.<br />Similar to immediate hold, a WIP can be placed on multiple future holds. This field displays the number of future holds for the WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Current Route Step</td><td colspan="1" class="confluenceTd">Only visible if Add New Hold or Add New Future Hold activity is selected. The current route step for the WIP now.</td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd">The Order where the WIP belongs.</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">The Batch where the WIP belongs.</td></tr><tr><td colspan="1" class="confluenceTd">Hold ID</td><td colspan="1" class="confluenceTd">Only visible if Release Hold activity is selected. Displays the unique ID created for the WIP Hold.</td></tr><tr><td colspan="1" class="confluenceTd">Hold Route Step</td><td colspan="1" class="confluenceTd">Only visible if Release Hold activity is selected. Displays the step where the WIP was placed on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Held By</td><td colspan="1" class="confluenceTd">Only visible if Release Hold activity is selected. Displays the user that places the WIP on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Hold Date Time</td><td colspan="1" class="confluenceTd">Only visible if Release Hold activity is selected. Displays the date/time that places the WIP on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Comments</td><td colspan="1" class="confluenceTd">Only visible if Release Hold activity is selected. Displays the user comments when they place the WIP on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Future Hold ID</td><td colspan="1" class="confluenceTd">Only visible if Delete Future Hold activity is selected. Displays the unique ID created for the WIP Future Hold.</td></tr><tr><td colspan="1" class="confluenceTd">Trigger Route Step</td><td colspan="1" class="confluenceTd">Only visible if Delete Future Hold activity is selected. Displays the future hold route step.</td></tr><tr><td colspan="1" class="confluenceTd">Created By</td><td colspan="1" class="confluenceTd">Only visible if Delete Future Hold activity is selected. Displays the user that created the future hold.</td></tr></tbody></table>





- ## ***Screen Messages***

The following screen messages may appear when configuring the 
**WIP Hold Maintenance**  screen.
**Click**  
to enlarge the image!![image2018-5-21_17-11-57.png](/.attachments/29918509.png)




- This message appears when a

**New WIP Serial Number Hold**  is added successfully.  This message is similar for every**Activity** in the**Activity List.** **Click**  
to enlarge the image!
![image2018-5-21_17-49-39.png](/.attachments/29918505.png)


**2.**  
This message appears when the 
**Serial Number(s)** is/are already contained in a**future hold** . This message is similar for every **Activity** in the **Activity List** .


## ***The following screens are dependent on information from WIP Hold Maintenance***  




- *[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)*

(
**WIP Serial Number** is affected during **Operation process** ).

## ***Instructor Presentations and User Guides***  


Not all of the 
**iFactory** screens have associated **PowerPoint** presentations with **Note** pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.

#### Attachments

[image2018-6-6_6-50-7.png](/.attachments/29918502.png)
[2018-05-21_17-07-25.png](/.attachments/29918503.png)
[2018-05-21_17-55-53.png](/.attachments/29918504.png)
[image2018-5-21_17-49-39.png](/.attachments/29918505.png)
[2018-05-21_17-44-38.png](/.attachments/29918506.png)
[2018-05-21_17-30-22.png](/.attachments/29918507.png)
[2018-04-25_17-33-06.png](/.attachments/29918508.png)
[image2018-5-21_17-11-57.png](/.attachments/29918509.png)
