# Introduction

***Introduction to Batch Maintenance***  

A 
**Batch** contains a group of **WIP Serial Numbers** . When customers drop an order to **Jabil** , the planner may want to break the order into smaller groups by creating **batches** . This helps them to better plan and track daily production builds.

## ***How to navigate to Batch Maintenance***  



Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***Why is this screen important?***  


**Batch Maintenance** 
enables user to perform the following activity:
- **Create**
, **view** , **update** and **delete Batch** records.
- **View**
**Serial Numbers** in the **Batch** . User will need to click the **Display** button on the **Details Tab** to see all the **Serial Numbers.** 
- **Export Serial Numbers**
in the **Batch** into an **Excel** file.
- **Transfer Serial Numbers**
to another **Batch.** 
***The following screens should be configured as predecessors to Batch Maintenance***  

- *[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)*

- *[Manual Birth](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Manual-Birth.md)*

***Topic 1: How to create a Batch***  
**Click** 
to enlarge the image!![2018-06-07_13-42-46.png](/.attachments/29918283.png)



- **Click**

on **New Sheet icon** 
- **Enter Batch Number**

that the user wants to assign.
- On the

**Main**  tab, **Select** / **Enter,** at a minimum, the required fields  (
**Note** :  See Red Asterisks for required fields)
- **Click**

on the **Enter** icon to save the data (see red circle
).


## ***Topic 2:  How to see the WIP serial numbers assigned***  



**Click**  
to enlarge the image!![2018-06-07_14-48-19.png](/.attachments/29918282.png)



**Click** 
on **Search**  icon if the **Batch** number has not been selected.  (see **red** 
circle). (**Note** 
:  **Max Build Quantity** was already defined by the user.)
- The

**Serial Number** will be displayed on the screen.
**(Note:** 
All 
**WIP** must have a **batch** assigned (either manually or by **AutoBatch** if it is enabled). There are two ways to assign **serial numbers** at the **Batch** which depends on **customer** settings: either it will be system assigned (if **AutoBatch** is enabled) or the **user** will be required to enter it (if **Autobatch** is not enabled). This process will happen during **Manual WIP** or the **WIP Release** process.)
- To

**export** all **serial numbers** listed in a **CSV**  format, **click** on the **Excel**  icon**.**  

***Topic 3:How to transfer WIP Serial Number***  
**Click**  
to enlarge the image!![2018-06-07_16-33-45.png](/.attachments/29918281.png)


Go to 
**Transfer WIP** tab (**See Gold rectangle** 
)
- **Select**

**Serial Number(s)** from the 
**Original Serial Number List (** see left pane
**)** 
- **Move selected**

items to the **Selected Serial Number List**  using the**arrow** buttons (
see red rectangle
)  (
**Note** 
:  The user can undo a move using the arrows in the red rectangle as well)

- **Click**
on **Search** icon and **Select** the **Destination Batch.** 
- **Click**
on **Transfer**  to complete the action**.** 

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGuideBatchMaintenance-MainTab"><strong>Main Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>Customer associated to the batch</p></td></tr><tr><td colspan="1" class="confluenceTd">Batch Status</td><td colspan="1" class="confluenceTd"><p>A batch can be in one of the statuses below:</p><ul><li>New (The batch is still under configuration and it is not ready to use in production)</li><li>Active (The currently being used or it is ready to use in production)</li><li>Complete (All the WIPs has a Complete/Done status in this batch)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Build Quantity</td><td colspan="1" class="confluenceTd"><p>Maximum WIP quantity that can be assigned to the batch</p></td></tr><tr><td colspan="1" class="confluenceTd">Restrict Material</td><td colspan="1" class="confluenceTd">If this field is enabled, only WIPs belonging to the configured material can be assigned to this batch. This will also enforce user to configure a material for this batch</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">If restrict material is enabled, user is required to configure a material for this batch</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Description of the material will be auto-populated once the material is selected</td></tr><tr><td colspan="1" class="confluenceTd">Creation Date</td><td colspan="1" class="confluenceTd">The date where this batch is created</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGuideBatchMaintenance-DetailsTab"><span style="color: rgb(51,51,51);">Details Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Max Build Quantity</td><td colspan="1" class="confluenceTd">The value displayed here follows the configured Maximum Build Quantity in the Main Tab</td></tr><tr><td colspan="1" class="confluenceTd">Released Quantity</td><td colspan="1" class="confluenceTd">The number of WIPs released into this batch</td></tr><tr><td colspan="1" class="confluenceTd">Completed Quantity</td><td colspan="1" class="confluenceTd">The number of WIPs completed in this batch</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The Serial Number of the WIP in this batch</td></tr><tr><td colspan="1" class="confluenceTd">Material Number</td><td colspan="1" class="confluenceTd">The top level material for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">The BOM for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Order ID</td><td colspan="1" class="confluenceTd">The Order ID for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Date Released</td><td colspan="1" class="confluenceTd">The date the WIP is released in production</td></tr><tr><td colspan="1" class="confluenceTd">Completed</td><td colspan="1" class="confluenceTd">If the WIP is completed or has a Done status</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="UserGuideBatchMaintenance-TransferWIPTab"><span style="color: rgb(51,51,51);">Transfer WIP Tab</span></h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Original Serial Number List</td><td colspan="1" class="confluenceTd">List of all the Serial Numbers in this batch</td></tr><tr><td colspan="1" class="confluenceTd">Selected Serial Number List</td><td colspan="1" class="confluenceTd">List of the Serial Number selected for transfer to another batch. <br />User will need to use the single arrow button to move specific Serial Number or use the double arrow button to move all Serial Numbers between the two panes</td></tr><tr><td colspan="1" class="confluenceTd">Destination Batch</td><td colspan="1" class="confluenceTd">The new batch where the selected Serial Number is going to be transferred</td></tr></tbody></table>





#### Attachments

[2018-06-07_16-33-45.png](/.attachments/29918281.png)
[2018-06-07_14-48-19.png](/.attachments/29918282.png)
[2018-06-07_13-42-46.png](/.attachments/29918283.png)
