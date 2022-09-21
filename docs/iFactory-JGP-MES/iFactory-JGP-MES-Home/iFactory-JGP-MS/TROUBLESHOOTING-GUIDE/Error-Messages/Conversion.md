# Introduction


- The following WIPs have assembled items with No BTC Hierarchy: SX410-301531-0022: Material: '403-0142-01' Identifier: 'FP20150729001' Material: '406-0007-01' Identifier: 'ISO00166492' Material: '400-0049-03' Identifier: 'SX410-301531-0022' Material: '403-0076-02' Identifier: '53100478' Material: '403-0076-02' Identifier: '53100479'

***CAUSE***  

The WIP was built in Delivery Order and was not able to be migrated to the new system due to BOM Structure changes.

***SOLUTION***  
- Scrapped the WIP.


- Reuse all the assemble items for the new released WIP in the Production Order.

![image2015-9-3 9:18:19.png](/.attachments/29920235.png)







- After enter the Planned Order / Production Order, no WIP is listed for selection.


*CAUSE* 
Temp Serial Number will not be listed for selection. Order Conversion does not allow Temp Serial Number to be converted.

*SOLUTION* 
- Move the Temp Serial Number WIP to FCON1 for reserialization. (Inherit Serial Number from Chassis or Dog Tag)


- When the WIP has actual Serial Number, re-process Order Conversion to convert the WIP to a target order.




- Source customer must match target customer



*CAUSE* 
The Original Order and New Order are of different customer. This is most likely user selection error as it is only allowed to convert orders from the same customer. 


*SOLUTION* 
Correct the order selection and ensure the order selected in Original Order and New Order is for the same customer.




#### Attachments

[image2015-9-3 9:18:19.png](/.attachments/29920235.png)
[image2015-9-3 9:18:3.png](/.attachments/29920236.png)
