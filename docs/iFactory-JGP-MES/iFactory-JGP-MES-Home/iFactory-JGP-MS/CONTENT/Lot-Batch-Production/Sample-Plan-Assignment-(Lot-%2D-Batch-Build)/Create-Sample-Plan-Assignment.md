# Introduction


This configuration screen is used to define a Sample Size for all materials for a Customer at a specific Route and Route Step. Optionally, a specific Customer's material at a Route and Route Step may be defined. If materials for a Customer and Customer's specific Material are defined, then the Customer's specific Material definition overrides the less specific materials for a Customer definition. The basics of the configuration are simple, define Customer/Division, Material (optionally), Route, Route Step and Sample Size.  The results of this manual configuration is that when at a inspection station and a Carrier with a Lot of items arrive the user will be asked to inspect a portion of the lot according to the Sample Size defined here. If the lot size is equal to or larger than the Sample Size the user will be instructed to inspect the number of items defined by the Sample Size. If the Lot size is smaller than the Sample size then user will be asked to Inspect the entire Lot as the sample size will effectively be reduces to the Lot size and be a 100% inspection in that specific case as one can't inspect more items than exist.  

![Create Sample Plan Assignment.png](/.attachments/29918040.png)



Sample Plan Configuration with the 
acceptable quality limit (
AQL) (Coming Soon..)![image2017-10-23 14:51:28.png](/.attachments/29918039.png)




### How to get there?



::: mermaid
graph LR
A("SAMPLE PLAN ASSIGNMENT")-->0("CREATE SAMPLE PLAN ASSIGNMENT")

:::


#### Screen Activity


Create Sample Plan Assignment enables user to perform the following activity:

- Manually define a Sample Plan for all Materials of a specific Customer / Division at a Route and Route Step

- Manually define a Sample Plan for specific Materials of a specific Customer / Division at a Route and Route Step



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures 
Create Sample Plan Assignment
- Customer / Division must exist

- Route and Route Step must exist

- Material must exist

- Station configuration for Inspection is of Station Type = 'Manual Inspection Entry'



#### Screen Dependency


Manual Station Login

- Manual Inspection Entry

- Sampling (Coming Soon...)




#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Customer<span style="color: rgb(255,255,255);">-</span>/<span style="color: rgb(255,255,255);">-</span>Division</p></td><td class="confluenceTd"><p>The Name of the Customer and Division that requires a Sample Plan.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Name of the Material that requires a Sample Plan. This field is optional, if this field is defined and another entry for the same Customer / Division, Route, and Route Step this sample size will override the other configuration. (Optional)</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>The Route that has a Process Type of 'Lot / Batch Build' where materials are to be built and inspected by a Sample Plan</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>The Route Step that is defined as an Inspection Station with a Station Type of <span>'Manual Inspection Entry' or 'Sampling'</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Size</td><td colspan="1" class="confluenceTd">The number of items that are intended to be inspected by Sampling</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Scheme</td><td colspan="1" class="confluenceTd">The type of AQL Standard to calculate the sample size. ANSI-Z1-4-2008, ISO-2859, MIL-STD-105E, MIL-STD-1916 (Coming Soon..)</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Level</td><td colspan="1" class="confluenceTd">A list of Inspection Level based on the selected Inspection Scheme. A higher Inspection level corresponds to a larger sample size (Coming Soon..)</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Severity</td><td colspan="1" class="confluenceTd"><span>The severity for Inspection Scheme, such as Normal, Reduced, Tightened.<span>(Coming Soon..)</span></span></td></tr><tr><td colspan="1" class="confluenceTd">AQL Level</td><td colspan="1" class="confluenceTd">A list of AQL level based on the selected Inspection Scheme. For example, 0.1, 4, etc.<span>(Coming Soon..)</span></td></tr></tbody></table>

_
/_
DivisionThe Name of the Customer and Division that requires a Sample Plan.
Material
The Name of the Material that requires a Sample Plan. This field is optional, if this field is defined and another entry for the same Customer / Division, Route, and Route Step this sample size will override the other configuration. (Optional)
Route
The Route that has a Process Type of 'Lot / Batch Build' where materials are to be built and inspected by a Sample Plan
Route StepThe Route Step that is defined as an Inspection Station with a Station Type of 
'Manual Inspection Entry' or 'Sampling'Sample SizeThe number of items that are intended to be inspected by SamplingInspection SchemeThe type of AQL Standard to calculate the sample size. ANSI-Z1-4-2008, ISO-2859, MIL-STD-105E, MIL-STD-1916 (Coming Soon..)Inspection LevelA list of Inspection Level based on the selected Inspection Scheme. A higher Inspection level corresponds to a larger sample size (Coming Soon..)Inspection SeverityThe severity for Inspection Scheme, such as Normal, Reduced, Tightened.(Coming Soon..)AQL LevelA list of AQL level based on the selected Inspection Scheme. For example, 0.1, 4, etc.(Coming Soon..)

#### Attachments

[image2017-10-23 14:51:28.png](/.attachments/29918039.png)
[Create Sample Plan Assignment.png](/.attachments/29918040.png)
