# Introduction



## ***Introduction to Validation Mask***  



**Validation Mask** 
defines the data format of a particular field in **Phoenix** . It is used to validate the format of data entries into **Phoenix** and also to define the format of **Serial Number** or **Inventory ID** generation in **Phoenix** .  It helps in  assuring that the correct part is being used.This is particularly useful for cases where the same 
**Material (FERT** ) has two or more valid **Serial Number** formats.

## ***How to navigate to Validation Mask***  



Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  
for detail information.


## ***Topic 1: How to create a Validation Mask name***  


![image.png](/.attachments/29918480.png)


**Click** 
to enlarge the image!

- **Click**
in the **Validation Mask**  field and type a name for the the **Validation Mask**  **(** 
**Note:**   
This is a required field
**)** 

- **Click**
in the **Description** field and type a **Description** for the new **Validation Mask**  **(** 
**Note:**   
This is a required field
**)** 

- **Click**
the **Save** icon to save your entries (See icon circled in Red).


## ***Topic 2: How to create a Validation Mask Regular Expression***  


**Click** 
to enlarge the image!
![image.png](/.attachments/29918479.png)


![image.png](/.attachments/29918478.png)



- **Search**

and**Select**  the**Validation Mask**  for which**you want to create a**  **Regular Expression** 
- **Click**

on **+** sign to **Add New Record** . A new pop up window opens up
- **Add**

your **Regular Expression Name** 
(
**Note** 
:  This is a required field)

- **Add**

your **Regular Expression**  (
**Note** 
:  This is a required field). The **Regular Expression**  values that are inputted are the parameters in which the **Match Value** is acceptable. (Please reference the
**Field** 
table below for the correct syntax for creating a Regular Expression)

- **Click**

on **Save** button to update your entries for the **Validation Mask** . 

## ***Topic 3: How to test a Validation Mask***  


**Click**  
to enlarge the image!![image.png](/.attachments/29918477.png)



- **Search**

and**Select**  the**Validation Mask**  you want to test  (
**Note** 
:  This is a required field)
- **Add**

an arbitrary string of characters to test if the system is properly applying the **Regular Expression** to the **Validation Mask** 
- **Click**

on **Check**  (see the button in red circle
). A**notification**  will appear on the right top indicating**Pass/Fail**  validation**(see the information in green circle)** 



**Fields**
----------

|     |     |
| --- | --- |
| **Field** | **Description** |
| Validation Mask | This is the unique name for validation mask |
| Description | Additional information about the mask can be entered here |
| Regular Expression Name | The unique name for each expressions in the validation mask. A validation mask may contain multiple sets of regular expressions.   <br />Data entries that meet any of these regular expression will be accepted by the system. |
| Regular Expression | The single character or a group of brackets containing ranges and sets of characters that make up the validation mask.   <br />User entries are validated by selecting one character from each bracketed group as well as literal characters. <br /><br />_Example:_<br /><br />**Validation Mask:** Jabil\_Serial\_Mask  <br />  <br />**Regular Expression Name:** J-Type Mask  <br />**Regular Expression:**  J\[2-4\]\[A,Z,E\]<br /><br />**Regular Expression Name**: S-Type Mask  <br />**Regular Expression:**  S\[2-4\]\[A,Z,E\]<br /><br />Accepted values are J2A, J2Z, J2E, J3A, J3Z, J3E, J4A, J4Z, J4E, S2A, S2Z, S2E, S3A, S3Z, S3E, S4A, S4Z, S4E |
| Match Value | The code corresponding to the regular expression.<br /><br />_Example:_<br /><br />**Validation Mask:** DIMM\_VM<br /><br />**Regular Expression Name:** Hynix 1  <br />**Regular Expression:**  HMT325R7EFR8A<br /><br />**Match Value: **H<br /><br />When the value containing HMT325R7EFR8A is scanned, a corresponding code H is received. |
| Test Mask | Enter values here and click the Check button to test the validation mask configured.<br /><br />A "PASS" message is displayed if the value adheres to the mask. <br /><br />OR<br /><br />A "FAIL" message is displayed in case of non-adherence.<br /><br />Note: These test values are not saved into the system. They appear as notification after the check is performed. |

  
The table below represents a list of options to create validation masks.

