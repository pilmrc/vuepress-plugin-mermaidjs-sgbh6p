# Introduction

When exposed to air, different materials exhibits different sensitivity to moisture. Excessive moisture absorption may cause cracking and damage on the material at SMT reflow. For time sensitive materials (TSM) in Phoenix, we will need to configure its moisture classification level in 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md). With that, we will be able to know the maximum exposure time before the material needs to be baked or discarded. ![image2013-2-13 11:21:2.png](/.attachments/29919466.png)


Source: 
[IPC/JEDEC J-STD-020D.1](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Moisture-Classification.md)

### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("MOISTURE CLASSIFICATION")

:::

Screen Activity
Moisture Classification Maintenance enables user to perform the following activity:

- Create, view, update and delete moisture classification



#### Screen Dependency


The following screen(s) has direct dependency with Moisture Classification

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)



#### Fields



<table class="wrapped confluenceTable"><colgroup><col style="width: 232.0px;" /><col style="width: 717.0px;" /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="MoistureClassification-MainTab"><strong>Main Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Moisture Classification</p></td><td class="confluenceTd"><p>The unique name given to the moisture classification</p></td></tr><tr><td colspan="1" class="confluenceTd">Unlimited Floor Life</td><td colspan="1" class="confluenceTd"><p>If checked, then it will have an unlimited floor life up to 9999999 hours<br />If unchecked, user needs to define the acceptable exposure time </p></td></tr><tr><td colspan="1" class="confluenceTd">Default Value For SAP Integration</td><td colspan="1" class="confluenceTd">Usually Moisture Classification comes from Certificate Type in SAP，in case SAP add a new value but is not maintained in iFactory in advance，once material synchronize and Certificate Type mismatch with existing iFactory Moisture Classification，will set the Moisture Classification as the highest grade to avoid quality issue，since the highest grade may be different for different sites，in order to flexibly adapt to different sites situation use configurable default value instead of fixed one，suppose this default value should be configured as the highest grade moisture classification in current site actual production situation</td></tr><tr><td colspan="1" class="confluenceTd">Acceptable Exposure Time (Hours)</td><td colspan="1" class="confluenceTd">The maximum time in hours where the material can be exposed to the environment<br />If acceptable exposure time is set to 0 (zero) hours, then the material requires mandatory baking before its usage<br /><br /></td></tr></tbody></table>





Additional References


- [Moisture/Reﬂow Sensitivity Classiﬁcation for Nonhermetic Solid State Surface Mount Devices (IPC/JEDEC J-STD-020D.1](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Moisture-Classification.md)
)



#### Attachments

[image2013-2-13 11:21:2.png](/.attachments/29919466.png)
[image2013-2-13 11:0:35.png](/.attachments/29919467.png)
[image2013-2-13 10:58:59.png](/.attachments/29919468.png)
[image2022-4-20_13-26-36.png](/.attachments/113770824.png)
