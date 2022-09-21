# Introduction



## A


- **Assemble Point**
- 
Configurationof where and what materials get assembled and configurable with defaults. 

- **Assembly Types**

-  Are used to create a relationship between components and the step in the manufacturing process where the components will be assembled to the parent. End users will define the list of assembly types needed in assembly type maintenance, then assign those types to both the BOM (assembly type assignment maintenance) and the route step. During the manufacturing process, when a unit is processed
through a step that has matching assembly types on the BOM and the step. The operator will be prompted to collect data about the components being assembled.



- **Auto Batch**

- A phoenix created number that is given to all release of WIP if configured. 

## B


- **Bill of Materials**
- (BOM) - A list of components, quantities, and reference designators which make up a single product. A bill of materials may be for the assembly level and contain not too many sub-assemblies that are being built during the manufacturing process of the assembly or may be a sub-assembly which is built-to-stock.  
- **BOM Line Item**
- (BOM Component Line Item, Component Line items) - The combination of material identification, material version, quantity, CRD, parent reference, and assembly point as listed on a BOM. A BOM may contain one or may component line items. 

## C


- **Carrier -**
A kind of handling device / tote / tray / fixture used to transport items from one location to another that has a unique identifier assigned to it.



- **Carrier Template**
- ACarrier Template is used as a collection of preset values for a Carrier so a user does not have to enter the values each time a Carrier is created.


- **Change Number**
- A number provided by SAP which indicates the number of times the BOM/BOM item has been changed. Similar version. SAP Definition: A change number is a key used group logically related changes to geographical structures and the master database on these (distribution, organizational structure) in order to ensure that data is consistent. 


- **Component Reference Designator**
- (Ref Des, CRD, Reference Designator) - Indicates a location on the product where the component should be placed. 


- **Component Type**
- This is the value that comes from SAP at the moment from several sites (i.e. 0402, BGAS, QFP, etc).


- **Custom Data**
- (User defined properties, user defined field assignment) - Allows the end user to create fields that appears on the custom data tab in specific maintenance screens. The team member can use the custom data fields to provide additional information that's added to specified items such as material and can be used for process controls and label printing. 


- **Customer**
- This is a category used to filter data within the phoenix system. A customer will be the highest level in the hierarchy. 

## D


- **Data Collection**
- A configurable set of information that can be gathered during the manufacturing process. 


- **Data Sheet**
- A datasheet, data sheet or specification sheet is a document summarizing the performance and other technical characteristics of a product, matching  component (e.g. an electronic component), material, a sub-system (e.g; a power supply) or software in sufficient detail to be used by a design engineer to integrate the component into a system. Typically, a data sheet is created by the component/subsystem/software manufacturer and begins with an introductory page describing the rest of the document, followed by listings of specific characteristics, with further information on the connectivity of the devices. In cases where there is relevant source code to include, it is usually attached near the end of the document or separated into another file. 
- **Disable Auto Birth**
- Requires serialized material to be assigned/birth in the phoenix before it can be used in the assemble process. 


- **Division**
- This is a subcategory of the customer and is used as filtered data. 


- **Document**
- Any document that will be printed from the phoenix system such as labels, travelers and packing lists.

## E


- **Equipment Setup Sheet (ESS)**

- These are instructional maps created by manufacturing engineer tech (ME Tech) or process engineering machine programmers to define part consumption points and serve to machine operators for parts loading during product building;



## F


- **Family**
- Is a subcategory of a division and will contain all material idenficiations that belog to the group. A family is also filtered data. 


- **Feeder**
- This is a component supply, which feeds the head with components out of tapes or bulk cases. 


- **Floor Location**
- (Manufacturing Area, Work Center, Bay, Cell) - Represents a physical area on the floor which should contain resources, printer, etc. 


## G


- **Gantry**
- (head) - In a SMT pick & place type machine is the unit which is picking and placing the components. Each head can contain several nozzel segments, which hold a nozzle to pick and place components. 


- **Good Receipt Number (GRN)**
- A SAP generated number at incoming warehouse for goods receipt.



## H


- **Hash**
- A hash function is any algorithm or subroutine that maps large dat sets of variable length, called keys, to smaller data sets of a fixed length. 


## I


- **In Use**
- When an objec has references to other objects or is being depended on for traceability it is considered "in use".


## J


- **JabilTrax**
- A system that automatically calculate the remaining number of components on a reel after use/consumption. CAMX is the data source for JabilTrax. 

## L


