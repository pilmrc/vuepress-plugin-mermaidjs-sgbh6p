# Introduction

Once a FAI Event fails all associated lots will be blocked from processing at all route steps.  In order to continue processing product on the route after a failed FAI Event the Event must be released.  FAI Events are released via the 
[FAI Events](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/First-Article-Inspection-(FAI)/FAI-Events.md)screen.A WIP serial that is placed on hold as a result of a failed FAI event will have a hold reason code of 'FAI Event Failed' and a hold comment of 'FAI Event failed.  WIP set on hold.'




A WIP associated to an 'FAI Event Failed' hold cannot be removed using the WIP Hold Maintenance screen and will only be removed by releasing the FAI Event.
If the user has the permission 'Can Release FAI Hold' the 'Release' button will be enabled when a event is clicked on in the results pane.  When the 'Release' button is clicked a prompt will launch in which the user is required to enter comments as to why the blocked FAI Event is being released.  The 'Release Comment' field accepts up to 200 characters maximum.


Once the comments are entered the user will be able to proceed with releasing the failed FAI event by clicking on the 'Submit' button.  Once this is done the event status will be updated from 'On Hold' to 'Complete'.  The result of the FAI event (either 'Passed' or 'Failed') will remain unchanged.  For Batch Production, the associated planned order or (orders) will also be released provided that it is not on hold for another failed FAI event.
Once the FAI Event is released the 'Hold Released By', 'Release Date', and 'Release Comment' fields will have information populated reflecting the user that released the FAI event.  The Release Comment will be visible in the Event Details section.


