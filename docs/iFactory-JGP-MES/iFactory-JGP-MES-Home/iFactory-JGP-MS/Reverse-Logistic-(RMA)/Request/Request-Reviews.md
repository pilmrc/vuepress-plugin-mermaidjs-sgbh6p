# Introduction

Request Review allows to the RMA coordinator Accept, Reject, put on hold or Cancel an RMA Requwar. The following are the RMA request status:
![image2017-7-4 16:24:57.png](/.attachments/29920939.png)


Can not be possible to add RMA Serial Numbers in this phase. 
Allows you to put On Hold or Off Hold, Accept, Cancel, Reject, Scrap/Unscrap/
substitute
and Close the Serial Numbers, for closing and Scrap the RMA Request Needs to be dispatched and there is an option on the search as default off to look for the RMA Request Dispatched, needs to be turn on. ![image2017-9-26 23:53:6.png](/.attachments/29920937.png)







### How to get there?



::: mermaid
graph LR
A("REQUEST")-->0("REQUEST REVIEWS")

:::


#### Screen Activity


Request creation enables user to perform the following activity with the RMA request:

- Modify

- Accept.

- Reject.

- Cancel


- On/Off Hold
Request creation enables user to perform the following activity with the Serial Numbers

- Accept.

- Reject.

- Cancel

- On/Off Hold

- Scrap/UnScrap/Substitute

- Close
It is possible to Scrap a Serial Number click just in Scrap and must enter a comment. Only it is possible to do it when the Serial Number it is in status of dispatched. 
![image2017-9-27 7:32:38.png](/.attachments/29920932.png)


It is possible to UnScrap a Serial Number previously scrapped if the Request it is not closed. The Serial Number Unscrapped will return to the last status. 
![image2017-9-27 7:31:41.png](/.attachments/29920933.png)


When Change the Serial Number for another the system it is validating the information related to the Material (Barcode Mask, Return Limit, etc). Once the Serial Number is entered and comment click in Okay and it will be ready for dispatch. When Dispatch a subtitute Serial Number it doesnt incremenet the return count. 
![image2017-9-27 7:28:45.png](/.attachments/29920934.png)




#### Pre Condition



- Shall exists RMA requests status other than Draft and Close.


#### Screen Dependency


The following screen(s) has direct dependency with Review:

- Request Dispatch


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="RequestReviews-RequestHeader"><strong>Request Header</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Accept</p></td><td class="confluenceTd"><p>Can be possible to accept the RMA request</p></td></tr><tr><td class="confluenceTd"><p>Reject</p></td><td class="confluenceTd"><p><span>Can be possible to Reject the RMA request. A comment must to be entered.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd"><span>Can be possible to Cancel the RMA request <span>. A <span>comment </span>must to be entered.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd"><p><span>Can be possible to On/Off Hold the RMA request. <span>A <span>comment </span>must to be entered.</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"><h5 style="text-align: center;" id="RequestReviews-SerialNumberStatus">Serial Number Status</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(51,51,51);">Field </span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(51,51,51);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd"><span>Can be possible to Cancel the Serial Number. A comment must be entered </span></td></tr><tr><td colspan="1" class="confluenceTd">Reject</td><td colspan="1" class="confluenceTd"><span>Can be possible to Cancel the Serial Number. A comment must be entered </span></td></tr><tr><td colspan="1" class="confluenceTd"><p>On/Off Hold</p></td><td colspan="1" class="confluenceTd"><span>Can be possible to On/Off the Serial Number before the Serial Number is Accepted. A comment must be entered </span></td></tr><tr><td colspan="1" class="confluenceTd">Accept</td><td colspan="1" class="confluenceTd"><span>Can be possible to Accept the Serial Number when status is pending or On Hold. A comment must be entered </span></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">It contains to option to see the <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920929.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920929.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920929" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-9-27 12:50:28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920928" data-linked-resource-container-version="1" /></span>Serials Property and <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920930.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920930.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920930" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-9-27 12:49:49.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920928" data-linked-resource-container-version="1" /></span>Replace Serial option</td></tr><tr><td colspan="1" class="confluenceTd">Scrap</td><td colspan="1" class="confluenceTd">Can be possible to Scrap a Serial that was dispached and if the Request it is not close</td></tr><tr><td colspan="1" class="confluenceTd">UnScrap</td><td colspan="1" class="confluenceTd"><span>Can be possible to Un scrap a Serial that was scrapped</span></td></tr><tr><td colspan="1" class="confluenceTd">Replace <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="50" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920931.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920931.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920931" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-9-27 12:46:57.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920928" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">It is possible to Replace a scrapped serial number. The option will appear just for those serial numbers scrapped under Action.</td></tr><tr><td colspan="1" class="confluenceTd">Close</td><td colspan="1" class="confluenceTd"><span>Can be possible to Close the Serial Number. A comment must be entered. Only wil lbe possible to Close those Serial Numbers that are already dispatched. Once it is closed the serial number can be added again</span></td></tr></tbody></table>



#### Attachments

[image2017-9-27 12:50:28.png](/.attachments/29920929.png)
[image2017-9-27 12:49:49.png](/.attachments/29920930.png)
[image2017-9-27 12:46:57.png](/.attachments/29920931.png)
[image2017-9-27 7:32:38.png](/.attachments/29920932.png)
[image2017-9-27 7:31:41.png](/.attachments/29920933.png)
[image2017-9-27 7:28:45.png](/.attachments/29920934.png)
[image2017-9-27 7:28:28.png](/.attachments/29920935.png)
[image2017-9-27 7:25:54.png](/.attachments/29920936.png)
[image2017-9-26 23:53:6.png](/.attachments/29920937.png)
[image2017-7-4 16:39:22.png](/.attachments/29920938.png)
[image2017-7-4 16:24:57.png](/.attachments/29920939.png)
[image2016-3-18 17:18:3.png](/.attachments/29920940.png)
[image2015-8-24 14:5:32.png](/.attachments/29920941.png)
[image2015-8-24 14:5:7.png](/.attachments/29920942.png)
[image2015-8-24 14:3:11.png](/.attachments/29920943.png)
[image2015-8-19 15:13:57.png](/.attachments/29920944.png)
