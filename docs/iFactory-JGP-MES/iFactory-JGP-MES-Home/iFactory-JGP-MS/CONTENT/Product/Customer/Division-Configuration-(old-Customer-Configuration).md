# Introduction

Old Customer Configuration screen link:

[https://qa.jemsmm.corp.jabil.org/part-allocation-api/CustomerConfiguration/Index](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer/Division-Configuration-(old-Customer-Configuration).md)
New Division Configuration screen link:
[https://qa.jemsmm.corp.jabil.org/#/part-allocation/division-configuration](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer/Division-Configuration-(old-Customer-Configuration).md)


The Division Configuration screen allows user to set the 
TSM / MSD Alert Threshold to a specific time in minutes for the Inventory ID. This screen is controlled by the customer partitioning.
Part Allocation is not available on the screen anymore, it was removed upon refactoring screen from AngularJS to Angular.
In order to do so:

1) Search for the customer which is assigned to the user in mandatory Customer/Division field.

As you select the customer a table with Inventory ID and TSM / MSD Alert Threshold (minutes) field is displayed.

2) After setting the needed TSM / MSD Alert Threshold value in minutes hit "Save" button.

In order to clear the screen hit "Clear" button which is located next to the "Save" button.