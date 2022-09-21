# Introduction

Assembly Conversion is to provide an option to convert the Production Assembly (base) to multiple Assembly name ("ALIAS"). Alias Assembly should be referred to Production Assembly. This is a screen
to configure Alias for Production Assembly so that I can convert Base Assembly to another Assembly at the particular Route/ Route Step. This is only applicable to Repetitive for WIP Packout, Warehouse and Receiving.


### How to get there?



::: mermaid
graph LR
A("Product")-->0("ASSEMBLY Alias CONFIGURATION")

:::


#### **Screen Activity** 



Assembly Configuration 
enables user to perform the following activity:
- Associate, view, update and delete the Alias Assembly to Base Assembly
To avoid delete in used assembly alias record, system will check the following:

- User only allow to delete the entire alias configuration if there no WIP using any configured alias items.

- User only allow to delete the alias configuration item if there is no WIP using that alias.
This is to ensure AWAST and Report can be more accurate to use this information.


#### Pre Condition


The following data needs to be pre-configured before user configures Assemblies: 

- Create Material for Alias Assembly

- Create BOM for for Alias Assembly (BOM sub material should be associated with the base material)

- Create Assembly and enable to be Alias Assembly

- User should have permission of the following:

- Material Configuration " Assembly Alias Configuration (Access and Modify)



#### Screen Dependency


The following screen(s) has direct dependency with Assembly Alias Configuration

- Route

- Route Step

- Alias Assembly Number/Revision/Version


#### **Page Screenshot** 


![image2019-8-8_22-40-41.png](/.attachments/53773294.png)


User to associate the Alias Assembly to click the above “+” button to show the below configuration screen:
![image2019-8-8_22-43-17.png](/.attachments/53773297.png)



- "Route" to allow user to select only the same route that the base material is associated to


- "Route Step" is filtered with Packout, Warehouse and Receiving station type only.


- "Alias Assembly Number" to show the list of Alias Assembly which BOM is associated with the Material of base Assembly.


- "Alias Assembly Revision" and "Alias Assembly Version" are not allowed to edit and only show the revision and version of the Alias Assembly chosen.

![image2019-8-8_22-44-43.png](/.attachments/53773299.png)


Action (Delete and Edit or Save) 

- If user clicked Delete (Recycle bin) then the line item will be deleted from list after confirm on the following pop up. This action is to remove the association of Base Assembly and Alias assembly.

![image2019-8-8_22-47-27.png](/.attachments/53773303.png)



- Pencil icon has been removed, to modify existing, user is require to delete and add with new setting.


- Allow multi selection for Alias Assembly for a base assembly and route step.

![image2019-12-10_15-54-21.png](/.attachments/62423075.png)



![image2019-8-8_23-12-31.png](/.attachments/53773309.png)



- "Expired" field is with "v" (Tick) to show the Alias Assembly associated has been Expired. (Refer to the Assembly Configuration screen).


- "Active" field is with "v" (Tick) to show the Alias Assembly associated is turn ON the Active status. (Refer to the Assembly Configuration screen)

- Expired and Inactive status Alias Assembly will not show on the Assembly Conversion selection option.
![image2019-8-8_23-0-25.png](/.attachments/53773306.png)


Action of Search, Assembly is filtered by the associated customer of user and the Assembly is not enable the "Alias".
Action for replication (copy), system to suggest the Base Assembly could perform the copy according to the following criteria:

- Base Assembly that associated to the same Route

- Material of the Base Assembly should be associated to ALL of the Alias Assembly's BOM
Action "X" button is to clear the Base Assembly Number.
Action Delete (Recycle bin) is to remove ALL the Alias Assembly associated with the selected Base assembly.
![image2019-8-8_23-10-40.png](/.attachments/53773308.png)




#### Attachments

[image2019-7-26_11-37-27.png](/.attachments/53773289.png)
[image2019-8-8_22-38-9.png](/.attachments/53773290.png)
[image2019-8-8_22-40-1.png](/.attachments/53773291.png)
[image2019-8-8_22-40-30.png](/.attachments/53773293.png)
[image2019-8-8_22-40-41.png](/.attachments/53773294.png)
[image2019-8-8_22-42-47.png](/.attachments/53773296.png)
[image2019-8-8_22-43-17.png](/.attachments/53773297.png)
[image2019-8-8_22-44-43.png](/.attachments/53773299.png)
[image2019-8-8_22-47-1.png](/.attachments/53773302.png)
[image2019-8-8_22-47-27.png](/.attachments/53773303.png)
[image2019-8-8_23-0-25.png](/.attachments/53773306.png)
[image2019-8-8_23-0-34.png](/.attachments/53773307.png)
[image2019-8-8_23-10-40.png](/.attachments/53773308.png)
[image2019-8-8_23-12-31.png](/.attachments/53773309.png)
[image2019-12-10_15-54-21.png](/.attachments/62423075.png)
