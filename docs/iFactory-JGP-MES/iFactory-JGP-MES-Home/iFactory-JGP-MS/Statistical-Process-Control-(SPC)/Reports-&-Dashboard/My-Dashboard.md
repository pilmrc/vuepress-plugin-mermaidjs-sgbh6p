# Introduction

My Dashboard is the landing page of eSPC system if user customized it. 
This screen allows user to view SPC number , product information ,Ppk/Cpk , Rule Violation Summary and configuration status of each product/process characteristic (CTQ/CTF) and all the data is segregated by data partition . If user wants to view the particular product/process characteristic (CTQ/CTF) control chart , they can navigate to Performance Monitor screen from My Dashboard screen . The items in My Dashboard can be editable via SPC List.


### How to get there?



::: mermaid
graph LR
A("REPORT")-->0("DASHBOARD")

:::
**Click on My Dashboard Tab** 


#### Permission

The following permissions need to be granted for accessing the screen :

1.  Can view SPC List.

#### Screen Activity

My Dashboard screen allows to perform the following activities:

*   View SPC number , product information ,Ppk/Cpk , Rule Violation Summary and configuration status 
*   Redirect to Performance Monitor screen.

#### Pre Condition

The following item need to be ready before view My Dashboard:

*   Add the configuration from SPC List.

#### Screen Dependency

The following screen(s) has direct dependency with My Dashboard.

*   Performance Monitor
*   SPC List

#### Manage Display Columns in SPC Item

Columns to be displayed in SPC item is customizable. By default , SPC Items will be showing all the columns  Site, Customer, Project , Manufacturing Area , Route , Route Step , Resource , Measure Route Step, Measure equipment , Material , CTQ/CTFand Configuration Name, Tool/Mold ID and Cavity default is not showing up, only able to manually add in. If selected ALL which mean select all the fields. When unchecked ALL, then it will deselect all the fields. If user selected ALL but unchecked one of the field ,then will auto uncheck the ALL and the remaining fields will remain checked. Once applied, then system is always remember the settings when the next login.

#### Fields

| Field  | Description |
| --- | --- |
| Field  | Description |
| --- | --- |
| No. | Item numbering. |
| CheckBox | The Checkbox is allowed user to customized which configuration to be shown at My Dashboard.<br /><br />Checked - Item selected to display at My Dashboard.<br /><br />Uncheck - Item not displaying at My Dashboard. |
| SPC Number | SPC number is generated based on based on first come first serve method for each of the created product/process characteristic (CTQ/CTF) and it is unique across all the sites.<br /><br />SPC number format is SPC as prefix then followed by 7 digits. e.g SPC0000000. |
| Configuration Name | Configuration Name is user define or based on the configuration created product/process characteristic (CTQ/CTF). |
| Site  | Site information of the particular product/process characteristic (CTQ/CTF). |
| Customer | Customer information of the particular product/process characteristic (CTQ/CTF). |
| Project | Project information of the particular product/process characteristic (CTQ/CTF). |
| Material | Material information of the particular product/process characteristic (CTQ/CTF). |
| Manufacturing Area | Manufacturing Area information of the particular product/process characteristic (CTQ/CTF). |
| Route | Route information of the particular product/process characteristic (CTQ/CTF). |
| Route Step | Route Step information of the particular product/process characteristic (CTQ/CTF). |
| Resource | Resource information of the particular product/process characteristic (CTQ/CTF). |
| Measure Route Step | Measure Route Step information of the particular product/process characteristic (CTQ/CTF). |
| Measure Equipment | Measure Equipment information of the particular product/process characteristic (CTQ/CTF). |
| Tool/Mold ID | Tool/Mold ID information of the particular product/process characteristic (CTQ/CTF). |
| Cavity | Cavity information of the particular product/process characteristic (CTQ/CTF). |
| Product/Process (CTQ/CTF) | The product/process characteristic (CTQ/CTF) name. |
| Data Type | Date Type information of the particular product/process characteristic (CTQ/CTF). |
| Ppk | The Ppk value is to indicate the production performance process index . <br /><br />if value >1.33 , then it is green.<br /><br />If value <1.00, then it is red.<br /><br />If value >1.00 and < 1.33 , then it is orange. |
| Cpk | The Cpk value is to indicate the production capability process index. <br /><br />if value >1.33 , then it is green.<br /><br />If value <1.00, then it is red.<br /><br />If value >1.00 and < 1.33 , then it is orange. |
| Total | The grand total of data points violated the rules. |
| Closed | The total correction action form approved. |
| Open 2 | The total correction action form submitted by user. |
| Open 1 | The total correction action form yet to submit by user. |
| Link Go To | The link redirect user to Performance Monitor screen for the particular configuration. |
| Status | Used to define the status of the configuration.<br /><br />Active - The data of configuration is continue syncing from data source.<br /><br />Inactive - The data of configuration is stopped syncing from data source. |
| Add to Dashboard | A button to add the selected configuration to My Dashboard. |
| Reset | A button to reset the configuration selection. |