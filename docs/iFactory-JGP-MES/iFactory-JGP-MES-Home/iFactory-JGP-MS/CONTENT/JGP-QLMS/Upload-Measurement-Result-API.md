# Introduction

This API is being used for uploading measurement result to QLMS through API. Input file is Json file format.
The front end being used for inserting Json file, is Swagger.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("Swagger UI")-->0("QLMS")
0-->1("UploadMeasurementResultAPI")

:::
![image2019-9-27_16-0-52.png](/.attachments/57639441.png)




#### **Permission** 



- Can access API Wrapper



#### **UploadMeasurementResultAPI Activity** 



- Uploads measurement result against existing Work Order

- Validates the mandatory fields and mandates user to enter all details in Json format

- Validates user's entry against each field (as mentioned in Field Details table below) and on passing all the conditions, a success message appears on uploading measurement API.

- User can insert multiple measurement details against 1 work order ID

- User should be able to upload a list of measurement Details against same / different WO

- System validates if the provided sample number is within quantity range that defined for the cavity in Work Order Inspection Registration page

- System will modify existing measurement details record when the same set of Sample No, Trial No., Production Machine ID, Mold ID, Cavity data are being uploaded with different Equipment Model (same Equipment Type) and results against same WO

- Measurement Result entry to be considered duplicate, if user tries to upload
same combination of data (WO, Trial No., Sample No. Prod Machine ID, Mold ID and Cavity, Measured Datetime, Measured Data) against same Equipment Model of same Equipment type. System restricts here saying the Measurement results already exists in system against provided WO.

- System allows user to upload different measurement result in different measuring time against different Equipment Model of same Equipment Type keeping all other set of data as existing. In this case, system is going to reflect only latest data. Old data will no more exists in system (Soft delete, DB will still store the value as NOT current)
For example:
WO ID             Measuring Equipment      Eqp Type      All Other Data          Measuring Datetime         Measured Data
WO123ID        Eqp1                                 ET1               XYZ                           11/11/2019 11:00              20.01

WO123ID        Eqp2                                 ET1               XYZ                           11/11/2019 11:10              20.8In the above scenario system is going to reflect latest data and hence the DB table will update the isCurrent = '1' for latest record whereas the old data 'IsCurrent' value will change '1' to '0' 

- System will map the log file data into QLMS basedon the keys: WO +Item Number and/or Production Machine ID, Cavity, Sample Number.

- System need to validate:


- the Production Machine ID in the QLMS if the Production Machine ID is provided based on WorkorderID + Item Number and/or Production Machine ID, Cavity, Sample Number.


- the Cavity in the QLMS if the Cavity is provided based on WorkorderID + Item Number and/or Production Machine ID, Cavity, Sample Number.


- the Sample Number in the QLMS if the Sample Number is provided based on WorkorderID + Item Number and/or Production Machine ID, Cavity, Sample Number.


- the Item Number in the QLMS if the provided Item Number is available in the workorder ID..

For example:
WO ID          Measuring Equipment Model    Measuring User    Measuring User ID    Production Machine ID    Mold ID    Cavity Number    Item Number    Sample Number    Measuring Date Time    Dimension Code    Measured Data
WO1231D    Eqp1                                           User01                   U1234                       Prd1                                 1                1                          1                        1                           08/12/2020 10:00:00      GU1                        22.05
WO1231D    Eqp1                                           User01                   U1234                       Prd1                                                   1                          1                        2                           08/12/2020 10:00:00      GU2                         29.77
WO1231D    Eqp1                                           User01                   U1234                                                                                                              3                                                     08/12/2020 10:00:00      GU3                        24.8
WO1231D    Eqp1                                           User01                   U1234                       Prd1                                                   1                                                     4                           08/12/2020 10:00:00      GU4                        11.3




#### **Pre-condition** 



- At-least one
[ ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)
Work Order with mapped Measuring Equipment Model must be available in System
- User must have Swagger access


**Sample Files:** 
[Sample_Data_1_TrialNumber.json](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)
[Sample_Data_2_MultipleUpload.json](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)
[Sample_Data_3_MoldID&PRD&Cavity&SampleNumber.json](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)
[Sample_Data_4_ItemNumber.json](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)
[Sample_Data_5PRD&Cavity&SampleNumber.json](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)



