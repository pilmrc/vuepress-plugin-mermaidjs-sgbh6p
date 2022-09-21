# Introduction

Route Step Type enables user to define specific routing behavior and configure certifications required. To ease repetitive configuration, Route Steps can be grouped into Route Step Type and all the flags and certification configured will be inherited by the Route Step. During creation of 
[Route Steps](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)in [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md), user is required to specify the Route Step Type alongside with the Route Step Name.

### How to get there?



::: mermaid
graph LR
A("ROUTE")-->0("ROUTE STEP TYPE")

:::


#### Screen Activity


Route Step Type enables user to perform the following activity:

- Configure route step type properties

- Create, View, Update and Delete certifications required by the operator to work on the route step



#### Pre Condition


Certification must be created first before user can associate it to the Route Step Type

Screen DependencyThe following screen(s) has direct dependency with Route Step 

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)




#### Fields



<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td style={{ textAlign: "center" }} colSpan={2} className="confluenceTd">
        General Tab
      </td>
    </tr>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route Step Type Name
      </td>
      <td colSpan={1} className="confluenceTd">
        The unique name for the Route Step Type
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Station Type
      </td>
      <td colSpan={1} className="confluenceTd">
        This is a fixed selection of existing Stations (Example: Inspection and
        Rework, Assemble, OBA, WIP Packout, Material Review, etc).
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Allow Failures</td>
      <td className="confluenceTd">
        Allows user to log Failures on WIP for the Route Steps under this Route
        Step Type. This flag needs to be enabled for test or quality related
        route steps to log failures.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Require Default Failure Labels
      </td>
      <td colSpan={1} className="confluenceTd">
        Allows user to enable default Failure Labels for the Route Steps under
        this Route Step Type
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Defects
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Allows user to log Defects on the Route Step under this Route Step
          Type. <br />
          Defects are when the Serial Number was analyzed and found to contain
          specific quality defect. This flag needs to be enabled for
          Analysis/Rework route steps
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Rework
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Allow user to log Rework against a Failure on the Route Step under
          this Route Step Type. This flag needs to be enabled for
          Analysis/Rework route steps.
        </p>
        <p>
          Receiving also applicable to use this flag. When turn to ON, user is
          allow to perform rework action at receiving route step. (Currently
          only support for Full Receiving.)
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Included in Yield
      </td>
      <td colSpan={1} className="confluenceTd">
        This flag determines if the Route Step under this Route Step Type is
        included in the Yield Report calculation. <br />
        This flag shall assist site to include only relevant route steps to
        generate an accurate Yield report.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Operation Required
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Some Route Steps such as Assembly can run by itself without needing to
          configure an <a href="Route-Step-Type-29920000.html">operation</a>{" "}
          script. This flag will determine if the Route Step under this Route
          Step Type requires an operation script
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Included in DPM
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>
          This flag determines if the Route Step under this Route Step Type is
          included in the DPM Report calculation.{" "}
        </span>
        <br />
        <span>
          This flag shall assist site to include only relevant route steps to
          generate an accurate DPM report.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Time Based Assembly
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          If this flag is checked, system will track the scan in/scan out time
          of Inventory IDs during assembly. This shall enable Inventory ID
          reporting in the As-Built report. <br />
          For this function, a setup sheet must be associated to the Route Step
          under this Route Step Type
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Assembly
      </td>
      <td colSpan={1} className="confluenceTd">
        Allows user to perform material assembly or disassemby on the Route Step
        under this Route Step Type. This flag needs to be enabled for SMT
        Assemby and Manual Assembly route steps.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Adhoc Assembly
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Allows user to perform ad-hoc assembly or disassembly of any material
          on the Route Step under this Route Step Type. <br />
          This is a special step used when user needs to assemble/disassemble
          material which may not follow the standard assembly rules
          <br />
          This flag is needs to be enabled for Manual Assembly route steps.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Retest Allowed
      </td>
      <td colSpan={1} className="confluenceTd">
        Allows the WIP to be automatically put in queue for retest at a
        configured route step if it fails
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Partial Receiving
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to perform partial receiving for the Route Steps under under
        this Route Step Type. This is only applicable for Repetitive.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Receive Complete Unit as InProcess
      </td>
      <td colSpan={1} className="confluenceTd">
        If checked, the Receiving station will change the WIP/Lot status from
        Completed to InProcess upon received (unpack from the box). By default
        this item will be unchecked, which means the WIP/Lot will not change
        it's status upon received.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow To Receive Without Container
      </td>
      <td colSpan={1} className="confluenceTd">
        By default set to OFF. ON will allow user to perform partial receiving
        (unpack WIP) without scanning a container. Scan WIP toggle will be shown
        to allow user have option to perform this action. Refer more details in
        Partial Receiving without container scan topic.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Enforce Assembly Selection at Station
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          By default set to OFF. Set to ON means user is require to select an
          assembly at Station Login / Lot Station Login screens. User has option
          either directly provide the assembly or can scan a WIP to obtain the
          base assembly.
        </p>
        <p>
          <br />
        </p>
        Warehouse, Receiving, MRB and Production Order Packout will not be able
        to switch to ON. Rework station for Lot allow switch to ON but no effect
        in Lot station screen yet. (future development for assembly selection.)
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Optional CRD
      </td>
      <td colSpan={1} className="confluenceTd">
        This flag is enabled regardless any station type but the CRD as optional
        run time will available for MIE/ Sampling station and Inspection and
        Rework station, which means user allow to enter a CRD with{" "}
        <blank>
          {" "}
          value for defect assign to a WIP. This blank value CRD should default
          the added defect refers to TOP material.
        </blank>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Required Unload Action
      </td>
      <td colSpan={1} className="confluenceTd">
        This flag is only enable for&nbsp;Manual Inspection Entry and Manual
        Operation Entry stations. By default set to OFF. Set to ON means
        during&nbsp;operation process user need perform unload action for the
        Lots
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Loading Multiple Lots
      </td>
      <td colSpan={1} className="confluenceTd">
        This flag is only enable for&nbsp;Manual Inspection Entry and Manual
        Operation Entry stations. By default set to OFF. Set to ON means during
        operation process user is able to load multiple lots at once
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Allow Pull Container
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(51,51,51)" }}>
          Allows users to pack boxes with different products from different
          routes into one pallet.{" "}
          <span style={{ color: "rgb(23,43,77)" }}>
            This is only applicable for repetitive WIP overpack and by default
            set to off
          </span>
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>Allow Pallet Receiving</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Allow user to perform pallet receiving in the Receiving station. This
        flag is only enable for Receiving. By default set to OFF. Set to ON
        means during operation process user is able to receive Pallet and unpack
        all Boxes. This is only applicable for Repetitive.
        <br />
        Allow Partial Receiving and Allow Pallet Receiving is work in pair. Once
        one of it turn on, the other one be off.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>
          Allow Print Defect Document
        </span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(23,43,77)" }}>
            Allows the WIP able to print lists of defects (open and closed) like
            visible in WIP view defects tab. By default set to OFF. Set to ON
            means during operation process user is able to print out hard copy
            of the defects and rework data with Print button.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>Allow Unpack</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This flag is only enable for Warehouse station. By default set to ON.
        </p>
        <p>
          If the current station of Box/Pallet is warehouse and the Allow Unpack
          of this warehouse is <strong>ON,&nbsp;</strong>system will allow user
          to unpack/scrap the Box/Pallet at packout/overpackout station.
        </p>
        <p>
          If the current station of Box/Pallet is warehouse and the Allow Unpack
          of this warehouse is <strong>OFF,&nbsp;</strong>system will block user
          to unpack/scrap the Box/Pallet at packout/overpackout station.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>
          Allow Add Defect By Material
        </span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This flag is only enable for MIE station only. By default set to OFF.
          For other station type it should be disabled and turn off.
        </p>
        <p>
          If turn On, it means system allow user to add defect by Material, MIE
          station will have another optional 'Material' for user when add defect
          for WIP.
        </p>
        <p>If turn Off, it means system only allow user to defect by CRD.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Is Arrive Required
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This flag is only enable for Inspection And Rework station type. By
          default set to ON.&nbsp;
        </p>
        <p>
          Is Arrive Required = Off
          <br />
          The arrive button is disabled. This does not auto-arrive the WIP when
          scanned. The arrival time will be populated as the same value as the
          WIP start time.
        </p>
        <p>
          Is Arrive Required = On
          <br />
          The arrive button is enabled. If the user clicks the arrive button –
          the arrival time matches that timestamp. If the user starts the WIP
          without clicking arrive, the arrival time will be populated as the
          same value as the WIP start time.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Is Auto Start Required
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This flag is only enable for Inspection And Rework station type. By
          default set to OFF.&nbsp;
        </p>
        <p>
          Is Auto Start Required = Off
          <br />
          The WIP is not automatically started when scanned at the station.
          Arrival/WIP start times are dependent on when/if the user clicks the
          arrive/start button as appropriate.
          <br />
          &nbsp;
          <br />
          Is Auto Start Required = On
          <br />
          The WIP is automatically arrived and started when scanned at the
          station. Arrival/WIP start timestamps are the timestamp of when the
          WIP was scanned.&nbsp;
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "center" }} colSpan={2} className="confluenceTd">
        Certifications Tab
      </td>
    </tr>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <span>Field</span>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <span>Description</span>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Certification Name</td>
      <td className="confluenceTd">
        The certification required by the operator to operate in the Route Step
        under this Route Step Type
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Description</td>
      <td className="confluenceTd">
        Description of the certification will be auto populated based on the
        certification selected
      </td>
    </tr>
  </tbody>
