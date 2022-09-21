# Introduction


In Phoenix, the Analysis Flag is used to gauge the analysis and rework accuracy performed by the technician. There are two types of analysis flags available, each with a different logic. Line supervisor has the option to measure technician's debug efficiency by using either or both flags.



- **Analysis Flag Type 1:**

indictmentstatusid
This flag is designed to gauge the accuracy of the analysis & rework performed on the previous symptom


- **Analysis Flag Type 2:**

indictmentstatuspassid
This flag is designed to gauge the accuracy of the analysis & rework performed to fix the overall WIP

The Analysis Flags can change to 4 different states: Unconfirmed, Confirmed, Correct and Incorrect. The following rules are applied in the logic of these flags:

- If WIP fails on the initial test and has not been retested, both flags are UNCONFIRMED


- If additional defect is found during Analysis, both flags are UNCONFIRMED for the new defect found


- If WIP is retested with

*no* Analysis is performed, both flags will change to CONFIRMED regardless of the retest result
- If WIP is retested after Analysis is performed

, both flags will change to either CORRECT or INCORRECT

Key Notes
The table and flow chart below describes the scenarios when the analysis flags change their states 

![image2012-8-22 12:50:35.png](/.attachments/29919479.png)



<table class="confluenceTable"><colgroup><col /> <col /> <col /> <col /> <col /> <col /> <col /> </colgroup><tbody><tr><td class="highlight confluenceTd"> </td><td class="highlight confluenceTd">Initial Test Result</td><td class="highlight confluenceTd">Analysis & Rework</td><td class="highlight confluenceTd">Retest Result</td><td class="highlight confluenceTd">Retest Details</td><td class="highlight confluenceTd">indictmentstatusid</td><td class="highlight confluenceTd">indictmentstatuspassid</td><td class="highlight confluenceTd">Notes</td></tr><tr><td class="confluenceTd">1</td><td class="confluenceTd">PASS</td><td class="confluenceTd">N/A</td><td class="confluenceTd">N/A</td><td class="confluenceTd">N/A</td><td class="confluenceTd">N/A</td><td class="confluenceTd">N/A</td><td class="confluenceTd"> -</td></tr><tr><td class="confluenceTd">2</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">-</td><td class="confluenceTd">-</td><td class="confluenceTd">-</td><td class="confluenceTd">UNCONFIRMED</td><td class="confluenceTd">UNCONFIRMED</td><td class="confluenceTd">Board indicted. No analysis performed yet.</td></tr><tr><td class="confluenceTd">3</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">Additional Defect found</td><td class="confluenceTd">-</td><td class="confluenceTd">-</td><td class="confluenceTd">UNCONFIRMED</td><td class="confluenceTd">UNCONFIRMED</td><td class="confluenceTd">Board indicted. No analysis performed yet.</td></tr><tr><td class="confluenceTd">4</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">No Analysis performed</td><td class="confluenceTd">PASS</td><td class="confluenceTd">-</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">Board retested. Flag does not change to Correct/Incorrect as no Analysis performed.</td></tr><tr><td class="confluenceTd">5</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">No Analysis performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with different Symptom</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">Board retested. Flag does not change to Correct/Incorrect as no Analysis performed.</td></tr><tr><td class="confluenceTd">6</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">No Analysis performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with same Symptom</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">Board retested. Flag does not change to Correct/Incorrect as no Analysis performed.</td></tr><tr><td class="confluenceTd">7</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">Analysis performed but No Rework performed</td><td class="confluenceTd">PASS</td><td class="confluenceTd">PASS on the previous Symptom</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd"><span>Technician analyzes the board but did not perform any rework as no defect found. </span>The technician sent WIP to retest without rework and it passes. The technician's analysis & rework performed was right.</td></tr><tr><td class="confluenceTd">8</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">Analysis performed but No Rework performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with different Symptom</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">Technician analyzes the board but did not perform any rework to fix the symptom. In retest, previous symptom fixed but overall board still fails.</td></tr><tr><td class="confluenceTd">9</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">Analysis performed but No Rework performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with same Symptom</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">Technician analyzes the board but did not perform any rework to fix the symptom. Previous symptom not fixed and overall board still fails.</td></tr><tr><td class="confluenceTd">10</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">Analysis & Rework performed</td><td class="confluenceTd">PASS</td><td class="confluenceTd">PASS on the previous Symptom</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd">Technician's analysis & rework fixes the failure.</td></tr><tr><td class="confluenceTd">11</td><td class="confluenceTd">FAIL</td><td class="confluenceTd"><span>Analysis & Rework </span> performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with different Symptom</td><td class="confluenceTd">CORRECT</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">Technician's <span>analysis & rework</span> fixes the previous symptom but overall, the board still fails.</td></tr><tr><td class="confluenceTd">12</td><td class="confluenceTd">FAIL</td><td class="confluenceTd"><span>Analysis & Rework </span> performed</td><td class="confluenceTd">FAIL</td><td class="confluenceTd">FAIL with same  Symptom</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">Technician's <span>analysis & rework </span>does not fix the previous symptom and overall the board still fails.</td></tr></tbody></table>



#### Attachments

[image2012-8-22 13:2:38.png](/.attachments/29919478.png)
[image2012-8-22 12:50:35.png](/.attachments/29919479.png)
[image2012-8-22 12:49:46.png](/.attachments/29919480.png)
