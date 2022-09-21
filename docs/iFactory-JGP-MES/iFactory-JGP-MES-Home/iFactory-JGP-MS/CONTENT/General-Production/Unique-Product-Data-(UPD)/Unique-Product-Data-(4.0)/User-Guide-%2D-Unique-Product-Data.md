# Introduction



## ***Introduction to Unique Product Data***  


**Unique Product Data** 
is required by **Customer** and it must be reserved to avoid its usage as **WIP** or **Container Serial Number** .  A user has the ability to create ranges of unique data for **MAC Address WWN, IMEI, IMEISV, IMSI, MEID, ESN** . These ranges are reserved and cannot be used for any type of **Serial Number** generation. 

## ***How to navigate to Unique Product Data***  


Please refer to the following user guide link -  
***Navigating to iFactory Screens***  
- for detail information.


## ***The following screens should be configured as predecessors to Unique Product Data***  



- ### *User Group*


- #### *Material*

***Topic 1: How to create a new Unique Product Data***  
**Click** 
to enlarge the image!![image2018-5-17_13-1-8.png](/.attachments/29918473.png)



- **Click**

in the
**Unique Product Data**  
field and
**Enter**  
a
**Unique Product Data Name.** 

- **Click**

**the** 
**Drop Down Arrow**  in the
**SAP Handling Unit Name** field and Select the 
**SAP Handling Unit Name.**   (
**Note** :  This feature will be available in the future: Unit Data should be back to SAP but for now: Select "None" as option)
- **Click**

the **Drop Down Arrow**  in the **UPD Type** **field and** **Select**  the **Select UPD Type.**  (Note:  
This is a required field
**)** 
- **Enter**

the
**Customer**  in the
**Customer** 
**field** **.**  
You may also 
**Click** the **Search icon** (Magnifying glass) to search for the **Customer** 
(Note:  This is a required field
**)** 
- **Click**

the
**Drop Down Arrow**  in the
**Assignment Type** 
field and**Select**  the **Assignment Type** **.**  (Note:  
This is a required field
**)** 
- **User Assigned.**

The user can  assign during the process on the production floor.

- **Auto Select**
from the list (See how assign values in a list in topic 3)

- **Cick**
on**Save** 

## ***Fields***  




<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuideUniqueProductData-General-ConfiguretheUniqueProductData">General - Configure the Unique Product Data</h4></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Unique Data Name</td><td class="confluenceTd">The name given to the unique data</td></tr><tr><td colspan="1" class="confluenceTd">SAP Handling Unit Name</td><td colspan="1" class="confluenceTd"><p>The field name that will be used in constructing the Handling Unit message content to include the UPD information in the HU message. Select from below:</p><ul><li>None</li><li>FC WWN</li><li>MAC ADDRESS</li><li>PCM</li><li>SAS WWN</li></ul></td></tr><tr><td class="confluenceTd">UPD Type</td><td class="confluenceTd"><p>The different UPD types each with its own characteristics. Select the UPD Types from below selections:</p><ul><li><span style="color: rgb(0,0,255);"><strong>MAC<span style="color: rgb(0,51,102);"> -</span> </strong></span>Generates MAC Addresses of exactly 12 Hexadecimal character length<strong><span style="color: rgb(0,0,255);"><br /></span></strong></li><li><strong><span style="color: rgb(0,0,255);">WWN<span style="color: rgb(0,51,102);"> -</span> </span></strong>Generates World Wide Names of exactly 16 Hexadecimal character length</li><li><span style="color: rgb(0,0,255);"><strong>ESN - </strong></span>Generates Electronic Serial Number (CDMA) of exactly 8 Hexadecimal character length</li><li><span style="color: rgb(0,0,255);"><strong>MEID - </strong></span>Generates Mobile Equipment Identifier (CDMA) of exactly 14 Hexadecimal character length</li><li><span style="color: rgb(0,0,255);"><strong>IMEI - </strong></span>Generates <span style="color: rgb(34,34,34);">International Mobile Station Equipment Identity (GSM) of exactly 15 Decimal character length. The 15th character is a check digit character calculated using the Luhn formula. Refer to <a class="external-link" href="http://imei-number.com/check-digit-calculation/" rel="nofollow">http://imei-number.com/check-digit-calculation/</a> for the last digit calculation<br /></span></li><li><span style="color: rgb(0,0,255);"><strong>IMEISV - </strong></span>Generates International Mobile station Equipment Identity and Software Version Number (GSM) <span style="color: rgb(34,34,34);">of </span><span style="color: rgb(34,34,34);">exactly 16 Decimal character length<br /></span></li><li><span style="color: rgb(0,0,255);"><strong>IMSI - </strong></span><span style="color: rgb(0,0,0);">Generates International Mobile Subscriber Identity (stored in SIM cards) of exactly 15 decimal character length</span></li><li><span style="color: rgb(0,0,255);"><strong>DELL SERVICE TAG <span style="color: rgb(0,0,0);">-</span></strong><span style="color: rgb(0,0,0);"> Generates Dell Service Tag of exactly 7 character length</span></span></li></ul><br /><span style="color: rgb(0,0,0);">Click on the information button to gather more information for each of the UPD type.</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer associated to the UPD</td></tr><tr><td colspan="1" class="confluenceTd">Assignment Type</td><td colspan="1" class="confluenceTd"><p>Define how the UPD is assigned to a material</p><ul><li>User Assigned - Prompt user to scan the UPD value</li><li>Auto Select From List - System selects the UPD value from the list and auto assign it</li></ul></td></tr></tbody></table>







