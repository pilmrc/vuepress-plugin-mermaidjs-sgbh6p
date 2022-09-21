# Introduction

Feeder/Tray
screen is used to create a new Feeder or Tray, or to retrieve information of Feeder/Tray previously created. The Feeder/Tray name cannot be greater than 20 chars.


### How to get there?



![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


![image2017-9-4 12:11:16.png](/.attachments/29919125.png)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("FEEDER/TRAY")

:::


#### Screen Activity


Feeder/Tray screen enables user to perform the following activity:

- Create, view, update Feeder or Tray



#### Post Condition


Feeder/Tray is required to perform the feeder tracking and GRN association


#### Screen Dependency


The following screen(s) has dependency with Feeder/Tray:

- [Manufacturer (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manufacturer-(4.2).md)

- [Model (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Model-(4.2).md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)

![image2017-7-3 16:23:40.png](/.attachments/29919126.png)




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Feeder/Tray</p></td><td class="confluenceTd"><p>The name of the Feeder or Tray (max 20 chars). Should not exist in the system.</p></td></tr><tr><td class="confluenceTd"><p>Manufacturer</p></td><td class="confluenceTd"><p>Manufacturer related to the feeder/Tray. Created from <a href="29919230.html">Manufacturer </a>screen</p></td></tr><tr><td colspan="1" class="confluenceTd">Model</td><td colspan="1" class="confluenceTd"><p>Model related to the feeder/Tray and Manufacturer. Created from <a href="29919236.html">Model </a>screen</p></td></tr><tr><td colspan="1" class="confluenceTd">Feeder/Tray Type</td><td colspan="1" class="confluenceTd">Identify the Type of equipment (i.e. Feeder or Tray)</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Comment field (Optional Field)</td></tr><tr><td colspan="1" class="confluenceTd"><em>Is MultiTrack</em> toggle switch</td><td colspan="1" class="confluenceTd">It is a switch to identify if the feeder is multitrack (allow to load more than one partnumber on same feeder). This switch can be selected only if the equipment created is a Feeder. Default value:OFF</td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:11:16.png](/.attachments/29919125.png)
[image2017-7-3 16:23:40.png](/.attachments/29919126.png)
[image2017-5-26 16:37:20.png](/.attachments/29919127.png)
[image2017-7-3 16:11:57.png](/.attachments/29919128.png)
