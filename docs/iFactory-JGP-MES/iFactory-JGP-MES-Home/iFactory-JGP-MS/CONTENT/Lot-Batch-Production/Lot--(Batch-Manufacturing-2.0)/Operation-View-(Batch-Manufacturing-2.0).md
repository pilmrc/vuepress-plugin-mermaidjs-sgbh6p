# Introduction

The Operation View is the place to review the details about the Lot operation. There are two tabbed sheets that describe different particular 
aspects of the Operation.


### How to get there?




::: mermaid
graph LR
A("LOT VIEW")-->0("HISTORY TAB")
0-->1("OPERATION LINK")

:::


#### Permission



- Can Access Lot/Batch Build- Lot -View Lot Details -Allows the user to view detailed lot information (operation history, attributes, etc.).



#### Screen Activity



- Lot operation view allow user to view Container Number that is linked to the Carrier at Packout/Warehouse/Receiving.

- Lot operation view allow user to view  Carrier Load / Unload event at MOE, MIE, Receiving station.


#### Pre Condition


The following data needs to be pre-configured before user able to view the Operation View

- Lot must have been started at a Packout / Warehouse / Receiving Station to have any History.

- Lot must have enable and have been started at Manual Inspection Entry or Manual Operation Entry.



#### Operation View


![image2021-3-25_11-27-55.png](/.attachments/89588042.png)


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Operation View</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Lot Number</p></td><td style="text-align: left;" class="confluenceTd"><p>The Serial Number of the Lot</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Route Step</p></td><td style="text-align: left;" class="confluenceTd">The Route Step from the Process Step History</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">The status of the Lot at the Process Step History</td></tr></tbody></table>



#### ***Pack / Unpack /Move Tab***  


![image2021-4-1_13-29-52.png](/.attachments/89588184.png)


Fields:
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Pack/Unpack Tab</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Container</td><td style="text-align: left;" class="confluenceTd">The Container the Lot is used for the Operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Event</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Pack or Unpack</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Lot Quantity Pack/Unpack from the Container</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed By</td><td style="text-align: left;" colspan="1" class="confluenceTd">The user ID perform the Pack/Unpack Operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed At</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Date Time when the Operation Pack/Unpack is performed</td></tr></tbody></table>



#### Packout / Pallet Station Example


Only display the Pack/Unpacked information in Packout and Pallet Station.
This is an example of the format of what a Lot pack/unpacked in Packout/Pallet Station, it will display "Pack" when carrier/box is packed and display "Unpack" when carrier/box is unpacked.
![image2021-4-1_13-33-58.png](/.attachments/89588185.png)


![image2021-4-1_13-34-12.png](/.attachments/89588186.png)


![image2021-4-1_13-34-25.png](/.attachments/89588187.png)


![image2021-4-1_13-34-37.png](/.attachments/89588188.png)




#### Warehouse Station Example


Only display the Move information in Warehouse Station.
This is an example of the format of what a Lot move to Warehouse Station, it will display "Move" when container is completed in station.
![image2021-4-1_13-35-55.png](/.attachments/89588189.png)




#### Receiving Station Example


Only display the Unpacked information in Receiving Station.
This is an example of the format of what the container received in Receiving Station, it will display "Unpack" when container is receiving.
![image2021-4-1_13-36-26.png](/.attachments/89588190.png)




#### ***Load / Unload Tab***  


![image2021-4-1_13-27-52.png](/.attachments/89588183.png)


Fields:
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Load/Unload Tab</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Carrier</td><td style="text-align: left;" class="confluenceTd">The Carrier the Lot is used for the Operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Event</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Load or Unload</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Lot Quantity Load/Unload from the Carrier</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed By</td><td style="text-align: left;" colspan="1" class="confluenceTd">The user ID perform the Load/Unload Operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed At</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Date Time when the Operation Load/Unload is performed</td></tr></tbody></table>



#### Release Step (Initial Route Step and do the Release Lot) Example


Only display the Unload information in Release Step (MOE/MIE Station).
This is an example of the format of what a Lot Release in Release Step, it will display "Unload" when Lot is release and completed at the Release Step (MOE/MIE Station).
![image2021-4-1_13-48-27.png](/.attachments/89588191.png)





#### MOE/MIE Station Example


Only display the Load/Unload information in Route Step Type (MOE/MIE Station).
This is an example of the format of what a Lot operating in MOE/MIE Station when "Required Unload Action" is off, it will display "Load" only when Lot is completed at the MOE/MIE Station.
![image2021-4-1_13-57-50.png](/.attachments/89588192.png)


This is an example of the format of what a Lot operating in MOE/MIE Station when "Required Unload Action" is on, it will display "Load" when Lot is started and display "Unload" when Lot is completed at the MOE/MIE Station.
![image2021-4-1_13-58-6.png](/.attachments/89588193.png)




#### Attachments

[image2019-4-8_9-14-34.png](/.attachments/89588032.png)
[image2021-3-25_9-12-12.png](/.attachments/89588033.png)
[image2021-3-25_9-12-30.png](/.attachments/89588034.png)
[image2021-3-25_9-12-49.png](/.attachments/89588035.png)
[image2021-3-25_9-21-23.png](/.attachments/89588036.png)
[image2021-3-25_9-21-33.png](/.attachments/89588037.png)
[image2021-3-25_9-24-27.png](/.attachments/89588038.png)
[image2021-3-25_9-53-1.png](/.attachments/89588039.png)
[image2021-3-25_9-53-16.png](/.attachments/89588040.png)
[image2021-3-25_10-12-16.png](/.attachments/89588041.png)
[image2021-3-25_11-27-55.png](/.attachments/89588042.png)
[image2021-4-1_13-24-58.png](/.attachments/89588182.png)
[image2021-4-1_13-27-52.png](/.attachments/89588183.png)
[image2021-4-1_13-29-52.png](/.attachments/89588184.png)
[image2021-4-1_13-33-58.png](/.attachments/89588185.png)
[image2021-4-1_13-34-12.png](/.attachments/89588186.png)
[image2021-4-1_13-34-25.png](/.attachments/89588187.png)
[image2021-4-1_13-34-37.png](/.attachments/89588188.png)
[image2021-4-1_13-35-55.png](/.attachments/89588189.png)
[image2021-4-1_13-36-26.png](/.attachments/89588190.png)
[image2021-4-1_13-48-27.png](/.attachments/89588191.png)
[image2021-4-1_13-57-50.png](/.attachments/89588192.png)
[image2021-4-1_13-58-6.png](/.attachments/89588193.png)
