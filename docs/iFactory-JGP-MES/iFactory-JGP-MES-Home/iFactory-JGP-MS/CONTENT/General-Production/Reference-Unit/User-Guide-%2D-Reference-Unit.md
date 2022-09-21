# Introduction

***Introduction to Reference Unit***  

**Reference Unit** 
is sometimes known as golden boards. They are commonly used to validate test processes, calibrate test equipment or as an inspection aid in quality control process. **Reference Units** are not counted as **WIP** and does not affect production yield. There are three categories of **reference unit** ; **time-based** , **counter-based** and **use-till-die** . For **use-till-die** category,  a user just needs to enter the **Serial Number** and does not need to configure effective dates or its actuation.

## ***How to navigate to Reference Unit***  



Please refer to the following user guide link -
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information.


## ***The following screens should be configured as predecessors to Reference Unit***  




- ***[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)***


## ***Topic 1: How to add a Reference Unit***  



**Click** 
to enlarge the image!![2018-06-04_13-34-16.png](/.attachments/29918452.png)



- **Click**

on the **+** to **Add New Record.** 
- Enter data in at least mandatory fields (


)
- **Click**

on **Insert** 
**Notes:** 
There could be more than one category configured for a **Reference Unit** . Whichever category rule that is met first will deem the **Reference Unit** unusable. 
Example: **SRL-1804-0008** has a time-based configuration where its validity is from 07-May-2018 until 30-August-2018. **SRL-1804-0008** also has a counter-based configuration where it can be used for a maximum of 100 times. On 21-June-2018, **SRL-1804-0008** was used 100 times. Even though **SRL-1804-0008** is valid until 30-August-2018, it can no longer be used as a reference unit as one of its category rules is met.

## ***Topic 2:  How to update/delete a Reference Unit***  



**Click**  
to enlarge the image!![2018-06-04_13-32-13.png](/.attachments/29918453.png)


If update or Delete is needed, Click on the respective icons (
see red
square).

### **Fields** 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>The Serial Number to be made as reference unit</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The customer for this reference unit. The customer will auto-populate according to the scanned serial number</td></tr><tr><td class="confluenceTd">Division</td><td class="confluenceTd">The division for this reference unit. The division will auto-populate according to the scanned serial number</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">The product family for this reference unit. The product family will auto-populate according to the scanned serial number</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material and material version for this reference unit. The material and material version will auto-populate according to the scanned serial number</td></tr><tr><td colspan="1" class="confluenceTd">Effective Date From</td><td colspan="1" class="confluenceTd">The start date where this reference unit is effective. This is to configure a time-based reference unit</td></tr><tr><td colspan="1" class="confluenceTd">Effective Date To</td><td colspan="1" class="confluenceTd">The end date where this reference unit is effective. This is to configure a time-based reference unit</td></tr><tr><td colspan="1" class="confluenceTd">Maximum Actuation</td><td colspan="1" class="confluenceTd">The maximum time (counter) the reference unit can be used. This is to configure a counter-based reference unit</td></tr><tr><td colspan="1" class="confluenceTd">Current Actuation</td><td colspan="1" class="confluenceTd">Displays the number of times the Serial Number has been used as a reference unit. This is related to a counter-based reference unit. If the current<br />actuation exceeds the maximum actuation, the reference unit can no longer be used </td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">If the Active flag is enabled, the reference is ready for use in production<br />If the Active flag is disabled, the reference unit cannot be scanned in production </td></tr></tbody></table>





## ***The following screens are dependent on information from Reference Unit***  



- ***[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)***



#### Attachments

[2018-06-04_13-34-16.png](/.attachments/29918452.png)
[2018-06-04_13-32-13.png](/.attachments/29918453.png)
[2018-06-04_13-20-56.png](/.attachments/29918454.png)
[2018-06-04_13-04-58.png](/.attachments/29918455.png)
