# Introduction

**Sampling** 
- In [statistics](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
, [quality assurance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
, and [survey methodology](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
, **sampling** is concerned with the selection of a subset of individuals from within a [statistical population](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
to estimate characteristics of the whole population. Each [observation](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Sampling.md)
measures one or more properties (such as weight, location, color) of observable bodies distinguished as independent objects or individuals. (excerpt from Wikipedia)
![](/.attachments/36966483.png)



During manufacturing processes of high volume, high yield materials, it is common to not inspect each and every material. It is however a common practice to define a Population (sample domain) and Sample (sample size) so that only a portion of the materials are actually inspected. There are a number of means to define a sampling process, some are very simple, while others can become very complex. The vision is to implement MIL-STD-105E for "Single Sampling Plans for Normal", "Single Sampling Plans for Tightened", and "Single Sampling Plans for Reduced". The basic premise is that an Administrator is able to define for a route step by Customer, or overridden by a Material, the sample size to inspect from the batch of WIP/ Lot. When an inspection operation is to be preformed, if a Sample Plan Assignment is configured for the route step, the user is presented with the inspection screen and is only required to sample a subset of the batch WIP/ Lot present according to the configuration. 
Route Step defined as Sampling station type is NOT allowed to be set as "Is Pull Step". This is also applicable to the Lot Batch. 
![](/.attachments/36966485.png)




### How to get there?


To create/edit sample plan:

::: mermaid
graph LR
A("QUALITY")-->0("SAMPLE PLAN")

:::


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Sample Plan Assignment

- Customer / Division

- Batch Tag Name

- Assembly

- Material

- Route and Route Step


#### Screen Dependency


This is supporting for Lot/Batch and Repetitive Build process.


#### Attachments

[Simple_random_sampling.png](/.attachments/36966483.png)
[image2018-11-8_17-44-47.png](/.attachments/36966484.png)
[image2018-11-8_17-45-38.png](/.attachments/36966485.png)
