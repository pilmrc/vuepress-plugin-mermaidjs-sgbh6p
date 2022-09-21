# Introduction



## ***Introduction to Manual Test Entry***  


**Manual Test Entry** 
allows a user to **inspect** the board manually. When a board fails a test, a **Failure Label** must be entered in the test record. There are two options:
- **Select Failure Label**
from the list (Pre-configure **Failure Label Maintenance** by **Customer** ).
- **Create Failure Label**
(new).

## ***How to navigate to Manual Test Entry***  



Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detailed information.


## ***Why is this screen important?***  


**Manual Test Entry** 
station enables a user to perform the following activity:
**(Note** 
: The availability of these functions is based on the **Route Step Type** configuration.) 
- Manually
**Pass**  or **Fail** a **WIP** after testing.
- Adding a
**Failure Data Label** (assigned **WIP** with failure at the specific **Step** ).

## ***The following screens should be configured as predecessors to Manual Test Entry***  



- [Defect Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)


- [Failure Label Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Failure-Label/Failure-Label-(4.0)/User-Guide-%2D-Failure-Label-Maintenance.md)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type/User-Guide-%2D-Route-Step-Type.md)

***Topic 1: How to enter***  
***Manual Test Entry***  
**Method 1 - Using Generic Station** 

**Click** 
to enlarge the image!![2018-05-31_14-20-55.png](/.attachments/29918996.png)




- **Scan Resource.**


- **Scan WIP Serial Number**

.


**Method 2 - Using Station Logon** 
**Click**  
to enlarge the image!![2018-05-31_14-10-51.png](/.attachments/29918997.png)



- **Select**

the
**Resource** 

- **Select**

the
**Route Step** 

- **Click**

the
**Manual Test Entry**  
button


## ***Topic 2: How to Start and Pass WIP in Manual Test Entry***  



**Click**  
to enlarge the image!![2018-05-31_14-49-23.png](/.attachments/29918995.png)



- **Scan WIP Serial Number**

. The 
**WIP** 
**Number** and **Material** will display. The **WIP**  status box will display a green
**Pass** Result
**(see**  
**gold** 

square
**)** .  
1.1 Users can scan any Sub-Material in the assembly to perform MTE of Top-Material.(1.1 just for Version 2)
![image2022-7-12_9-35-27.png](/.attachments/122748990.png)


![image2022-7-12_9-35-45.png](/.attachments/122748991.png)



- **Click Complete**



## ***Topic 3: How to fail a WIP in Manual Test Entry by Adding a Failure Label***  


**Click**  
to enlarge the image!![2018-05-31_16-38-55.png](/.attachments/29918991.png)





- **Scan WIP Serial Number**

, and the 
**WIP Number** and **Material** will display.
- **Click**

**Add Failure label,** 
and the 
**WIP** status box will display a red **Fail** result **(see**  
gold 
square).
- **Click**


**Complete** 
button
, 
then the 
**WIP** will complete at this step with a **Fail** result.**Note** 
: Once a **Failure** **Label** is added, the **Trash** icon next to the **Failure** allow users to **delete/clear** it within the current session. 


## **Topic 4:  Failure Labels** 


***Select Failure Label***  
**Click**  
to enlarge the image!![2018-05-31_16-17-52.png](/.attachments/29918994.png)




- **Click**

the

**Add Failure** 
button 
in the 
**Manual Entry Screen** 
and a new screen comes up. Enter the **Failure Label**  from the drop-down list**.**   (Note:  
This is a required field
**)** 

- **Enter Failure Message.**


- **Click**

**the** 
**Confirm** button to 
**Save** .

***Create a Failure Label***   
**Click to enlarge the image!** 

![2018-05-31_16-29-58.png](/.attachments/29918993.png)





- **Select**
the**Create Failure Label** option.
- **Enter**
Failure Label.  **(Note:**   
This is a required field
**)** 

- **Failure Message.**

- **Click**

the 
**Confirm**  button to add the **Failure Label** to the selected **WIP Serial** **Number** .


## ***Fields***  



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>WIP Serial Number</p></td><td colspan="1" class="confluenceTd">Displays the WIP Serial Number being inspected. Clicking on the Serial Number brings up the WIP View window that provide details of the WIP.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Displays the material of the WIP being inspected.</td></tr><tr><td class="confluenceTd"><p>Complete Button</p></td><td class="confluenceTd"><p>Completes the WIP in the route step.</p></td></tr><tr><td colspan="1" class="confluenceTd">Abort Button</td><td colspan="1" class="confluenceTd">Abort - Abort the current operation. <br />Note on Abort: If a failure or defect was added and user aborts the operation in FRU QC, when the WIP is restarted in FRU QC, the open failure/defect will be auto closed by the system. This is because system treats the abort as an incomplete action and restarting of the WIP signals a brand new inspection session. However, if the WIP is brought to a different inspection and rework other than FRU QC, the open failure/defect will not be auto-closed by the system. System will only auto-close failure/defect if the WIP was aborted and restarted at the <u>same</u> route step.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Status box</td><td colspan="1" class="confluenceTd"><p>Provides the inspection status of the WIP. <br /><br />These are the following statuses displayed:</p><ul><li>Pass (When the WIP contains no open failure or defect. Completing the inspection when this result is displayed will give the WIP a Pass status).</li><li>Fail (When the WIP contains an open failure or defect. Completing the inspection when this result is displayed will give the WIP a Fail status).</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Add Failure</td><td colspan="1" class="confluenceTd">Allows user to add failures to either create new Failure information or select from Failure Label configure in Failure Label Maintenance.</td></tr><tr><td colspan="1" class="confluenceTd">Cross icon</td><td colspan="1" class="confluenceTd">Abort the current operation.</td></tr><tr><td colspan="1" class="confluenceTd">Completed/Started</td><td colspan="1" class="confluenceTd">The number of started and completed units for the current session. Restart a new session or Refresh button will restart the counter.</td></tr></tbody></table>






- ## ***Screen Messages***

**The following screen messages may appear when configuring the Manual Test Entry.** 

**Click**  
to enlarge the image!![image2018-5-30_13-11-38.png](/.attachments/29918999.png)



- **The**

**WIP Serial Number**   is at another **Route Step** and cannot start be processed at the current step.**Click**  
to enlarge the image!
![image2018-5-31_13-57-23.png](/.attachments/29918998.png)


**2. The**  
**WIP** started successfully at the current step.
**Click**  
to enlarge the image!
![image2018-5-31_16-37-3.png](/.attachments/29918992.png)


**3. The failure was added successfully to the unit.** 



## ***The following screens are dependent on information from Manual Test Entry***  




- **Generic/Station**

Screen (Process)


#### Attachments

[2018-05-31_16-38-55.png](/.attachments/29918991.png)
[image2018-5-31_16-37-3.png](/.attachments/29918992.png)
[2018-05-31_16-29-58.png](/.attachments/29918993.png)
[2018-05-31_16-17-52.png](/.attachments/29918994.png)
[2018-05-31_14-49-23.png](/.attachments/29918995.png)
[2018-05-31_14-20-55.png](/.attachments/29918996.png)
[2018-05-31_14-10-51.png](/.attachments/29918997.png)
[image2018-5-31_13-57-23.png](/.attachments/29918998.png)
[image2018-5-30_13-11-38.png](/.attachments/29918999.png)
[image2022-7-12_9-35-27.png](/.attachments/122748990.png)
[image2022-7-12_9-35-45.png](/.attachments/122748991.png)
[image2022-7-12_9-37-5.png](/.attachments/122748992.png)
