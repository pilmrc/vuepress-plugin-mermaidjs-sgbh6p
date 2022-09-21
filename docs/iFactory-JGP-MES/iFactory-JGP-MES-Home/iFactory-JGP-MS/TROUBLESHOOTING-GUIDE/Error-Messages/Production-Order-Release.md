# Introduction



- **Error: Production Order to Assemble Type validation failed for Order [**

Order Number] with top-level material [Top Level Material Name] Assemble Type not configured for Production Order (
Order Number) Line Item Material (Problem Material) at level (2) (Path = [Parent of the Problem Material])
Example:  
Production Order to Assemble Type validation failed for Orde
r

100027309 with top-level material X-SERIES Assemble Type not configured for Production Order (100027309
) Line Ite
m Material (
403-0089-02) at level (2) (Path = [611-0055-02])***CAUSE***  

Assemble Type is not configured for the material
***SOLUTION***  

Go to Assemble Point, configure the missing Assemble Type for the problem material. As the same material may exist under different parents (options), make sure you configure the material under the correct parent. For more details, see [Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md#AssemblePoint-ConfiguringAssemblePoint). If there is a recent BOM change, refresh the Assemble Point. Configure the missing Assemble Type for the problem material. 



- **Error: Serialized in ASN is not configured properly [Parent Material Name\...\Problem Material Name] does not have an inherit serial number configured to be serialized in ASN**


- **Error: Inherit serial number for top level [**

Material Name] is not configured properly. **No inherit serial number configured** 

Example: 
Inherit serial number for top level TEST_OPT_3 is not configured properly. 
No inherit serial number configured
***CAUSE 1***  

BOM inheritance is not configured for the material
***SOLUTION 1***  

Go to BOM Maintenance. Load the BOM for the problem material as per the error message. Temporarily set BOM status to "Inactive" to enable BOM editing. Save the BOM. If there is a prompt to upgrade the BOM version, select "No" to overwrite the BOM.  Locate the material to configure BOM inheritance. Click Edit and set
Inherit Priority = 1. If the material is a phantom, you will need to repeat the step to set Inherit Priority = 1 until a non phantom material is found. 


Example:  Error: Serialized in ASN is not configured properly [E2700-R6\AP_Universal\E-X5680A-0E-R6-C] does not have an inherit serial number configured to be serialized in ASN


Load BOM for  E-X5680A-0E-R6-C. The material to configure inherit priority is 6600-F001. Edit 6600-F001 and set Inherit Priority = 1. Since 6600-F001 is a phantom. You will need to to repeat the step to set Inherit Priority = 1 until a non phantom material is found. Load BOM for 6600-F001. Edit 47728-27-D and set Inherit Priority = 1. Since 47728-27-D is a non phantom material, this will be the physical material where its Serial Number will be used for inheritance. E2700-R6, E-X5680A-0E-R6-C and 6600-F001 will then be reserialized to the same Serial Number as 47728-27-D.

***CAUSE 2***  

Production Order with missing line item for serial number inheritance.  
***SOLUTION 2***  

- Cancel the Production Order.


- Notify planner to correct the production order to include the missing line item.


- Create a new production order with the correction to shop floor.


Example: 
Phantom 
E-X5680A-0E-R6-C is a phantom but missing its child line items for inheritance

INCORRECT![image2015-8-28 15:46:32.png](/.attachments/29920249.png)


The corrected production order with child line items for 
E-X5680A-0E-R6-C
**CORRECT** 
![image2015-8-28 15:45:46.png](/.attachments/29920250.png)



***CAUSE 3***  

The material to inherit priority has expired  

***SOLUTION 3***  

Check the BOM. The material to inherit priority may have expired. Configure BOM inheritance on the replacement line item that is within the validity date.![image2015-8-28 16:9:12.png](/.attachments/29920248.png)



***CAUSE 4***  

The material is actually not a serialized material

***SOLUTION 4***  

- Correct the material's

Serial No Profile in SAP

- Resend the corrected Material IDOC to shop floor


- Shop floor to verify in Material Maintenance, the Managed as "Serialized" flag is unchecked

![image2015-9-2 14:16:27.png](/.attachments/29920246.png)





- **Error: Assemble Type is present but not configured in Route [Assemble Type Name]-[Parent Material\...\Material Name]**


Example: 
Assemble Type is present but not configured in Route 
ACC1 - X-SERIES\IS_UNIVERSAL\611-0010-01\403-0088-02

***CAUSE***  

Assemble Type is missing in the route or incorrect assemble type was configured in the Assemble Point

***SOLUTION***  

- If the Assemble Type is indeed missing in the route, configure the assemble type in the respective route step.


- Load Route Maintenance, select the route step to edit.


- In the Edit Route Step pop up window, select Assemble Type tab. Add the missing Assemble Type



![image2015-9-2 14:21:31.png](/.attachments/29920245.png)




- If the Assemble Type was not meant for the Route, then an incorrect Assemble Type has been configured in the Assemble Point.


- Load the Assemble Point, select the material containing the incorrect Assemble Type. Reconfigure the material to the correct Assemble Type.

For more details, see 
[Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md#AssemblePoint-ConfiguringAssemblePoint). 








#### Attachments

[image2015-9-2 14:21:31.png](/.attachments/29920245.png)
[image2015-9-2 14:16:27.png](/.attachments/29920246.png)
[image2015-9-2 14:15:50.png](/.attachments/29920247.png)
[image2015-8-28 16:9:12.png](/.attachments/29920248.png)
[image2015-8-28 15:46:32.png](/.attachments/29920249.png)
[image2015-8-28 15:45:46.png](/.attachments/29920250.png)
