# Introduction

This function allows boards to be auto breakout from panel at Manual Operation Entry station. \* It is applicable only for Panel.


### How to get there?



::: mermaid
graph LR
A("IFACTORY MS")-->0("STATIONS")
0-->1("STATION LOGIN")
1-->2("MANUAL OPERATION ENTRY")

:::


#### Screen Activity


Manual Operation Entry (MOE) station is used to perform a simple start, complete or abort activity for WIP at a route step.
If the scanned WIP is a Panel, system will based on the configuration to auto breakout the boards from panel. 



#### Pre Condition


The following data needs to be pre-configured before users use this function: 

- Route Step - There must be a MOE route step configured in the route.

- Route Step Type - Selected route step type must belongs to Manual Operation Entry station.

- Auto Breakout - This option must be configured in order to perform this function.

- Panelization - Create panels (associate the WIP in system)


#### Screen Dependency



- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)



#### Process



- Select the Resource


- Select the Route and Route Step (MOE)


- Manual Operation Entry should be enable, select this station



![image2018-6-28_14-46-52.png](/.attachments/29920427.png)



- Upon scanning WIP, system will determine it is in panel. Users will then have the option to Complete or Abort the panel.


- Users have the option to start WIP individually by clicking on one of the WIP in Panel.


![image2018-6-28_14-48-4.png](/.attachments/29920429.png)




- Once users click on "Complete Panel", this function will take place based on the configuration in route step:


- ***Auto Breakout set as N/A***


- Upon clicking "Complete Panel", all the WIP in Panel will remain in Panel and will move to next PASS route step. Information will shown in toaster message.


- Manual breakout of WIP from Panel option will enable and allow users to manually breakout selected WIP in Panel.

Upon clicking "Submit", a confirmation message will be prompt.

- ***Auto Breakout set as All***


- Upon clicking "Complete Panel", all the WIP in Panel will Auto Breakout and each WIP will move to next PASS route step.

Information will shown in toaster message.

- Manual breakout of WIP from Panel option will disable and not allow users to manually breakout the WIP in Panel.






#### Attachments

[image2017-8-29 10:45:59.png](/.attachments/29920404.png)
[image2017-8-29 10:48:15.png](/.attachments/29920405.png)
[image2018-6-28_14-46-34.png](/.attachments/29920426.png)
[image2018-6-28_14-46-52.png](/.attachments/29920427.png)
[image2018-6-28_14-48-4.png](/.attachments/29920429.png)
[image2018-7-11_13-51-43.png](/.attachments/31391878.png)
[image2018-7-11_13-56-35.png](/.attachments/31391879.png)
[image2018-7-11_14-1-49.png](/.attachments/31391880.png)
