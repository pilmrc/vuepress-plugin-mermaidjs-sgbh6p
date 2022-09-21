# Introduction

Serialized Material is birthed to Phoenix system through Material Serialization Screen. This screen allow user to hold or release hold serial number for a serialized material that yet to be consumed.


### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("MATERIAL")
0-->1("SERIALIZED MATERIAL HOLD")

:::


#### Screen Activity


The serialized material hold package enables end users to perform the following activities:

- Search for serialized material's serial number that yet to be consumed, scrapped or on hold.

- Hold a serialized material's serial number

- Release hold for a serialized material's serial number

Pre Condition
The following data needs to be pre-configured (if used) before an end user perform any activity at Serialized Material Hold package: 

- Serialized Material has been maintained at
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)screen.
- Serial Number has been birthed at
[Material Serialization (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Material-Serialization-(3.0).md)screen. 

#### Screen Dependency


The following screen(s) have direct dependency with the serialized material hold package:

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Material Serialization (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Material-Serialization-(3.0).md)


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="SerializedMaterialHold-SerializedMaterialDetails"><strong>Serialized Material Details</strong></h5></td></tr><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Serial Number</td><td class="confluenceTd">Selection of serialized material's serial number that yet to be consumed, scrapped or on hold.</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">Auto populate Material name based on the selected serial number</td></tr><tr><td class="confluenceTd">Is Scrapped</td><td class="confluenceTd">Indicates the Material is scrapped.</td></tr><tr><td colspan="1" class="confluenceTd">Reason Code</td><td colspan="1" class="confluenceTd">List of reason code maintained in Hold Reason Code Maintenance Screen with Type equals to Material</td></tr><tr><td colspan="1" class="confluenceTd">Comments</td><td colspan="1" class="confluenceTd">Allow user to enter comments for a hold or release.</td></tr><tr><td colspan="1" class="confluenceTd">Clear</td><td colspan="1" class="confluenceTd">Button to clear all fields in serialized material hold screen</td></tr><tr><td colspan="1" class="confluenceTd">Hold</td><td colspan="1" class="confluenceTd"><p>Button to Hold the selected serial number with hold reason code and comments</p></td></tr><tr><td colspan="1" class="confluenceTd">Release</td><td colspan="1" class="confluenceTd">Button to Release the selected held serial number with comments</td></tr></tbody></table>

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="SerializedMaterialHold-FileUpload"><strong>File Upload</strong></h5></td></tr><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd"><p>Allow <span style="color: rgb(45,46,47);letter-spacing: 0.0px;">Material Type "Serialized Material"</span></p></td></tr><tr><td class="confluenceTd">Upload File</td><td class="confluenceTd">Records serial number no matter it birth in system or not.</td></tr></tbody></table>

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="SerializedMaterialHold-ConditionsLimit"><strong>Conditions Limit</strong></h5></td></tr><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">Allow <span style="color: rgb(45,46,47);">Material Type "Serialized Material"</span></td></tr><tr><td class="confluenceTd">Validation Mask</td><td class="confluenceTd">Which ones need to be blacklisted<br />Example: <br />Validation Mask = A[0][0][1-3]<br />A001-A003 will be the black list</td></tr></tbody></table>





<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><strong><u>Scenario</u></strong></th><th class="confluenceTh">File Upload/Generate Serial </th><th class="confluenceTh">File Upload/Assign Serial </th><th class="confluenceTh">Conditions Limit/Generate Serial </th><th class="confluenceTh">Conditions Limit/Assign Serial </th></tr><tr><td class="confluenceTd">Add/Delete black list</td><td class="confluenceTd">O</td><td class="confluenceTd">O</td><td class="confluenceTd">X</td><td class="confluenceTd">O</td></tr><tr><td class="confluenceTd"><span>Serialize Material not birth</span></td><td class="confluenceTd">O (will auto generate and hold)</td><td class="confluenceTd">O</td><td class="confluenceTd">X</td><td class="confluenceTd">O</td></tr><tr><td class="confluenceTd"><span>Serialize Material birthed</span></td><td class="confluenceTd">O</td><td class="confluenceTd">O</td><td class="confluenceTd">X</td><td class="confluenceTd">X</td></tr><tr><td class="confluenceTd"><span>Serialize Material ready to assemble</span></td><td class="confluenceTd">O</td><td class="confluenceTd">O</td><td class="confluenceTd">X</td><td class="confluenceTd">O</td></tr><tr><td class="confluenceTd"><span>Serialize Material assembled</span></td><td class="confluenceTd">X(Will pop remind message)</td><td class="confluenceTd">X(Will pop remind message)</td><td class="confluenceTd">X</td><td class="confluenceTd">X</td></tr><tr><td class="confluenceTd"><span>Serialize Material ready to assemble<br />(<span style="color: rgb(45,46,47);">Assemble Actions : "Scan Existing And Auto Birth"</span>)</span></td><td class="confluenceTd">O</td><td class="confluenceTd">O</td><td class="confluenceTd">X</td><td class="confluenceTd">O</td></tr></tbody></table>



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="SerializedMaterialHold-Hold/ReleaseHeldMaterialHistory">Hold/Release Held Material History</h5></td></tr><tr><th class="confluenceTh">Fields</th><th class="confluenceTh"><strong>Description</strong></th></tr><tr><td class="confluenceTd">Hold Date</td><td class="confluenceTd">Display the On Hold Date and Time of the Serialized Material</td></tr><tr><td class="confluenceTd">Hold By</td><td class="confluenceTd">Display the operator who perform on hold the Serialized Material</td></tr><tr><td class="confluenceTd">Hold Reason</td><td class="confluenceTd">Display the Hold Reason Code of the Serialized Material</td></tr><tr><td colspan="1" class="confluenceTd">Hold Comment</td><td colspan="1" class="confluenceTd">Display the Hold Comment of the Serialized Material</td></tr><tr><td colspan="1" class="confluenceTd">Release Date</td><td colspan="1" class="confluenceTd">Display the Release Date and Time of the Serialized Material</td></tr><tr><td colspan="1" class="confluenceTd">Release By</td><td colspan="1" class="confluenceTd">Display the operator who release the serialized material.</td></tr><tr><td colspan="1" class="confluenceTd">Release Comment</td><td colspan="1" class="confluenceTd">Display the Release Comment entered by user.</td></tr></tbody></table>

