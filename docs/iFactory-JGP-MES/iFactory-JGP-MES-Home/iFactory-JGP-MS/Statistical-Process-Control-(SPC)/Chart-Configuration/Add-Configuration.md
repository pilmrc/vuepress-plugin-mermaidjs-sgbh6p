# Introduction

Add Configuration screen is allowed user to configure/bulk upload which data source it should retrieve from , how frequent should eSPC retrieve data from the data source , using which method to retrieve the data , which product data need to be retrieved from the data source , what type of control chart need to be plotted, how many subgroup size for a data point , how frequent the configuration need to be reviewed and what rules need to be checking for a product. System will plot the control charts based this configuration then user can monitor quality of the manufacturing process through Performance Monitor screen.


### How to get there?



::: mermaid
graph LR
A("Chart Configuration")
:::
Click on Add Configuration tab


#### Permission


The following permissions need to be granted for accessing the screen :

- Can Create SPC Configuration


- Can View SPC Configuration


- Can Sync Latest Master Data

Screen Activity
Add Configuration screen allows to perform the following activities:

- Add Site Information

- Add Product Information

- Add multiple Product/Process Characteristic records ( maximum 10 records)


#### Pre Condition


The following items need to be ready before can add configuration:


- Connect eSPC to Ifactory , MES , or QLMS Reporting API of Site.

- Site and Customer/Division assigned to user

- Product information ( Customer/Division, Project , Product Family, Material , Assembly, Factory , Mfg Manufacturing Area , Mfg Route , Mfg Route Step and Mfg Resource) configured in data source ( ifactory , QLMS /MES ) respectively.

- Product/Process (CTQ/CTF) available in data source ( ifactory,QLMS/MES).


#### Screen Dependency


The following screen(s) has direct dependency with Add Configuration:

- Manage Configuration

- Performance Monitor

- Reports & Dashboard


#### Process


In current phase , Add Configuration's master data is based on the connected data sources and data partition ( Site and Customer/Division). The data sources have been split to two in data partition by using Site Name . When user login to Site Name (MES) , then user able to add configuration for data source : MES, Manual, Machine data source available for configuration. When user login to Site Name , then user able to add configuration for data source : QLMS, ifactory , Manual , Machine and others(in future). This screen enables user to add configuration for a data source and a product with multiple product/process (CTQ/CTF) configuration. Once the configuration submitted , then system will generate SPC number for each of the product/process (CTQ/CTF) configuration. SPC Number is unique and allowed user to monitor the product/process (CTQ/CTF) individually in SPC List.
Sync Latest Master Data button, once clicked on the button, then should sync the latest master data that configured in MES/ ifactory/ QLMS data source immediately.


#### Fields

