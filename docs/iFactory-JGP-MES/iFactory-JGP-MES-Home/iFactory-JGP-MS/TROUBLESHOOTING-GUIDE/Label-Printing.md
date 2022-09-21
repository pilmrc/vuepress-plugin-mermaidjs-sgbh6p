# Introduction


- ### Why is my label not printing?
Various reasons will cause the label not printing. If a label is expected to be printed, but is not physically printed from the Printer:


***Symptom A: If green message box showing on the top right corner screen with printed success message***  
![](/.attachments/29920276.png)



![](/.attachments/lightbulb_on.svg)
No problem on **Document Maintenance** 
, **Document Assignment** 
, and **Printer Maintenance** 
. A document pas file has been triggered successfully from SF to **Label Data Drop Path** 
(configured under **Print Servers** 
)

***Possible Root Cause***  
I. Physical printer problem (eg. hardware issue, not connected to network, network down)
Solution: Inform hardwarde or network support to fix the problem, then use **Document Reprint** 
to reprint the label.

II. Loftware server problem (eg. server down, printer not being setup in server, wrong printer number being setup, Loftware service dead)
Solution: Inform Loftware server support to fix the problem, then use **Document Reprint** 
to reprint the label.

III. Loftware file problem (eg. label not designed for the device, image file cannot be found). In this case an error pas file which contains error message will be created in **Label Data Drop Path\Error** 
folder
![](/.attachments/29920277.png)




Solution: Inform Loftware file creator to fix the Loftware file, then use **Document Reprint** 
to reprint the label.
***Symptom B: If red message box showing on the top right corner screen with error message***  

![](/.attachments/lightbulb_on.svg)
No problem on **Document Assignment** 
. Most likely wrong configuration in **Document Maintenance** 
or **Printer Maintenance** 
. Always**check**  the error message to understand what went wrong.

***Possible Root Cause***  
I. Error Message: **The Following Document(s) failed to print: Document Name - ... Reason(s) Document definition file ( ... ) not found!** 

![](/.attachments/29920275.png)



Solution: Inform SF Admin to fix the Document Definition in **Document Maintenance** 
, 
then use **Document Reprint** 
to reprint the label.

II. Error Message: **Step: Checking all required document fields for values ... These required document fields: ... did not have values.** 

![](/.attachments/29920274.png)



Solution
: Inform SF Admin to fix the Document Field in 
**Document Maintenance** 
, then use 
**Document Reprint** 
to reprint the label.
***Symptom C: If no message box showing on on the top right corner screen***  
![](/.attachments/lightbulb_on.svg)
Missing/Wrong configuration cause the Document not being triggered at all.***Possible Root Cause***  

I. Missing/Wrong Document Assignment configuration 
Solution: 
Inform SF Admin to check **Document Assignment** 
to make sure the if **Document** 
has been 
**Applies To** 
the Product Family/Material/Container Type of the current WIP/Container, on the 
**Route Step** 
which the it should be printed. Since the WIP pass the trigger point and probably move forward to other Route Step already, 
use 
**Document Generation** 
to regenerate the label.

![](/.attachments/29920270.png)



II. Wrong Printer Type in Document Assignment
Solution: Inform SF Admin to check **Document Assignment** 
to ensure the **Printer Type** of the Document is mapping to the **Printer Number** in **Printer Maintenance** 
where the label should be printed. Since the WIP pass the trigger point and probably move forward to other Route Step already, use 
**Document Generation** 
to regenerate the label.

![](/.attachments/29920269.png)




III. Route Step Resource not being added to Printer
Solution: Inform SF Admin to check **Printer Maintenance**  to ensure Route Step Resource has been added to the **Printer Number**  where the label should be printed. Since the WIP pass the trigger point and probably move forward to other Route Step already, use 
**Document Generation** 
to regenerate the label.

![](/.attachments/29920268.png)





- Why

label is missing some information?
![](/.attachments/lightbulb_on.svg)


The information on label is determine by Document Field configured in Document Maintenance. When a label is triggered, SF will generate pas file in 
**Label Data Drop Path**  which contains all value retrieved for these Document Fields. The Loftware file need to be designed with field that match pas file Document Fields.
![](/.attachments/29920266.png)




![](/.attachments/29920267.png)




***Possible Root Cause***  
I. SF does not return any value for Document Field that been configured in Document Maintenance
Solution: Inform SF Admin to check Document Field in Document Maintenance, sometimes it is correct that the field does not return value if it is optional. If wrong Document Field has been configured, fix it then use 
**Document Reprint** 
to reprint the label.
II. Loftware file field name is not matching Document Field 
that been configured in Document Maintenance
Solution: Inform SF Admin to fix Document Field name in **Document Maintenance** 
, OR inform Loftware file creator to fix the field name Loftware file, bottom line is, they must be the same. Thenuse 
**Document Reprint** 
to reprint the label.
III. 
Loftware file not contains the field for the expected information at all
Solution:Inform Loftware file creator to fix the Loftware file, then use **Document Reprint** 
to reprint the label.

- ### Why information in label is not properly aligned?

All label layout and appearance is determine by Loftware file design, 
Inform Loftware file creator to fix any label alignment/design issue.

- ### How to fix incorrect print quantity?

Print Quantity is configured under

**Document Assignment** 
, i
nform SF Admin to fix the configuration.


- ### How to fix if a user cannot do printing thru API call at Packout?
Ensure the following user permission is granted for user. 
1) Can Access NG - Allow Generate Document
2) Can Access NG - Can Access From External Client Gateway
3) Can Access NG - Can Access WIP View
4) Can Access NG - Can Configure WIP
5) Can Access NG - Can Packout
6) Document (iFactory) - Can Access Document
7) Document Assignment (iFactory) - Can Access Document Assignment
8) Assembly Configuration - Can Access Assembly Configuration
9) Packout - WIP Packout Station (grant the necessary permission)
(Note: Can Access From External Client Gateway is not needed if the user is not perform the task thru API call. Other station permission should granted if the printing is trigger at that operation.)

- ### How to print out duplicate labels?
In the label configuration make a constant with field name "
\*DUPLICATES
" and value the number of copies. Refer to [http://help.loftware.com/display/LPSKB/Specifying+Print+Quantity+and+Duplicates](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/TROUBLESHOOTING-GUIDE/Label-Printing.md)![image2020-5-29_14-13-22.png](/.attachments/71369862.png)


![image2020-5-29_14-15-6.png](/.attachments/71369864.png)






#### Attachments

[pas file.png](/.attachments/29920266.png)
[loftware.png](/.attachments/29920267.png)
[respourceassign_70.png](/.attachments/29920268.png)
[printertype1_70.png](/.attachments/29920269.png)
[Doc Assignment 1_70.png](/.attachments/29920270.png)
[Doc Assignment 1_80.png](/.attachments/29920271.png)
[respourceassign.png](/.attachments/29920272.png)
[printertype1.png](/.attachments/29920273.png)
[redbox2.png](/.attachments/29920274.png)
[red box.png](/.attachments/29920275.png)
[doc sent.png](/.attachments/29920276.png)
[notdesign.png](/.attachments/29920277.png)
[printertype.png](/.attachments/29920278.png)
[error pas.png](/.attachments/29920279.png)
[Doc Assignment 1.png](/.attachments/29920280.png)
[image2020-5-29_14-13-22.png](/.attachments/71369862.png)
[image2020-5-29_14-15-6.png](/.attachments/71369864.png)
