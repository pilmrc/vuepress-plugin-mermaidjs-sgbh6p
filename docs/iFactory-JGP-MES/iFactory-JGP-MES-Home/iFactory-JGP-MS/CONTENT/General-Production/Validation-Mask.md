# Introduction

Validation Mask defines the data format of a particular field in Phoenix. It is used to validate the format of data entries into Phoenix and also to define the format of Serial Number or Inventory ID generation in Phoenix. Administrator has the ability to configure multiple regular expressions under the same validation mask. User entries that matches any of the regular expression will be accepted by the system. This is particularly useful for cases where the same Material (FERT) has two or more valid Serial Number formats.


### **How to get there?** 



::: mermaid
graph LR
A("CONFIGURATION")-->0("VALIDATION MASK")

:::

Screen Activity
Validation Mask Maintenance enables user to perform the following activity:

- Create, view, update and delete validation masks

**Screen Dependency** 

- **[Custom Data Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)**

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Data Collection Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection.md)




#### **Fields  
 **

|     |     |
| --- | --- |
| **Field** | **Description** |
| Validation Mask | The unique validation mask name |
| Description | Additional information about the mask can be entered here |
| Regular Expression Name | The unique name for each expressions in the validation mask. A validation mask may contain multiple sets of regular expressions.  <br />Data entries that meet any of the regular expression will be accepted by the system |
| Regular Expression | The single character or a group of brackets containing ranges and sets of characters that made up the validation mask.  <br />User entries are validated by selecting one character from each bracketed group as well as literal characters. User is able to configured up to 500 characters length on this field.<br /><br />_Example:_<br /><br />**Validation Mask:** Jabil\_Serial\_Mask  <br />  <br />**Regular Expression Name:** J-Type Mask  <br />**Regular Expression:**  J\[2-4\]\[A,Z,E\]<br /><br />**Regular Expression Name**: S-Type Mask  <br />**Regular Expression:**  S\[2-4\]\[A,Z,E\]<br /><br />Accepted values are J2A, J2Z, J2E, J3A, J3Z, J3E, J4A, J4Z, J4E, S2A, S2Z, S2E, S3A, S3Z, S3E, S4A, S4Z, S4E |
| Match Value | The corresponded code to the regular expression.<br /><br />_Example:_<br /><br />**Validation Mask:** DIMM\_VM<br /><br />**Regular Expression Name:** Hynix 1  <br />**Regular Expression:**  HMT325R7EFR8A<br /><br />**Match Value:** H<br /><br />When scan the value that contains HMT325R7EFR8A will get the corresponded code H |
| Test Mask | Enter values here and click the Check button to test the validation mask configured. A "PASS" message is displayed if the value adheres to the mask.  <br />Otherwise, the "FAIL" message is displayed. These test values are not saved into the system. |

  
The table below represents a list of options to create validation masks.

|     |     |     |
| --- | --- | --- |
| Regular Expression | Description | Example |
| J   | Appears exactly as written | J   |
| \[0-9\] | Any single number | 5   |
| \[A-Z\] | Any single alphabet | H   |
| \[1-8\] | Any single number in the range | 5 or 6 or 7 |
| \[237\] | Any single number appearing in the list | 2 or 3 or 7 |
| \[A,J,P,Z\] | Any single alphabet appearing in the list | A or J or P or Z |
| \[2,A,3,J\] | Any single number or alphabet appearing in the list | 2 or A or 3 or J |
| \[0-9,A-Z\] | Any single number or alphabet | 1 or P or 7 or X |

  
The table below shows the commonly used metacharacters and some are used for more advanced validation masks writing.

|     |     |     |
| --- | --- | --- |
| Metacharacter | Description | Example |
| \[ \] | Square Bracket. Used to indicate a set of characters | See table above |
| \-  | Dash. Used in the square bracket to define a range | See table above |
| \[^  \] | Caret. Used in the square bracket to negate an expression.    <br />Matches a single character that is not contain in the bracket | \[^0-7\] accepts 8 or 9 only |
| $   | Dollar. Matches the end of the string.  <br />Affects the position of the validation mask. | For **MAT** and **MAT$** matches ‘MAT’ or ‘AMAT’  <br />For **^MAT$** matches MAT only  |
| .   | Period. Matches any character | **DUCT.**  <br />Matches ‘DUCTS’ or ‘DUCTAPE’  <br />It does not match ‘PRODUCT’ as it has  <br />no proceeding character |
| ?   | Question Mark. Matches the preceding character 0 or 1 time only | **ab?**  <br />Matches ‘a’ or ‘ab’ |
| \*  | Asterisk. Matches the preceding character 0 or more times | **ab\***  <br />Matches ‘a’ or ab‘ or ‘abbbbb’ etc. |
| +   | Plus. Matches the preceding character 1 or more times | **ab+**  <br />Matches ‘ab’ or ‘abbbbb’ etc.  <br />It does not match ‘a’ |
| {m} | Matches exactly m times of the preceding character | **a{3}**  <br />Matches exactly 3 as ‘aaa’  <br />It does not match ‘aa’ or 'aaaa' |
| {m,n} | Matches the preceding character m times but not more than n times | **a{3,5}**  <br />Matches ‘aaa’ or ‘aaaa’ or ‘aaaaa’  <br />It does not match 'aa' or ‘aaaaaa’ |