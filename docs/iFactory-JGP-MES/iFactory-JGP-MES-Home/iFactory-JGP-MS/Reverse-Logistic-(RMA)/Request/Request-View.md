# Introduction

Request View screen is designed to allow user search for an existing RMA Request in the system with 
various criteria and display request content on screen for viewing.
There are several ways for searching and display the request on this screen.


### How to get there?



::: mermaid
graph LR
A("REQUEST")-->0("SEARCH")

:::


#### Screen Activity


Request View screen enables user to perform RMA Request searching with the following methods and 
filtering criteria.
User may search for a request with specific RMA Request number.
![image2016-3-18 9:40:53.png](/.attachments/29920988.png)



OR
User may search for list or requests with below criteria then choose for a specific request to display the content.

- RMA Request Number, Or

- Customer Division, And / Or

- Request Type
The search result (list of requests) will be presented in tabular format. User can scroll through the list and click on desire request to display it’s content on screen.
[1] Click the ‘search’ button besides the ‘Request’ field.  System will pop out a window with list of RMA requests. 
![image2016-3-18 9:41:20.png](/.attachments/29920987.png)



[2] Within the pop out window, there are 3 fields for user to define searching criteria to narrow down 
the scope of searching.
User can either enter a specific Request number or partial request number (i.e. ‘RMA16’; system will 
return all requests with number start ‘RMA16’.). OR
User can choose a desired ‘Customer Division’ value and/or ‘Request Type’.
![image2016-3-18 9:42:5.png](/.attachments/29920986.png)


[3] Within the pop out window, user may ‘drag-n-drop’ any of the column header into the space provided. System will automatically group the search result accordingly.

![image2016-3-18 9:42:34.png](/.attachments/29920985.png)


[4] User just needs to click on the desired request number for viewing details.
![image2016-3-18 9:43:0.png](/.attachments/29920984.png)


[5] System will automatically display the selected request’s information on screen for viewing.

![image2016-3-18 9:43:18.png](/.attachments/29920983.png)



[6] To view the RMA request history, click on the button (  
![image2016-3-18 16:13:12.png](/.attachments/29920976.png)


) besides the request number field.
![image2016-3-18 9:44:15.png](/.attachments/29920982.png)



[7] To view detail information of a Material Group (request item), click the button ( 
![image2016-3-18 16:12:57.png](/.attachments/29920977.png)


) at the right most corner of the material group.
![image2016-3-18 9:44:48.png](/.attachments/29920981.png)



[8] To view ‘Request Item Property’ and ‘Value’ assigned for an RMA unit (serial number), click the this button ( 
![image2016-3-18 16:14:41.png](/.attachments/29920975.png)


) under ‘Action’ column.
![image2016-3-18 9:45:12.png](/.attachments/29920980.png)



[9] To view history of a particular serial number within a ‘Material Group’ (Request Item), click the button (
![image2016-3-18 16:15:5.png](/.attachments/29920974.png)


) under ‘Action’ column.
![image2016-3-18 9:45:38.png](/.attachments/29920979.png)




#### Pre Condition



- RMA Requests with all kind of request status can be search and view on this screen.


#### Screen Dependency



- Request Search. User may perform a specific searching at ‘Request Search’ screen and click on a specific request record. Details of that record will be shown in this Request View screen.

- There is no ‘Hard’ screen dependency for this ‘Request View’ screen.


#### Fields  
 

|     |     |
| --- | --- |
| **Filter By Request** |     |
| **Field** | **Description** |
| Request | This is the place user enter a specific RMA request number to search and view.<br /><br />If this field is filled, system will search and display that RMA request record on screen.  Else, system will search for all RMA Requests and display summary info in tabular format for user to choose.<br /><br />User may fill in first few characters of the Request number and search.<br /><br />System will retrieve all request with number started with those few characters.  NO wildcard character allowed! |

