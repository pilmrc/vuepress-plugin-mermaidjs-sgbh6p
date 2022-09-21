# Introduction


A Factory is a physical plant located in a 
*[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)* . Factory contains a group of *[Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)* 


### **How to get there?** 



::: mermaid
graph LR
A("ADMINISTRATION")-->0("LOCATION")
0-->1("FACTORY")

:::


#### **Screen Activity** 


**Factory Maintenance enables user to perform the following activity:** 


- Create, view, update and delete factory record





#### Screen Dependency


The following screen(s) has direct dependency with Factory

- [Site Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)

- *[Manufacturing Area Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)*

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)



#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Plant Code</td><td colspan="1" class="confluenceTd">Each factories have their own plant code and each plant code can contain multiple factories. The plant code is required by SAP during setup sheet export.<br />Association flow: Setup Sheet -> Equipment -> Manufacturing Area -> Factory -> Plant Code</td></tr><tr><td class="confluenceTd"><p>Factory Name</p></td><td class="confluenceTd"><p>The unique name given to the Factory</p></td></tr><tr><td class="confluenceTd"><p>Factory Description</p></td><td class="confluenceTd"><p>Additional description for the Factory can be entered in this field</p></td></tr><tr><td colspan="1" class="confluenceTd">Site</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Site of the factory(s). Site is created in Site Maintenance screen. </span></td></tr></tbody></table>




#### **Synchronization** 


Data can be synchronized to MDO