#### **jSon file columns value (Field Details)** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p><strong><span style="color: black;">Parameter</span></strong></p></td><td class="confluenceTd"><p><strong><span style="color: black;">Description</span></strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Work Order ID</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with string value. System validates if the provided Work order ID exists in system. If not, throws below error message and does not insert anything or insert non-existing value</p><ol><li><span style="color: black;"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="155" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639442.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639442.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639442" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-14-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></span></li><li><span style="color: black;"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="141" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639443.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639443.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639443" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-15-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></span></li></ol><p><br /></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Measuring Equipment Model</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with string value. System validates and throws below error messages if does not insert anything or insert valid non-mapped equipment</p><ol><li><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="43" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639444.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639444.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639444" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-18-17.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></li><li><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="29" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639445.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639445.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639445" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-19-8.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></li></ol><p><br /></p><p><span style="color: black;"><br /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Measuring user</span></p></td><td class="confluenceTd"><p>This field is single entry with string value. System does not validate anything here. This is just for recording purpose and optional field.</p><p>Preferred format: </p><ul><li><span>FirstName + Space + LastName</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Employee ID</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with string value. System does not validate anything here but mandatory to enter. If not provided, system throw below error<span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="31" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639446.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639446.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639446" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-21-56.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Trial Number</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with string value. System forces the value entry only when job type of the work order is of GRR type. The expected value lies among 1/2/3. System throw validation error if job type is GRR and user still not provided Trial number:</p><ol><li><span><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="33" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639447.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639447.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639447" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-24-24.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></span></li><li><span>If the value is out of range, the system shows below</span></li></ol><p><span><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639448.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639448.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639448" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-25-54.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></span></p><p><br /></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Config</span></p></td><td class="confluenceTd"><p>This field is single entry with string value. System does not validate anything here and is optional field.</p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Production Machine ID</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with optional string value. If user not provide the Item number then Production Machine ID filed is mandatory string value. If user removes Production Machine ID row or removes just the value within "", system accepts the Production Machine ID as available against the provided WO. Otherwise system maps the Production Machine ID value with Production Equipment available against WO, if not matches, throws the error message:</p><p><span style="color: black;"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="37" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423237.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423237.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="62423237" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-12-27-9-2-35.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Mold ID/Tooling ID</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p><span style="color: black;">This field is single entry with optional string value. System will accept '0' and alphanumeric format value. If user removes Mold ID row, system accepts the Mold ID as available against the provided WO. Otherwise system maps the Mold ID value with available Mold ID against WO, if not matches, throws the error message:</span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="33" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423238.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423238.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="62423238" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-12-27-9-8-51.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Cavity Number</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p><span style="color: black;">This field is single entry with optional string value. If user not provide the Item number then Cavity filed is mandatory string value. System forces user to enter <span style="color: rgb(32,31,30);">only one cavity for the workorder ID if the Job Type contains value “ GRR”</span>. For non-GRR Job Type, user may enter single cavity values though. Throws error in case validation fails on multiple entry attempt of Cavity for GRR Job type:</span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="37" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639451.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639451.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639451" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-33-31.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with optional integer value. If user not provide the Production Machine ID, Cavity, Sample Number then Item Number filed is mandatory integer value. System will check if the provided Item Number is available in the workorder ID. If not, system will throws error if does not insert anything or insert invalid item number.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="899" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/71370338.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/71370338.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="71370338" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-6-11-14-39-7.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Sample Number</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with optional integer value. If user not provide the Item number then Sample Number filed is mandatory integer value. System will check if the provided sample number is within the range of Quantity provided by user for each cavity in Inspection Registration page. System restricts with an error message if Sample Number <span style="color: rgb(0,0,0);">is out of the quantity's range for each cavity.</span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="18" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639452.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639452.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639452" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-35-12.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="35" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/61079874.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/61079874.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="61079874" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-12-5-9-3-1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Dimension Code</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with string value. If the provided dimension code is available against Dimension maintenance screen satisfying all the criteria, system automatically fills up data for Nominal, +TOL and -TOL in backend (DB). Otherwise, these data shows blank there.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="22" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639457.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639457.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639457" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-45-10.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Measured Data</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with decimal value (greater than 0). System does not validate anything here although its mandatory field for user.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="20" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639456.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639456.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639456" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-44-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Serial Number</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p><span style="color: black;">System validates the serial number only if the workorder's process type is repetitive. For lot/batch type, it is optional field with no validation. For repetitive system checks if the provided Serial Number (multiple entry) really exists or not.<br /><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="899" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/71370340.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/71370340.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="71370340" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-6-11-14-40-40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span><br /></span></p></div></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Measuring DateTime</span></p></td><td class="confluenceTd"><div class="content-wrapper"><p>This field is single entry with date time format (MM/DD/YYYY HH:MM:SS). Also a mandatory field and system throw error if the format does not match or user does not provide the value at all.</p><p><span style="letter-spacing: 0.0px;"> </span><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="29" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639455.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639455.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639455" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-27-16-38-10.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639440" data-linked-resource-container-version="19" /></span></p></div></td></tr></tbody></table>













