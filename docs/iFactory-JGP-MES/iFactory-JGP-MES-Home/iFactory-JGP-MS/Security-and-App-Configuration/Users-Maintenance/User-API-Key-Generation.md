# Introduction

This function allows generating/showing service account’s API key. Normal User account is not applicable to generate/show API key.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("Users")

:::
**Edit Service Account** 



::: mermaid
graph LR
A("Show API Key")
:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow To Configure User’s API Key” permission to allow user to generate/view service account’s API key.


#### Screen Activity


The screen allows generate/view on service account’s API key.



#### Pre-Condition


Service Account configured in user screen.


#### Screen Dependency



- [Users](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance.md)



#### User's API Key Interface


![image2020-2-25_12-25-46.png](/.attachments/66093472.png)




#### User's API KeyFields:


<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field/Icon</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">API Key</td><td style="text-align: left;" class="confluenceTd">Only selected account belong to service account record is able to click on Show API Key button in order to generate/showing it's api key.</td></tr></tbody></table>

Only selected account belong to service account record is able to click on Show API Key button in order to generate/showing it’s api key.


#### Attachments

[image2020-1-23_11-23-6.png](/.attachments/66093465.png)






