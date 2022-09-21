# Introduction

Pre-start rules determine if a WIP item can be started at a given operation. This rule is capable of placing a board on hold, preventing the start of an operation and attaching an attribute to a WIP item. Pre-start rules can be access by using the 
**“route maintenance”**  screen, choosing a **“route name”** , selecting the **“route designer”**  tab then double clicking on the operation under consideration. 

### How to get there?




::: mermaid
graph LR
A("ROUTE")-->0("ROUTE DESIGNER")
0-->1("EDIT BUTTON")
1-->2("PRE-START RULE TAB")

:::
![image2019-7-10_18-16-43.png](/.attachments/51872173.png)




#### Screen Activity


Pre-start rule enables end users to perform the following activities:

- View, Add, Edit and Delete Pre-Start Rules and their parameters

- Arrange Pre-Start Rules by priority


#### Screen Dependency


The following screen(s) have a direct dependency with the pre-start rules package.

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)


#### Pre Condition




The following data needs to be pre-configured (if used) before an end user configures the pre-start rules package.

- Material's Product Family and Customer

- Route and Route Step


#### Fields/Functions


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field Name</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Priority</p></td><td class="confluenceTd"><p>Priority to execute each rule. The smaller the number, the higher the priority, the earlier the verification will be executed.</p></td></tr><tr><td class="confluenceTd"><p>Rule Type</p></td><td class="confluenceTd"><p>Identifier of each rule type.</p></td></tr><tr><td class="confluenceTd"><p>Rule Name</p></td><td class="confluenceTd"><p>User specified name for each configured Pre-Start Rule. Needs to be unique in a Route Step. Same Rule Type must be separate by different Rule Names.</p></td></tr><tr><td colspan="1" class="confluenceTd">Application Scope</td><td colspan="1" class="confluenceTd">Determines whether the configured parameter needs to be executed against current WIP</td></tr><tr><td colspan="1" class="confluenceTd">Verification Parameter</td><td colspan="1" class="confluenceTd">Required input parameter to execute a Pre-Start Rule.</td></tr></tbody></table>




#### Pre-Start Rules available by Route Process Type


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Pre-Start Rule</th><th class="confluenceTh">BTO/CTO</th><th class="confluenceTh">Repetitive</th><th class="confluenceTh">Lot Production</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Assembles Point Checkpoint Required</span></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Basic Random Sampling</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Check Wip Count to Start</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Consecutive Fail Loop Count Limit</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Consecutive Process Loop Count Limit</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">External API Call</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Genealogy CheckPoint</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Install Setup Required</span></p></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Material Checkpoint</span></p></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Material Checkpoint Required</span></p></td><td style="text-align: center;" class="confluenceTd"><br /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Non Consecutive Process Loop Count Limit</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Don't Allow Open Defect (formerly Open Defect Prestart Rule)</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Require WIP Attribute</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Validate Mask Rule</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">WIP CheckPoint Required</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Time Interval between 2 steps</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Sequential Route Step Loop Count Limit</span></p></td><td style="text-align: center;" colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd">UPD Required</td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area CheckPoint</td><td colspan="1" class="confluenceTd"><br /></td><td style="text-align: center;" colspan="1" class="confluenceTd"><img class="emoticon emoticon-tick" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/check.svg&$format=octetStream" data-emoticon-name="tick" alt="(滴答)" /></td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table>









Don’t Allow Open Defect (formerly Open Defect Prestart Rule)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
Require WIP Attribute
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
Validate Mask Rule

![image2019-7-10_18-16-43.png](/.attachments/check.svg)

WIP CheckPoint Required
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)

Time Interval between 2 steps
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)
Sequential Route Step Loop Count Limit

![image2019-7-10_18-16-43.png](/.attachments/check.svg)

UPD Required![image2019-7-10_18-16-43.png](/.attachments/check.svg)
![image2019-7-10_18-16-43.png](/.attachments/check.svg)

Manufacturing Area CheckPoint
![image2019-7-10_18-16-43.png](/.attachments/check.svg)


System Built-In Pre-Start Rules
There are a collection of rules that checks every operation without any configuration needed.

- **Check WIP In Queue or Arrived**
: In order to start a particular WIP item at a route step operation, the WIP must be in-queue or arrived at an operation. The only exception to this rule is if a route step has been configured as a **“pull operation”** which allows any item to start on a route step. Before any pre-start rule evaluation begins, a WIP item is verified as being **“in queue”** or **“arrived”** at an operation. If the WIP isn’t in these two states, the pre-start rule is not executed.
- **Check Route Step Required Certifications**
: The following certifications will also be checked before allowing a WIP ID to start at a particular route step, regardless of a configured pre-start rule:
- The end user must possess a valid certification required to perform a given route operation.

- The assigned resource must possess a valid certification required to be used (i.e. a valid certification certificate).

- The user must possess a valid certifications required to perform an operation regarding a given material.

- **WIP Hold Check**
: The WIP hold status is checked before starting a WIP at a given operation.
- **WIP Future Hold Check**
: If a future WIP hold has been set for a WIP, the item is placed on hold and the start request is rejected. 

#### Manual Configurable Pre-Start Rules


This is a list of all Pre-Start Rules available to be manually configured:

- Assemble Point Checkpoint Required

- Basic Random Sampling

- Check WIP Count To Start

- Consecutive Process Loop Count Limit

- Consecutive Fail Loop Count Limit


- Non Consecutive Process Loop Count Limit