| Field  | Description |
| --- | --- |
| Configuration Name | The name of the configuration. It is must be unique. |
| **Site Information** |     |
| Field  | Description |
| Data Source  | The data source is where the system should retrieve the data from.<br /><br />*   Ifactory - Data from ifactory<br />*   QLMS - Data from QLMS<br />*   MES - Data from MES<br />*   Manual - sample data uploaded by user<br />*   Machine - Data from SPI<br />*   Local DB - Data from Local Database (only applicable to non- MES login) |
| Data Capture Frequency | How frequent and when the system should retrieve data from data source based on configuration.<br /><br />*   Time - Retrieve data based on minutes . Minimum is 5 mins and maximum is 120mins. <br />*   Fixed time/day - Retrieve data based on the selected Time every day. Time for selection is 24 hours with 30 mins time interval. |
| Retrieving Method | The Retrieving Method is determined how the system should retrieve the data from data source.<br /><br />*   Consecutive - Retrieve data consecutively based on the configured subgroup size and data capture frequency.<br />*   Random- Retrieve data randomly based on the configured subgroup size and data capture frequency. |
| Site  | The site is the login site ( based on data partition). |
| By Workorder | By Workorder is determined how the system should retrieve the data from QLMS data source. Default to off.<br /><br />*   ON - Retrieve data based on the Workorder and configured subgroup size and data capture frequency.<br />*   OFF- Retrieve data based on the configured subgroup size and data capture frequency. |
| **Product Information** |     |
| Customer/Division | The login Customer/Division ( based on data partition). |
| Project | The project of the data to be retrieved.<br /><br />Project is filtered by customer/division. |
| Product Family | The product family of the data to be retrieved.<br /><br />Product Family is filtered by project. |
| Material | The material of the data to be retrieved.<br /><br />Material is filtered by the selected product family.<br /><br />\-if project = ANY , then return all materials based on site and customer/division.<br /><br />\-if project = NA , then materials filtered by customer/division  and project = null. |
| Assembly/Revision/Version | The assembly/revision/version of the data to be retrieved.<br /><br />This is filtered by the selected material. |
| Factory | The factory of the data to be retrieved.<br /><br />This is filtered by the selected site. |
| Mfg Manufacturing Area | The manufacturing area of the data to be retrieved.<br /><br />This is filtered by the selected factory.<br /><br />\-if factory = ANY , then return all the manufacturing area based on site.<br /><br />\-if factory = NA, then manufacturing area filtered by factory = null. |
| Mfg Route | The route of the data to be retrieved. <br /><br />This is filtered by the selected manufacturing area and factory.<br /><br />\-if manufacturing area = ANY , then return all the route based on site and the selected factory.<br /><br />\-if manufacturing area = NA ,then route filtered by manufacturing area = null and the selected factory.<br /><br />\-if manufacturing area = NA and factory =NA , then route filtered by manufacturing area = null and factory =null. |
| Mfg Route Step | The route Step of the data to be retrieved. This route step is referring to route step that produce the product.<br /><br />This is filtered by the selected route , manufacturing area and factory.<br /><br />\-if route = ANY , then return all the route step based on site , the selected factory and manufacturing area.<br /><br />\-if route = NA ,then route step filtered by route = Null , the selected factory and manufacturing area.<br /><br />\-if route = NA and manufacturing area=NA , then route step filtered by route = null, manufacturing area = null and the selected factory.<br /><br />\-if route =NA, manufacturing =NA and factory = NA, then route step filtered by  route = null, manufacturing area = null and factory = null. |
| Mfg Resource | The resource of the data to be retrieved. This resource is referring to resource that produce the product.<br /><br />This is filtered by the selected route step.<br /><br />\-if route step = ANY, then return all the resources based on the selected route, manufacturing area and factory.<br /><br />\-if route step = NA , then resource filtered by route step =null. |
| Measure Manufacturing Area | The measure manufacturing area of the data to be retrieved.<br /><br />This is filtered by the selected factory.<br /><br />Only applicable for data source = iFactory and MES.<br /><br />\-if factory = ANY , then return all the measure manufacturing area based on site.<br /><br />\-if factory = NA, then measure manufacturing area filtered by factory = null. |
| Measure Route | The measure route of the data to be retrieved. <br /><br />This is filtered by the selected measure manufacturing area and factory.<br /><br />Only applicable for data source = iFactory and MES.<br /><br />\-if measure manufacturing area = ANY , then return all the measure route based on site and the selected factory.<br /><br />\-if measure manufacturing area = NA ,then route filtered by measure manufacturing area = null and the selected factory.<br /><br />\-if measure manufacturing area = NA and factory =NA , then measure route filtered by measure manufacturing area = null and factory =null. |
| Measure Route Step | The measure route step of the data to be retrieved. This route step is referring to route step that perform measuring/testing.<br /><br />This is filtered by the selected route , manufacturing area and factory.<br /><br />\-if route = ANY , then return all the measure route step based on site , the selected factory and manufacturing area.<br /><br />\-if route = NA ,then measure route step filtered by route = Null , the selected factory and manufacturing area.<br /><br />\-if route = NA and manufacturing area=NA , then measure route step filtered by route = null, manufacturing area = null and the selected factory.<br /><br />\-if route =NA, manufacturing =NA and factory = NA, then measure route step filtered by  route = null, manufacturing area = null and factory = null. |
| Measure Equipment | The measure equipment of the data to be retrieved. This resource is referring to the resource that used for measuring/testing.<br /><br />This is filtered by the selected measure route step.<br /><br />\-if measure route step = ANY, then return all the measure equipment based on the selected route, manufacturing area and factory.<br /><br />\-if measure route step = NA , then measure equipment filtered by measure route step =null. |
| Attribute | The attribute of the data to be retrieved.<br /><br />Only applicable for data source = iFactory and Local DB and be an optional.<br /><br />The attribute name and attribute value need to be in format Attribute Name@Attribute Value. |
| Job Type | The job type of the data to be retrieved.<br /><br />Only applicable for data source = QLMS and be mandatory.<br /><br />Job Type is filtered by customer/division<br /><br />\-if job type = ANY, then return all the job type and not able multi-selection.<br /><br />\-if job type = NA, then return all the job type and not able multi-selection.<br /><br />\-if job type = specific job type, then able multi-selection. |
| Tool / Mold ID | The tool/mold ID of the data to be retrieved.<br /><br />Only applicable for data source = QLMS and Local DB and be an optional.<br /><br />Tool/Mold ID is text field.   |
| Cavity | The cavity of the data to be retrieved.<br /><br />Only applicable for data source = QLMS and Local DB and be an optional.<br /><br />Cavity is text field and only accept numeric. |
| **Product/Process Characteristics ( Add Multiple Records)** |     |
| Data Type | The data type that system need to be retrieved.<br /><br />*   Variable - Retrieve data based on the provided CTQ/CTF label name. The data is in decimal format.<br />*   Attribute - Retrieve data based on the product information without based on CTQ/CTF label name.  |
| Product/Process (CTQ/CTF) | The product/process (CTQ/CTF) of the data to be retrieved.<br /><br />Variable data - Must provide exact label name then system only will retrieve the data.<br /><br />*   Ifactory/MES - Label name<br />*   QLMS - Dimension code<br /><br />Attribute data - This can be any values as system wouldn't retrieve data based on product/process(CTQ/CTF). |
| LSL | LSL is Lower Specification Limit. This field only accept numeric value. |
| USL | USL is Upper Specification Limit. This field only accept numeric value. |
| Control Chart | There are 7 types of control charts available in SPC system and they are segregated by data type. System will plot the data based on the configured control chart. <br /><br />**Variable data **<br /><br />*   Xbar-R<br />*   Xbar-S<br />*   I-MR<br />*   Levey-Jennings<br />*   I-MR-R/S<br />*   User-defined chart  ( Note: User defined chart is the chart to monitor the process which is not fulfilled the quality standard by using I-MR , Xbar-R or Xbar-S control chart. The chart to be plotted will be based on the configured subgroup size. if subrgoup size = 1, then will plot I-MR chart ; If subgroup size <9 , then will plot Xbar-R chart ; if subgroup size >9 , then will plot Xbar-S chart)<br /><br />**Attribute Data **<br /><br />*   P, NP<br />*   C, U |
| Subgroup Size | The subgroup size is to determine how many data in a group to form a data point when system retrieve data from data source.<br /><br />**Variable chart **<br /><br />Levey- Jennings and I-MR chart - subgroup size = 1<br /><br />Xbar-R, Xbar-S and User defined chart - subgroup size range from 1 -25<br /><br />I-MR-R/S - subgroup size range from 2-25 ( Note : if subgroup size < 9 , then the chart to be plotted will be I-MR-R ; If subgroup size >9 , then the chart to be plotted will be I-MR-S)<br /><br />**Attribute Chart**<br /><br />PNP and CU - user can define the minimum subgroup size =  0  and the maximum =1000.<br /><br />Note : 0 means system will retrieve all the data produce during the configured data capture frequency. |
| Cpk Rule | This Cpk Rule allow user to define greater than (>) or greater equal to (>=)  Cpk Expectation.<br /><br />Note : Cpk =Process Capability Index |
| Cpk Expectation | The Cpk Expectation field is for reference purpose and it is in decimal format.  |
| SPC Phase Review | The SPC Phase Review is to determine when the configuration need to be reviewed.<br /><br />*   90 sets data - Trigger email notification to user when there are 90 sets data plotted on the control chart.<br />*   1 month - Trigger email notification to user end of every month.<br />*   3 months - Trigger email notification to user end of every quarter.<br /><br />Note : Email is triggered to corrective action group. |
| Rule Violation | The rule violation to cross check the data point is violated which selected rules.<br /><br />There are 8 (R1 - R8) rules can be selected for Variable Control Charts and 4 (R1 -R4) rules can be selected for Attribute control charts.<br /><br />R1 :1 point > k standard deviations from center line    ; K = 3<br /><br />R2 : k points in a row on same side of center line  ; K = 9<br /><br />R3 : k points in a row, all increasing or all decreasing ; K =6<br /><br />R4 : k points in a row, alternating up and down ; K =14<br /><br />R5 : k out of k+1 points>2 standard deviations from center line (same side) ; K =2<br /><br />R6 : k out of k+1 points>1 standard deviations from center line (same side) ; K=4<br /><br />R7 : k points in a row within 1 standard deviation of center line (either side) ; K = 15<br /><br />R8 : k points in a row>1 standard deviation of center line (either side) ; K= 8<br /><br />Note : K value is editable  |
| Active | This will determine whether the system should retrieve data from data source.<br /><br />Active is ON - System will continue retrieving data from data source<br /><br />Active is OFF - System will stop retrieving data from data source. |
| Clear | Allow user to clear all the values for the particular Product/Process (CTQ/CTF) |
| Delete | Allow user to delete the particular Product/Process (CTQ/CTF) |
| Add new | Allow user to add more Product/Process (CTQ/CTF) |
| Submit | Allow user to submit the configuration and SPC number will be generated for each of Product/Process (CTQ/CTF) added in the configuration. |
| Clear | Allow user to clear all the values selected in the screen. |



