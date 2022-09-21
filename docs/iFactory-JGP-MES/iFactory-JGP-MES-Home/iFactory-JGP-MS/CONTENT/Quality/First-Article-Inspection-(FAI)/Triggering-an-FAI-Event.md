# Introduction

An FAI configuration details how many of a product should be inspected or tested at a given process step on a route for a product.  Once the quantity is inspected or a lot fails at the FAI route step the FAI event will be completed.
A FAI event must be triggered before inspection at the FAI route steps can take place.  Once a FAI configuration is triggered an individual FAI event will be created for each route step in the FAI configuration.  If the triggered FAI configuration contains 2 route steps, then 2 FAI events will be created (one for each route step in the FAI configuration).
When lots or WIP are released to a route they will be associated to any in progress FAI event with a scope that matches the product being released (i.e. material or assembly).  Therefore the FAI Event should be triggered prior to releasing units to the route if an FAI inspection is needed.
A FAI event is triggered by clicking on the ‘►’ button in the upper right hand corner of the 
[FAI Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/First-Article-Inspection-(FAI)/FAI-Configuration.md)screen (as shown in the FAI Configuration interface screen shot above) once a specific FAI configuration has been loaded in the FAI Configuration screen.  Loading a specific FAI configuration is done by clicking the search icon for the 'FAI Name' field.If the selected FAI Configuration is for a specific material or assembly/revision/version the FAI event will be triggered without any further user input.
If the selected FAI Configuration is for 'All Materials' or 'All Assemblies' the user will need to supply a specific material or assembly/revision/version in order to scope the FAI event(s) that will be generated via a 'Select a Material' or 'Select a Assembly' pop-up window.  The filters in the pop-up window can be used to further refine the criteria.




Once a specific material or assembly is selected the system will indicate the FAI Event was genrated successfully via a toaster message in the upper right of the FAI Configuration screen stating "Configuration was started successfully".