#### Attachments

[image2019-9-27_16-0-52.png](/.attachments/57639441.png)
[image2019-9-27_16-14-48.png](/.attachments/57639442.png)
[image2019-9-27_16-15-2.png](/.attachments/57639443.png)
[image2019-9-27_16-18-17.png](/.attachments/57639444.png)
[image2019-9-27_16-19-8.png](/.attachments/57639445.png)
[image2019-9-27_16-21-56.png](/.attachments/57639446.png)
[image2019-9-27_16-24-24.png](/.attachments/57639447.png)
[image2019-9-27_16-25-54.png](/.attachments/57639448.png)
[image2019-9-27_16-30-23.png](/.attachments/57639449.png)
[image2019-9-27_16-31-50.png](/.attachments/57639450.png)
[image2019-9-27_16-33-31.png](/.attachments/57639451.png)
[image2019-9-27_16-35-12.png](/.attachments/57639452.png)
[image2019-9-27_16-36-14.png](/.attachments/57639453.png)
[image2019-9-27_16-36-53.png](/.attachments/57639454.png)
[image2019-9-27_16-38-10.png](/.attachments/57639455.png)
[image2019-9-27_16-44-48.png](/.attachments/57639456.png)
[image2019-9-27_16-45-10.png](/.attachments/57639457.png)
[Sample_Data_2.json](/.attachments/61079872.json)
[Sample_Data_1.json](/.attachments/61079871.json)
[Sample_Data_1.json](/.attachments/57639459.json)
[Sample_Data_2.json](/.attachments/57639458.json)
[image2019-12-5_9-3-1.png](/.attachments/61079874.png)
[image2019-12-27_9-2-35.png](/.attachments/62423237.png)
[image2019-12-27_9-8-51.png](/.attachments/62423238.png)
[image2020-6-11_14-38-23.png](/.attachments/71370337.png)
[image2020-6-11_14-39-7.png](/.attachments/71370338.png)
[image2020-6-11_14-40-40.png](/.attachments/71370340.png)
[Sample_Data_1_TrialNumber.json](/.attachments/77136178.json)
[Sample_Data_2_MultipleUpload.json](/.attachments/77136179.json)
[Sample_Data_3_MoldID&PRD&Cavity&SampleNumber.json](/.attachments/77136180.json)
[Sample_Data_4_ItemNumber.json](/.attachments/77136181.json)
[Sample_Data_5PRD&Cavity&SampleNumber.json](/.attachments/77136182.json)
[Sample_Data_1_TrialNumber.json](/.attachments/77136173.json)
[Sample_Data_2_MultipleUpload.json](/.attachments/77136174.json)
[Sample_Data_3_MoldID&PRD&Cavity&SampleNumber.json](/.attachments/77136175.json)
[Sample_Data_4_ItemNumber.json](/.attachments/77136176.json)
[Sample_Data_5PRD&Cavity&SampleNumber.json](/.attachments/77136177.json)
[image2020-8-19_11-1-43.png](/.attachments/77136185.png)
