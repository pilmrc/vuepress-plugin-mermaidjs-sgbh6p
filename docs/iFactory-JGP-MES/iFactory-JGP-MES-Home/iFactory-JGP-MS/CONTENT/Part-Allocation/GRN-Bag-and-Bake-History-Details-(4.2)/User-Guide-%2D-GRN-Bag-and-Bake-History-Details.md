# Introduction



## ***Introduction to GRN Bag and Bake History Details***  


**GRN Bag and Bake History Details** 
screen is used to display information on the status of **Moisture Sensitive Devices** (**MSD** ) and **Time Sensitive Devices** (**TSD** ).The screen will shows the history of 
**[Bag Open/Closed](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bag-and-Bake-History-Details-(4.2)/User-Guide-%2D-GRN-Bag-and-Bake-History-Details.md)** 
activities and the **[Bake In/Out](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Bag-and-Bake-History-Details-(4.2)/User-Guide-%2D-GRN-Bag-and-Bake-History-Details.md)** 
activities. The **Remaining Exposure Time** (time for staying outside the bag before the part expires) is also displayed for the selected **Goods Receipt Number** (**GRN** ).

## ***How to navigate to GRN Bag and Bake History Details***  


Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Why is this screen important?***  



Various materials used in manufacturing are sensitive to exposure to natural elements such as moisture (humidity).  To maintain the highest degree of integrity of such devices, we track when when a bag containing these devices are either opened and closed and when we bake such an item to remove moisture (Bake In and Bake Out).  
Such items are referred to as 
**Moisture Sensitive Devices** (
**MSD** ) and 
**Time Sensitive Devices** (
**TSD** ).  In order to comply with the Moisture and Time constraints, the application is designed to track such exposure.  This screen provides a one stop location to view the detailed history of 
**GRN Bag and Bake** .

## ***The following screens should be configured as predecessors to GRN Bag and Bake History Details***  


The GRN must exists as MSD component. The history is available if any movement has done in 
GRN Storage Manager (4.2)or GRN 
Bake In/Outscreen.



## ***Topic 1: How to view the Bag and Bake History of a GRN***  


**Click** 
to enlarge the image!![image2018-5-16_9-22-46.png](/.attachments/29919153.png)




- **Click**

in the **GRN Field** and enter a **GRN** that is associated with a **Moisture Sensitive Devices** (**MSD** ) or **Time Sensitive Devices** (**TSD** ).
- The balance of the screen will populate with the

**Bag and Bake History** of the selected **GRN.** 



## ***Fields***  



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p style="margin-left: 0.0px;"><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p style="margin-left: 0.0px;"><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">GRN</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">The GRN that need to know the history (only GRN related to MSD material can be used in this screen)</p></td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd">The material related to GRN scanned</td></tr><tr><td colspan="1" class="confluenceTd">Exposure Level</td><td colspan="1" class="confluenceTd">It is the exposure level defined in Material configuration</td></tr><tr><td colspan="1" class="confluenceTd">Remaining Time</td><td colspan="1" class="confluenceTd">It is the remaining exposure time before expiration of the GRN scanned</td></tr><tr><td colspan="1" class="confluenceTd">Details Data Grid</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">It will show all history of selected GRN for bag open/close or bake in/out activities</p><ul><li>Activity --> the action performed (i.e. Bag Opened/Bag Closed, Bake In/Bake Out). If activity is still ongoing it will show only the "entry" status (i.e. Bag Opened)</li><li>Start Time --> the time when the activity has started ("entry" status)</li><li>End Time --> the time when the activity has completed ("exit" status). It can be blank if the activity is ongoing</li><li>Bake Temperature --> the temperature of the bake process, if inserted during the process</li><li>Elapsed Time --> the time passed in the Activity phase</li><li>User Name --> user that performed the Activity</li></ul></td></tr></tbody></table>



#### Attachments

[image2018-5-16_9-22-46.png](/.attachments/29919153.png)
