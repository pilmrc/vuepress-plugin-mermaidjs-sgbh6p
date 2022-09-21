# Introduction

The operator is unable to packout BTO\CTO WIPs. When the operator attend to packout the WIP the container type shows blank and therefore he\she is unable to create a container:

![image2020-2-18_17-38-37.png](/.attachments/66093217.png)



Below is the current system design for Repetitive and BTO/CTO. Here is the difference between 
**WIP Packout** (Repetitive) and **Production order Packout**  (BTO/CTO):**WIP Packout (Repetitive)** 

- The route step before the

**WIP Packout** may be set **"Is Completion Route Step"** or **not.** 
- The container type could be set "Allow Complete WIP Only or Allow Process WIP Only" depends on the status of the route step before the WIP Packout step.

**Repetitive** 
![image2020-2-18_18-6-20.png](/.attachments/66093219.png)



**Production order Packout (BTO/CTO):** 

- The Production Order Packout route step needs to be set as

**"Is Completion Route Step"** so that it can change the WIP status to "Complete" and send the pack info and order activity messages to SAP.
- You will need to set the container type "Allow Complete WIP Only" even you see the current WIP status is "InProcess"

**BTO\CTO** 
![image2020-2-18_17-57-40.png](/.attachments/66093218.png)







#### Attachments

[image2020-2-18_17-38-37.png](/.attachments/66093217.png)
[image2020-2-18_17-57-40.png](/.attachments/66093218.png)
[image2020-2-18_18-6-20.png](/.attachments/66093219.png)
