# Introduction

***Introduction to Manual Inspection Entry***  
The 
**Manual Inspection Entry** station (MIE) permits end users to inspect **WIP** and place a **Defect** if it is nonconforming. The examination of the root cause regarding the non-conformance takes place in the analysis process. 

## ***How to navigate to Manual Inspection Entry***  



Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***Why is this screen important?***  


**Manual Inspection Entry enables the user to perform the following activity:** 


- Select the
**Resource** , **Route** , **Route Step** where the **User** is performing their activities
- **Abort**
the activity
- **Complete**
the activity
- Add/Remove
**Defects** 
***The following screens should be configured as predecessors to Manual Inspection Entry***  
The following data needs to be pre-configured before user is able to start a 
**Manual Inspection Entry** :
- *[Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)*

- *[Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)*
,  all supporting Route steps and Resources configured for the Route Steps 
- *[M](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide%2D-Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)*
[aterials](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)[, ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide%2D-Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)*[BOM's](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM.md)* [/](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide%2D-Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[Assemblies](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)[, ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide%2D-Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)*[Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)* [/](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/User-Guide%2D-Manual-Inspection-Entry-(Non%2DBatch%2DLot).md)[set-up sheets](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)(as applicable) if the operation is to Start

***Topic 1: How to do access Manual Inspection Entry***  
**Method 1 -Using Generic Station** 

**Click** 
to enlarge the image!![2018-05-30_15-27-13.png](/.attachments/29919788.png)



- **Scan Resource**


- **Scan WIP Serial Number**


- Click on

**Scan**  button

## **Method 2 -Using Station Login** 

**Click**  
to enlarge the image!![2018-05-30_15-22-06.png](/.attachments/29919789.png)



- **Select**

the
**Resource Station.** 

- **Select**

the
**Route Step.** 

- **Click**

on the  **Manual Inspection Entry**  tile**.** 
***Topic 2:***  
***How to PASS a WIP Serial Number in Manual Inspection Entry***  
**Click**  
to enlarge the image!![2018-05-30_16-12-59.png](/.attachments/29919787.png)



- **Scan**

a valid **Serial Number.** The **WIP** is started automatically at the selected **MIE** station. (**Note:** 
T
he inspection is in a PASS state by default and no defects are listed - 

see 
**gold** 
square
)

- **Click**

the **Complete button.**  
**(Notes:** 
This can trigger a label print (if required/configured) and routes the 
**WIP** to the default pass step defined in the routing rules. The user will receive the appropriate information in the toast messages and the "**Scan WIP** " entry is presented to the user allowing them to scan the next WIP using the **resource/route** selected previously (or the user can return to **Manual Station Login/Generic Workstation** to select a different resource). 



## ***Topic 3:***  


***How to FAIL a WIP Serial Number in Manual Inspection Entry***  

***Adding Defects to WIP Serial Number***  
**Click**  
to enlarge the image!
![2018-05-30_16-25-26.png](/.attachments/29919785.png)




- **Scan**

a valid 
**Serial Number.**  The **WIP** is started automatically at the selected **MIE station** . 

- **Select**

a **Defect** , **CRD** and **Terminations** (see Topic 4) (
**Note** :  **Defect** and **CRD** are required fields)
**(Note:** 
When the "
**Get BOM CRD's** " check box is NOT checked (see 
**gold** square), the system will return any **CRD's** loaded via an associated **Setup Sheet** .  If there is no active associated **Setup Sheet** 
, then the user would see a "**No Matches Found** " message in the **CRD** combolist. If **Get BOM CRD** checkbox is checked, the CRD**'** s contained within the **BOM** will be available for selection in the **CRD** combo list.)

Click to enlarge the image!



![2018-05-30_16-35-04.png](/.attachments/29919784.png)





- **Click**

on

**Add Defect**  button
**(Note:**  
The user can add additional **Defects** and can **Abort** or **Complete** the operation. When the user **Aborts** or **Completes** the inspection, the systems records the operation activity and the screen will be cleared and the cycle starts all over again. The **WIP Serial Number** status changes from **PASS** to **FAIL** .)
Complete the Inspection**Click**  
to enlarge the image!

![2018-05-30_16-45-42.png](/.attachments/29919783.png)



**4.**  
To remove any
**Defect,**  
**click** on

**Trash** button (see 
red circle
).
**Click**  
on
**Complete**  
button

to complete the Inspection
**.** 



## ***Topic 4:***  


***Termination***  
![2018-05-31_11-46-00.png](/.attachments/29919781.png)




- If the

**user** selects a **Defect** belonging to the defect category "**Termination** " then -  
- The

**Defect** 
is not automatically populated to the **Defect** section, since the user is required to add the number of affected **Terminations** (the default being the minimum permissible value of 1, but the user can enter a value "1 to represent the actual "**pin count** " of the affected **Termination(s** ). In this case, the user would enter the appropriate value and select the "**Add defect** " button to add the **Defect** .

![2018-05-31_11-50-42.png](/.attachments/29919780.png)




- When the

**selected** **defect** is NOT assigned to the **defect** category "**Termination,"**  then
- This type of

**defect** is being **added** as soon as the user **selects**  a**CRD.**  The new **Defect** is automatically **added** to the "**Defects** " section of the screen.

***Topic 5:***  

How to fail a Batch
**Click**  
to enlarge the image!![2018-05-31_12-05-34.png](/.attachments/29919777.png)


There is also a "
**Batch Failure** " button on the **Manual Inspection Entry** screen, the purpose of which is to allow the user to enter details of a **defect** once and scan multiple affected **WIP's** , reducing the need to open each **WIP** add the **defect** details and complete each one individually as **FAIL** .Once
**selected**  the**Batch button** changes color and a "**Clear** " button appears (see
**gold** 
square)

- **Scan the first WIP**
, upon which the material related to the **WIP** is populated, **defect** details are made available for **entry** , and the default status is set to **FAIL.** 
- **Select**
the**defect and** **CRD.**   The **defect** will be added to the **defects** section of the screen.
**(Notes:** 
Once the 
**defect** details are entered and material retrieved, the user can begin scanning the relevant **WIP's** - Each time a **WIP** is **scanned** , it is automatically started, **defect** added and it is completed with a status of **FAIL** . The first **WIP** used to retrieve the material needs to be re-scanned if appropriate.)
***Topic 6:  How to Abort a Process***  
**Click**  
to enlarge the image!![2018-06-01_8-13-26.png](/.attachments/29919776.png)


Click on 
**X** icon anytime to abort process  (
see

**red** 
square
).


## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td colspan="1" class="confluenceTd">Clear selections</td><td colspan="1" class="confluenceTd">Allows values to be cleared before adding defect</td></tr><tr><td colspan="1" class="confluenceTd">WIP</td><td colspan="1" class="confluenceTd">Displays the scanned serial number of the WIP.</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>Drop down selection for Component Reference Designator (CRD) which represents the location of the failure on the WIP.</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Defect</p></td><td colspan="1" class="confluenceTd">Drop down selection for defect type.</td></tr><tr><td colspan="1" class="confluenceTd">Add Defect</td><td colspan="1" class="confluenceTd">Promotes the entered values for Defect/CRD to the defects section and clears from entry section, ready for next entry.</td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Material for the WIP that is being processed.</p></td></tr><tr><td colspan="1" class="confluenceTd">Get BOM CRD checkbox</td><td colspan="1" class="confluenceTd">This allows the user to populate the CRD dropdown with the CRD's as listed on the Bill of Material (BOM) instead of from the setup sheet.</td></tr><tr><td class="confluenceTd"><p>Scan serial number</p></td><td class="confluenceTd"><p>This field may be partially completed for a "begins with" search or exactly entered for a full match. The field should normally be scanned from the WIP serial label in production.</p></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Will display as pending PASS until a defect is entered, at which time is will display as pending FAIL</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="UserGuideManualInspectionEntry(NonBatch/Lot)-DefectsSection"><strong>Defects Section</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Defect type</p></td><td class="confluenceTd"><p>Shows defect type attributed to entered defect</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>Displays CRD's entered as defective</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Displays material associated to the entered CRD.</td></tr><tr><td colspan="1" class="confluenceTd">Termination</td><td colspan="1" class="confluenceTd">Displays termination value.</td></tr></tbody></table>




## ***Screen Messages***  


The following screen messages may appear when configuring 
**Manual Inspection Entry.** 

**Click**  
to enlarge the image!![image2018-5-30_16-21-50.png](/.attachments/29919786.png)



- **The unit has been processed successfully.**

**Click**  
to enlarge the image!
![image2018-5-31_11-57-51.png](/.attachments/29919779.png)


**2.The unit has been**  
**aborted** . The system will complete with a status of **abort** and the product will be re-queued back to the **MIE station** **Click**  
to enlarge the image!
![image2018-5-31_12-1-19.png](/.attachments/29919778.png)


**3. The unit has been completed with a**  
**Fail** status. If the user decides to complete with a **defect** , the system will complete with a status of **fail** , the **defect(s)** will be recorded and the product will route to the default fail step defined in the **route step** .


## ***The following screens are dependent on information from Manual Inspection Entry***  




- **WIP View**





#### Attachments

[2018-06-01_8-13-26.png](/.attachments/29919776.png)
[2018-05-31_12-05-34.png](/.attachments/29919777.png)
[image2018-5-31_12-1-19.png](/.attachments/29919778.png)
[image2018-5-31_11-57-51.png](/.attachments/29919779.png)
[2018-05-31_11-50-42.png](/.attachments/29919780.png)
[2018-05-31_11-46-00.png](/.attachments/29919781.png)
[image2018-5-31_11-43-32.png](/.attachments/29919782.png)
[2018-05-30_16-45-42.png](/.attachments/29919783.png)
[2018-05-30_16-35-04.png](/.attachments/29919784.png)
[2018-05-30_16-25-26.png](/.attachments/29919785.png)
[image2018-5-30_16-21-50.png](/.attachments/29919786.png)
[2018-05-30_16-12-59.png](/.attachments/29919787.png)
[2018-05-30_15-27-13.png](/.attachments/29919788.png)
[2018-05-30_15-22-06.png](/.attachments/29919789.png)
