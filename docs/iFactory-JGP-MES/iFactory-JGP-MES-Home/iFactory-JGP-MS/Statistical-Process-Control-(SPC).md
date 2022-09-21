# Introduction

Statistical Process Control (SPC) is an industry-standard methodology for measuring and controlling quality during the manufacturing process. Quality data in the form of Product or Process measurements are obtained in real-time during manufacturing.  This data is then plotted on a graph with pre-determined control limits. 
Control limits( LCL-CL-UCL)are determined by the capability of the process, whereas specification limits (LSL-USL)are determined by the client's needs. Data that falls within the control limits indicates that  the process is stable and everything is operating as expected. Any variation within the control limits is acceptable . If data falls outside of the control limits , user can distinguish the root cause as common cause or special cause SPC as a tool to monitor two factors of a production process: 1. stability; 2. capability. The stability of a process is monitored by control chart; the capability of a process is monitored by Ppk/Cpk. ( Ppk - Performance of process index; Cpk -Capability of process index)The data can be in the form of continuous variable data or attribute data.  
JGP eSPC system currently only support data sources such as ifactory , QLMS , MES , manual upload and machine.
The following control charts are available in eSPC.
**Variable data**  

- Xbar-R

- Xbar-S

- I-MR

- Levey-Jennings

- I-MR-R/S

- user-defined chart
**Attribute Data**  

- P, NP

- C, U
Below is the SPC flow that currently support in JGP eSPC.
![image2021-1-25_9-59-37.png](/.attachments/86311181.png)



Refer to the following flow on how SPC retrieve data from data source based on configuration , data capture frequency , subgroup size and retrieving method.

![image2020-12-15_11-48-13.png](/.attachments/84705354.png)



Which data to be retrieved from data source?
<table class="relative-table wrapped confluenceTable" style="width: 47.533%;"><colgroup><col style="width: 23.5432%;" /><col style="width: 76.369%;" /></colgroup><tbody><tr><th class="confluenceTh">Data Source</th><th class="confluenceTh">Remarks</th></tr><tr><td class="confluenceTd">Ifactory</td><td class="confluenceTd"><p>-Retrieve variable and attribute data from Data Collections based on routestep EndDateTime</p></td></tr><tr><td class="confluenceTd">MES</td><td class="confluenceTd"><p>-Retrieve variable and attribute data from Data Collections based on routestep StartDateTime</p></td></tr><tr><td class="confluenceTd">QLMS</td><td class="confluenceTd"><p>-Retrieve only Approved measured result based on FinalApprovalDateTime.</p><p>-Retrieve only variable data</p></td></tr><tr><td colspan="1" class="confluenceTd">Manual</td><td colspan="1" class="confluenceTd">-Manual upload by user.</td></tr><tr><td colspan="1" class="confluenceTd">Machine</td><td colspan="1" class="confluenceTd">-Retrieve variable data from SPI data source based on the configuration</td></tr></tbody></table>



#### Attachments

[image2020-12-3_14-38-54.png](/.attachments/82903859.png)
[image2020-12-14_17-38-18.png](/.attachments/84705294.png)
[image2020-12-15_8-59-0.png](/.attachments/84705352.png)
[image2020-12-15_11-48-13.png](/.attachments/84705354.png)
[image2020-12-17_8-56-29.png](/.attachments/84705409.png)
[image2020-12-17_13-30-28.png](/.attachments/84705414.png)
[image2021-1-25_8-35-56.png](/.attachments/86311179.png)
[image2021-1-25_9-59-37.png](/.attachments/86311181.png)
