# Introduction



The CurrentLocationByBatchWIP data extraction is a new method to allow huge data extraction reading from a CSV input file and generate its result to a CSV output file by integrated service. User has option to place more than one input files at predefined drop folder and system will copy one file at a time to process folder for processing. Once completed the data extraction process, an output file generated at output folder and previous dropped input file will move to archive folder. The input file is limited to 10K of records for processing and each time will read 1k of records to process (configurable by DBA in db for data extraction configuration).  Any exceeded records (start with 10001 record) or invalid record will be ignore for processing. This is user responsibility to ensure the input file content is valid for processing. Ignore record will not notify as this data extraction process is avoiding too many checking causing long processing time.
The file in archive folder will be remove by system after 7 days to avoid storage issue (configurable by DBA in db for data extraction configuration). The output folder’s file is advisable user to remove it manually after copy to their local. (No auto delete feature in output folder)
db data extraction configuration table image
![image2020-8-14_14-56-11.png](/.attachments/77136026.png)




### How to get there?


Go to \\"Web Server"\ngMES_Import\Data Extraction\CurrentLocationByBatchWip (e.g. in QA env it is at \\AZAPSEIFQAWB81\ngMES_Import\Data Extraction\CurrentLocationByBatchWip\ )


#### Screen Activity


The CurrentLocationByBatchWIP data extraction contain the following folders:

- **\Data Extraction\CurrentLocationByBatchWip\Source\Drop**
– A folder for user to drop source csv file. User allow to drop few files at a time. System will read from this folder for every 10 minutes to process one file at a time.
- **\Data Extraction\CurrentLocationByBatchWip\Source\InProcess –**
A folder for system to copy over from Drop folder for processing. Only valid source file can be auto copy over for processing.
- **\Data Extraction\CurrentLocationByBatchWip\Source\Archive**
– A folder for system to move from InProcess to Archive folder once successfully generate an output csv. System will auto delete source file where it " 7 days. (configurable in db table.)
- **\Data Extraction\CurrentLocationByBatchWip\Output**
– A folder for system to generate an output csv file. It is advisable user take responsibility to copy and paste to local and manually delete it to keep storage available.

#### Pre-Condition



- CurrentLocationByBatchWIP data extraction package need to install in web server. User is require to have permission to access these folder for necessary action to perform (to view/delete/copy)

- Correct template and data. This is user responsibility to ensure the source file content is valid for processing. Ignore record will not notify as this data extraction process is avoiding too many checking causing long processing time.



#### Source CSV Input Parameter



![image2020-8-14_14-58-50.png](/.attachments/77136027.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Customer for the WIP serial number.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Division for the WIP serial number.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Material for the WIP serial number. Allow different material for each record in source fil</td></tr><tr><td colspan="1" class="confluenceTd">SerialNumber</td><td colspan="1" class="confluenceTd">Specify a unique serial number that match with above mention customer, division and material to process expected genealogy record in output csv file. Any exceeded records (start with 10001 record) or invalid record will be ignore for processing.</td></tr></tbody></table>

**Source file template:**  
[CurrentLocationByBatchWip Data Extraction Template.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Current-Location-By-Batch-WIP-Data-Extraction.md)

**Generate CSV Output Fields** 
![image2020-8-14_15-2-2.png](/.attachments/77136030.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The customer that pass in from the source file.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The division that pass in from the source file.</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd"><p>The batch number of this WIP serial number.</p></td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd"><p>The factory where this WIP serial number released.</p></td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">The manufacturing area where this WIP serial number released.</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The route where this WIP serial number released.</td></tr><tr><td colspan="1" class="confluenceTd">Current Location</td><td colspan="1" class="confluenceTd"><p>Current route step where this WIP placed.</p><ul><li>Show in-process route step if a WIP is in process (already have history created for arrived/started) at a step.</li><li>Show last route step if a WIP is in queue but yet to process at in queue route step.</li><li>Show blank for new released WIP yet to process in any initial route step. </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly of this WIP serial number.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number </td><td colspan="1" class="confluenceTd"><p>The WIP serial number that pass in from the source file.</p></td></tr><tr><td colspan="1" class="confluenceTd">Container</td><td colspan="1" class="confluenceTd">Show the container number if the WIP is packed in a container.</td></tr><tr><td colspan="1" class="confluenceTd">Pallet</td><td colspan="1" class="confluenceTd">Show the pallet number if the WIP's container is packed in a pallet.</td></tr></tbody></table>


- **Show the pallet number if the WIP’s container is packed in a pallet.**



#### Attachments

[image2020-8-6_14-19-42.png](/.attachments/77136009.png)
[image2020-7-27_13-12-35.png](/.attachments/77136010.png)
[BatchWIPGenealogy Data Extraction Template.csv](/.attachments/77136011.csv)
[image2020-7-27_13-3-22.png](/.attachments/77136012.png)
[image2020-7-27_12-57-55.png](/.attachments/77136013.png)
[image2020-5-18_16-20-22.png](/.attachments/77136014.png)
[image2020-5-18_16-16-17.png](/.attachments/77136015.png)
[Smaller.jpg](/.attachments/77136016.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/77136017.jpg)
[image2013-7-9 13:37:43.png](/.attachments/77136018.png)
[image2013-7-9 13:36:46.png](/.attachments/77136019.png)
[image2013-7-9 13:35:13.png](/.attachments/77136020.png)
[image2020-3-25_14-6-43.png](/.attachments/77136021.png)
[image2020-3-25_14-18-49.png](/.attachments/77136022.png)
[image2020-5-29_16-53-38.png](/.attachments/77136023.png)
[image2020-5-29_16-54-9.png](/.attachments/77136024.png)
[image2020-5-29_16-55-45.png](/.attachments/77136025.png)
[image2020-8-14_14-56-11.png](/.attachments/77136026.png)
[image2020-8-14_14-58-50.png](/.attachments/77136027.png)
[CurrentLocationByBatchWip Data Extraction Template - Copy.csv](/.attachments/77136028.csv)
[CurrentLocationByBatchWip Data Extraction Template.csv](/.attachments/77136029.csv)
[image2020-8-14_15-2-2.png](/.attachments/77136030.png)
