# Introduction


Visual Aid is a reference document or work instruction that will be displayed to assist operator with their task. Each Visual Aid contains a link to an externally hosted content and must be configured to be displayed for a material at a certain route step, or using [operation script](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md). The Visual Aid will only be available to the user during its effectivity date. 



### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("VISUAL AID")

:::

Screen Activity
Visual Aid Maintenance enables user to perform the following activity:

- Create, view, update and delete visual aid records

- Configure visual aid effectivity dates

- Configure email notification to user group for new or expiring visual aids



#### Screen Dependency


The following screen(s) has direct dependency with Visual Aid

- *[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)*
(if the Visual Aid is called by the operation script)
- Material Maintenance (Visual Aid tab to assign Visual Aid to Material to Route Step)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Visual Aid Name</p></td><td class="confluenceTd"><p>The unique name given to the visual aid</p></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">The version of the visual aid</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Additional description for the visual aid can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The Customer where this visual aid belongs</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span>The Material where this visual aid belongs</span></td></tr><tr><td colspan="1" class="confluenceTd">URL</td><td colspan="1" class="confluenceTd">The network path or URL beginning with http where the Visual Aid is located.<br />Example: \\alfcorefile9\VisualAid\ManualInsert.pdf </td></tr><tr><td class="confluenceTd">Effective Date From</td><td class="confluenceTd">The start date and time where the visual aid is effective</td></tr><tr><td class="confluenceTd">Effective Date To</td><td class="confluenceTd"><span>The end date and time where the visual aid is effective</span></td></tr><tr><td colspan="1" class="confluenceTd">Auto Open</td><td colspan="1" class="confluenceTd">Configure visual aid to be displayed automatically where it is configured</td></tr><tr><td colspan="1" class="confluenceTd">Days to Force Operator to view Visual Aid</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Configure visual aid to be displayed automatically where it is configured and operator is required to view the Visual Aid before they can proceed with their operation.<em> </em><br /></span></td></tr><tr><td colspan="1" class="confluenceTd">Log Views</td><td colspan="1" class="confluenceTd"><em><span style="color: rgb(0,0,0);">This feature is not available yet</span></em><br /><br />Provides the tracking log of visual aid views. There are three options available:<ul><li>Never - System will never collect information about this visual aid</li><li>Always - System will always log <span>that this visual aid was effective at the time the unit was processed</span></li><li>Always with Sign Off - always log that this visual aid was effective at the time the unit was processed and will prompt the operator to enter their login credentials to verify that this visual aid was viewed. The users credentials will also be recorded</li></ul></td></tr></tbody></table>






- #### Displaying Visual Aids

The following operation screens can display a Visual Aid if it is configured to a Route Step of that screen:

- Assemble Station

- Inspection & Rework Station

- Assemble Validation Station (only displaying visual aid for top level material)

- Packout Station
(only displaying visual aid for top level material)\*
- Manual Inspection Entry Station\*

- Manual Operation Entry Station\*

- Manual Test Station\*

- Pop Depop Station\*

- Manual Operation Entry Station - Lot Workstation\*
(only displaying visual aid for top level material)
- Manual Inspection Entry Station
- Lot Workstation\* (only displaying visual aid for top level material)
- Inspection & Rework Station
- Lot Workstation\* (only displaying visual aid for top level material)
- Packout Station
- Lot Workstation\* (only displaying visual aid for top level material)

\*From version 4.1 onwards**Force View** 
- A forced view Visual Aid is displayed as a popup over the screen and it covers the station screen from any further operation until operator acknowledges that they have read the Visual Aid. ![image2016-7-19 15:8:59.png](/.attachments/29918487.png)



**Auto Open** 
- An auto open Visual Aid is displayed in a standalone window screen separated from the station screen. It allows operator to look at both screens at the same time, either putting the screens side by side or using a dual monitor setup.![image2016-7-19 15:12:56.png](/.attachments/29918486.png)


**Visual Aid Assignment** 

- When a Visual Aid is assigned to a WIP, the Material will be displayed on WIP Start

- When a Visual Aid is assigned to an Assembled Item, the Material will be displayed when the Assembled Item is selected.


- When a Visual Aid is assigned to a Lot/Batch Material, the Visual Aid will be displayed on Lot Start


- **Multiple Visual Aids assigned at same Route Step**


- When multiple Visual Aids are assigned to a Material at the same Route Step, each Visual Aid will be displayed in its own tab within the Force View or Auto Open Visual Aid window.

If multiple forced view Visual Aid is displayed, user is required to click on each visual aid tab to read them before they can click the acknowledgement that they have read the visual aid. A read visual aid will be marked with a 
![image2017-8-4 13:58:38.png](/.attachments/29918482.png)


while an unread visual aid will be marked a
s ![image2017-8-4 13:58:30.png](/.attachments/29918483.png)



![image2017-8-4 13:58:0.png](/.attachments/29918484.png)





#### Attachments

[image2017-8-4 13:58:38.png](/.attachments/29918482.png)
[image2017-8-4 13:58:30.png](/.attachments/29918483.png)
[image2017-8-4 13:58:0.png](/.attachments/29918484.png)
[image2016-7-19 15:13:48.png](/.attachments/29918485.png)
[image2016-7-19 15:12:56.png](/.attachments/29918486.png)
[image2016-7-19 15:8:59.png](/.attachments/29918487.png)