- External API Call

- Genealogy Checkpoint

- Install Setup Required

- Material Checkpoint

- Open Defects Prestart Rule

- Require WIP Attribute

- Validate Mask Rule

- WIP Checkpoint Required

- Material CheckPoint Required

- Time Interval between two operations


- Sequential Route Step Loop Count Limit


- UPD Required


- Manufacturing Area CheckPoint



#### Adding a Pre-Start Rules Record


Press on 
![image2019-7-10_18-18-32.png](/.attachments/51872175.png)


to allow the end user to add multiple rule types into an operation. A 
**pre-start priority** allows end users to define sequences and rule execution if multiple pre-start rules are configured. A numerically lower rule is evaluated first and zero is the highest priority a rule can be assigned. The **rule type** allows a team member to specify logic that is used to evaluate a rule. A **rule name** permits an end user to specify a simple name that can be used as a reference to a rule at a given route step. The **rule name** is a unique identifier of a rule for a given operation since it’s possible the same rule type could be used more than once at a given operation. Every single rule can be inactivated, so at runtime not executed, even if the configuration is present. Configuring a new rule partially (not adding parameter) is forcing to same the rule as inactive.
![image2019-7-10_18-17-58.png](/.attachments/51872174.png)




#### Rule Parameters


Each Pre-Start Rule can contain multiple Parameters. Each parameter typically consists of 2 portions. The first portion is the Application Scope, which tells the system whether the started WIP needs to be checked against the parameter. The second part is the Verification parameters, which are commonly information required as input for the verification of the current Pre-Start Rule, although in some cases they also serves as the input for an action to be taken against the WIP (E.g. destination of which to move a WIP in case it failed the Pre-Start Rule). Each Pre-Start Rule has its own Application Scope and Verification Parameter values. Here's a sample of a typical Rule Parameter configuration screen.
![image2019-7-10_18-21-13.png](/.attachments/51872176.png)




#### Application Scope


Application scope tells whether the started WIP needs to be checked against the parameter. Typically application scope contains 3 fields: "Customer", "Product Family" and "Material + Plant Code". In each parameter, only one of the 3 fields need to be configured. Configuring more than 1 fields serves no purpose other than using the broader scope field to narrow down the selection in the narrower scope field. E.g. If user select the "Customer", only Product Family and Material that belongs to the selected Customer will be available for selection for those 2 fields.
**Blank Scope Applies to all WIPs -**  
Many rules allow all 3 fields to be left as blank within a scope, which means that the parameter would apply to all WIPs regardless of the Customer, Product Family or Material of the WIPs. Different rules contain different Application Scope. Not all of them contain all the 3 fields stated above, depending on the design of the Pre-Start Rule.


#### Parameters Inter-relationship


Parameters can behave differently with each other under different rules. Generally they behave in 2 different ways

- Mutually Exclusive. In this form, out of all available parameters, only 1 shall ultimately be used to verify the Pre-Start Rule against the started WIP. System shall determine which one by following the 3 Tier Hierarchical Scope Priority Rules.

- Apply All. In this form, out of all available parameters, multiple parameters can be used to verify the Pre-Start Rule against the started WIP. System shall run all parameters. Only if all parameters are verified pass that the rule is successfully verified.

3 Tier Hierarchical Scope Priority Rules
In a scenario where there are multiple parameters applying to the started WIP in a Mutual Exclusive relationship, system need to choose the parameter that contains the narrowest application scope as the parameter to check the started WIP. 

E.g. 4 parameters is configured for a Pre-Start Rule. Parameter A have all 3 fields left blank, which means the parameter applies to all WIPs. Parameter B has Customer configured, Parameter C has Product Family configured and Parameter D has Material configured. In terms of scope from broadest to narrowest we have Parameter A " B " C " D. If a started WIP matches all 4 parameters, system will choose parameter with the narrowest scope which is Parameter D to run the verification.


#### Attachments

[Rule Parameters.PNG](/.attachments/29920005.png)
[image2013-5-14 10:40:20.png](/.attachments/29920006.png)
[image2013-5-14 10:39:49.png](/.attachments/29920007.png)
[image2013-5-14 10:38:35.png](/.attachments/29920008.png)
[image2013-5-14 10:38:12.png](/.attachments/29920009.png)
[image2013-5-14 10:38:3.png](/.attachments/29920010.png)
[image2013-5-14 10:35:50.png](/.attachments/29920011.png)
[image2013-4-14 11:7:54.png](/.attachments/29920012.png)
[image2013-4-14 10:43:22.png](/.attachments/29920013.png)
[image2013-4-14 10:7:29.png](/.attachments/29920014.png)
[image2013-4-14 9:29:35.png](/.attachments/29920015.png)
[image2013-4-14 9:6:13.png](/.attachments/29920016.png)
[image2013-4-14 8:4:46.png](/.attachments/29920017.png)
[image2013-4-14 7:48:46.png](/.attachments/29920018.png)
[image2013-4-14 7:29:39.png](/.attachments/29920019.png)
[image2013-4-14 6:29:36.png](/.attachments/29920020.png)
[image2013-4-14 5:29:52.png](/.attachments/29920021.png)
[image2019-7-10_18-16-43.png](/.attachments/51872173.png)
[image2019-7-10_18-17-58.png](/.attachments/51872174.png)
[image2019-7-10_18-18-32.png](/.attachments/51872175.png)
[image2019-7-10_18-21-13.png](/.attachments/51872176.png)
