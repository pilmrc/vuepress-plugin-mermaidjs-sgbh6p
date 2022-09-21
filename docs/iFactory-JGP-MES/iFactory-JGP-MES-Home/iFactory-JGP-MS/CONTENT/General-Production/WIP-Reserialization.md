# Introduction

When a WIP is birthed in Phoenix, a Serial Number will be generated or assigned to it. An example of business needs where a WIP birthed with Serial Number WW30-0001 (Released at Work Week 30) to be renamed as WW35-0001 simply because the WIP has not been utilize to fulfill any order until work week 35. Reserialization may also be required if there is a change of Serial Number format required by customer on all the WIPs that have been birthed. 
This screen allows the user to change an existing WIP’s serial number and print the new 
serial document. 



### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("WIP")
0-->1("WIP RESERIALIZATION")

:::


#### **Screen Activity** 



WIP Reserialization enables user to perform the following activity:

- Change WIP Serial Number where its material release type is either Generate Serial Number or Assigned Serial Number

- Print WIP release document

- After reserialization, the history and genealogy from the original serial will now be tied to the new serial number. WIP Reserialization is tracked in the WIP Audit Log.



#### **Screen Dependency** 



- ***Material***

[ Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/GRN-Hold-Data-Importer.md)
- *[Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)*



#### **Reserialization with Release Type = Generate Serial Number** 



- Select a WIP where its material release type = Generate Serial Number

- Click Generate button to generate the new Serial Number

- System will provide a list of documents associated to the WIP for a reprint using the new Serial Number. Select the document and printer

- System displays a message "
Serial Number generated, Please Press save to confirm changes"

- Click the Save button to execute the reserialization and document printing

![image2014-4-24 20:58:45.png](/.attachments/29918652.png)


![image2014-4-24 20:59:0.png](/.attachments/29918651.png)


![image2014-4-24 21:20:26.png](/.attachments/29918649.png)





#### **Reserialization with Release Type = Assigned Serial Number** 




- Select a WIP where its material release type = Assigned Serial Number

- In the Serial Number text box, scan or enter the new Serial Number

- Click Validate button. System will validate the Serial Number entered matches the validation mask configured for the WIP's material in Material Maintenance

- If validation mask passed, system displays a message "
Validation Mask Passed, Please Press save to confirm changes."

- Click the Save button to execute the reserialization


- Similar to WIP Release, printing of document will be skipped if the material release type is not Generate Serial Number


- On success, the new Serial Number is displayed in the WIP Serial Number field


![image2014-4-24 21:24:21.png](/.attachments/29918648.png)


![image2014-4-24 21:25:32.png](/.attachments/29918647.png)




#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">WIP Serial Number</td><td class="confluenceTd"><p>Allows user to search for the Serial Number to reserialize <br />WIP that is on hold will not be available for reserialization<br />WIP of release type = Temporary Serial Number or N/A will not be available for reserialization </p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number Field</td><td colspan="1" class="confluenceTd">This field is only activated for user entry if the WIP's release type is Assigned Serial Number</td></tr><tr><td colspan="1" class="confluenceTd"><span>Generate Button</span></td><td colspan="1" class="confluenceTd"><span>The button name changes to Generate if the WIP release type is Generate Serial Number<br />User clicks the Generate button to generate the new Serial Number using the material's Next Number format.<br />User needs to click Save to <span>execute the reserialization.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Validate Button</td><td colspan="1" class="confluenceTd"><p><span>The button name changes to Validate if the WIP release type is Assigned Serial Number</span><br /><span>After entering the new Serial Number, user clicks the Validate button to validate the Serial Number format against the material release type validation mask. <br />Once the Serial Number validation passed, only then user can click Save to execute the reserialization.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr></tbody></table>









#### Attachments

[image2014-4-24 21:25:32.png](/.attachments/29918647.png)
[image2014-4-24 21:24:21.png](/.attachments/29918648.png)
[image2014-4-24 21:20:26.png](/.attachments/29918649.png)
[image2014-4-24 21:19:21.png](/.attachments/29918650.png)
[image2014-4-24 20:59:0.png](/.attachments/29918651.png)
[image2014-4-24 20:58:45.png](/.attachments/29918652.png)
