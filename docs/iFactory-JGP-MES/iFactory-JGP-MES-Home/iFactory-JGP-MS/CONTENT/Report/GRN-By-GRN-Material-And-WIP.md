# Introduction

The GRN By GRN Material And WIP Report will base on the pass in param to return the WIP which associated with the GRN provide. It can be using for the following results,


- Provided WIP and GRNNumber with blank value will base on the provided GRN Material to return all WIP is using any of the GRN that match to GRN Material

- provided GRNNumber with blank value will base on the provided WIP and GRN Material to return any of the GRN that match to GRN Material

- provided WIP with blank value will base on the provided GRN Material and GRN Number to return any of the WIP is using any of the provided GRN which match to GRN Material



### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_DEMO ")
0-->1(" SETUP VERIFICATION")
1-->2("GRNByGRNMaterialAndWIP")

:::
![image2022-3-10_8-58-59.png](/.attachments/109674738.png)




#### **Screen Activity** 


The GRN By GRN Material And WIP Report allows the following activity:

- View WIP which associated with a GRN base on the given param matches.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.

Pre-Condition
The following data needs to be pre-configured before user runs the GRN By GRN Material And WIP Report: 

- GRN is current in use in a WIP.

- Should not provide both GRN Number and WIP with value in pass in param
Select the mandatory fields: Customer; Division; provide the GRN Material to search for.
![image2022-3-10_9-0-25.png](/.attachments/109674739.png)


![image2022-3-10_9-1-23.png](/.attachments/109674740.png)


![image2022-3-10_9-2-12.png](/.attachments/109674741.png)



![image2022-3-10_9-2-46.png](/.attachments/109674742.png)




#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select a Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select a Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">GRN Material</td><td colspan="1" class="confluenceTd">Mandatory to select a GRN Material. </td></tr><tr><td colspan="1" class="confluenceTd">WIP</td><td colspan="1" class="confluenceTd"><p>Optional to provide WIPs, allow multiple value (Error will prompt if both WIP and GRN Number provided with value)</p></td></tr><tr><td colspan="1" class="confluenceTd">GRN Number</td><td colspan="1" class="confluenceTd"><p>Optional to provide GRN Numbers, allow multiple value (Error will prompt if both WIP and GRN Number provided with value). Result will ignore if the GRN number is not match with selected GRN Material.</p></td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">WIP</td><td colspan="1" class="confluenceTd"><p>The WIP that contain provide GRN material (and match with GRN Number if provided) in genealogy.</p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Selected customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Selected division.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Rev</td><td colspan="1" class="confluenceTd"><p>Assembly / Rev / Ver of the WIP</p></td></tr><tr><td colspan="1" class="confluenceTd">GRN Material</td><td colspan="1" class="confluenceTd">Selected GRN's material</td></tr><tr><td colspan="1" class="confluenceTd">GRN Association Date</td><td colspan="1" class="confluenceTd">The consume date and time of the GRN for WIP</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><p>The provided GRN at criteria area or return from the result base on WIP</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">A CRD of this GRN.</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">The GRN's date code.</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">The GRN's lot code.</td></tr><tr><td colspan="1" class="confluenceTd">Vendor</td><td colspan="1" class="confluenceTd">The GRN's vendor.</td></tr></tbody></table>

**Selected GRN’s material** 
GRN Association DateThe consume date and time of the GRN for WIPGRNThe provided GRN at criteria area or return from the result base on WIP
CRDA CRD of this GRN.Date CodeThe GRN’s date code.Lot CodeThe GRN’s lot code.VendorThe GRN’s vendor.



#### Attachments

[image2020-5-18_16-20-22.png](/.attachments/109674729.png)
[image2020-5-18_16-16-17.png](/.attachments/109674730.png)
[Smaller.jpg](/.attachments/109674731.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/109674732.jpg)
[image2013-7-9 13:37:43.png](/.attachments/109674733.png)
[image2013-7-9 13:36:46.png](/.attachments/109674734.png)
[image2013-7-9 13:35:13.png](/.attachments/109674735.png)
[image2020-3-25_14-6-43.png](/.attachments/109674736.png)
[image2020-3-25_14-18-49.png](/.attachments/109674737.png)
[image2022-3-10_8-58-59.png](/.attachments/109674738.png)
[image2022-3-10_9-0-25.png](/.attachments/109674739.png)
[image2022-3-10_9-1-23.png](/.attachments/109674740.png)
[image2022-3-10_9-2-12.png](/.attachments/109674741.png)
[image2022-3-10_9-2-46.png](/.attachments/109674742.png)
