# Introduction

Tool Maintenance is used to identify a tool's uniquess number when one tool need to maintenance manage.


### **How to get there?** 



::: mermaid
graph LR
A("TOMS CONFIGURATION")-->0("TOOL MAINTENANCE")

:::


#### **Permission（ToMS Application）** 



- Can view Tool Maintenance

- Can modify Tool Maintenance


#### **Screen Activity** 


Tool Maintenance enables user to perform the following activity:

- Create, view, update, delete, upload and download


#### **Precondition** 



- Need to configure Work Cell, Process Function, Project, Production Area, Production Line, Process & Process Step in Production and Project Data Maintenance Screen.

- Need to configure the Vendor information at Vendor Maintenance screen.


#### **Screen Dependency** 


The following screen(s) has dependency 

- Production and Project Data Maintenance

- Vendor Maintenance


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against Plant, Workcell, Fixture Group Code,Version combination.
When a record is deleted, the item will be soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 


<table class="confluenceTable"><colgroup><col style="width: 331.0px;" /><col style="width: 1096.0px;" /></colgroup><tbody><tr><td class="confluenceTd"><p><strong>Fields</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Tool Type</p></td><td class="confluenceTd"><ul><li>Mandatory field</li><li>Drop down list base on Tool Type screen.</li><li>(if user selected Fixture for Tool Type, below parameters with (*) will be shown, while other tool type, show below parameters with (**).)</li></ul></td></tr><tr><td class="confluenceTd"><p>Work Cell</p></td><td class="confluenceTd"><p>·        Mandatory field</p><p>·        The list of selection is based on the logged-on Plant.</p></td></tr><tr><td class="confluenceTd"><p>Process Function</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>The list of selection is based on the selected Work Cell.</li></ul></td></tr><tr><td class="confluenceTd"><p>Production Line</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>The list of selection is based on the selected Process Function</li><li>This data is already maintained in Production and Project Data Maintenance Screen.</li></ul></td></tr><tr><td class="confluenceTd"><p>Project</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Auto populate Field</li><li>The field should be display based on the Production Line selection.</li><li>This data is already maintained in Production and Project Data Maintenance Screen.</li></ul></td></tr><tr><td class="confluenceTd"><p>Process</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Auto populate Field</li><li>The field should be display based on the Production Line selection.</li><li>This data is already maintained in Production and Project Data Maintenance Screen.</li></ul></td></tr><tr><td class="confluenceTd"><p>Process Step</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Auto populate Field</li><li>The field should be display based on the Production Line selection.</li><li>This data is already maintained in Production and Project Data Maintenance Screen.</li></ul></td></tr><tr><td class="confluenceTd"><p>Production Area</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Auto populate Field</li><li>The field should be display based on the Production Line selection.</li><li>This data is already maintained in Production and Project Data Maintenance Screen.</li></ul></td></tr><tr><td class="confluenceTd"><p>Equipment / Resource Name</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Drop down list available based on selected Process Function. (Data retrieve from Resource Maintenance screen)</li></ul></td></tr><tr><td class="confluenceTd"><p>Equipment / Resource Type</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Auto populate based on selection from Equipment / Resource Name.</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Name *</p></td><td class="confluenceTd"><ul><li>Mandatory field.</li><li>Search field.</li><li>Search window: Fixture Name, Fixture Type, Fixture Drawing Number, Fixture Drawing Version (Data retrieve from Fixture drawing number and version maintenance screen)</li><li>Values will be filtered by selected Project.</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Process *</p></td><td class="confluenceTd"><ul><li>View Only</li><li>Auto populate field upon selection of Fixture Name</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Drawing Number *</p></td><td class="confluenceTd"><ul><li>View only</li><li>Auto populate field upon selection of Fixture Name</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Drawing Version *</p></td><td class="confluenceTd"><ul><li>View only</li></ul><ul><li>Auto populate field upon selection of Fixture Name</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Group Code *</p></td><td class="confluenceTd"><ul><li>View Only</li><li>Auto populate when Project, Fixture Process & Fixture Drawing Number are filled.</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture Sequence Number/Fixture Short Number *</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Manual Entry</li><li>Limit to 6 numeric characters only [000001 till 999999].</li></ul></td></tr><tr><td class="confluenceTd"><p>Fixture ID / Fixture 2D Barcode *</p></td><td class="confluenceTd"><ul><li>View Only</li><li>Auto populate when Fixture Group Code & Fixture Sequence Number are filled.<br /><strong><em>Project - Fixture Type - Drawing Number - Sq Num</em></strong></li></ul></td></tr><tr><td class="confluenceTd"><p>Tool Serial Number **</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Manual Entry, String (Limit to 25characters)</li></ul></td></tr><tr><td class="confluenceTd"><p>Tool Description **</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Manual Entry, String (Limit to 100 characters)</li></ul></td></tr><tr><td class="confluenceTd"><p>Tool Status</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Drop down with 2 Fixed options (In-PRD / Non-PRD)</li></ul></td></tr><tr><td class="confluenceTd"><p>Minor Maintenance Required Measurement Result</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Dropdown list (Fix options: YES / NO)</li><li>Default Value = YES</li></ul></td></tr><tr><td class="confluenceTd"><p>Major Maintenance Required Measurement Result</p></td><td class="confluenceTd"><ul><li>Mandatory Field</li><li>Dropdown list (Fix options: YES / NO)</li><li>Default Value = YES</li></ul></td></tr><tr><td class="confluenceTd"><p>Vendor Name</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Drop down list available based on Work Cell selection.</li></ul></td></tr><tr><td class="confluenceTd"><p>Source</p></td><td class="confluenceTd"><ul><li>Optional Field</li><li>Drop down with 2 Fixed option (Vendor / Internal)</li></ul></td></tr><tr><td class="confluenceTd"><p>Require Inspection (Y/N)</p></td><td class="confluenceTd"><ul><li>Default to N (non-editable)</li></ul><ul><li><em>Only fixture that transferred from ToMS Qualification Module will listed Required Inspection = Y</em></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Tool Type</td><td colspan="1" class="confluenceTd"><ul><li>Mandatory field</li><li>Drop down list base on Tool Type screen.</li></ul><ul><li>(if user selected Fixture for Tool Type, below parameters with (*) will be shown, while other tool type, show below parameters with (**).)</li></ul></td></tr></tbody></table>


