# Introduction

Phoenix Client is the interface for user to process WIPs in the route.  
Once the Phoenix Client package is downloaded, open the folder and locate the Phoenix Client icon below to run.

User will be prompted to select a site and login using either their Jabil Windows account or Phoenix Client account. Upon successful login, user is required to choose a Route, Route Step and Station to begin. User will either scan a WIP or search a WIP to start. Once started, the configured 
[Phoenix Client script](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting.md)will be executed.


### **Phoenix Client launch icon** 


![image2013-2-13 12:7:45.png](/.attachments/29920091.png)







#### **Phoenix Client interface** 

![image2013-2-13 12:25:29.png](/.attachments/29920090.png)

















#### How to get there?





::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("DOWNLOAD PHOENIX CLIENT")

:::


#### Precondition



- System installing Phoenix Client must have Microsoft XP (Service Pack 3) and Microsoft .NET Framework 4.0 installed


- User must have access to Phoenix Client. User can login using using Jabil Windows account or Phoenix Client account provided by the administrator



#### Precondition to start a WIP in Phoenix client



- Route, Route Step and Station must be pre-configured

- Certification must be pre-configured if require Phoenix Client to check for certification validity

- Script(s) must be associated for the material at the selected route/route step in
[Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)
- The WIP must exist and in queue in the selected route/route step

Screen Activity
This screen enables user to perform the following activity:

- Download the latest version of Phoenix Client

- Create, view, update and delete Phoenix Client release notes



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="DownloadPhoenixClient-MainTab"><strong>Main Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description </strong></p></td></tr><tr><td class="confluenceTd"><p>Download Latest version button</p></td><td class="confluenceTd"><p>Downloads the latest version of Phoenix Client</p></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd"><p>Phoenix Client Version</p></td></tr><tr><td colspan="1" class="confluenceTd">Release Notes</td><td colspan="1" class="confluenceTd">Contains notes on enhancements or fixes for the Phoenix Client version<br /><br /></td></tr><tr><td colspan="1" class="confluenceTd">Added On</td><td colspan="1" class="confluenceTd">The date time where the version is released for downloads</td></tr></tbody></table>





#### Attachments

[image2013-2-13 12:25:29.png](/.attachments/29920090.png)
[image2013-2-13 12:7:45.png](/.attachments/29920091.png)
