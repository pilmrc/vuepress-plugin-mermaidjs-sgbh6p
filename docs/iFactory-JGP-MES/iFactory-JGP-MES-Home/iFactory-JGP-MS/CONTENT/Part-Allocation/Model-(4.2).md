# Introduction

Model
screen is used to create a new Model or to retrieve information of Model previously created for a Manufacturer Feeder. The Model name cannot be greater than 100 chars.


### How to get there?



![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


![image2017-9-4 12:16:0.png](/.attachments/29919237.png)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("MODEL")

:::


#### Screen Activity


Model screen enables user to perform the following activity:

- Create, view, update Model



#### Post Condition


Model is required to create a new Feeder/Tray.


#### Screen Dependency


The following screen(s) has dependency with Model:

- [Feeder/Tray](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Feeder%2DTray.md)
![image2017-7-3 16:15:34.png](/.attachments/29919238.png)




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Model Name</p></td><td class="confluenceTd"><p>The name of the model. Should not already exist in the system.</p></td></tr><tr><td class="confluenceTd"><p>Manufacturer</p></td><td class="confluenceTd"><p>Manufacturer name created in <a href="29919230.html">Manufacturer </a>screen</p></td></tr></tbody></table>

**Model cannot be deleted if already associated to a Manufacturer or a Feeder.** 





#### Attachments

[image2017-9-4 12:16:0.png](/.attachments/29919237.png)
[image2017-7-3 16:15:34.png](/.attachments/29919238.png)
[image2017-5-26 16:37:20.png](/.attachments/29919239.png)
[image2017-7-3 16:11:57.png](/.attachments/29919240.png)
