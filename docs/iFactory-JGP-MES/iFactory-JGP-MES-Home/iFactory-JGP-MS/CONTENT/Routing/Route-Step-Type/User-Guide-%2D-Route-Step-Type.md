# Introduction



## ***Introduction to Route Step Type***  



**Route Step Type** 
gives the user the ability to define specific routing behavior and configure required certifications. To ease repetitive configuration, 
**Route Steps** can be grouped into **Route Step Type** and all the flags and certifications configured will be inherited by the **Route Step** . During creation of **Route Step** in 
**Route Maintenance** , the user is required to specify the 
**Route Step Type** with the **Route Step Name** .

## ***How to navigate to Route Step Type***  



Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Why is this screen important?***  


**Route Step Type** 
gives promotes greater flexibility in **Route Step** configuration. Individual **Route Steps** can be a assigned a **Route Step Type** . Once completed, all the flags and certification data associated with the **Route Step Type** will be inherited by the **Route Step** . 


## ***The following screens should be configured as predecessors to Route Step Type***  



- Certification


- Route Step



## ***Topic 1: How To Create Route Step Type: General Tab data***  


***Click***  
to enlarge the image!
![image2018-5-17_14-0-54.png](/.attachments/29920003.png)



From the 
**Route Step Type**  **Maintenance** screen:**Click** 
on the **Blank Sheet** icon to clear any displayed content.
- **Click**

in the**Route Step Type field.**   Enter the new  **Route Step Type** name. (
**Note** :  This is a required field!)

- **Click**

the **General Tab.** 
- **Click**

the **Drop Down Arrow**  in the **Station Type**  field. and select your **Station Type.**   (
**Note** :  This is a required field!)

- The options checked here will assign conditions to the

**Route Step Type** (and subsequently the **Route Steps** of that type). For more details on the behaviors of each option, please reference the **Wiki** . Click on the 
**Save** icon (computer disk) to **Save** your selections (See Red Circle).


## ***Fields***  


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>General Tab</strong></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Field</strong></p></td><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step Type Name</td><td colspan="1" class="confluenceTd">The unique name for the Route Step Type</td></tr><tr><td colspan="1" class="confluenceTd">Station Type</td><td colspan="1" class="confluenceTd">This is a fixed selection of existing Stations (Example: Inspection and Rework, Assemble, OBA, WIP Packout, Material Review, etc).</td></tr><tr><td class="confluenceTd">Allow Failures</td><td class="confluenceTd">Allows user to log Failures on WIP for the Route Steps under this Route Step Type. This flag needs to be enabled for test or quality related route steps to log failures.</td></tr><tr><td colspan="1" class="confluenceTd">Require Default Failure Labels</td><td colspan="1" class="confluenceTd">Allows user to enable default Failure Labels for the Route Steps under this Route Step Type</td></tr><tr><td colspan="1" class="confluenceTd">Allow Defects</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Allows user to log Defects on the Route Step under this Route Step Type. <br />Defects are when the Serial Number was analyzed and found to contain specific quality defect. This flag needs to be enabled for Analysis/Rework route steps</p></td></tr><tr><td colspan="1" class="confluenceTd">Allow Rework</td><td colspan="1" class="confluenceTd">Allow user to log Rework against a Failure on the Route Step under this Route Step Type. This flag needs to be enabled for Analysis/Rework route steps</td></tr><tr><td colspan="1" class="confluenceTd">Included in Yield</td><td colspan="1" class="confluenceTd">This flag determines if the Route Step under this Route Step Type is included in the Yield Report calculation. <br />This flag shall assist site to include only relevant route steps to generate an accurate Yield report.</td></tr><tr><td colspan="1" class="confluenceTd">Operation Required</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Some Route Steps such as Assembly can run by itself without needing to configure an <a href="http://usplnd0wiki01:8090/display/PB/Operation+Assignment" rel="nofollow" class="external-link">operation</a> script. This flag will determine if the Route Step under this Route Step Type requires an operation script</p></td></tr><tr><td colspan="1" class="confluenceTd">Included in DPM</td><td colspan="1" class="confluenceTd">This flag determines if the Route Step under this Route Step Type is included in the DPM Report calculation. <br />This flag shall assist site to include only relevant route steps to generate an accurate DPM report.</td></tr><tr><td colspan="1" class="confluenceTd">Time Based Assembly</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">If this flag is checked, system will track the scan in/scan out time of Inventory IDs during assembly. This shall enable Inventory ID reporting in the As-Built report. <br />For this function, a setup sheet must be associated to the Route Step under this Route Step Type</p></td></tr><tr><td colspan="1" class="confluenceTd">Allow Assembly</td><td colspan="1" class="confluenceTd">Allows user to perform material assembly or disassemby on the Route Step under this Route Step Type. This flag needs to be enabled for SMT Assemby and Manual Assembly route steps.</td></tr><tr><td colspan="1" class="confluenceTd">Allow Adhoc Assembly</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Allows user to perform ad-hoc assembly or disassembly of any material on the Route Step under this Route Step Type. <br />This is a special step used when user needs to assemble/disassemble material which may not follow the standard assembly rules<br />This flag is needs to be enabled for Manual Assembly route steps.</p></td></tr><tr><td colspan="1" class="confluenceTd">Retest Allowed</td><td colspan="1" class="confluenceTd">Allows the WIP to be automatically put in queue for retest at a configured route step if it fails</td></tr><tr><td colspan="1" class="confluenceTd">Allow Print Document Defect</td><td colspan="1" class="confluenceTd">Allows the WIP able to print lists of defects (open and closed) like visible in WIP view defects tab</td></tr></tbody></table>








**Steps to print document defect at Inspection and Rework station** 

- Inspection and Rework station the operator should be able to print out hard copy of the defects and rework data if "Allow Print Document Defect" button is turn on
![image2021-7-26_14-23-27.png](/.attachments/95814092.png)



2. Notification to print defect document
![image2021-7-26_14-25-3.png](/.attachments/95814093.png)



3. Select defects to print and click “Okay” button
![image2021-7-26_14-27-32.png](/.attachments/95814094.png)





## ***Topic 2: How To Create Route Step Type: Certifications Tab data***  


***Click***  
to enlarge the image!![image2018-5-17_14-1-12.png](/.attachments/29920002.png)



- ***Click***

on **Certifications** Tab.
- **Click**

on **+ Add New Record** button.
- Enter

**Certifications**  (
**Note** :  This is a required field!)
- **Click**

on the **magnifying glass**  icon to search from exisitng **certifications** .
- **Click**

on the **blank sheet**  icon to clear **certification** field.
- **Click**

on **Insert.** 
- **Click**

on **Save** button.

## ***Fields***  


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Certifications Tab</td></tr><tr><td class="confluenceTd">Field</td><td class="confluenceTd">Description</td></tr><tr><td class="confluenceTd">Certification Name</td><td class="confluenceTd">The certification required by the operator to operate in the Route Step under this Route Step Type</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Description of the certification will be auto populated based on the certification selected</td></tr></tbody></table>



#### Attachments

[image2018-5-17_14-1-12.png](/.attachments/29920002.png)
[image2018-5-17_14-0-54.png](/.attachments/29920003.png)
[image2021-7-26_14-22-42.png](/.attachments/95814091.png)
[image2021-7-26_14-23-27.png](/.attachments/95814092.png)
[image2021-7-26_14-25-3.png](/.attachments/95814093.png)
[image2021-7-26_14-27-32.png](/.attachments/95814094.png)