- **(if user selected Fixture for Tool Type, below parameters with (\*) will be shown, while other tool type, show below parameters with (\*\*).)**

Work Cell
·        Mandatory field
·        The list of selection is based on the logged-on Plant.
Process Function

- Mandatory Field

- The list of selection is based on the selected Work Cell.
Production Line

- Optional Field

- The list of selection is based on the selected Process Function

- This data is already maintained in Production and Project Data Maintenance Screen.
Project

- Optional Field

- Auto populate Field

- The field should be display based on the Production Line selection.

- This data is already maintained in Production and Project Data Maintenance Screen.
Process

- Optional Field

- Auto populate Field

- The field should be display based on the Production Line selection.

- This data is already maintained in Production and Project Data Maintenance Screen.
Process Step

- Optional Field

- Auto populate Field

- The field should be display based on the Production Line selection.

- This data is already maintained in Production and Project Data Maintenance Screen.
Production Area

- Optional Field

- Auto populate Field

- The field should be display based on the Production Line selection.

- This data is already maintained in Production and Project Data Maintenance Screen.
Equipment / Resource Name

- Optional Field

- Drop down list available based on selected Process Function. (Data retrieve from Resource Maintenance screen)
Equipment / Resource Type

- Optional Field

- Auto populate based on selection from Equipment / Resource Name.
Fixture Name \*

- Mandatory field.

- Search field.

- Search window: Fixture Name, Fixture Type, Fixture Drawing Number, Fixture Drawing Version (Data retrieve from Fixture drawing number and version maintenance screen)

- Values will be filtered by selected Project.
Fixture Process \*

- View Only

- Auto populate field upon selection of Fixture Name
Fixture Drawing Number \*

- View only

- Auto populate field upon selection of Fixture Name
Fixture Drawing Version \*

- View only

- Auto populate field upon selection of Fixture Name
Fixture Group Code \*

- View Only

- Auto populate when Project, Fixture Process & Fixture Drawing Number are filled.
Fixture Sequence Number/Fixture Short Number \*

- Mandatory Field

- Manual Entry

- Limit to 6 numeric characters only [000001 till 999999].
Fixture ID / Fixture 2D Barcode \*

- View Only

- Auto populate when Fixture Group Code & Fixture Sequence Number are filled.

**Project - Fixture Type - Drawing Number - Sq Num** Tool Serial Number \*\*

- Mandatory Field

- Manual Entry, String (Limit to 25characters)
Tool Description \*\*

- Optional Field

- Manual Entry, String (Limit to 100 characters)
Tool Status

- Mandatory Field

- Drop down with 2 Fixed options (In-PRD / Non-PRD)
Minor Maintenance Required Measurement Result

- Mandatory Field

- Dropdown list (Fix options: YES / NO)

- Default Value = YES
Major Maintenance Required Measurement Result

- Mandatory Field

- Dropdown list (Fix options: YES / NO)

- Default Value = YES
Vendor Name

- Optional Field

- Drop down list available based on Work Cell selection.
Source

- Optional Field

- Drop down with 2 Fixed option (Vendor / Internal)
Require Inspection (Y/N)

- Default to N (non-editable)

- Only fixture that transferred from ToMS Qualification Module will listed Required Inspection = Y
Tool Type
- Mandatory field

- Drop down list base on Tool Type screen.

- (if user selected Fixture for Tool Type, below parameters with (\*) will be shown, while other tool type, show below parameters with (\*\*).)

