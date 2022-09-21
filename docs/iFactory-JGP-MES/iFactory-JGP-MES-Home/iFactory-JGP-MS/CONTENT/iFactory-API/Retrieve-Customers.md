**Introduction**
----------------

This function allows a third party application to retrieve the list of Customers and Divisions from iFactory System. User can retrieve a list of Customers by filtering any of the available fields.

Customers are normally required in a third party application to allow a user in that app to select the Customer or Divisions that its process will apply to.

**Function Details**
--------------------

|     |     |
| --- | --- |
| URL | Retrieve All - [http://usplnd0ifaweb42:2010/odata/customers](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber)<br /><br />Retrieve by Filter - [http://usplnd0ifaweb42:2010/odata/customers?$filter=](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber)CustomerStatus eq 'Active' |     |
| Method | GET |     |
| Return on Success | 1.  CustomerId<br />2.  CustomerName<br />3.  CustomerStatus<br />4.  DivisionId<br />5.  CustomerDivision |     |
| Return on Failure | In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any Customers or Divisions from the system.<br /><br />Error can occur when the the filter statement is invalid. For instance a field name is wrongly entered. In that case an error will be returned in below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other API functions**
-------------------------------------

N/A