- **Lane**
- (conveyor) - A lane is an independent processing path through a piece of equipment. A single piece of equipment may have multiple lanes.
- **Lot**
- A quantity of items produced together sharing similar specifications. In the context of iFactory, a Lot is typically used to move and track a number of non-serialized items produced for a planned order. The lot is given a unique id for traceability purposes. 




## M


- **Manufacturing Order**
- (MO, shop order, batch, order) - The systematic grouping of units. Used to generate demand and inform the manufacturing personnel what products need to be built and how many they should build. The manufacturing order may be a production or planned order from ECC or a manually entered order. This is not a salesorder or customer order. 


- **Material**
- (Assembly, Component, Part) - Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and motherboard (HALB) or memory cards (ZROH).


- **Material Identification**
- This is a part number or assembly number. Material Id could be alpha, alpha numeric or numeric or could contain special characters. 


- **Module**
- A staging area or a working area within a piece of equipment. A single of equiepment may have many modules. 

## N


- **New**
- (Status:New) - Refers to the status of an object in the system. It indicates that the object has never been used and is not yet configured or ready to be used. 


- **Next Number**
- A configurable number generator based on an algorithm format (WIP, material serial numbers, batch or containers).


## O


- **Offline**
**Feeder Setup (OLFS)** - A process that allocate parts to an inactive part allocation table. Prior to allocating parts to preload, the system must have an equipment setup sheet in place. OLFS is generally referred to as preload.


- **Offline Reel Setup (OLRS)**
- This is a process to identify all material for SMT process with a label manually filled with a slot number, route step (top/bottom), and reel number. It is accomplished by looking at ESS. OLRS is performed after kitting. 


- **Operation**
- This is the operation in a process being executed in a route step.


- **Order Identification**
- the order ID is the unique designator for the shop floor. It could be alphanumeric or both. It could also include special characters. 


## P


- **Package Type**
- (Component Package) - This is a more detailed version of component type that's used for tracking defects by pin pitch, spacing and pad geometry. 


- **Part Allocation**
- The process of scanning parts and feeders onto machines or manual stations. 


- **Part Line Verification (PLV)**
- This process verifies that correct material is being used at assembly points by using part allocation screens or Rf scanners with part allocation function. Some users may refer to PLV as the RF gun/scanner. 


- **Phoenix**
- (System, the system, next gen.) - Jabil's next generation MES, Phoenix. 


- **Phoenix Material Types**
-  Allows SME teams to configure material on captured assemble data. (i.e. inventory identification (GRN), serialized material, WIP serial numbers and unserialized materials).


- **Planned Order**
- A manually entered number similiar to a batch in MES.


- **Preload**
- Users may load parts for a setup in advance of a setup changeover. Generally, this is referred to as "preload". The preload action takes place at the OLFS process.  

## Q


- **Quick Scan - (Quick Validation)**
- This process verifies that a part is placed in the correct slot. There are two types of validations that apply depending on part allocation configuration and other settings: (a) GRN Quick Scan and (b) Feeder Quick Scan. 


## R


- **Required Field**

- These are fields that can be flagged as required when adding or modifying a record. This will ensure that a record is not added or updated if data is not entered into these fields. Required fields are identified by a red asterisk (\*)
to the left of the field heading.


- **Resource**
- Any equipment being used in an operation. 


- **Route**
- A method to structure the assembly process in the system and enforce rules. 


- **Route Step**
- The step on the route. 


- **Route Step Type**
- This is a group of similar route steps. 


- **Route Identification**
- This is a unique designator for the route. It could be alpha, numeric or both. It could also include special characters. 

## S


- **Serialized Material**
- Material that has a unique identifier which does not get assembled or tested. 


- **Slot**
- A value that indicates a physical position for feeders in a machine. It can be a bin location for hand place stations. 


- **Status**
- The current state of the object in question, each module may have a different list of statuses available. 

## T


- **Table**
- (Install Table and Part Allocation Table) - Refers to a physical table on SMT equipment to hold mechanical feeders. Most equipment only has one table. Old legacy equipment are the universial HSP, Fuji CP or IP have 2. 

## W


- **WIP**

(Work In Progress) - Each unit of product we currently build in the production is known as WIP. Each WIP will have their own serial number to track its progress in the route.



- **WIP Release Types**

- Serial numbers (S/N) created or captured by the phoenix system. **Generated serial numbers** are created by the system and retained with a product during the entire manufacturing process. An **assigned serial number** is the use of a provided serial number.  A 
**temporary serial number** is generated by the phoenix system and can be replaced by another serial number when configured. 

