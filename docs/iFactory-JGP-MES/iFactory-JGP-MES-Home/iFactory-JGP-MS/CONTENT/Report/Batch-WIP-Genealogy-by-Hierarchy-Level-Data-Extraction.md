# Introduction



The BatchWIPGenealogyByHierarchyLevel data extraction is a new method to allow huge data extraction reading from a CSV input file and generate its result to a CSV output file by integrated service. User has option to place more than one input files at predefine drop folder and system will copy one file at a time to process folder for processing. Once completed the data extraction process, an output file generated at output folder and previous dropped input file will move to archive folder. The input file is limited to 10K of records for processing and each time will read 1k of records to process (configurable by DBA in db for data extraction configuration).  Any exceeded records (start with 10001 record) or invalid record will be ignore for processing. This is user responsibility to ensure the input file content is valid for processing. Ignore record will not notify as this data extraction process is avoiding too many checking causing long processing time.
The file in archive folder will be remove by system after 7 days to avoid storage issue (configurable by DBA in db for data extraction configuration). The output folder’s file is advisable user to remove it manually after copy to their local. (No auto delete feature in output folder)
db data extraction configuration table image
![image2020-8-6_14-19-42.png](/.attachments/75596510.png)




### How to get there?


Go to \\"Web Server"\ngMES_Import\Data Extraction\Genealogy (e.g. in QA env it is at \\AZAPSEIFQAWB81\ngMES_Import\Data Extraction\Genealogy\ )


#### Screen Activity


The BatchWIPGenealogyByHierarchyLevel data extraction contain the following folders:

- **\Data Extraction\Genealogy\Source\Drop**
– A folder for user to drop source csv file. User allow to drop few files at a time. System will read from this folder for every 10 minutes to process one file at a time.
- **\Data Extraction\Genealogy\Source\InProcess –**
A folder for system to copy over from Drop folder for processing. Only valid source file can be auto copy over for processing.
- **\Data Extraction\Genealogy\Source\Archive**
– A folder for system to move from InProcess to Archive folder once successfully generate an output csv. System will auto delete source file where it " 7 days. (configurable in db table.)
- **\Data Extraction\Genealogy\Output**
– A folder for system to generate an output csv file. It is advisable user take responsibility to copy and paste to local and manually delete it to keep storage available.

#### Pre-Condition



- BatchWIPGenealogyByHierarchyLevel data extraction package need to install in web server. User is require to have permission to access these folder for necessary action to perform (to view/delete/copy)

- Correct template and data. This is user responsibility to ensure the source file content is valid for processing. Ignore record will not notify as this data extraction process is avoiding too many checking causing long processing time.



#### Source CSV Input Parameter



