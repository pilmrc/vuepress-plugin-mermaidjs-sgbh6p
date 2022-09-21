# Introduction

WIP real-time recording purpose


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("LiveWioCount")

:::
![image2021-2-26_15-42-37.png](/.attachments/88113375.png)




#### **Screen Activity** 


The ReleasedWIPs Report allows the following activity:

- Show a list of WIPs match with scan in route step, means has operation history.

- View results in the grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the LiveWipCount Report:


- WIPs scan in route step.
![image2021-2-26_15-46-13.png](/.attachments/88113376.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Customer(s).</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Division(s). Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">Default to All. .</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Route</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Family</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">LiveDate</td><td colspan="1" class="confluenceTd">Can select live date</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">The WIP's factory</td></tr><tr><td colspan="1" class="confluenceTd">Route Name</td><td colspan="1" class="confluenceTd">The WIP's route.</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">The WIP's MA</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The WIP's route step.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The WIP's resource</td></tr><tr><td colspan="1" class="confluenceTd">WIPCOUNT</td><td colspan="1" class="confluenceTd">Total number of WIPs on the route step.</td></tr></tbody></table>

**The WIP’s assembly** 
FactoryThe WIP’s factoryRoute NameThe WIP’s route.MAThe WIP’s MARoute StepThe WIP’s route step.ResourceThe WIP’s resourceWIPCOUNTTotal number of WIPs on the route step.

#### Report Fields - Detail


![image2022-8-12_15-0-22.png](/.attachments/122750901.png)



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">The WIP's factory</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The WIP's route.</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">The WIP's MA</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The WIP's route step.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The WIP's resource</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's SN</td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>The operator of route steps</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/122750903.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/122750903.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="122750903" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-8-12-15-3-49.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="88113360" data-linked-resource-container-version="2" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Queue Start Time</td><td colspan="1" class="confluenceTd">The WIP's start time</td></tr></tbody></table>

**The WIP’s assembly** 
FactoryThe WIP’s factoryRouteThe WIP’s route.MAThe WIP’s MARoute StepThe WIP’s route step.ResourceThe WIP’s resourceSerial NumberThe WIP’s SNOperatorThe operator of route steps
![image2022-8-12_15-3-49.png](/.attachments/122750903.png)


Queue Start Time
The WIP’s start time

#### Attachments

[image2021-2-26_15-33-27.png](/.attachments/88113361.png)
[image2021-2-26_15-20-25.png](/.attachments/88113362.png)
[image2021-2-26_15-15-33.png](/.attachments/88113363.png)
[image2020-5-18_16-20-22.png](/.attachments/88113364.png)
[image2020-5-18_16-16-17.png](/.attachments/88113365.png)
[Smaller.jpg](/.attachments/88113366.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/88113367.jpg)
[image2013-7-9 13:37:43.png](/.attachments/88113368.png)
[image2013-7-9 13:36:46.png](/.attachments/88113369.png)
[image2013-7-9 13:35:13.png](/.attachments/88113370.png)
[image2020-3-25_14-6-43.png](/.attachments/88113371.png)
[image2020-3-25_14-18-49.png](/.attachments/88113372.png)
[image2020-12-16_14-30-6.png](/.attachments/88113373.png)
[image2020-12-16_14-38-23.png](/.attachments/88113374.png)
[image2021-2-26_15-42-37.png](/.attachments/88113375.png)
[image2021-2-26_15-46-13.png](/.attachments/88113376.png)
[image2021-2-26_15-51-43.png](/.attachments/88113377.png)
[image2022-8-12_15-0-22.png](/.attachments/122750901.png)
[image2022-8-12_15-3-49.png](/.attachments/122750903.png)
