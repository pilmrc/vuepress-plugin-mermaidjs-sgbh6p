# Introduction



## ***Introduction to Container Rules***  



**Container Rules** 
are configured based on specific **Material** . The **Container Rules**  are used in the **Packout Station** , where a new box is created (or selecting one already created and not yet filled) and putting serialized **WIP** into the **Box**  based on any **Container Rules** defined for that **Material** .  **The**  **Container Rules** screen allows the user to modify the default **Container Rules** . The **Container** must be empty in order to modify the **Container Rule** . 

## ***How to navigate to Container Rules***  



Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Why is this screen important?***  



The 
**Container Rule** configuration can be predefined and can be configured to reject a box that  does not meet the specifications. The user can control the mix of product placed into an individual container if the rules allow such a configuration.

## ***The following screens should be configured as predecessors to Container Rules***  




- Container Type Maintenance



## ***Topic 1: How to create Container Rules***  


**Click** 
to enlarge the image!![image2018-5-17_13-34-26.png](/.attachments/29920184.png)



- **Click**

on**Search**  (See icon circled in Red) 
and  
**Select** the **Container Name**  from the provided list.
- The

**Container Name, Container Type, Container Status, Total Items**  field will populate.  If there is a **Current Content Rule** , it will be displayed.  If there is not a **Current Content Rule**  then**,** 
- **Click**

the **Drop Down Arrow**  in the **Current Content Rule** field and select the desired **Container Rule** from the list.  (**Note** 
:  This is a required field.)
- **Click**

on **Save** 
icon (computer disk) to **Save** your selections.

## ***Screen Messages***  


The following screen messages may appear when configuring the Container Rules

**Click**  
to enlarge the image!![image2018-5-17_13-34-38.png](/.attachments/29920183.png)



- This error messages appears when the total items from the container selected are more than 0.



*Fields* 
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Field</strong></p></td><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Name</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">Container Name/Number</p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Container Type</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">The container type is defined at corporate level and influences the behavior of the base code. i.e Box, Pallet</p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Container Status</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">Current status of the container. i.e Opened, Closed</p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Total Items</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">Total items packed into the container.</p></td></tr><tr><td colspan="1" class="confluenceTd">Current Content Rule</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;"><span style="color: rgb(68,68,68);">The validation rules runs to ensure the scanned container is valid based on the below selection:</span></p><p style="margin-left: 0.0px;">•IsRestrictedToCustomer (default)<br />•IsRestrictedToSameProductFamily <br />•IsRestrictedToSameBOM<br />•IsRestrictedToSameBatch<br />•IsRestrictedToSameOrder<br />•IsRestrictedToSameMaterial<br /><span>•</span>Is RestrictedToSameAssembly Revision</p></td></tr></tbody></table>









## ***The following screens are dependent on information from Container Rules***  



- Generic/Stations (Packout Station)




## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated 
**PowerPoint** presentations with **Note** pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.

#### Attachments

[image2018-5-17_13-34-38.png](/.attachments/29920183.png)
[image2018-5-17_13-34-26.png](/.attachments/29920184.png)
