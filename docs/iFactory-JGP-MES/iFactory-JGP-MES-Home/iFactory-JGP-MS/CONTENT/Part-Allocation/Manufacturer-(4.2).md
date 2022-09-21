# Introduction

Manufacturer screen is used to create a new Manufacturer or to retrieve information of Manufacturer previously created for a Feeder. The manufacturer name cannot be greater than 100 chars.



### How to get there?



![image2017-9-4 12:15:40.png](/.attachments/29919231.png)


![image2017-9-4 12:15:40.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("MANUFACTURER")

:::


#### Screen Activity


Manufacturer screen enables user to perform the following activity:

- Create, view, update Manufacturer



#### Post Condition


Manufacturer is required to create a new Feeder/Tray.


#### Screen Dependency


The following screen(s) has dependency with Manufacturer:

- [Feeder/Tray](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Feeder%2DTray.md)

- [Model (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Model-(4.2).md)
![image2017-7-3 16:11:57.png](/.attachments/29919232.png)




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Manufacturer Name</p></td><td class="confluenceTd"><p>The name of the manufacturer. Should not exist in the system.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Manufacturer description (Optional field)</p></td></tr></tbody></table>

**Manufacturer cannot be deleted if already associated to a Model or a Feeder.** 





#### Attachments

[image2017-9-4 12:15:40.png](/.attachments/29919231.png)
[image2017-7-3 16:11:57.png](/.attachments/29919232.png)
[image2017-5-26 16:37:20.png](/.attachments/29919233.png)