#### Bulk Upload

Bulk upload is allowed user to bulk upload configuration by using excel. This function is controlled by permission and if no permission granted for this function then this section will not be appeared on screen. If the permission granted then user will see the Bulk upload section is collapsed when first load the Add Configuration screen. User can expand the section then perform bulk upload. The information in the bulk upload file will be validating based on logged in data partition. 

  

| Label | Description |
| --- | --- |
| Label | Description |
| --- | --- |
| Choose File | Allow user to select file with .xlsx format. |
| Download Template | Pre-defined template that must be used for upload the configuration. The Data Source = Manual and Machines, system will determine if manual and machine based on ifactory or MES againstthe data partition login to.<br /><br />All the mandatory fields are marked with Asterisk(\*).<br /><br />Samples :<br /><br />**Site and Product Information**<br /><br />![image2021-11-19_16-42-10.png](/.attachments/103252229.png))<br /><br />  <br /><br />![image2021-11-19_16-40-50.png](/.attachments/103252228.png)<br /><br />  <br /><br />![image2021-11-19_16-43-10.png](/.attachments/103252230.png)<br /><br />  <br /><br />![image2021-11-19_16-38-55.png](/.attachments/103252227.png)<br /><br />Note : <br /><br />1.  Measure Manufacturing Area and Measure Route only applicable for Data Source = iFactory and MES.<br />2.  Attribute only applicable for Data Source = iFactory and Local DB.<br />3.  Job Type only applicable for Data Source = QLMS.<br />4.  ool/Mold ID, Cavity only applicable for Data Source = QLMS and Local DB.<br /><br />  <br /><br />**Product/Process Information **<br /><br />![image2021-1-19_13-51-47.png](/.attachments/86311041.png)<br /><br />  <br /><br />Note : If K value filled for the rule , then only the rule will be selected and this can be managed in Manage Configuration.<br /><br />For the rule violation , the default K value as below.<br /><br />![image2021-1-19_16-5-19.png](/.attachments/86311050.png)<br /><br />*   Variable data type - R1 - R8<br />*   Attribute data type - R1-R4  |
| Upload  | *   This bulk upload only support uploading not updating and deleting. All the update or deletion need to be done in Manage Configuration manually.<br />*   System only allow one configuration with multiple Product/Process (CTF/CTQ) per upload.<br />*   The maximum Product/Process (CTF/CTQ) in one upload file is 10 per configuration.<br />*   System will check if all mandatory fields’ values for each line items have been provided based on data type and control chart type.<br />*   System will check if the values provided against master data. If the values not matched with master data , then prompt error message and not allow to continue upload.<br />*   System will check if the configuration existed in the system, If duplicate record found ,then system will stop user from uploading. If the existing configuration is deleted , then user is allowed to upload the configuration again.<br />*   Configuration duplication checking until Site Information + Product Information level only.<br />*   It will validate each of the fields in the template and prompt specific error message  |


