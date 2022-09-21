# Introduction



### How to get there?




::: mermaid
graph LR
A("WIP")-->0(" WIP VIEW")
0-->1("HISTORY TAB")
1-->2("OPERATION LINK")

:::


#### Pack/Unpack


WIP Operation View - Pack/Unpack tab allows user to view Container Number that is linked to the WIP at Packout/Overpack Operation.  For Pack operation the event will show as Pack. For Unpack, Unpack All and Scrap the event will be shown as Unpack. 
For Packout (box level), the box container number is shown while f
or Overpack, the overpack (pallet) container number will be shown.
![image2019-3-4_8-31-51.png](/.attachments/44761553.png)


![image2019-3-4_8-32-43.png](/.attachments/44761554.png)




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Operation View</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Serial Number</p></td><td style="text-align: left;" class="confluenceTd"><p>The Serial Number of the WIP</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Route Step</p></td><td style="text-align: left;" class="confluenceTd">The Route Step from the Process Step History</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">The status of the WIP at the Process Step History</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Events Tap</strong></td></tr><tr><td class="confluenceTd">Panel Events :</td><td class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Panel Serial Number</span></td><td colspan="1" class="confluenceTd">The Panel Serial Number Associate the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Breakout Route Step</td><td colspan="1" class="confluenceTd">The Breakout Route Step</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Breakout Date Time</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">The Breakout Date Time</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Pack/Unpack Tab</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Container</td><td style="text-align: left;" class="confluenceTd">The Container Number the WIP is using for the Operation (box at packout / pallet at overpack) </td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Event</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Pack or Unpack</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The WIP quantity packed/unpacked from the Container</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed By</td><td style="text-align: left;" colspan="1" class="confluenceTd">The iD of the user that performed the Pack/Unpack Operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Performed At</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Date Time when the Pack/Unpack Operation was performed</td></tr></tbody></table>




#### Attachments

[image2019-3-4_8-31-51.png](/.attachments/44761553.png)
[image2019-3-4_8-32-43.png](/.attachments/44761554.png)
