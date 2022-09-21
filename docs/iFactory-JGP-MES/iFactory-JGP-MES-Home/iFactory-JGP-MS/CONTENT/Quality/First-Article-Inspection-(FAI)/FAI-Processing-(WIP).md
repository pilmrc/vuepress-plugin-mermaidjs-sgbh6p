# Introduction


When a FAI Event has been triggered and is in progress, any release of product via the [WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)screen to the same route the event was triggered for will be associated to the event.  The system will alert the user if there is an in progress FAI event by displaying a prompt in the WIP - Release Assembly screen once the release route is selected.  The prompt informs the user "The WIP being released to this route matches an FAI event scope and will therefore be associated to the event."Please note that only the 
[WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)screen is supported by FAI at this time.  The [WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)screen (used to release BTO product) is not currently supported.The released WIP serials are only 
associated to the FAI event when the 'Release to Route' button is selected.  Selecting the 'Generate WIP Without Releasing' option will only generate the WIP but will not associate it to the FAI event.


The FAI Event will have a status of ‘In Progress’ until the FAI Quantity has been fulfilled at the FAI route step associated to the FAI Event.
When WIP associated to an in progress FAI Event arrives at a FAI route step (as indicated by the FAI Configuration of the triggered FAI Event) the system will prompt by displaying the message 'This WIP is associated to an FAI Event that is in progress'.
The FAI functionality works with the 
[Manual Inspection Entry](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/First-Article-Inspection-(FAI)/FAI-Processing-(WIP).md)(MIE), [Manual Test Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Manual-Test-Entry.md)(MTE), and [Inspection & Rework](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/First-Article-Inspection-(FAI)/FAI-Processing-(WIP).md)(INR) screens and supports panelized assemblies for all 3 screens.**Note:** 
Failing a Data Collection at the FAI route step currently does not fail the FAI event.

The FAI Quantity is fulfilled by passing WIP at the FAI route step until the FAI Quantity is achieved.  When the FAI Quantity has been achieved the FAI Event status will be marked as ‘Complete’ and the event will have a result of ‘Passed’.  The user that entered the WIP that passed the FAI Event will receive a success message.


If a WIP fails at any time while the FAI Event is in progress the FAI Event will be given a status of ‘On Hold’ and the event will have a result of 'Failed'.  The user that entered the WIP that failed the FAI Event will receive a message indicating that the FAI Event (and all WIP associated to it) has been placed on hold.  This hold can only be released by releasing the FAI event and cannot be done using the 
[WIP Hold](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold.md)Maintenance screen.

When the FAI Event closes with a result of ‘Fail’ a new FAI Event will be automatically triggered with the same scope (material, route, and route step).  All WIP associated to the failed FAI Event will not be allowed to start any process and will be blocked.  Any WIP that already started its process will be allowed to complete that process and will be placed on WIP Hold.

When WIP associated with In Progress FAI Events ,the system wouldn't allow WIP to start at the Pull Step but allow WIP to enqueue to a Pull step and continue operation.
