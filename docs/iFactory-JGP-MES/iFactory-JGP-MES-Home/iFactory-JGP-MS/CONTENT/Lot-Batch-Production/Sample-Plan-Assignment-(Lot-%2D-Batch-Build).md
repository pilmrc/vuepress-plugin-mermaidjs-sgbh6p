# Introduction

**Sampling** 
- In 
[statistics](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build).md)
, 
[quality assurance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build).md)
, and 
[survey methodology](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build).md)
, 
**sampling** is concerned with the selection of a subset of individuals from within a 
[statistical population](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build).md)
to estimate characteristics of the whole population. Each 
[observation](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Sample-Plan-Assignment-(Lot-%2D-Batch-Build).md)
measures one or more properties (such as weight, location, color) of observable bodies distinguished as independent objects or individuals. (excerpt from Wikipedia)

![Simple_random_sampling.png](/.attachments/29918037.png)



During manufacturing processes of high volume, high yield materials, it is common to not inspect each and every material. It is however a common practice to define a Population (sample domain) and Sample (sample size) so that only a portion of the materials are actually inspected. There are a number of means to define a sampling process, some are very simple, while others can become very complex. For the Lot / Batch Build process the vision is to implement MIL-STD-105E for "Single Sampling Plans for Normal", 
"Single Sampling Plans for Tightened", and "Single Sampling Plans for Reduced". Due to project time constraints a very simple implementation for sampling is to be introduced. The basic premise is that an Administrator is able to define for a route step by Customer, or overridden by a Material, the sample size to inspect from the Lot. When an inspection operation is to be preformed, if a Sampling Plan Assignment is configured for the route step, the user is presented with the inspection screen and is only required to sample a subset of the lot present according to the configuration. This basically defines the Lot as the Domain, and the Sample Qty the value the Administrator configures. This initial simple implementation uses fix values, it does not address variable Lot sizes, does not increase or decrease sample sizes based on actual quality. There are issues with this method, the static nature can be a challenge as lot sizes vary, or quality level vary, but it is a simple means to limit the inspection to a manageable level until the AQL tables and automated processes can be implemented.      


### How to get there?


To create a sampling plan:

::: mermaid
graph LR
A("SAMPLE PLAN ASSIGNMENT")-->0("CREATE SAMPLE PLAN ASSIGNMENT")

:::
To edit or delete a sampling plan:

::: mermaid
graph LR
A("SAMPLE PLAN ASSIGNMENT")-->0("UPDATE SAMPLE PLAN ASSIGNMENT")

:::


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Sample Plan Assignment

- Customer / Division exists

- Material exists

- Route and Route Step exists



#### Screen Dependency


The Sample Plan has only been developed to support the Lot / Batch Build process Manual Inspection Entry Station.




#### Attachments

[Simple_random_sampling.png](/.attachments/29918037.png)
