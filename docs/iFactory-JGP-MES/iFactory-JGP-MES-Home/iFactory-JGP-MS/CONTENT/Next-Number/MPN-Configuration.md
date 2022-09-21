# Introduction

The system allows user to scan in 
MPN
upon DIMM Serial Number generation, then retrieve the corresponded Manufacturer Code to apply into SN. The MPN
and Manufacturer Code relationship shall be pre-configured
by user.

### Configuration Steps


Example: Material 
031-0025-01, Next Number 
031-0025-01 S/N 2G_1


- [Validation Mask Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)



Below validation mask 'DIMM_VM' is the new one for 
MPN
scanning.**In future when new manufacture part number included, should maintain it in this validation mask.** Regular Expression: The manufacture part number of the material, it should be unique.
When user scan the manufacture part number on DIMM, it should be matched (contain) the manufacture part number maintained in the list.
Match Value: 
The corresponded code (Manufacturer Code), it can be repeated.
![image (6).png](/.attachments/29918726.png)





- [Data Collection Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection.md)



Below 'DIMM_DC' is the new one for 
MPN
scanningValidation Mask: using the new one DIMM_VM
Date Type: Validation_Match

![im1.JPG](/.attachments/29918722.jpg)





- [Next Number Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)



Configure SERIALIZED MATERIAL DATACOLLECTION as Segment Type and the Segment Value is DIMM_DC[Dimm Manufacturer]

![im2.JPG](/.attachments/29918721.jpg)





- [Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Generation.md)

: Isilon_Dimm_Serial_Labels
Below is the Document for material 031-0025-01
Configure 
SERIALIZED MATERIAL DATACOLLECTION as 
Field Typeand the value is DIMM_DC[Dimm Manufacturer], the same as the next number
![im3.JPG](/.attachments/29918720.jpg)




#### Attachments

[im3.JPG](/.attachments/29918720.jpg)
[im2.JPG](/.attachments/29918721.jpg)
[im1.JPG](/.attachments/29918722.jpg)
[image(9).JPG](/.attachments/29918723.jpg)
[image (8).png](/.attachments/29918724.png)
[image (7).png](/.attachments/29918725.png)
[image (6).png](/.attachments/29918726.png)
[image (5).png](/.attachments/29918727.png)
