# Introduction

This rule allows 
user to select the units as sample and to be sent to a target route step randomly / non-randomly (formula-based). When a WIP passes configured route step where 'Route by Sampling' rule is defined, there is a chance (as per rule defined) that it will be sent to a different route step than the default Pass route step.

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><a href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope" rel="nofollow" style="text-decoration: none;">Application Scope</a></td><td style="text-align: left;" class="confluenceTd">Customer + Batch Tag Name + Destination Step (can be any step other than the configuration step) + Evaluation Step (can be any step other than the configuration step) + Number to Sample + Sample Size + Random</td></tr><tr><td class="highlight confluenceTd" style="text-align: left;" colspan="1">Conditions on availability</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Customer: Auto-populates as per Customer selected during login</p><p>Batch Tag Name: Generic and active Batch-tag to be displayed</p><p>Destination Step: This is destination Route step of WIP which is selected for Sampling</p><p>Evaluation Step: This is evaluation Route step of WIP which is selected for Sampling. The Sampling result depends on PASS/FAIL status of this step against sampled unit(s)</p><p>Number to Sample: Can be any integer value lesser than or equal to Sample size declared</p><p>Sample Size: Can be any integer value which defines that system can pick up the WIP till the size is being scanned in current route step</p><p>Random: Yes / No.</p><p>Note: System considers 'Customer + Batch Tag Name + Destination Step + Evaluation Step' unique key of the configuration. And system will not allow same rule with same Batch Tag number with different random value </p></td></tr></tbody></table>


**Pre-conditions:** 

- Active and Generic type batch-tag against partitioned Customer has to be available

- Sample By Route
**rule to be configured on either MIE (Manual Inspection Entry) or MOE (Manual Operation Entry)** station (as per current implementation)
- If user wants to configure this rule against Deviation, Deviation should be with New status.

