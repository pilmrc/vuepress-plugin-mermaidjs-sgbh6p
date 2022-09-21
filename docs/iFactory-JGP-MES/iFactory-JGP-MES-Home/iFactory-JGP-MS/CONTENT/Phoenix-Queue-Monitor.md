# Introduction



## Introduction

**Work in Progress** 
Phoenix Queue Monitor application is a Windows Service program that monitor MSMQ queue message and process it whether it is Inbound or Outbound message. Inbound message mean receive the queue message, process it and save or update to Phoenix database. Outbound message is referring to send the message from Phoenix to external application such as SAP or integration with Customer.
Phoenix Queue Monitor is design based on Plugins Architecture. It is extendable and able to support MSMQ based or File based monitor triggering and processing. It has base class to override the functionality and do whatever required for business requirement.
![image2018-2-19 13:35:57.png](/.attachments/29920170.png)




#### Attachments

[image2018-2-19 13:35:57.png](/.attachments/29920170.png)
