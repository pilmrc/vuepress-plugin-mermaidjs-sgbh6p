# Introduction

Request Receive screen is designed for receiving the serials number in the floor, 
The system shall allow a user to receive the RMA Request Item with status of “Accepted” only. 
The system will identify any discrepancies between the serials number(s) being received and the units physically received.
***RECEIVE MANUALLY***  
for receiving manually, it is necessary to enter the Serial Number and click in "Add Serial Number". 
Then Click in "Receive Selected". 
If the serial number doens't match, the system will prompt to user if wants to add and receive it
![image2017-6-21 11:51:22.png](/.attachments/29920952.png)


If the Serial Number match, the Serial Number status will change to Received 
![image2017-6-21 12:24:20.png](/.attachments/29920951.png)



***RECEIVE BY FILE***  
If the receive is doing throught a file THERE IS NOT OPTION TO ADD SERIAL NUMBERS. For those that are new will display "is not found" and if clicked in Receive Selected only will change those that matched. 
![image2017-6-21 13:43:39.png](/.attachments/29920950.png)



How to get there?

::: mermaid
graph LR
A("REQUEST")-->0("RECEIVE ")

:::


### Screen Activity


Request Management enables user to perform the following activities:

- Add manually new Serial Numbers


- Receive Serial Numbers



#### Pre Condition


The following data needs to be pre-configured (if used) before user creates a RMA request: 

- Have a RMA Request Accepted


#### Screen Dependency



The following screen(s) has direct dependency with Request Receive:
- Request Review

- Request Management


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="RequestReceive-Buttons"><strong>Buttons</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920949.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920949.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920949" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-4 14:7:13.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920945" data-linked-resource-container-version="1" /></span></p></td><td class="confluenceTd"><p>It will allow to add Serial Numbers</p></td></tr><tr><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920947.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920947.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920947" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-4 14:8:0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920945" data-linked-resource-container-version="1" /></span></p></td><td class="confluenceTd"><p>click will receive the selected Serial Number</p></td></tr><tr><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920946.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920946.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920946" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-4 14:8:30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920945" data-linked-resource-container-version="1" /></span></p></td><td class="confluenceTd"><p><span>Option to load from a file </span></p></td></tr></tbody></table>



#### Attachments

[image2017-7-4 14:8:30.png](/.attachments/29920946.png)
[image2017-7-4 14:8:0.png](/.attachments/29920947.png)
[image2017-7-4 14:7:41.png](/.attachments/29920948.png)
[image2017-7-4 14:7:13.png](/.attachments/29920949.png)
[image2017-6-21 13:43:39.png](/.attachments/29920950.png)
[image2017-6-21 12:24:20.png](/.attachments/29920951.png)
[image2017-6-21 11:51:22.png](/.attachments/29920952.png)
[image2015-8-13 11:39:8.png](/.attachments/29920953.png)
[image2015-8-13 11:40:22.png](/.attachments/29920954.png)
[image2016-3-18 9:36:54.png](/.attachments/29920955.png)
[image2016-3-18 9:38:1.png](/.attachments/29920956.png)
[image2016-3-18 17:17:25.png](/.attachments/29920957.png)
[image2016-4-8 12:12:33.png](/.attachments/29920958.png)
[RMARequest.xsd](/.attachments/29920959.xsd)
[rmaRequest.xml](/.attachments/29920960.xml)
[RMASerials.txt](/.attachments/29920961.txt)
[image2016-4-8 12:34:36.png](/.attachments/29920962.png)
[RMASerials2.csv](/.attachments/29920963.csv)
[image2016-4-8 16:47:49.png](/.attachments/29920964.png)
