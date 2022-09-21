# Introduction


ECC integration Log Viewer displays all logged information of all messages flowing between SAP and Phoenix system. The log viewer includes successful and failed messages which serves as a platform for troubleshooting errors.

How to get there?


::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("ECC INTEGRATION LOG VIEWER")

:::


### Screen Activity


ECC Integration Log Viewer enables user to perform the following activity:

- Search and view history log of all messages between SAP and Phoenix system




#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><span style="color: rgb(0,51,102);">Field</span></th><th class="confluenceTh"><span style="color: rgb(0,51,102);">Description</span></th></tr><tr><td class="confluenceTd">Message Type</td><td class="confluenceTd"><p>User can select the specific message type of which the history log they wish to view</p><ol><li>Phoenix Queue Monitor - Includes all messages between SAP to Phoenix</li><li>Phoenix Data Extractor - Includes all messages sent from Phoenix to SAP.</li></ol></td></tr><tr><td class="confluenceTd">Date Time From</td><td class="confluenceTd">Sets the intended starting date time</td></tr><tr><td class="confluenceTd">Date Time To</td><td class="confluenceTd">Sets the intended ending date time</td></tr><tr><td colspan="1" class="confluenceTd">Refresh button</td><td colspan="1" class="confluenceTd">Refreshes the data to latest available in the result grid</td></tr><tr><td colspan="1" class="confluenceTd"><p>ApplicationName</p></td><td colspan="1" class="confluenceTd"><p>The message type a message belongs to</p><p>Example:</p><p><strong>Phoenix Queue Monitor</strong> - The message is being processed by the Phoenix Queue Monitor application<br /><strong>Phoenix Data Extractor</strong> <span>- The message is being processed by the Phoenix Queue Monitor application</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Module Name</td><td colspan="1" class="confluenceTd">The module a message belongs to</td></tr><tr><td colspan="1" class="confluenceTd">Severity</td><td colspan="1" class="confluenceTd"><p>The nature of a message</p><p>Example:</p><p>Information - Normally associated to a successful message processing<br /><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Error/Warning - The particular message failed to be processed successfully. Details of the error can be seen in the Message column<br />Start/Stop - Indication of a specific Start or Stop action in the MSMQ server or message monitor service.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Date Time</td><td colspan="1" class="confluenceTd">The date time when the message was processed</td></tr><tr><td colspan="1" class="confluenceTd">Machine Name</td><td colspan="1" class="confluenceTd">The machine that processed the message</td></tr><tr><td colspan="1" class="confluenceTd">Message</td><td colspan="1" class="confluenceTd">The message content</td></tr><tr><td colspan="1" class="confluenceTd">Remarks</td><td colspan="1" class="confluenceTd">Additional remarks contained in the message</td></tr></tbody></table>





