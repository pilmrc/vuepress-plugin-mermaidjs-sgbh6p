# Introduction


Lot Move is to move a carrier from one Route Step to a previously completed Route Step to re-inspect or re-process accordingly. This screen should be restricted to users with permission. 


### How to get there?



::: mermaid
graph LR
A("LOT")-->0("LOT MOVE")

:::


#### Permission


1)Can Access Lot/Batch Build- Lot -Lot Move-Allows the user to move a carrier back to a previous route step.


#### Screen Activity


Lot Move enables the user to perform the following activity:

- Manually move Lot from one Route Step to previously completed Route Step


#### Pre-Condition



- Lot is released to a Carrier

- Lot is not started at any Route Step

- Lot is not placed on hold

- Planned order for the Lot is not on hold

- Lot is not packed into a container


#### Screen Dependency


N/A


#### Process



- Scan Carrier Number


![](/.attachments/29917773.png)



- System load the Carrier with the Current Route / Route Step Information and Lot Comment



![](/.attachments/39649283.png)




- Search for Route Step. Search results will only return the Route Step that the Carrier went through before. If only one Route Step available, system will auto select.




![](/.attachments/39649284.png)



- Select a Route Step, Lot Comment and click "Move"



![](/.attachments/39649285.png)




- Move Carrier confirmation box prompt.Click Yes to continue, No will return to the screen



![](/.attachments/39649286.png)




- System returns message "Carrier "Carrier Number" has been enqueued at step "selected Route Step"" and clears the screen.


![image2019-5-9_13-14-50.png](/.attachments/48169657.png)




#### Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Carrier</p></td><td class="confluenceTd"><p>Scan an exact match Carrier Number</p></td></tr><tr><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917781.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917765/image2017-4-13%2010%3A28%3A51.png?version=1&modificationDate=1530103783260&api=v2" /></span></p></td><td class="confluenceTd"><p>Clear Carrier field and the entire screen</p></td></tr><tr><td class="confluenceTd"><p>Current Route / Route Step</p></td><td class="confluenceTd"><p>Carrier current in queue Route and Route Step</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd">Search a Route Step that the Carrier started/completed before</td></tr><tr><td colspan="1" class="confluenceTd">Lot Comment</td><td colspan="1" class="confluenceTd">Mandatory field to enter comment for Lot Move</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Close Carrier Maintenance Screen and go back to Carrier Menu</td></tr><tr><td colspan="1" class="confluenceTd">Move</td><td colspan="1" class="confluenceTd">Only available when a Route Step selected and move the Carrier to the selected Route Step</td></tr></tbody></table>



#### Attachments

[image2017-7-20 13:37:51.png](/.attachments/29917766.png)
[image2017-7-20 13:36:58.png](/.attachments/29917767.png)
[image2017-7-20 13:36:5.png](/.attachments/29917768.png)
[image2017-7-20 13:35:38.png](/.attachments/29917769.png)
[image2017-7-20 13:35:25.png](/.attachments/29917770.png)
[image2017-7-20 13:34:53.png](/.attachments/29917771.png)
[image2017-7-20 11:34:21.png](/.attachments/29917772.png)
[image2017-7-20 11:31:41.png](/.attachments/29917773.png)
[image2017-4-13 10:53:58.png](/.attachments/29917774.png)
[image2017-4-13 10:49:2.png](/.attachments/29917775.png)
[image2017-4-13 10:48:56.png](/.attachments/29917776.png)
[image2017-4-13 10:47:56.png](/.attachments/29917777.png)
[image2017-4-13 10:47:49.png](/.attachments/29917778.png)
[image2017-4-13 10:46:22.png](/.attachments/29917779.png)
[image2017-4-13 10:45:12.png](/.attachments/29917780.png)
[image2017-4-13 10:28:51.png](/.attachments/29917781.png)
[image2017-4-13 10:27:14.png](/.attachments/29917782.png)
[image2017-4-13 10:26:5.png](/.attachments/29917783.png)
[image2017-4-13 10:24:42.png](/.attachments/29917784.png)
[image2018-12-10_12-57-27.png](/.attachments/39649281.png)
[image2018-12-10_12-57-48.png](/.attachments/39649282.png)
[image2018-12-10_13-1-10.png](/.attachments/39649283.png)
[image2018-12-10_13-1-36.png](/.attachments/39649284.png)
[image2018-12-10_13-2-37.png](/.attachments/39649285.png)
[image2018-12-10_13-4-36.png](/.attachments/39649286.png)
[image2019-5-9_13-14-50.png](/.attachments/48169657.png)
