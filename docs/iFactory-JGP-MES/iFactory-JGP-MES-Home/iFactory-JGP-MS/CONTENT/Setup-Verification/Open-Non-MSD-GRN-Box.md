# Introduction

This “Open Non MSD GRN Box” is using while operator is performing open box action. User is require to select a printer to be print it’s label and scan the GRN label (which stick on the box) and qty in order to validate this Non MSD GRN is exist in the system before allow to print a label. This printed label will then be stick on it’s reel. This screen only allow to print GRN label once. If require additional label, then need to get higher permission user such as supervisor go to another “GRN Maintenance” screen which allow to do modification or print extra label from this screen.


### How to get there?



::: mermaid
graph LR
A("SETUP VERIFICATION")-->0("OPEN NON MSD GRN BOX")

:::

**Precondition** 

- SAP already upload the GRN into iFactory system.

- This Non MSD GRN Box is new and never been printed before.

- The following permissions required for access Open Non MSD GRN Box screen.

- Can Access Open Non MSG GRN Box



#### Screen Activity


Open Non MSD GRN Box screen allow user to:

- Validate the scan GRN

- is Non MSD type

- is exist in iFactory

- Is not use prohibited

- Modify to qty if needed.

- Can only open box and print GRN label for one time only.



#### Screen Dependency


The following screen(s) has direct dependency

- GRN Maintenance



#### Fields


![image2021-3-29_11-1-16.png](/.attachments/89588107.png)


<table class="wrapped confluenceTable" style="width: 1183.0px;"><colgroup><col style="width: 111.0px;" /><col style="width: 1071.0px;" /></colgroup><tbody><tr><td style="width: 1183.0px;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="OpenNonMSDGRNBox-GeneralTab"><strong>General Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 112.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1071.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd"><p>Printer*</p></td><td style="width: 1071.0px;" class="confluenceTd"><p>Required to select a printer to print it's label. After selected, value retain until user manually change it.</p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">Printer Number*</td><td style="width: 1071.0px;" class="confluenceTd"><p><span style="letter-spacing: 0.0px;">Disable mode to show selected printer number  </span></p></td></tr><tr><td style="width: 112.0px;" class="confluenceTd">GRN*</td><td style="width: 1071.0px;" class="confluenceTd"><p>To scan the GRN serial stick on the box. Enable when Printer once selected. During scanning the GRN serial, system will validate this GRN:</p><ul><li>is Non MSD type</li><li>is exist in iFactory</li><li>is new box which never print it's label before</li><li>Is not use prohibited</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Auto focus and highlight the populate quantity value after GRN scanned. Allow to scan the qty value and overwrite it.</td></tr><tr><td colspan="1" class="confluenceTd">Print Icon</td><td colspan="1" class="confluenceTd">Enable to print after scanned the GRN and quantity. Disable by default.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Disable mode to show GRN's material name.</td></tr><tr><td colspan="1" class="confluenceTd">Vendor</td><td colspan="1" class="confluenceTd">Disable mode to show GRN's vendor name.</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">Disable mode to show GRN's lot code value.</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">Disable mode to show GRN's date code value.</td></tr></tbody></table>

**Required to select a printer to print it’s label. After selected, value retain until user manually change it.** 
Printer Number\*Disable mode to show selected printer number  
GRN\*To scan the GRN serial stick on the box. Enable when Printer once selected. During scanning the GRN serial, system will validate this GRN:

- is Non MSD type

- is exist in iFactory

- is new box which never print it’s label before

- Is not use prohibited
QuantityAuto focus and highlight the populate quantity value after GRN scanned. Allow to scan the qty value and overwrite it.Print IconEnable to print after scanned the GRN and quantity. Disable by default.MaterialDisable mode to show GRN’s material name.VendorDisable mode to show GRN’s vendor name.Lot CodeDisable mode to show GRN’s lot code value.Date CodeDisable mode to show GRN’s date code value.

#### Attachments

[image2021-2-2_16-9-23.png](/.attachments/89588105.png)
[image2021-1-6_14-13-46.png](/.attachments/89588106.png)
[image2021-3-29_11-1-16.png](/.attachments/89588107.png)
