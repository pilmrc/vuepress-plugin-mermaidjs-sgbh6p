# Introduction

***Introduction to Visual Aids***  

**Visual Aid** 
is a reference document or work instruction that will be displayed to to assist an operator with their tasks. Each **Visual Aid** contains a link to externally hosted content and must be configured to be displayed for a material at a certain **Route Step** , or using ***O***   
[peration Script](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)
.The **Visual Aid** will only be available to the user during its effective date window. 

## ***How to navigate to Visual Aids***  



Please refer to the following user guide link - 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***The following screens should be configured as predecessors to Visual Aids***  



- **Material Maintenance**
(**Visual Aid** tab to assign **Visual Aid** to **Material** to **Route Step** )


## ***Topic 1: How to create a Visual Aids***  



**Click** 
to enlarge the image!![2018-05-21_11-17-07.png](/.attachments/29918493.png)



- **Enter**

all data in the mandatory fields (
). (
**Note** :  Please see field list below).
- **Click**

on **Save** 

## ***Topic 2:  How to configure in Material Maintenance***  



**Click**  
to enlarge the image!![2018-05-21_11-39-46.png](/.attachments/29918492.png)


Please see more details in 
**Material Maintenance Screen** .
- **Search**

for the
**Material Name** 

- **Select**

the **Visual Aids**  tab
- **Select**
the **Visual Aid** and **Route Step** . **Click** on **Save** **(Circled in Red)** 
.
**Notes** 
: The user can add multiple **Visual Aids** as needed.

## ***Topic 3:  How the inspector will see Visual Aids at a configured station***  


![2018-05-21_11-52-37.png](/.attachments/29918491.png)



Please see more details in 
**Generic/Station Topic** .
- Enter

**WIP Serial Number** .
if the 
**AutoOpen** option is **ON** ., the **Visual Aid** will be displayed when the **WIP** is started (in this example, the **Visual Aid** has been assigned to a **WIP Serial Number** ). If not the user may click on **Visual Aid** button **(Circled in Red)**  
to see the assigned **Visual Aid** . 
- When the operator finishes a review of the
**Visual Aid,**  **Click** on "I have read the **Visual Aid** " button and continue with the operation.


## ***Displaying Visual Aids***  


The following screens can display a 
**Visual Aid** if it is configured to a **Route Step.** 
- Assemble Station

- Inspection & Rework Station

- Assemble Validation Station (only displays the
**Visual Aid** for top level material)
- Packout Station (only displays the
**Visual Aid** for top level material) 

- Manual Inspection Entry Station


- Manual Operation Entry Station


- Manual Test Station


- Pop Depop Station


- Manual Operation Entry Station - Lot Workstation

(only displays the **Visual Aid** for top level material)
- Manual Inspection Entry Station  - Lot Workstation

(only displays the **Visual Aid** for top level material)
- Inspection & Rework Station - Lot Workstation

(only displays the **Visual Aid** for top level material)
- Packout Station - Lot Workstation

(only displays the **Visual Aid** for top level material)

**Note** 
:  \* From version 4.1 onward

## ***Visual Aid Assignment:***  



- When a
**Visual Aid** is assigned to a **WIP** , the **Material** will be displayed on **WIP** start
- When a
**Visual Aid** is assigned to an **Assembled Item** , the **Material** will be displayed when the **Assembled** Item is selected.
- When a
**Visual Aid** is assigned to a **Lot/Batch Material** , the **Visual Aid** will be displayed on **Lot Start** 

***Multiple Visual Aids assigned at same Route Step***  

- When multiple

**Visual Aids** are assigned to a **Material** at the same **Route Step** , each **Visual Aid** will be displayed in its own tab within the **Force View** or **Auto Open Visual Aid** window.If multiple forced view Visual Aid is displayed, user is required to click on each visual aid tab to read them before they can click the acknowledgement that they have read the visual aid. A read visual aid will be marked with a 
![image2017-8-4 13:58:38.png](/.attachments/29918490.png)


while an unread visual aid will be marked a
s ![image2017-8-4 13:58:30.png](/.attachments/29918489.png)





## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Visual Aid Name</p></td><td class="confluenceTd"><p>The unique name given to the visual aid</p></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">The version of the visual aid</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Additional description for the visual aid can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The Customer where this visual aid belongs</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The Material where this visual aid belongs</td></tr><tr><td colspan="1" class="confluenceTd">URL</td><td colspan="1" class="confluenceTd">The network path or URL beginning with http where the Visual Aid is located.<br />Example: \\alfcorefile9\VisualAid\ManualInsert.pdf </td></tr><tr><td class="confluenceTd">Effective Date From</td><td class="confluenceTd">The start date and time where the visual aid is effective</td></tr><tr><td class="confluenceTd">Effective Date To</td><td class="confluenceTd">The end date and time where the visual aid is effective</td></tr><tr><td colspan="1" class="confluenceTd">Auto Open</td><td colspan="1" class="confluenceTd"><p>ON - Configure visual aid to be displayed automatically where it is configured. <span>An auto open Visual Aid is displayed in a standalone window screen separated from the station screen. It allows operator to look at both screens at the same time, either putting the screens side by side or using a dual monitor setup.</span></p><p>OFF - Turn off this option.</p></td></tr><tr><td colspan="1" class="confluenceTd">Days to Force Operator to view Visual Aid</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Configure visual aid to be displayed automatically where it is configured and operator is required to view the Visual Aid before they can proceed with their operation.<em> </em></span></p><p><span style="color: rgb(0,0,0);">A forced view Visual Aid is displayed as a popup over the screen and it covers the station screen from any further operation until operator acknowledges that they have read the Visual Aid. <br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Log Views</td><td colspan="1" class="confluenceTd"><em><span style="color: rgb(0,0,0);">This feature is not available yet</span></em><br /><br />Provides the tracking log of visual aid views. There are three options available:<ul><li>Never - System will never collect information about this visual aid</li><li>Always - System will always log that this visual aid was effective at the time the unit was processed</li><li>Always with Sign Off - always log that this visual aid was effective at the time the unit was processed and will prompt the operator to enter their login credentials to verify that this visual aid was viewed. The users credentials will also be recorded</li></ul></td></tr></tbody></table>






- ## ***The following screens are dependent on information from Visual Aid***


- *[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)*

(if the Visual Aid is called by the operation script)

## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated PowerPoint presentations with Note pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.



#### Attachments

[image2017-8-4 13:58:30.png](/.attachments/29918489.png)
[image2017-8-4 13:58:38.png](/.attachments/29918490.png)
[2018-05-21_11-52-37.png](/.attachments/29918491.png)
[2018-05-21_11-39-46.png](/.attachments/29918492.png)
[2018-05-21_11-17-07.png](/.attachments/29918493.png)
