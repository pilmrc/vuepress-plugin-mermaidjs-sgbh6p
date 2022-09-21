# Introduction



## ***Introduction to Assemble Point***  



The 
**Assemble Point** screen allows user to configure how they want a **Box Build Product** to be assembled. Specifically, users configure
- Where to assemble all the components

- The sequence to assemble the components

- Any additional data to be collected during when assembling the components

- Where to validate an assembled component


## ***How to navigate to Assemble Point***  



Please refer to the user guide

***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Why is this screen important?***  


The 
**Assemble Point** provides user with a holistic view of all the required materials within a product. With the visibility to the composition of the whole product, a user can configure the the details of how to assemble a **Product** faster and easier. They can also easily identify the missing configuration within a single screen.


## ***The following screens should be configured as predecessors to Assemble Point***  



- BOM Maintenance


- Data Collection


- Assemble Type


- Route Maintenance


- VAlidation Mask



## ***Topic 1:  How to create an Assemble Point***  


**Click to enlarge the image!** 
![image2018-5-16_16-22-4.png](/.attachments/29918192.png)


![image2018-5-16_16-22-14.png](/.attachments/29918190.png)



- **Click**

in the **Material Name** field.  **Click** the **Search** icon (Magnifying Glass) and **Search**  for a **Material** . The user can type in or scan the **Material Name** to.  The full **BOM** (expanding until the first non-phantom child item) will be displayed in the items grid.
- Within the

**Items Grid** , select all the items to configure by clicking on the checkbox on**the second column from the left.** Or
- Alternately select all items in the grid by clicking on the

**Select All** button.
- Click on the

**Edit Material** icon (Pencil).
- In the pop-up screen:


Click 
**Confirm** to accept the configuration
- Enter the

**Sequence** of which the item is to be assembled
- Select an

**Assemble Type** from the options available. The **Assemble Type** should be the same as configured in the **Route Step** where the item is to be assembled.
- Select a

**Data Collection** to collect further information on the item while assembling.
- Repeat 2-5 for all items in the

**Assemble Point** .
- **Click**

on the **Save Assemble Point**  button to save the **Assemble Point** configuration

## ***Topic 2:  How to delete an Assemble Point***  



**Click**  
to enlarge the image!![image2018-5-16_16-22-26.png](/.attachments/29918189.png)



- **Key in the**

**Material Name** in the **Search for BOM Material**  field and search for a Material by hitting **Enter** or clicking on the **Search** icon (Magnifying Glass). 
- **Click**

on the **Delete Assemble Point**  button (Trash Can). An pop up message will ask for confirmation.
- **Click**

on the **Okay** button. to delete your selection.


## ***Topic 3:  How to Split an Assemble Point item with multiple Quantity***  


**Click**  
to enlarge the image!![image2018-5-16_16-22-36.png](/.attachments/29918188.png)


![image2018-5-16_16-22-42.png](/.attachments/29918187.png)


![image2018-5-16_16-22-49.png](/.attachments/29918186.png)



- **Click**

in the **Material Name field**  in the **Search for BOM Material**  field, and **Search** for a **Material** by hitting **Enter** or **Click**  on the **Search** icon (Magnifying Glaass). 
- Click on the

**Split**  button (the 5th column from the left - Labled 2). The button is only visible when the item's Quantity is more than 1. A **Split Assemble Point Item** popup screen will appear.
- Select a value in the

**Split Count** drop down. This represents the number of new items that will be generated from the original items.
- **Adjust the Quantity**

for each new item in the **Quantity** field. For example, If an item with quantity of 5 is split into 3 new items. the distribution of the 5 quantity among the 3 items needs to be identified.
- If

**CRDs** are available for the itemClick on 
**Confirm**  button to finalize the Item Split. The **Split Assemble Point** **Item** screen will close.
- Select an item by clicking on the

**radio button**  (See number 5)
- Select the

**CRD(s)** from the **Available CRDs** list
- Click on the

**Right Arrow** button to assign the **selected CRD(s)** to the **selected item**  pane**.** 
- Repeat until all

**Available CRDs** are assigned.
- The new

**Split Items** will appear as children under the**Original Item** , highlighted in **Green,**  indicating changes in the **Assemble Point** .
- Click on the

**Save Assemble Point**  button to save the new **Assemble Point** configuration.

## ***Topic 4:  How to Refresh an Assemble Point after a BOM update***  


**Click to enlarge the image!** 
![image2018-5-16_16-22-56.png](/.attachments/29918185.png)



- **Click**

in the **Material Name** ifield n the **Search for BOM Material**  field and search for a **Material** by hitting **Enter** or clicking on the **Search** icon (Magnifying Glass). 
- Click on the

**Refresh Assemble Point**  icon.
- If the

**Assemble Point** does not match the current **BOM** , the latest **BOM** changes will be displayed and highlighted in**Green** 
- Configure the new items as needed


- Click on the

**Save Assemble Point icon**  to save the new **Assemble Point** configuration.


## ***Topic 5: How to configure Assemble Validation***  


**Click to enlarge the image!** 
![image2018-5-16_16-23-11.png](/.attachments/29918184.png)


![image2018-5-16_16-23-17.png](/.attachments/29918183.png)



- **Click**

