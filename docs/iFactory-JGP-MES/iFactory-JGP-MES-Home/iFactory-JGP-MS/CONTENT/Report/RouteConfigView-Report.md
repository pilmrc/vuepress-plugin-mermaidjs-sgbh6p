# Introduction

This report can show route configuration.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("RouteConfigView")

:::
![image2021-3-4_15-31-1.png](/.attachments/88113509.png)




#### **Screen Activity** 


The RouteConfigView Report allows the following activity:

- Show all Route Configuration.

- View results in the grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before the user runs the RouteConfigView Report:


- Route configuration needs to be done.
![image2021-3-4_15-36-55.png](/.attachments/88113510.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Customer(s).</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Division(s). Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Default to All.</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The customer</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The division</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The assembly's material.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The route's assembly</td></tr><tr><td colspan="1" class="confluenceTd">Route </td><td colspan="1" class="confluenceTd">The route </td></tr><tr><td colspan="1" class="confluenceTd">Route Step Type</td><td colspan="1" class="confluenceTd">The route step's route step type </td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route's route step.</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The route's resource.</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">All resource's MA</td></tr></tbody></table>

**The assembly’s material.** 
AssemblyThe route’s assemblyRoute The route Route Step TypeThe route step’s route step type Route StepThe route’s route step.ResourceThe route’s resource.MAAll resource's MA

#### Attachments

[image2021-2-26_15-51-43.png](/.attachments/88113492.png)


