**Sample Scenario:**  
After completing the "QC" route step, user wants to send some of the random completed WIPs as sample, for further inspection. If the sampled selected WIP is passed the Inspection (evaluation step), the whole lot of unit to be considered as Good units and user can proceed with further operation. If any unit has failed inspection status, the whole sample is considered as Bad products. And system will restricts all the units from pack-out as those unit sample is failed. System will restrict Packing of the units until the whole sample is passed.The units which are selected for sampling, are considered to move to certain step (Destination step) and can complete a series of operations before it actually enters to Evaluation step for sampling inspection. The series of steps can be configured as per user's choice and it will not be reflected against Sampling Result. Sampling result solely depends on evaluation step result of sampled unit.
**Sample Configuration:** 
Configure the Routing Rule at "QC" withbelow parameters.![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/e5614e78-ea4e-4f64-a666-cc7d7e97b5f4?fileName=image.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Customer Name</p></th><th style="text-align: left;" class="confluenceTh"><p>Batch Tag Name</p></th><th style="text-align: left;" class="confluenceTh"><p>Destination Step</p></th><th colspan="1" class="confluenceTh">Evaluation Step</th><th colspan="1" class="confluenceTh">Sample Size</th><th colspan="1" class="confluenceTh">Number to Sample</th><th style="text-align: left;" colspan="1" class="confluenceTh"><p>Random</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><em>Customer1</em></td><td style="text-align: left;" class="confluenceTd">BatchTag1</td><td style="text-align: left;" class="confluenceTd"><em>SampDestStep1</em></td><td colspan="1" class="confluenceTd"><em>SampEvalStep1</em></td><td colspan="1" class="confluenceTd">100</td><td colspan="1" class="confluenceTd">10</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>NO</p></td></tr><tr><td colspan="1" class="confluenceTd"><em>Customer1</em></td><td colspan="1" class="confluenceTd">BatchTag2</td><td colspan="1" class="confluenceTd"><em>SampDestStep1</em></td><td colspan="1" class="confluenceTd"><em>SampEvalStep2</em></td><td colspan="1" class="confluenceTd">11</td><td colspan="1" class="confluenceTd">5</td><td colspan="1" class="confluenceTd">NO</td></tr><tr><td colspan="1" class="confluenceTd"><em>Customer1</em></td><td colspan="1" class="confluenceTd">BatchTag3</td><td colspan="1" class="confluenceTd"><em>SampDestStep1</em></td><td colspan="1" class="confluenceTd"><em>SampEvalStep3</em></td><td colspan="1" class="confluenceTd">100</td><td colspan="1" class="confluenceTd">10</td><td colspan="1" class="confluenceTd">YES</td></tr></tbody></table>

**Sampling Selection Result:**  
This is applicable to any stations for process type Repetitive although we are implementing in 
**MIE and MOE** operation at this point of time.**1st Row:** 
System will match the WIP attribute against BatchTagName and if matches, it will calculate with all WIPs are to be sampled with the below formula: (Sample Size / Number to Sample) = 100/10So the selected WIPs should be: 10th scanned, 10\*2=20th scanned, 10\*3 = 30th scanned and so on till 100
**2nd Row:**  
System will match the WIP attribute against BatchTagName and if matches, it will calculate with all WIPs are to be sampled with the below formula: (Sample Size / Number to Sample) = 11/5= 2.2
So the selected WIPs should be: 
![](https://attachments.office.net/owa/Swagata_Banerjee@Jabil.com/service.svc/s/GetAttachmentThumbnail?id=AAMkADA0ZWY0Yjk0LWRkZmMtNDcyNi1iOGMzLWI1OGVhNThhZTA4ZgBGAAAAAADZJtglHdeWQ5XvpsDLB%2BJOBwDff2SFeXQSTazDE7EjDhNsAAAAAAEJAADff2SFeXQSTazDE7EjDhNsAAMe5xE2AAABEgAQAPFLPaeKIM9BhiofVNGuDLM%3D&thumbnailType=2&owa=outlook.office.com&scriptVer=2019111801.06&X-OWA-CANARY=qwhkpgqwe0CXVoPshxDbo8D84I-6dNcY4FSLtTgBAcMKI5vrosbMmw-RbdP_X7eEXcKyMUHJB7E.&token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjA2MDBGOUY2NzQ2MjA3MzdFNzM0MDRFMjg3QzQ1QTgxOENCN0NFQjgiLCJ4NXQiOiJCZ0Q1OW5SaUJ6Zm5OQVRpaDhSYWdZeTN6cmciLCJ0eXAiOiJKV1QifQ.eyJvcmlnaW4iOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsInZlciI6IkV4Y2hhbmdlLkNhbGxiYWNrLlYxIiwiYXBwY3R4c2VuZGVyIjoiT3dhRG93bmxvYWRAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIiwiaXNzcmluZyI6IldXIiwiYXBwY3R4Ijoie1wibXNleGNocHJvdFwiOlwib3dhXCIsXCJwcmltYXJ5c2lkXCI6XCJTLTEtNS0yMS0yODA1MDU4ODgxLTIwMjM1NzczNjAtMTY3MTMzNDY5NC0yNTAyNjEyMFwiLFwicHVpZFwiOlwiMTE1Mzk3NzAyNTM2NDA2NzQxN1wiLFwib2lkXCI6XCJkOWRkMWM2ZS05MjEzLTRkMDQtYTI1ZS00OGQ1NmY5YmRkYThcIixcInNjb3BlXCI6XCJPd2FEb3dubG9hZFwifSIsIm5iZiI6MTU3NTAyNDg3MSwiZXhwIjoxNTc1MDI1NDcxLCJpc3MiOiIwMDAwMDAwMi0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDBAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIiwiYXVkIjoiMDAwMDAwMDItMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2F0dGFjaG1lbnRzLm9mZmljZS5uZXRAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIn0.j_AYSuFfpHLklLp7cwVQiiNU0bsrf81NVbKywBMUvDbXdZ6zLC8l5UhLhLqz-oJsI8ikNbc5aZrj3BXAiHFK4jrcv_gjwmgNV-S2hb2D9nuKXCJPiY-8d9VhXuBPiwe70zqvLGi_9Yz31wDg7PoEAWVDs3svVwGyYR2_TErM89zGEeWwHuBvDo28LrtShAsK59vMttkmFH8UmXrEFaUhcJH5A4x-SuMkO95dI8s-JhHGglT8gpDdp41SzXAC7GHUfq70kqLIkHbjhGeYnTLDil6d5iPMrqrmq700DVPgfhS_6jyDm-4KVLWakEHWHn2-VrgcTfy9jBrw2lUdkbgH0g&animation=true)


**3rd Row:** 
System will select the sample unit randomly anywhere between 1st to 100th scanned WIP and the no. of selection will be 10.
**Sampling Status:** 
The sampling is considered as completed if

i. All the sampled units are processed the Evaluation Step with result of PASS. This scenario is considered to be Sample PASS
ii. At least one of the unit selected has the result of FAIL in Evaluation step, the whole sample is to be considered as FAIL



#### Attachments

[image2019-11-29_16-32-40.png](/.attachments/61079782.png)
[image2019-12-18_11-41-24.png](/.attachments/62423141.png)
[image2020-1-8_16-40-34.png](/.attachments/62423269.png)