</table>







If checked, the Receiving station will change the WIP/Lot status from Completed to InProcess upon received (unpack from the box). By default this item will be unchecked, which means the WIP/Lot will not change it’s status upon received.Allow To Receive Without ContainerBy default set to OFF. ON will allow user to perform partial receiving (unpack WIP) without scanning a container. Scan WIP toggle will be shown to allow user have option to perform this action. Refer more details in Partial Receiving without container scan topic.Enforce Assembly Selection at StationBy default set to OFF. Set to ON means user is require to select an assembly at Station Login / Lot Station Login screens. User has option either directly provide the assembly or can scan a WIP to obtain the base assembly.

Warehouse, Receiving, MRB and Production Order Packout will not be able to switch to ON. Rework station for Lot allow switch to ON but no effect in Lot station screen yet. (future development for assembly selection.)Optional CRDThis flag is enabled regardless any station type but the CRD as optional run time will available for MIE/ Sampling station and Inspection and Rework station, which means user allow to enter a CRD with "blank" value for defect assign to a WIP. This blank value CRD should default the added defect refers to TOP material.Required Unload ActionThis flag is only enable for Manual Inspection Entry and Manual Operation Entry stations. By default set to OFF. Set to ON means during operation process user need perform unload action for the LotsAllow Loading Multiple LotsThis flag is only enable for Manual Inspection Entry and Manual Operation Entry stations. By default set to OFF. Set to ON means during operation process user is able to load multiple lots at onceAllow Pull ContainerAllows users to pack boxes with different products from different routes into one pallet. 
This is only applicable for repetitive WIP overpack and by default set to off
Allow Pallet Receiving
Allow user to perform pallet receiving in the Receiving station. This flag is only enable for Receiving. By default set to OFF. Set to ON means during operation process user is able to receive Pallet and unpack all Boxes. This is only applicable for Repetitive.
Allow Partial Receiving and Allow Pallet Receiving is work in pair. Once one of it turn on, the other one be off.Allow Print Defect Document
Allows the WIP able to print lists of defects (open and closed) like visible in WIP view defects tab. By default set to OFF. Set to ON means during operation process user is able to print out hard copy of the defects and rework data with Print button.
Allow Unpack
This flag is only enable for Warehouse station. By default set to ON.
If the current station of Box/Pallet is warehouse and the Allow Unpack of this warehouse is 
**ON,**  system will allow user to unpack/scrap the Box/Pallet at packout/overpackout station.If the current station of Box/Pallet is warehouse and the Allow Unpack of this warehouse is 
**OFF,**  system will block user to unpack/scrap the Box/Pallet at packout/overpackout station.Allow Add Defect By Material
This flag is only enable for MIE station only. By default set to OFF. For other station type it should be disabled and turn off.
If turn On, it means system allow user to add defect by Material, MIE station will have another optional 'Material' for user when add defect for WIP.
If turn Off, it means system only allow user to defect by CRD.
Is Arrive RequiredThis flag is only enable for Inspection And Rework station type. By default set to ON. 
Is Arrive Required = Off

The arrive button is disabled. This does not auto-arrive the WIP when scanned. The arrival time will be populated as the same value as the WIP start time.Is Arrive Required = On

The arrive button is enabled. If the user clicks the arrive button – the arrival time matches that timestamp. If the user starts the WIP without clicking arrive, the arrival time will be populated as the same value as the WIP start time.Is Auto Start RequiredThis flag is only enable for Inspection And Rework station type. By default set to OFF. 
Is Auto Start Required = Off

The WIP is not automatically started when scanned at the station. Arrival/WIP start times are dependent on when/if the user clicks the arrive/start button as appropriate.

Is Auto Start Required = On
The WIP is automatically arrived and started when scanned at the station. Arrival/WIP start timestamps are the timestamp of when the WIP was scanned. Certifications TabFieldDescriptionCertification NameThe certification required by the operator to operate in the Route Step under this Route Step TypeDescriptionDescription of the certification will be auto populated based on the certification selected

#### Synchronization


The Route Step Type data will be synchronized to the MDO system