![image2020-7-27_13-3-22.png](/.attachments/75596199.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Customer for the WIP serial number.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Division for the WIP serial number.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Mandatory to provide a valid Material for the WIP serial number. Allow different material for each record in source fil</td></tr><tr><td colspan="1" class="confluenceTd">SerialNumber</td><td colspan="1" class="confluenceTd">Specify a unique serial number that match with above mention customer, division and material to process expected genealogy record in output csv file. Any exceeded records (start with 10001 record) or invalid record will be ignore for processing.</td></tr><tr><td colspan="1" class="confluenceTd">HierarchyLevel</td><td colspan="1" class="confluenceTd"><p>Specify the hierarchy level to produce base on the WIP serial number provided.</p><p>Allow different hierarchy level for each record in source file.</p><p>0 – Direct hierarchy level for the WIP serial number passing in.</p><p>1 – The consumed items of 0 level WIP serial number passing in.</p><p>2 – The consumed items of 1 level WIP serial number passing in.</p><p>Etc.</p></td></tr></tbody></table>

**Source file template:**  
[BatchWIPGenealogy Data Extraction Template.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Batch-WIP-Genealogy-by-Hierarchy-Level-Data-Extraction.md)

**Generate CSV Output Fields** 
![image2020-7-27_13-12-35.png](/.attachments/75596201.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">SerialNumber</td><td colspan="1" class="confluenceTd">The WIP serial number that pass in from the source file.</td></tr><tr><td colspan="1" class="confluenceTd">ParentIdentifier</td><td colspan="1" class="confluenceTd">The WIP serial number that is the parent of the genealogy items. Parent will only show for the serial with genealogy.</td></tr><tr><td colspan="1" class="confluenceTd">Level</td><td colspan="1" class="confluenceTd"><p>The hierarchy level of the parent serial. Only the request hierarchy will be shown.</p></td></tr><tr><td colspan="1" class="confluenceTd">MaterialType</td><td colspan="1" class="confluenceTd"><p>The genealogy item's material type. Eg. WIP, Child WIP, Serialized Material and Unsterilized Material.</p></td></tr><tr><td colspan="1" class="confluenceTd">MaterialName</td><td colspan="1" class="confluenceTd">The genealogy item's material name.</td></tr><tr><td colspan="1" class="confluenceTd">MaterialDesc</td><td colspan="1" class="confluenceTd">The genealogy item's material description.</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p>The genealogy item's CRD, if any. Leave as blank if don't have such info.</p></td></tr><tr><td colspan="1" class="confluenceTd">Identifier</td><td colspan="1" class="confluenceTd">The genealogy item's serial number, if any. Leave as blank if don't have such info.</td></tr><tr><td colspan="1" class="confluenceTd">GRN </td><td colspan="1" class="confluenceTd"><p>The genealogy item's GRN, if any. Leave as blank if don't have such info.</p>Note: the csv value start with ' to indicate it as string, otherwise GRN number 0000000000000001 will be show number as 1.</td></tr><tr><td colspan="1" class="confluenceTd">AssembledBy</td><td colspan="1" class="confluenceTd">The genealogy item's assembled by which user.</td></tr><tr><td colspan="1" class="confluenceTd">AssembleDate</td><td colspan="1" class="confluenceTd">When the genealogy item's assembled.</td></tr><tr><td colspan="1" class="confluenceTd">QTY</td><td colspan="1" class="confluenceTd">The genealogy item's assembled qty, if any. Leave as blank if don't have such info.</td></tr><tr><td colspan="1" class="confluenceTd">AssembledAt</td><td colspan="1" class="confluenceTd">The genealogy item's consumed at which routestep.</td></tr></tbody></table>

**The genealogy item’s material type. Eg. WIP, Child WIP, Serialized Material and Unsterilized Material.** 
MaterialNameThe genealogy item’s material name.MaterialDescThe genealogy item’s material description.CRDThe genealogy item’s CRD, if any. Leave as blank if don’t have such info.
IdentifierThe genealogy item’s serial number, if any. Leave as blank if don’t have such info.GRN The genealogy item’s GRN, if any. Leave as blank if don’t have such info.
Note: the csv value start with ‘ to indicate it as string, otherwise GRN number 0000000000000001 will be show number as 1.AssembledByThe genealogy item’s assembled by which user.AssembleDateWhen the genealogy item’s assembled.QTYThe genealogy item’s assembled qty, if any. Leave as blank if don’t have such info.AssembledAtThe genealogy item’s consumed at which routestep.

#### Attachments

[image2020-5-29_16-55-45.png](/.attachments/75596186.png)
[image2020-5-29_16-54-9.png](/.attachments/75596187.png)
[image2020-5-29_16-53-38.png](/.attachments/75596188.png)
[image2020-3-25_14-18-49.png](/.attachments/75596189.png)
[image2020-3-25_14-6-43.png](/.attachments/75596190.png)
[image2013-7-9 13:35:13.png](/.attachments/75596191.png)
[image2013-7-9 13:36:46.png](/.attachments/75596192.png)
[image2013-7-9 13:37:43.png](/.attachments/75596193.png)
[7-9-2013 2-58-11 PM.jpg](/.attachments/75596194.jpg)
[Smaller.jpg](/.attachments/75596195.jpg)
[image2020-5-18_16-16-17.png](/.attachments/75596196.png)
[image2020-5-18_16-20-22.png](/.attachments/75596197.png)
[image2020-7-27_12-57-55.png](/.attachments/75596198.png)
[image2020-7-27_13-3-22.png](/.attachments/75596199.png)
[BatchWIPGenealogy Data Extraction Template.csv](/.attachments/75596200.csv)
[image2020-7-27_13-12-35.png](/.attachments/75596201.png)
[image2020-8-6_14-19-42.png](/.attachments/75596510.png)