- ## ***Topic 2:  How to Add Material***

*Assignment* 

**Click**  
to enlarge the image!![image2018-5-17_13-1-8.png](http://azuse2ifcweb71:8090/download/attachments/28442977/image2018-5-7_8-48-13.png?version=1&modificationDate=1525697293233&api=v2)


![image2018-5-17_13-1-15.png](/.attachments/29918472.png)




- **Search**

an
d
**Select UPD** 

- **Click**
on**Material Assignment**   tab**.**   (See Blue Rectangle) 
(Note:  
T
his is a required selection.) 
A new window will open

- **Click**
on**+ icon** and 
- Add
**Material**  
- Add
**Qty**  of**UPDS**  to**Assign** 
- **Click Save**
to**Save**  your changes**.** 

- **For filter on Material. Enter**
the material and**click**  on**Search**  button**.** 


## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuideUniqueProductData-MaterialAssignment-ConfiguretheMaterialtoassigntheUPD">Material Assignment - Configure the Material to assign the UPD</h4></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>Select the Material that will be assigned the current Unique Product Data. For User Assigned, user will be required to scan the UPD during assemble action. The UPD will be assigned when the Material is assembled to a parent WIP.</p></td></tr><tr><td colspan="1" class="confluenceTd">Qty of UPDs to Assign</td><td colspan="1" class="confluenceTd"><p>The quantity of UPD needed to assign to the selected Material.</p></td></tr></tbody></table>




## ***Topic 3:***  


*How to*  *add values in a Unique Product Data Name*  
**Click**  
to enlarge the image!![image2018-5-17_13-1-33.png](/.attachments/29918471.png)



- **Search**

and**Select UPD Name** 
- If the user prefers to

**upload** values from the file. **Click** on **Choose File** button and **s** **elect** a text file with UPD Values in each line to upload UPD Values for current UPD. Alternatively user can drag the text file over the grid.
- Or

**add** the values one by one manually. **Click** on**+** icon and **add UPD**  and **assigned item values** .
- To filter values from the list

**.** Enter**UPD** or **Assigned Item** and **click** on **Search** .

## ***Fields***  



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h4 id="UserGuideUniqueProductData-UPDValues-UploadtheavailableUPDValuestobeassignedforcurrentUPD">UPD Values - Upload the available UPD Values to be assigned for current UPD</h4></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Choose File</td><td colspan="1" class="confluenceTd">Select a text file with UPD Values in each line to upload UPD Values for current UPD. Alternatively user can drag the text file over the grid.</td></tr><tr><td colspan="1" class="confluenceTd">UPD</td><td colspan="1" class="confluenceTd">The UPD value that can be assigned if not yet done so</td></tr><tr><td class="confluenceTd">Assigned Item</td><td class="confluenceTd">The Unique Idenfitied of an object a UPD value has already been assigned to</td></tr><tr><td class="confluenceTd">Search (Magnifying glass on top right of the grid)</td><td class="confluenceTd">Search for a particular UPD value</td></tr></tbody></table>





## The following screen messages may appear when configuring the Unique Product Data

**Click**  
to enlarge the image!Insert screen capture with annotations of Message then delete this text.

- Upload UPD values from a file.

![image2018-5-17_13-1-33.png](http://azuse2ifcweb71:8090/download/attachments/28442977/image2018-5-4_11-1-57.png?version=1&modificationDate=1525453317787&api=v2)




## ***The following screens are dependent on information from Unique Product Data***  



- *Material*

Maintenance
- *User Group Maintenance*



## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated 
**PowerPoint** presentations with **Note** pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.

#### Attachments

[image2018-5-17_13-1-33.png](/.attachments/29918471.png)
[image2018-5-17_13-1-15.png](/.attachments/29918472.png)
[image2018-5-17_13-1-8.png](/.attachments/29918473.png)
