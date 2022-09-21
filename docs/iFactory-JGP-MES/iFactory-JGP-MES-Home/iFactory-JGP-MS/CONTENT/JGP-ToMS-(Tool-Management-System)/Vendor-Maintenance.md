# Introduction

When a new vendor needs to be added to the system, the user needs to maintain this screen


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("vendor maintenance")

:::


#### **Permission ( ToMS Application)** 



- Vendor maintenance


- Can modify

vendor maintenance


#### **Screen Activity** 


Job Type Maintenance enables user to perform the following activity:

- Create, view, update , delete ,bulk upload and download vendor records

- .Provide the vendor template  ( in CSV UTF-8 format) and the fields to be filled by user as below.


- Vendor Name ( Mandatory - String)

- Vendor Code ( Mandatory - String)

- Active ( Mandatory - 1 for active , 0 for inactive)



#### **Screen Dependency** 



- NA


#### **Screen Specification** 


System will validate against duplicate record:

- Vendor code is a unique code to identify a supplier.

- .

If there is any error in the file, system should return error and not allowing upload until all the error is fixed
![image2021-8-31_14-0-16.png](/.attachments/97358952.png)



- When a vendor is deleted, the

item will besoft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="text-align: left;width: 32.87%;"><colgroup><col style="width: 33.0535%;" /><col style="width: 66.9597%;" /></colgroup><tbody><tr><td class="confluenceTd"><p>Vendor Name</p></td><td class="confluenceTd"><ul><li>Text Field</li><li>Mandatory</li></ul></td></tr><tr><td class="confluenceTd"><p>Vendor code</p></td><td class="confluenceTd"><ul><li>Text Field</li><li>Mandatory</li></ul></td></tr><tr><td class="confluenceTd"><p>Active</p></td><td class="confluenceTd"><ul><li>Toggle</li><li>Default to Active</li><li>Mandatory</li></ul></td></tr></tbody></table>



#### Attachments

[image2021-8-31_14-0-16.png](/.attachments/97358952.png)
