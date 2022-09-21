# Introduction

This function allows boards to be auto breakout from panel at Manual Inspection Entry station. \* It is applicable only for Panel.


### How to get there?



::: mermaid
graph LR
A("IFACTORY MS")-->0("STATIONS")
0-->1("STATION LOGIN")
1-->2("MANUAL INSPECTION ENTRY")

:::


#### Screen Activity


Manual Inspection Entry (MIE) station allow users to inspect a WIP and place a defect if it is non conforming. 
If the scanned WIP is a Panel, system will based on the configuration to auto breakout the boards from panel. 



#### Pre Condition


The following data needs to be pre-configured before users use this function: 

- Route Step - There must be a MIE route step configured in the route.

- Route Step Type - Selected route step type must belongs to Manual Inspection Entry station.

- Auto Breakout - This option must be configured in order to perform this function.

- Panelization - Create panels (associate the WIP in system)


#### Screen Dependency



- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization.md)



#### Process



- Select the Resource


- Select the Route and Route Step (MIE)


- Manual Operation Entry should be enable, select this station



![image2018-7-11_15-13-15.png](/.attachments/31391891.png)




- Upon scanning WIP, system will determine it is in panel. Users will then have the option to Complete or Abort the panel.


- Users have the option to start WIP individually by clicking on one of the WIP in Panel.


![image2018-7-11_15-16-8.png](/.attachments/31391892.png)




- Once users click on "Complete Panel", this function will take place based on the configuration in route step:


- ***Auto Breakout set as N/A***


- Upon clicking "Complete Panel", all the WIP in Panel will remain in Panel and will move to next PASS route step. Information will shown in toaster message.


- Manual breakout of WIP from Panel option will enable and allow users to manually breakout selected WIP in Panel.

Upon clicking "Submit", a confirmation message will be prompt.

- ***Auto Breakout set as All***


- Upon clicking "Complete Panel", all the WIP in Panel will Auto Breakout and each non-defect WIP will move to next PASS route step, whereas each defect WIP will move to next FAIL route step. Information will shown in toaster message.


- Manual breakout of WIP from Panel option will disable and not allow users to manually breakout the WIP in Panel.


- ***Auto Breakout set as Defect Only***


- Upon clicking "Complete Panel", only the defect WIP in Panel will Auto Breakout from the Panel and move the WIP to next FAIL route step. The non-defect WIP will retain in panel and move it to next PASS route step. Information will shown in toaster message.


- Manual breakout of WIP from Panel option will disable and not allow users to manually breakout the WIP in Panel.






#### Attachments

[image2018-6-28_14-46-52.png](/.attachments/31391889.png)
[image2018-6-28_14-48-4.png](/.attachments/31391890.png)
[image2018-7-11_15-13-15.png](/.attachments/31391891.png)
[image2018-7-11_15-16-8.png](/.attachments/31391892.png)
