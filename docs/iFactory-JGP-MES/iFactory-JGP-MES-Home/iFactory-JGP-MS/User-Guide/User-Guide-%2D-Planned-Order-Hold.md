# Introduction



## ***Introduction to Planned Order Hold***  


**Planned Orders** 
may be placed on hold for **WIP** based or **Lot based Planned Orders** . This **User Guide** specifically describes the details relating to the **Lot Based Planned Orders** . Like **WIP** Based, **Lot based Planned orders** may be placed **ON** or **OFF** hold. Unlike **WIP** based, the **Lot** based hold is managed in a separate screen that allows the user to toggle between the **ON** and **OFF** condition, and provides for a place to include reasons for placing the order **ON / OFF Hold** . It is important to understand that the **Production Order** data for **Lot** based **Planned Orders** is stored partially in a **SQL** database like the **WIP** processing, and partially stored in a separate **MongoDB** for **Lots** . The result is that in the **WIP** based screen for **Planned Orders** will only indicate basic **Planned Order** details like **Material, BOM, Required Qty, Creation Date** , and **Who** created the **Order** . For all other details like the **Hold** status, **Release Quantity** , **Remaining Qty** , etc you must use the **Lot Based Planned Order View.** 

## ***How to navigate to Planned Order Hold***  


Please refer to the following user guide link - 

***Navigating to iFactory Screens***  
- for detail information.


## ***Why is this screen important?***  



**Planned Order Hold** 
enables user to perform the following activities:
- **Search**
for **Planned Order** to place on change the **Hold State.** 
- **Change**
the **Planned Order**  **Hold Status** of a **Lot Based Planned Order** from **OFF Hold** to **ON Hold** , or from **ON Hold** to **OFF Hold** . The System evaluates the current Hold state and only presents the applicable option to the user to toggle to the opposite state from the current state.
- Provides a required user entry to indicate why the order is being placed
**ON** or take **OFF Hold** 

## ***The following screens should be configured as predecessors to Planned Order Hold***  


The following data needs to be pre-configured (if used) before user configures 
**Planned Order Hold.** 
- A
**Lot Based Planned Order** must exist to change the **Hold Status** .
- The
**Order** must currently be **OFF Hold** to be placed **ON Hold.** 
- The
**Order** must currently be **ON Hold** to be taken **OFF Hold.** 


## ***Topic 1: How to place a Planned Order on Hold***  



**Click** 
to enlarge the image!![image2018-5-17_11-5-39.png](/.attachments/29920193.png)



- **Click**

in the 
**Planned Order**  field and enter the **Planned Order** or **Click**  the **Search** icon (magnifying glass - See Red Circle
) to **Search for a Planned Order. e** (
**Note** :  This is a required field.)
- In the
**Plan** **ned Order Hold**  field, enter the 
**Reason** for placing a 
**Planned Order**  on**Hold.** 
- **Click**

the **Submit**  button to **Save** the **Planned Order** and **Reason** for placing it on **Hold** .

## ***Topic 2:  How to remove a Hold on a Planned Order***  


**Click**  
to enlarge the image!![image2018-5-17_11-5-51.png](/.attachments/29920192.png)



- **Click**

in the 
**Planned Order**  field and enter the **Planned Order** or **Click**  the **Search** icon (magnifying glass - See Red Circle
) to **Search**  for a**Planned Order.** (
**Note** :  This is a required field.)
- The screen will display the

**Order Number, Status,**  and, if on**Hold,**  the**Hold Reason (** See Blue box
).
- In the

**Planned Order Hold Release** field, enter the **Reason** for releasing the **Hold** on a **Planned Order.** 
- **Click**

the **Submit**  button to Release the **Planned Order** **Hold** .



## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th class="confluenceTh"><div class="tablesorter-header-inner" style="margin-left: 0.0px;"><p>Field</p></div></th><th class="confluenceTh"><div class="tablesorter-header-inner" style="margin-left: 0.0px;"><p>Description</p></div></th></tr></thead><tbody><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Search<span style="color: rgb(255,255,255);">-</span>by<span style="color: rgb(255,255,255);">-</span>order<span style="color: rgb(255,255,255);">-</span>number</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">This user entry field is find a matching Planned Order. The entry may be blank, have a partial entry, or an exact match. Once the value is entered the system performs a search to find a match, if an unique exact match is not found a list of partial matches is returned for the users to select from a list of partial matches. If no partial or exact match is found, nothing is returned. If no entry is made and the search is performed and all orders are returned (possibly limited to first X Orders)</p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Enter Reason</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">This field is required for the user to enter the reason for placing the order on hold or taking it off hold.</p></td></tr></tbody></table>

_
by_
order_
numberThis user entry field is find a matching Planned Order. The entry may be blank, have a partial entry, or an exact match. Once the value is entered the system performs a search to find a match, if an unique exact match is not found a list of partial matches is returned for the users to select from a list of partial matches. If no partial or exact match is found, nothing is returned. If no entry is made and the search is performed and all orders are returned (possibly limited to first X Orders)
Enter Reason
This field is required for the user to enter the reason for placing the order on hold or taking it off hold.


## ***The following screens are dependent on information from Planned Order Hold***  


The following screens have a direct dependency on the 
**Planned Order Hold** screen.    The basic rule is if an **Order** is placed **On Hold,** no processing of any of the items for the **Planned Order** may have any activity performed until the **Hold** is removed.
- [Lot Release (Lot / Batch Build)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide-%2D-Planned-Order-Hold.md)


- [Manual Operation Entry - MOE (Lot / Batch Build)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide-%2D-Planned-Order-Hold.md)


- Manual Inspection Entry





## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated 
**PowerPoint** presentations with **Note** pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.

#### Attachments

[image2018-5-17_11-5-51.png](/.attachments/29920192.png)
[image2018-5-17_11-5-39.png](/.attachments/29920193.png)