|     |     |     |
| --- | --- | --- |
| Regular Expression | Description | Example |
| J   | Appears exactly as written | J   |
| \[0-9\] | Any single number | 5   |
| \[A-Z\] | Any single alphabet | H   |
| \[1-8\] | Any single number in the range | Everything except 0 and 9 |
| \[237\] | Any single number appearing in the list | 2 or 3 or 7 |
| \[AJPZ\] | Any single alphabet appearing in the list | A or J or P or Z |
| \[2A3J\] | Any single number or alphabet appearing in the list | 2 or A or 3 or J |
| \[0-9,A-Z\] | Any single number or alphabet | 1 or P or 7 or X |

  

  
The table below shows the commonly used meta-characters. Some of these are used for more advanced validation masks writing.

|     |     |     |
| --- | --- | --- |
| Meta-character | Description | Example |
| \[ \] | Square Bracket. Used to indicate a set of characters | See table above |
| \-  | Dash. Used in the square bracket to define a range | See table above |
| \[^\] | Caret. Used in the square bracket to negate an expression.    <br />Matches a single character that is not contain in the bracket | \[^0-7\] accepts 8 or 9 only |
| ^   | Caret. It identifies the start of the string. | **^MAT** accept any string starting with MAT. |
| $   | Dollar. Matches the end of the string.   <br />Affects the position of the validation mask. | For **MAT** and **MAT$** matches ‘MAT’ or ‘AMAT’  <br />For **^MAT$** matches MAT only  |
| .   | Period. Matches any character | **DUCT.**  <br />Matches ‘DUCTS’ or ‘DUCTAPE’   <br />It does not match ‘PRODUCT’ as it has   <br />no proceeding character |
| ?   | Question Mark. Matches the preceding character 0 or 1 time only | **ab?**   <br />Matches ‘a’ or ‘ab’ |
| \*  | Asterisk. Matches the preceding character 0 or more times | **ab\***  <br />Matches ‘a’ or ab‘ or ‘abbbbb’ etc. |
| +   | Plus. Matches the preceding character 1 or more times | **ab+**  <br />Matches ‘ab’ or ‘abbbbb’ etc.   <br />It does not match ‘a’ |
| {m} | Matches exactly m times of the preceding character | **a{3}**  <br />Matches exactly 3 as ‘aaa’  <br />It does not match ‘aa’ or 'aaaa' |
| {m,n} | Matches the preceding character m times but not more than n times | **a{3,5}**  <br />Matches ‘aaa’ or ‘aaaa’ or ‘aaaaa’  <br />It does not match 'aa' or ‘aaaaaa’ |
| (?(?=(<br /><br />(?(?!( | IF..THEN..ELSE | (?(?=(C12\|C13\|H12\|H13))\[CH\]\|\[FG\])\[0-9\]\[0-9\]<br /><br />If value equal to C12, C13, H12 and H13 then the char can be C following by 2 digit (so C12 is allowed), otherwise it must be Fxx or Fxx (xx 2 digit)<br /><br />(?(?!(C12\|C13\|H12\|H13))\[CHFG\])\[0-9\]\[0-9\]<br /><br />Any values starting with C, F, G or H and 2 digit but not C12 or C13 or H12 or H13 |



## ***The following screens are dependent on information from Validation Mask***  



- Custom Data Maintenance

- Material Maintenance

- Data Collection Maintenance



#### Attachments

[image2018-5-17_13-38-15.png](/.attachments/29918477.png)

[image2018-5-17_13-37-52.png](/.attachments/29918478.png)

[image2018-5-17_13-37-39.png](/.attachments/29918479.png)

[image2018-5-17_13-37-22.png](/.attachments/29918480.png)

