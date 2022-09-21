# Introduction



## ***Introduction to Rework (Inspection and Rework)***  



**iFactory** 
permits end users to inspect and place a **Defect** if the identified **Material** is nonconforming. The examination of the original cause regarding the non-conformance is the **Analysis** process. All non-conformance added are required to be closed. This is where the **Rework** phase starts to find the root cause of the non conformance and perform the necessary **repair** /**replace** action to close the **failure** /**defect** .  Both **Inspection** and **Rework** operations share a similar interface. The ability of the station to perform different operations will depend on the configuration in **Route Step Type** screen (Rework option should be checked).

## ***How to navigate to Rework***  



Please refer to the following user guide link -  
***Navigating to iFactory Screens***  
- for detail information.


## ***The following screens should be configured as predecessors to Rework***  



- Defect Type


- Rework Category


- Route Step Type


Topic 1: How to access Rework?**Method 1 -Using Generic Station** 
**Click** 
to enlarge the image!![image2018-5-16_15-54-58.png](/.attachments/29919728.png)



- **Scan Resource**


- **Scan WIP Serial Number**


- Click on

**Scan**  button
**Method 2 -Using Station Login** 
**Click** 
to enlarge the image!![image2018-5-16_15-55-12.png](/.attachments/29919727.png)



- **Select Resource Station**


- **Select Route Step**


- **Click**

on **Inspection & Rework** 



## ***Topic 2:  How to close a defect in a WIP Serial Number***  



**Click**  
to enlarge the image!![image2018-5-16_15-55-36.png](/.attachments/29919726.png)



- **Enter the WIP Serial Number**

. The inspected WIP Serial Number and the Material are displayed
- **Click**
on 
**Arrive** button to 
**arrive the WIP at the Inspection step** .

(
**Note** 
: It is not necessary to **Arrive** the **WIP** before starting **Inspection** . Arrive the **WIP** only if there is a business need to record the time as soon as the **WIP** reaches the **Inspection Station** . This is to record the **WIP** aging time waiting to be **Inspected** . The user is still required to click the **Start** button to begin **Inspection** work.)
- **Click**

on **Start** button to start the **WIP** at the inspection step 
- This informative field provides the

**Inspection** status of the **WIP** .
These are the following status displayed:
- **Not Started**

- **Pass**
(When the **WIP** contains no open failure or defect. Completing the **Inspection** when this result is displayed will give the **WIP** a **Pass** status)
- **Fail**
(When the **WIP** contains an open failure or defect. Completing the **Inspection** when this result is displayed will give the **WIP** a **Fail** status).
- **Click**

on **All failures** to display all of them or **Click** on **Open Failures**  to display only **Open Failures** .
- **Drag and drop**
the 
**open defect in the Open Defects pane** to the 
**Closed Defects** pane. 
(
**Notes** : if the material has **Data Collections** configured , the **Data Collection** screen pops up and request the following information.)
**Click**  
to enlarge the image!
![image2018-5-16_15-55-53.png](/.attachments/29919725.png)






## ***Topic 3:  How to add Rework Details***  



**Click**  
to enlarge the image!
![image2018-5-16_15-56-5.png](/.attachments/29919724.png)







- **Click**

the drop down arrow in the**Rework Category**  field and **Select** **"Rework"**  from
**Rework Category list .**   
(Note:  
This is a required field
**)** 
- **Enter**

the
**Detail**  
in the
**Detail**  
field
**.** 

- **Click**

in the
**Rework Comment**  
field and
**Enter**  
appropriate
**Comments.** 

- **Click**

the
**Confirm**  
button to save your

changes
**.** 


**Click**  
to enlarge the image!
![image2018-5-16_15-56-17.png](/.attachments/29919723.png)



8.  After all the 
**Open Defects** are reworked, **Click** on **Complete** button and the **WIP** Status box will be updated from "**Fail** " to "**Pass** ".

## ***Topic 3:  How to use replace a material in WIP Serial Number***  


**Click**  
to enlarge the image!
![image2018-5-16_15-56-36.png](/.attachments/29919722.png)





- **Select Rework Category**

(
**Note** : This is a required field). 
- **Click**

in the**GRN**  field and enter the **GRN.** 
- if it is a serialized material, a serial number will be required for '

**Identifier** ' field.
- **Click**

in the
**Detail**  
field and enter the 
**Rework** 
Detail.
- **Click**

in the
**Rework Comment**  
field and enter the 
**Rework Comments** 

- **Click**

the
**Confirm bu** 
tton to save the information.

**(** **Note** 
**:**   If the
**Defer Replacement Operation** is Enabled  
**(see red circle)**  , a 
**GRN** is not required during part replacement in 
**Rework Operation Defer Replacement Operation)** 


## ***Topic 4:  How to View Rework Details***  


**Click** 
on the desired closed defects in the **Closed Defects** section. The **Closed Defect Details** are displayed containing the **Rework Details** . 
![image2018-5-16_15-56-47.png](/.attachments/29919721.png)






## ***Screen Messages***  


The following screen messages may appear during Rework process

- **Click**

on**Start**  and this message is displayed**Click**  
to enlarge the image!![image2018-5-16_15-57-2.png](/.attachments/29919720.png)




- When a failure had been reworked.


**Click**  
to enlarge the image!
![image2018-5-16_15-57-7.png](/.attachments/29919719.png)




- When the WIP completed sucessfully the rework process.


**Click**  
to enlarge the image!
![image2018-5-16_15-57-12.png](/.attachments/29919718.png)





## ***The following screens are dependent on information from Inspection and Rework***  




- Quality Reports

- WIP View


#### Attachments

[image2018-5-16_15-57-12.png](/.attachments/29919718.png)
[image2018-5-16_15-57-7.png](/.attachments/29919719.png)
[image2018-5-16_15-57-2.png](/.attachments/29919720.png)
[image2018-5-16_15-56-47.png](/.attachments/29919721.png)
[image2018-5-16_15-56-36.png](/.attachments/29919722.png)
[image2018-5-16_15-56-17.png](/.attachments/29919723.png)
[image2018-5-16_15-56-5.png](/.attachments/29919724.png)
[image2018-5-16_15-55-53.png](/.attachments/29919725.png)
[image2018-5-16_15-55-36.png](/.attachments/29919726.png)
[image2018-5-16_15-55-12.png](/.attachments/29919727.png)
[image2018-5-16_15-54-58.png](/.attachments/29919728.png)
[image2018-5-16_15-50-18.png](/.attachments/29919729.png)
[image2018-5-16_15-49-36.png](/.attachments/29919730.png)
