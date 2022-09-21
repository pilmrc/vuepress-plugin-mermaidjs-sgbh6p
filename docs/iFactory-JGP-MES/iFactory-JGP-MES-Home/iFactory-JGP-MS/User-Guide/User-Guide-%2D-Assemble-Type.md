# Introduction

***Introduction to Assemble Type***  
**Assemble Type Maintenance** 
will be used to define the different types of assembly that will happen during the production process.  These **assemble types** will then be associated to both a **Route Step** and **BOM Items** (configured in **Assemble Point** ).  The system will use these associations to determine the **route step** to prompt the operator to **assemble** the **material** . When the **material** arrives at an **assembly route step** , the system will prompt operator to **assemble** the **material** if the **Assemble Type** on the **route step** and the**Assemble Type** configured in **Assemble Point** for the **BOM Item** match.

## ***Why is this screen important?***  


**Certification Maintenance** 
enables user to perform the following activity:
- **Create**
, **view** , **update** and **delete**  an **assembly type** 
- **Configure**
**assembly** type as unique in a specific**route** 
- **Activate**
or **deactivate assembly type** 

## ***How to navigate to Assemble Type***  



Please refer to the following user guide link -  
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
- for detail information
***Topic 1: How to Create, View, Update, and Delete Assemble Type***  
**Click** 
to enlarge the image!![2018-06-18_9-00-22.png](/.attachments/29920330.png)


1. To 
**add** a new **Assemble Type** , the user will **click** on the **+** **Add New Record** icon (
**see red rectangle** ).
**Click** 
to enlarge the image!![2018-06-18_9-15-35.png](/.attachments/29920329.png)


2. To name the 
**Assemble Type** , **click** the **Assemble Type Name** field and type in the name of the **Assemble Type** (
**see red rectangle** ). To help explain the **Assemble Type** , the user can also **add** a description by **clicking** the **Assemble Type Description** field and typing the **description** (
**see blue rectangle** ). 3. The user can also indicate if the 
**Assemble Type** is **Enforce Unique on Route** (
**see blue circle** )or **Is Active** (
**see red circle** )by **selecting**  the respective on/off toggles of both of those characteristics. 4.  Once all fields and toggles have been completed to the user's liking, the user can 
**click** the **Save**  button to **add** the **Assemble Type** to the **Assemble Type Maintenance** database (
**see gold circle** ). **Click** 
to enlarge the image!![2018-06-18_9-29-55.png](/.attachments/29920328.png)



- One way to view the

**Assemble types** is to navigate the **Assemble Type Maintenance Database** using the scroll bar.  The user can either use the scroll wheel on their mouse to scroll through the **Assemble Types**  or**click**  the scroll bar and **slide** it until the desired**Assemble Type**  appears (
**see blue circle** and **see red rectangle** 
).

- Another way to view the
**Assemble Type Maintenance** Database is to use filters. The user will type the **Assemble Type Name** they are looking for in the **Assemble Type Name** filter and then **press**  the**Enter**  key (
**see gold rectangle** ).![2018-06-18_11-49-17.png](/.attachments/29920327.png)


3. This is the 
**Assemble Type Maintenance** Screen after being **filtered** with the the **Assemble Type** filter(
**see blue rectangle** ). 4. There are other filters the user can use. The 
**Assemble Type Maintenance** database can be filtered by**Assemble Type Name, Assemble Type Description,** **Enforce Unique on Route,** and 
**Is Active**  (
**see red rectangle** )**.**  The process for filtering by these criteria is the same as **filtering** by**Assemble Type Name.** **Click** 
to enlarge the image!![2018-06-18_11-58-44.png](/.attachments/29920326.png)



- The user can also

**edit Assemble Types** even after they **add**  them. To start the **edit** process, the user will **click** on the **Edit** icon (see pencil circled in blue
) for whichever **Assemble Type** they want to **edit** )
.![2018-06-18_12-07-50.png](/.attachments/29920325.png)


2. The user has the ability to change the 
**Assemble Type Name** and **Assemble** **Type** **description** by **clicking** their respective fields and **typing** the desired changes (
**see red rectangle** ). The user can also change the status of the **Assemble Type** by 
**selecting** the**Enforce Unique on Route** or 
**Is Active**  on/off toggles**(** 
**see red rectangle** ).3. The user must then 
**click** the **Save**  button to **save** the changes made to the **Assemble Type** (
**see blue circle** ).
**Click** 
to enlarge the image!![2018-06-18_13-03-44.png](/.attachments/29920324.png)



- To

**delete** an **Assemble Type** , the user must first **identify** which **Assemble Type** entry they want to **delete** (
**see red rectangle** ). The user will then **click** the identified **User Type's Delete** button (
**seetrash can in blue circle** ).![2018-06-18_13-08-42.png](/.attachments/29920323.png)


2. A window will appear confirming with the user that wants to 
**delete** the**Assemble Type** . The user will **confirm** the deletion of the **Assemble Type** by **clicking** on the **Delete**  button in the window. 

## ***Fields***  



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Assemble Type</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Assembly Type Name</p></td><td class="confluenceTd"><p>The unique name given to the Assembly Type</p></td></tr><tr><td class="confluenceTd"><p>Assembly Type Description</p></td><td class="confluenceTd"><p>Additional description for the Assembly Type can be entered in this field</p></td></tr><tr><td class="confluenceTd"><p>Enforce Unique on Route</p></td><td class="confluenceTd"><p>Enforce one Assembly Type to be associated to only one Route Step per Route. This can help to prevent the user from configuring<br />a component (for example, CPU) to be assembled at more than one route steps in the same route.</p></td></tr><tr><td class="confluenceTd"><p>Is Active</p></td><td class="confluenceTd"><p>If “Is Active” is enabled, the Assembly Type is available for association and usage in Production</p><p>If “Is Active” is disabled, the Assembly Type is not available for association and components with this assembly type will not be prompted <br />for assembly in production.</p></td></tr></tbody></table>







## ***The following screens are dependent on information from Assemble Type***  




- [Route Step Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Route-Step-Reporting-Name.md)

(specifically for route steps involving component/material assembly) - 
- [Assemble Point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point/User-Guide-%2D-Assemble-Point.md)




#### Attachments

[2018-06-18_13-08-42.png](/.attachments/29920323.png)
[2018-06-18_13-03-44.png](/.attachments/29920324.png)
[2018-06-18_12-07-50.png](/.attachments/29920325.png)
[2018-06-18_11-58-44.png](/.attachments/29920326.png)
[2018-06-18_11-49-17.png](/.attachments/29920327.png)
[2018-06-18_9-29-55.png](/.attachments/29920328.png)
[2018-06-18_9-15-35.png](/.attachments/29920329.png)
[2018-06-18_9-00-22.png](/.attachments/29920330.png)
[2018-06-13_10-13-37.png](/.attachments/29920331.png)
[2018-06-13_11-26-12.png](/.attachments/29920332.png)
[2018-06-13_11-23-16.png](/.attachments/29920333.png)
[2018-06-13_11-20-02.png](/.attachments/29920334.png)
[2018-06-13_11-18-24.png](/.attachments/29920335.png)
[2018-06-13_10-59-22.png](/.attachments/29920336.png)
[2018-06-13_11-00-02.png](/.attachments/29920337.png)
[2018-06-13_9-23-36.png](/.attachments/29920338.png)
[2018-06-13_9-21-41.png](/.attachments/29920339.png)
[2018-06-13_9-20-05.png](/.attachments/29920340.png)
[2018-06-13_9-17-52.png](/.attachments/29920341.png)
[iFactory.png](/.attachments/29920342.png)
