# Introduction

**Error: Server Error in '/' Application.** 
The wait operation time out
Description: An unhandled exception occourred during the execution of the current web request. Please review the stack trace for more information about the error and where it originated in the code.
Exception Details: System ComponentModel.Win32Exception: The wait operation timed out
Source Error
An unhandled exception occourred during the execution of the current web request. Information regarding the origin and location of the exception can be identified using the exception stack trace belw.
Stack Trace:
SqlException: A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible.

![](https://attachments.office.net/owa/Terry_Yin@Jabil.com/service.svc/s/GetFileAttachment?id=AAMkADZmMDVjNWIzLTcxMGYtNGYxYi05N2Q5LWMyODViNWRmZWZhMgBGAAAAAAAW1sEQLy%2BZRZwAfiE3sr9GBwAOaTAzFWPoRqL%2F8YT8od0lAAAAAAEJAAAOaTAzFWPoRqL%2F8YT8od0lAAIi1ZuBAAABEgAQAM4bMkVm9ENNkp6nEwgBu%2FY%3D&X-OWA-CANARY=0g7vr5BNRkioQFxy9gDK4BCDI_9of9YYSEf5qhabfd-K-W60KDDTjYpNzLMCMvlDc0JSr_MV-LU.&token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjA2MDBGOUY2NzQ2MjA3MzdFNzM0MDRFMjg3QzQ1QTgxOENCN0NFQjgiLCJ4NXQiOiJCZ0Q1OW5SaUJ6Zm5OQVRpaDhSYWdZeTN6cmciLCJ0eXAiOiJKV1QifQ.eyJ2ZXIiOiJFeGNoYW5nZS5DYWxsYmFjay5WMSIsImFwcGN0eHNlbmRlciI6Ik93YURvd25sb2FkQGJjODc2YjIxLWYxMzQtNGMxMi1hMjY1LThlZDI2YjdmMGYzYiIsImFwcGN0eCI6IntcIm1zZXhjaHByb3RcIjpcIm93YVwiLFwicHJpbWFyeXNpZFwiOlwiUy0xLTUtMjEtMjgwNTA1ODg4MS0yMDIzNTc3MzYwLTE2NzEzMzQ2OTQtMjM4NzQ4MjhcIixcInB1aWRcIjpcIjExNTM3NjU5MzIwMDQ2OTc3OTNcIixcIm9pZFwiOlwiZjE4ZjM3NWUtY2Q3NC00ODIyLTg3ZDgtNzIwOGU0NjM5ZTNiXCIsXCJzY29wZVwiOlwiT3dhRG93bmxvYWRcIn0iLCJuYmYiOjE1NDgwNTE2MTAsImV4cCI6MTU0ODA1MjIxMCwiaXNzIjoiMDAwMDAwMDItMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwQGJjODc2YjIxLWYxMzQtNGMxMi1hMjY1LThlZDI2YjdmMGYzYiIsImF1ZCI6IjAwMDAwMDAyLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMC9hdHRhY2htZW50cy5vZmZpY2UubmV0QGJjODc2YjIxLWYxMzQtNGMxMi1hMjY1LThlZDI2YjdmMGYzYiJ9.oLNOnGSy2p0MQAzh_sQUUJTkUaN13QRlr5-d8l4uUX4D1uAjMxyZ5k0TzPau1lN706YMxaPdJFiHc2G7Vjpk7bem7dVg8Uv2GPgABeoD8ptDB471B-Pulf3NHJnN3aHi4OpI8FEdkJEz1LtS4ORR9PjnvIUfHYKVWsm6JjcCs0Pfv9XndY6vvXs4I9dtHm69auMsHJPEzXKGGistBRJMsXifSoNxJFt31o_kGHvazfZSDdkpu69Tj1bTlm2RqR8bexZRhHJoWU4yB9ibQJ8wKYZkVGsjodT-MarVK9RMX-YlHZxqyVM_n37FnJzXZ01DIufGrYmZi88GyCKcZQOltQ&owa=outlook.office.com&isImagePreview=True)


Can NOT ping the virtual SQL server:
![image2019-1-21_14-42-26.png](/.attachments/41058475.png)


Refer the IM number:  
**[IM01967092](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/TROUBLESHOOTING-GUIDE/Error-Messages.md)** 
***Cause:***  
The SQL server was not accessible. 
Actual Issue:
Actual Issue: switch module 9 malfunctioning on switch jab-as-slf001-swc-002
Actual Action Taken:performed soft reboot of the failing module 
CHG0108205 opened for the rebootPRB0010559 was opened for root cause investigation (+Problem Managers)

***Solution:***  
Please raise the IM ticket, inform GSO/DBA/SFS team.


#### Attachments

[image2019-1-21_14-42-26.png](/.attachments/41058475.png)