in the **Material Name** field and search for a **Material** by hitting **Enter** or clicking on the **Search** button (Magnifying Glass). 
- **Click**
the **Assemble Point Item** to add **Assemble Validation** .
- **Click**
on the **Edit Assemble Validation** icon. The **Assemble Validation** window is displayed. If this button is inactive, check if the top level material has been assigned to at least one route that contains route step with "B" station type. This is a pre-requisite for the **Assemble Validation** configuration as it needs to extract and display **Assemble Validation** route steps in the **Assemble Validation** pop up window
- Select the
**Route Step(s)** to prompt the **Assemble Validation** . 
**(Note** : Only **Route Steps** with **Station Type = Assemble Validation** are available for selection)
- Configure
**Validation Types** . Multiple **Validation Types** can be selected.If **Validation Mask** is selected for **Validation Types** , select a **Validation Mask** to verify against during **Validation** .
- **MaterialIdentifier**
requires scanning and matching of scanned **Material Name** or **Serial Number** during assembly
- **DataCollection**
requires scanning and matching of scanned data collection during assembly
- **MPN**
requires scanning and matching of MPN scanned during assembly
- **ValidationMask**
requires scanning that matches a **Validation Mask** selected. 
- Click
**Confirm** to add the **Assemble Validation** . 
- Click on the
**Save Assemble Point**  icon to save the new 
**Assemble Point** configuration.


## ***Topic 6: How to filter Items when Assemble Point is too large***  


**Click to enlarge the image!** 
![image2018-5-16_16-23-25.png](/.attachments/29918182.png)


![image2018-5-16_16-23-34.png](/.attachments/29918181.png)



- **Click**

in the **Search for BOM Material**  field and **Search** for a **Material** by hitting **Enter** or **clicking** the **Search** icon (Magnifying Glass). 
- When the selected
**BOM** contains more than **30,000** items, no items will be displayed.
- Enter a
**Material Name** in the **Search Material** field and **click** on the **Search** button to display an item matching that material.**Click** on the **Star**  icon to maintain an item in grid while searching for another item. 
- If the item is a phantom, all lower level items under that item will be displayed

- If the item is a non-phantom, all its direct upper level items will be displayed

- Clear by
**Clicking** the Clear icon next to **Search Materials** field and search for another **Material** 
- Old
**Material** appears with **Flag Item** highlighted along with new **Material** 


## ***Topic 7: How to configure a Material default Assemble Type in Assemble Point***  


**Click to enlarge the image!** 
![image2018-5-16_16-24-1.png](/.attachments/29918180.png)


![image2018-5-16_16-24-8.png](/.attachments/29918179.png)



- **Click**

in the **Material Name** field in the **Search for BOM Material**  field and search for a **Material** by hitting **Enter** or **clicking** on the **Search** button. 
- **Click**
on the **checkbox** to select an item
- **Click**
on the **Edit Material**  icon (Pencil) to assign an **Assemble Type** 
- **Click**
on the **Currently Set as Default**  icon if it is not highlighted. If it is already highlighted, it means the default **Assemble Type** is currently assigned to the item
- **Click**
on the **Save Assemble Point**  icon to save the new 
**Assemble Point** configuration.

- The assigned

**Assemble Type** will be saved as the **Material** default **Assemble Type** 


## ***The following screens are dependent on information from Assemble Point***  



- Production Order Management


- Wip Release




## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated PowerPoint presentations with Note pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.


#### Attachments

[image2018-5-16_16-24-8.png](/.attachments/29918179.png)
[image2018-5-16_16-24-1.png](/.attachments/29918180.png)
[image2018-5-16_16-23-34.png](/.attachments/29918181.png)
[image2018-5-16_16-23-25.png](/.attachments/29918182.png)
[image2018-5-16_16-23-17.png](/.attachments/29918183.png)
[image2018-5-16_16-23-11.png](/.attachments/29918184.png)
[image2018-5-16_16-22-56.png](/.attachments/29918185.png)
[image2018-5-16_16-22-49.png](/.attachments/29918186.png)
[image2018-5-16_16-22-42.png](/.attachments/29918187.png)
[image2018-5-16_16-22-36.png](/.attachments/29918188.png)
[image2018-5-16_16-22-26.png](/.attachments/29918189.png)
[image2018-5-16_16-22-14.png](/.attachments/29918190.png)
[image2018-5-16_16-22-6.png](/.attachments/29918191.png)
[image2018-5-16_16-22-4.png](/.attachments/29918192.png)
[image2018-5-16_16-20-40.png](/.attachments/29918193.png)
[image2018-5-16_16-20-37.png](/.attachments/29918194.png)
[image2018-5-16_16-20-28.png](/.attachments/29918195.png)
[image2018-5-16_16-20-21.png](/.attachments/29918196.png)
[image2018-5-16_16-20-13.png](/.attachments/29918197.png)
[image2018-5-16_16-20-4.png](/.attachments/29918198.png)
[image2018-5-16_16-19-58.png](/.attachments/29918199.png)
[image2018-5-16_16-19-51.png](/.attachments/29918200.png)
[image2018-5-16_16-19-43.png](/.attachments/29918201.png)
[image2018-5-16_16-19-35.png](/.attachments/29918202.png)
[image2018-5-16_16-19-29.png](/.attachments/29918203.png)
