# Introduction

This screen is catered for those sites that not using manufacturing system. For those chart configuration that configured with Manual data source ,user can upload the sample data manually to eSPC via template file in CSV UTF-8 format. It is only support one data point per upload for only one product/process characteristic (CTQ/CTF) configuration. The processed sample data will be plotted on the control chart that can be viewed in Performance Monitor screen.


### How to get there?



::: mermaid
graph LR
A("SPC")-->0("Manual Upload Sample Data")

:::


#### **Permission** 


The following permissions need to be granted for accessing the screen :

- Can View Manual Upload Sample Data


#### Screen Activity


Manual Upload Sample Data screen allows to perform the following activities:

- Download the sample data template

- Upload Sample Data


#### Pre Condition


The following item need to be ready before upload sample data.

- Cerate chart configuration for data source =Manual to obtain the SPC number.


- Prepare sample data for upload.



#### Screen Dependency


The following screen(s) has direct dependency with Manual Sample Data

- Chart Configuration ( Add Configuration and Manage Configuration)

- SPC List

- Performance Monitor



#### Functions 


<table class="relative-table wrapped confluenceTable" style="width: 98.8881%;"><colgroup><col style="width: 11.0345%;" /><col style="width: 88.9514%;" /></colgroup><tbody><tr><th class="confluenceTh">Functions</th><th class="confluenceTh">Description</th></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Upload Function</strong></td></tr><tr><td class="confluenceTd">Choose File </td><td class="confluenceTd"><div class="content-wrapper"><p>Able to browse file from local drive.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103253521.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103253521.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="103253521" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-10-11-23-53.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="88113609" data-linked-resource-container-version="8" /></span></p></div></td></tr><tr><td class="confluenceTd">Upload</td><td class="confluenceTd"><p>Click on upload button , then system will process each data by validating the provided values for each field.</p><p>Once the sample data has been processed, then user is not allowed to upload the same sample data.</p><p>If there is any error in the file, system will stop the uploading and return error.<br />The system will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is SPC.csv, the output file will be SPC.out.csv)</p><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For the error sample data, the system will write the error.</li></ul><p>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “Upload failed, please check output file”.</p></td></tr><tr><td colspan="1" class="confluenceTd">Download Template</td><td colspan="1" class="confluenceTd">The defined template for uploading which in  CSV UTF-8 format.</td></tr><tr><td colspan="1" class="confluenceTd">Clear Button </td><td colspan="1" class="confluenceTd">Clear the selected template from the field.</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Fields in Template</strong></td></tr><tr><td colspan="1" class="confluenceTd">SPC Number</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><ul><li>It is a required field</li><li>SPC number must available in the logged data partition.</li><li>SPC number must belong to Data Source =Manual.</li><li>Allow multiple SPC number <span style="color: rgb(23,43,77);">per upload</span>.</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103253523.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103253523.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="103253523" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-10-11-25-28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="88113609" data-linked-resource-container-version="8" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><ul><li>It is an optional field </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Test DateTime</td><td colspan="1" class="confluenceTd"><ul><li>It is a required field</li><li>Format: YYYY-MM-YY HH:MM: SS</li><li>The TestDateTime of the sample data need to be validate against:<ul><li>Not earlier than last data uploaded datetime</li><li>Not greater than Current upload datetime</li><li>the data capture frequency</li></ul></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Label Name</td><td colspan="1" class="confluenceTd"><ul><li>Label name not required when the SPC number is belong to Attribute data type</li><li>Label name is required field when the SPC number is belong to variable data type</li><li>Only allow one Label Name per upload.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Label Value</td><td colspan="1" class="confluenceTd"><ul><li>Label value not required when the SPC number is belong to attribute data type</li><li>Label value is required field when the SPC number is belong to variable data type</li><li>Only accept value in decimal format.</li><li>Accept both -ve and +ve value.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Defect</td><td colspan="1" class="confluenceTd"><ul><li><span>It is required when the test result is failed for attribute data type.</span></li><li><span>Allow multiple defects for a sample data.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Test Result</td><td colspan="1" class="confluenceTd"><ul><li>It is a required field for both variable and attribute data type.</li><li>Only accept P as Pass or F as Failed result</li><li>If variable data type, then only accept P result.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Sample Data</td><td colspan="1" class="confluenceTd"><p><span>For variable data type,</span></p><ul><li>If the number of sample data more/less than the defined subgroup size , system will reject the entire file.</li></ul><p>For attribute data type,</p><ul><li>The maximum sample data can be uploaded for subgroup size = 0 is 1000 sample data for a data point.</li><li>If the number of sample data more/less than the defined subgroup size , system will reject the entire file.</li></ul></td></tr></tbody></table>






#### Attachments

[image2021-3-10_10-19-19.png](/.attachments/88113630.png)
[image2021-3-10_18-23-29.png](/.attachments/88113650.png)
[image2021-12-10_11-23-53.png](/.attachments/103253521.png)
[image2021-12-10_11-24-56.png](/.attachments/103253522.png)
[image2021-12-10_11-25-28.png](/.attachments/103253523.png)
