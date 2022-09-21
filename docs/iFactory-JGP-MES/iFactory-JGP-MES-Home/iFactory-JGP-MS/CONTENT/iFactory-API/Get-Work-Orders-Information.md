**Introduction**
----------------

This function allows a third-party application to retrieve the list of work orders(Production Order or Planned Order)  
The records can then be used to determine which orders need to have etching performed.

This function will retrieve work orders which meet the following conditions:

*   Status of 'New', 'Serialized', 'Ready' or 'In Progress'.

**Function details**
--------------------

|     |     |     |
| --- | --- | --- |
| URL | /api/PMI/GetWorkOrderInformationByDivision |     |
|     | GET |     |
| Required Properties | Division Id(Field mandatory) | Division Id |
| Return on Success | 1.  PlannedOrderId<br />2.  OrderNumber<br />3.  ScheduleStartDate<br />4.  ScheduleEndDate<br />5.  Quantity<br />6.  GeneratedQuantity<br />7.  QuantityRemaining<br />8.  Priority<br />9.  DivisionId<br />10.  AssemblyRevisionId<br />11.  AssemblyNumber<br />12.  AssemblyRevision<br />13.  AssemblyVersion<br />14.  MaterialId<br />15.  BOMId<br />16.  BOMName<br />17.  BOMRev<br />18.  BOMVersion<br />19.  ActualStartDate<br />20.  ActualEndDate<br />21.  CreatedDate<br />22.  CreatedBy<br />23.  LastUpdated<br />24.  LastUpdatedBy<br />25.  Status<br />26.  Source<br />27.  PlannedOrderRouteId<br />28.  RouteId<br />29.  RouteName |     |
| Return on Failure | In most cases, this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any WIP from the system.<br /><br />The error can occur when the filter statement is invalid. For instance, a field name is wrongly entered. In that case, an error will be returned in the below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

*   N/A