| **Search Request…** |     |
| --- | --- |
| **Search Request…** |     |
| --- | --- |
| Field | Description |
| RMA Request Number | This is the place user enter a specific RMA request number (or partial of the number) to search and view. |
| Customer Division | Default to “**All**” option. This field show list of “Customer / Division” for RMA Requests. If selected, system will display list of RMA requests belongs to the “customer / division”. |
| Request Type  or<br /><br />Type | Default to “**All**” option. This list contains 4 options.<br /><br />“**All**”            - System will not filter output result base on ‘Request Type’.<br /><br />“**Return**”     - System will show RMA requests with ‘Return’ type only.<br /><br />“**Rework**”    - System will show RMA requests with ‘Rework’ type only.<br /><br />“**Upgrade**”   - System will show RMA requests with ‘Upgrade’ type only.<br /><br />System will filter RMA requests base on ‘Customer Division’ (if this was selected too) and / or ‘Request Type’. |
| Customer Contact | Customer contact person of the RMA request. |
| Status | RMA request current status. |
| On Hold | Indicate if the RMA request is current put On-Hold. |

| **Request information** |     |
| --- | --- |
| **Request information** |     |
| --- | --- |
| Field | Description |
| ![image.png](/.attachments/29920974.png) | Click this button to view History of the RMA request user is viewing. |
| RMA Request Number | RMA request number of the record user is viewing. |
| Request Type | The ‘Type’ of the RMA request user is viewing. |
| Request Status | The ‘Status’ of the RMA request user is viewing. |
| Site | The ‘Site’ of the RMA request user is viewing. |
| Customer | The ‘Customer’ of the RMA request user is viewing. |
| Division | The ‘Division’ of the RMA request user is viewing. |
| Factory | The ‘Factory’ of the RMA request user is viewing. |
| PO Number | The ‘Customer PO number’ of the RMA request user is viewing. |
| Comment | The ‘comment’ user has entered into the RMA request. |

| **Request Properties** |     |
| --- | --- |
| **Request Properties** |     |
| --- | --- |
| Field | Description |
| Request Property | The ‘Request Property’ user has configured for the RMA request user is viewing. |
| Value | The property value user has entered for the Request Property of the RMA request user is viewing. |

| **The material group OR request item in this format:**<br /><br />**<\*\*Material Group name> - Material : material\[SN Qty / Item Qty\] ** |     |
| --- | --- |
| **The material group OR request item in this format:**<br /><br />**<\*\*Material Group name> - Material : material\[SN Qty / Item Qty\] ** |     |
| --- | --- |
| Field | Description |
| \*\*Material Group name | ‘Material Group name’ is referring to ‘group description’ or ‘name’ user has given to each request item in RMA request.  |
| ![image.png](/.attachments/29920973.png) | Click on this button to view detail information of the Material Group or request item. Information like ‘Material’, item qty, customer product name, customer defect, responsibility party, warranty, failure category and failure symptom will be shown.  |
| Serial Number | The RMA return unit serial number entered into the request. |
| Comment | The comment entered for the serial number. |
| Return Count | Indicate how many times this serial number has returned as RMA unit to the ‘Site’. |
| Status | Indicate the status of the RMA Request item |
| ![image.png](/.attachments/29920972.png) | Click this button on same row of a Serial Number to view the list of ‘Request Item Property’ and ‘Value’ for the Serial Number. |
| ![image.png](/.attachments/29920971.png) | Click this button on same row of a Serial Number to view the history of this Serial number since it enters into the RMA request.  Please take note this is not the WIP history of the serial number. |

#### Attachments

[image2016-3-18 16:22:55.png](/.attachments/29920971.png)
[image2016-3-18 16:22:46.png](/.attachments/29920972.png)
[image2016-3-18 16:20:2.png](/.attachments/29920973.png)
[image2016-3-18 16:15:5.png](/.attachments/29920974.png)
[image2016-3-18 16:14:41.png](/.attachments/29920975.png)
[image2016-3-18 16:13:12.png](/.attachments/29920976.png)
[image2016-3-18 16:12:57.png](/.attachments/29920977.png)
[image2016-3-18 16:12:13.png](/.attachments/29920978.png)
[image2016-3-18 9:45:38.png](/.attachments/29920979.png)
[image2016-3-18 9:45:12.png](/.attachments/29920980.png)
[image2016-3-18 9:44:48.png](/.attachments/29920981.png)
[image2016-3-18 9:44:15.png](/.attachments/29920982.png)
[image2016-3-18 9:43:18.png](/.attachments/29920983.png)
[image2016-3-18 9:43:0.png](/.attachments/29920984.png)
[image2016-3-18 9:42:34.png](/.attachments/29920985.png)
[image2016-3-18 9:42:5.png](/.attachments/29920986.png)
[image2016-3-18 9:41:20.png](/.attachments/29920987.png)
[image2016-3-18 9:40:53.png](/.attachments/29920988.png)
