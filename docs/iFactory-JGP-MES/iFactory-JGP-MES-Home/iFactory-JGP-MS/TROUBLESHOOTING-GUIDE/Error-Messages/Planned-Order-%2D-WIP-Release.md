# Introduction


**Error: Assemble Type is present but not configured in Route. [** 
Assemble Type]**-**  
[Parent Material\...\Problem Material]
Example:Assemble Type is present but not configured in Route. 
HDD Assemble - 403-0088-02\053-0017-02

***CAUSE***  

Assemble Type is missing in the route or incorrect assemble type was configured in the Assemble Point

***SOLUTION***  

- If the Assemble Type is indeed missing in the route, configure the assemble type in the respective route step.

- Load Route Maintenance, select the route step to edit.

- In the Edit Route Step pop up window, select Assemble Type tab. Add the missing Assemble Type






- If the Assemble Type was not meant for the Route, then an incorrect Assemble Type has been configured in the Assemble Point.

- Load the Assemble Point, select the material containing the incorrect Assemble Type. Reconfigure the material to the correct Assemble Type.
For more details, see [Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md). 
**Error: Missing Assemble Type [Parent Material\...\Problem Material]** 

Example: 
Missing Assemble Type 
403-0088-02\101-0204-01

***CAUSE***  

Assemble Type is not configured for the material

***SOLUTION***  

Go to Assemble Point, configure the missing Assemble Type for the problem material. As the same material may exist under different parents (options), make sure you configure the material under the correct parent. For more details, see [Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md). 

**Error:**  

Missing Assemble Point
[Top Level Material\...\Problem Material_1]
.
.
[
**Top Level Material** 
\...\Problem Material_2]
Example:
Missing Assemble Point

403-0088-02\053-0017-02

403-0088-02\101-0204-01

403-0088-02\104-0069-02

403-0088-02\104-0068-02

403-0088-02\104-0066-01

403-0088-02\104-0067-01

403-0088-02\040-034-009

***CAUSE***  

Assemble Type was not configured for the top level material or the material has been newly added in the BOM. 

***SOLUTION***  

- Go to Assemble Point to configure assemble types for the listed materials. Save the Assemble Point. Assemble Point that has not been saved before will be displayed in green.


- If material

has been newly added in the BOM, 
[refresh the assemble point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md#AssemblePoint-RefreshAssemblePoint). Configure assemble type for the listed material. Save the Assemble Point. For more details, see 
[Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)
Error: The cast to value type 'System.Boolean' failed because the materialized value is null. Either the result type's generic parameter or the query must use a nullable type
***CAUSE***  

Material has been newly added in the BOM. 

***SOLUTION***  

- [Refresh the assemble point](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md#AssemblePoint-RefreshAssemblePoint)
. Configure assemble type for the listed material. Save the Assemble Point. For more details, see [Configuring Assemble Points](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Point.md)
**Error: Inherit serial number for top level [** 
Material Name] is not configured properly. **No inherit serial number configured** 

Example:  Inherit serial number for top level TEST_OPT_3 is not configured properly. 
No inherit serial number configured

***CAUSE 1***  

BOM inheritance is not configured for the material

***SOLUTION 1***  

- [Configure BOM Inheritance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md#BillOfMaterialBOM(legacy)-BOMInheritance)


***CAUSE 2***  

Production Order with missing line item for serial number inheritance.  

***SOLUTION 2***  


- Cancel the Production Order.

- Notify planner to correct the production order to include the missing line item.

- Create a new production order with the correction to shop floor.

Example: 
Phantom 
E-X5680A-0E-R6-C is a phantom but missing its child line items for inheritance


INCORRECT



The corrected production order with child line items for E-X5680A-0E-R6-C

**CORRECT** 






***CAUSE 3***  

The material to inherit priority has expired  


***SOLUTION 3***  

Check the BOM. The material to inherit priority may have expired. Configure [BOM inheritance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md#BillOfMaterialBOM(legacy)-BOMInheritance)on the replacement line item that is within the validity date.




***CAUSE 4***  

The material is actually not a serialized material

***SOLUTION 4***  


- Correct the material's Serial No Profile in SAP

- Resend the corrected Material IDOC to shop floor

- Shop floor to verify in Material Maintenance, the Managed as "Serialized" flag is unchecked