#### Attachments

[image2021-1-19_13-39-29.png](/.attachments/86311038.png)
[image2021-1-19_13-40-42.png](/.attachments/86311039.png)
[image2021-1-19_13-48-53.png](/.attachments/86311040.png)
[image2021-1-19_13-51-47.png](/.attachments/86311041.png)
[image2021-1-19_16-5-19.png](/.attachments/86311050.png)
[image2021-10-27_11-51-5.png](/.attachments/102039726.png)
[image2021-10-27_11-52-28.png](/.attachments/102039727.png)
[image2021-10-27_11-58-20.png](/.attachments/102039728.png)
[image2021-10-27_13-1-13.png](/.attachments/102039729.png)
[image2021-10-27_13-3-14.png](/.attachments/102039730.png)
[image2021-10-27_13-3-54.png](/.attachments/102039731.png)
[image2021-11-10_20-11-49.png](/.attachments/102041281.png)
[image2021-11-10_20-12-31.png](/.attachments/102041282.png)
[image2021-11-10_20-15-6.png](/.attachments/102041283.png)
[image2021-11-19_16-38-55.png](/.attachments/103252227.png)
[image2021-11-19_16-40-50.png](/.attachments/103252228.png)
[image2021-11-19_16-42-10.png](/.attachments/103252229.png)
[image2021-11-19_16-43-10.png](/.attachments/103252230.png)
