# Introduction

The Material Profile Report provides the ability to view all materials in a BOM and its configuration in a single view. Although the screen results of the report extend out to the right for some distance, the Excel export allows users to sort through material more easily.



### How to get there?


![image2013-7-15 10:28:2.png](/.attachments/29919924.png)





#### Screen Activity


Material Profile Report enables user to perform the following activity:

- Search at a top level assembly or BOM level for desired results

- View all materials and configurations at a single glance

- Export results as an Excel document
![image2013-7-16 8:49:50.png](/.attachments/29919923.png)



Pre Condition
The following data needs to be pre-configured (if used) before user views Material Profile Report

- Material Screen

- BOM Screen

- Next Number Screen

- Validation Mask



#### Fields


  System will auto populate this field according to where the material is
  created.If material is imported from SAP, the source system is "SAP"If
  material is created in Phoenix, the source system is "PHX"
  <table className="confluenceTable">
    <tbody>
      <tr>
        <td className="highlight confluenceTd">
          <p>
            <strong>Field</strong>
          </p>
        </td>
        <td className="highlight confluenceTd">
          <p>
            <strong>Description</strong>
          </p>
        </td>
      </tr>
      <tr>
        <td className="confluenceTd">Material Name</td>
        <td className="confluenceTd">
          <p>
            The unique name given to the material.{" "}
            <span>Value provided by SAP.</span>
          </p>
        </td>
      </tr>
      <tr>
        <td className="confluenceTd">Material Description</td>
        <td className="confluenceTd">
          <p>
            Additional description for the material can be entered in this
            field. Value provided by SAP.
          </p>
        </td>
      </tr>
      <tr>
        <td className="confluenceTd">Material Type</td>
        <td className="confluenceTd">
          <p>
            Indicate the real type of material that is using across Phoenix
            System. It determines by SAP Material Type, Procurement Type abd
            Managed As value from SAP.
          </p>
          <ul>
            <li>WIP</li>
            <li>Serialized Material</li>
            <li>Unserialized Material</li>
            <li>Inventory</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Material Procurement Type
        </td>
        <td colSpan={1} className="confluenceTd">
          <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
            Indicate if the material is built by Jabil or externally purchased.
            This field is imported from SAP's Procurement Type field.
          </span>
          <br />
          <p>Procurement Types available:</p>
          <ul>
            <li>In-House Production (Build)</li>
            <li>External Procurement (Buy)</li>
            <li>Both Procurement Types (Build/Buy)</li>
            <li>Unknown</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Material Status
        </td>
        <td colSpan={1} className="confluenceTd">
          <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
            This field is imported from SAP's status field. A material can be in
            one of the statuses below:
          </span>
          <ul>
            <li>Active (Ready for use in configuration and production)</li>
            <li>
              Inactive (Not available for use and will not be visible in when
              user search for this material in other maintenance screens)
            </li>
            <li>Hold (Material is temporarily placed on hold)</li>
            <li>
              New (Material is still under configuration and it is not ready to
              use in production
            </li>
          </ul>
          <p>
            When a material with type FERT or HALB is imported, the status will
            be defaulted to "New". This allows Phoenix administrator to perform
            additional configuration to the material before it can be
            used.&nbsp;
            <br />
            For other material types, the status will be defaulted to
            "Active".&nbsp;
            <br />
            <br />
            Rules for overwriting material status during SAP import
          </p>
          <ul>
            <li>
              If current status is "New", material status can be ovewritten with
              the new status sent from SAP
            </li>
            <li>
              If current status is "Inactive" or "On Hold",&nbsp;material status
              cannot be overwritten&nbsp;with the new status sent from SAP
            </li>
            <li>
              If current status is "Active", material status can only
              be&nbsp;overwritten if&nbsp;the new status sent from SAP is
              "Inactive" or "Hold"
            </li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Bulk Issue
        </td>
        <td colSpan={1} className="confluenceTd">
          Checked box indicates material is bulk issue. SAP determines if
          material is bulk (example of bulk materials are screws which do not
          have Serial Numbers or any data to collect when used on the production
          floor.&nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Serialized
        </td>
        <td colSpan={1} className="confluenceTd">
          Checked box indicates material is serialized.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Batch Managed
        </td>
        <td colSpan={1} className="confluenceTd">
          Checked box indicates material is batch managed. SAP determines if
          material is batch managed. &nbsp;If Batch Managed is checked, an
          inventory ID should be collected when this material is
          assembled.&nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          UOM Name
        </td>
        <td colSpan={1} className="confluenceTd">
          Indicates the standard used to measure material quantity. This field
          is imported from SAP's Unit of Measure field and&nbsp;can be
          overwritten during SAP material import.&nbsp;Example: EA (Each), PCE
          (Piece), CS (Box)&nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Phantom
        </td>
        <td colSpan={1} className="confluenceTd">
          Indicates if this is a phantom material where the material never
          really exists as a stocked item but built to make up the parent
          material where the parent material is used to fulfill the order. This
          field is imported from SAP's Special Procurement field and&nbsp;
          <span>can be overwritten during SAP material import</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Product Family Name
        </td>
        <td colSpan={1} className="confluenceTd">
          The product family for this material. Product family is required if
          the Serialized flag is checked<span>&nbsp;</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          WIP Release Type
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>
            Determine how Serial Numbers will be generated for serialized
            material. This is used in WIP Release and Manual Birth screens.
          </p>
          <ul>
            <li>
              <strong>Generate Serial Number</strong>
              <br />
              If this is selected, user is required to configure the Next Number
              for the Serial Number. In WIP Release or Manual Birth screen,
              system will automatically generate serial numbers based on the
              format defined in the Next Number
              <br />
              &nbsp;
            </li>
            <li>
              <strong>Assigned Serial Number</strong>
              <br />
              If this is selected, user is required to configure the Validation
              Mask for the Serial Number. For Assigned Serial Number, user will
              manually create a new Serial Number in WIP Release, Manual Birth
              or Material Serialization screen and system will validate the
              Serial Number created follows the format of the validation mask.
              <br />
              &nbsp;
            </li>
            <li>
              <strong>N/A</strong>
              <br />
              If selected, no Serial Number for the material. User is not
              required to configure Next Number or Validation Mask
              <br />
              &nbsp;
            </li>
            <li>
              <strong>Temporary Serial Number</strong>
              <br />
              If selected, user is required to configure the&nbsp;Next Number
              for the temporary Serial Number. Temporary Serial Number will be
              replaced with the permanent Serial Number later in the production
              route.&nbsp;
            </li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          NextNumber
        </td>
        <td colSpan={1} className="confluenceTd">
          Determines the Serial Number format that will be auto-generated for
          this material in WIP Release, Manual Birth and Material Serialization
          screens.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Validation Mask Name
        </td>
        <td colSpan={1} className="confluenceTd">
          Validates the Serial Number assigned/created for this material in WIP
          Release, Manual Birth and Material Serialization screens.&nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Validation Mask Rules
        </td>
        <td colSpan={1} className="confluenceTd">
          Rules used to validate the serial number to ensure it follows the
          correct format.&nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Panel
        </td>
        <td colSpan={1} className="confluenceTd">
          Panelization is used only for circuit boards. If a board is a
          panelized, one big board can be split into several small ones. &nbsp;
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Panel Type Name
        </td>
        <td colSpan={1} className="confluenceTd">
          Panel Types are maintained in the Panel Type Maintenance screen. The
          name of a panel is determined by what is entered there.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Source System
        </td>
        <td colSpan={1} className="confluenceTd">
          System will auto populate this field according to where the material
          is created. If material is imported from SAP, the source system is
          "SAP". If material is created in Phoenix, the source system is "PHX".
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is TSM (Time Sensitive Material)
        </td>
        <td colSpan={1} className="confluenceTd">
          Indicates if the material is a time sensitive material.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          TSM Shelf
        </td>
        <td colSpan={1} className="confluenceTd">
          Defines the maximum shelf life of a material. Shelf life period can be
          configured in Days, Weeks, Months or Years.{" "}
          <span>
            This field is imported from SAP's Minimum Remaining Shelf Life
            (Shelf life) field and can be overwritten during SAP material
            import.
          </span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          TSM Shelf Unit
        </td>
        <td colSpan={1} className="confluenceTd">
          <span>Days, Weeks, Months or Years.</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Moisture SAP Type
        </td>
        <td colSpan={1} className="confluenceTd">
          Moisture type value assigned in SAP.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Moisture Bake Time
        </td>
        <td colSpan={1} className="confluenceTd">
          If exposure times exceed times noted in table 5-1 of IPC J-STD-033A,
          the part needs to go through a "Bake" cycle.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Unlimited Time
        </td>
        <td colSpan={1} className="confluenceTd">
          If&nbsp;Shelf Life is available but Moisture Classification
          empty,&nbsp;system will default the Moisture Classification to
          "M1"&nbsp;(Unlimited)
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          TSM Floor Unit
        </td>
        <td colSpan={1} className="confluenceTd">
          <span>Defines the maximum floor life of a material.&nbsp;</span>This
          is a system calculated field.&nbsp;
          <br />
          Formula = [Acceptable exposure time] / [Floor Life Unit]
          <br />
          Acceptable Exposure Time is derived from the Moisture Classification
          selected.&nbsp;
          <br />
          If Moisture Classification is "M6C", system will check the&nbsp;
          <span>
            Acceptable Exposure Time as configured in&nbsp;
            <a
              href="http://usplnd0wiki01:8090/display/PB/Moisture+Classification"
              rel="nofollow"
            >
              Moisture Classification Maintenance
            </a>
          </span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Package Type Name
        </td>
        <td colSpan={1} className="confluenceTd">
          These values are maintained in Package Type Maintenance. Package type
          is a more detailed version of 'Component Type' that we envisioned for
          tracking defects by pin pitch, spacing, pad geometry, etc.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Pin Count
        </td>
        <td colSpan={1} className="confluenceTd">
          This field is imported from SAP's Value From field and can be
          overwritten during SAP material import.
          <br />
          If Pin Count sent over from SAP is{" "}
          <blank>
            {" "}
            or "0", Phoenix shall store it as "0" to enable DPMO calculation
            later.
          </blank>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Component Type
        </td>
        <td colSpan={1} className="confluenceTd">
          This field is imported from SAP's Characteristic Value field and can
          be overwritten during SAP material import. In most cases Component
          Type represents a Package Type from SAP.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Assemble Type Name
        </td>
        <td colSpan={1} className="confluenceTd">
          &nbsp;Assemble Type are pre-configured in&nbsp;
          <a
            className="createlink"
            href="http://usplnd0wiki01:8090/pages/createpage.action?spaceKey=PB&title=Assemble+Type&linkCreation=true&fromPageId=1245306"
            rel="nofollow"
          >
            Assemble Type Maintenance
          </a>
          . Assemble Type will determine where the material is assembled.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Assemble Type Is Unique Per Route
        </td>
        <td colSpan={1} className="confluenceTd">
          True/False
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Assemble Type Is Active
        </td>
        <td colSpan={1} className="confluenceTd">
          <span>True/False</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Assemble Name
        </td>
        <td colSpan={1} className="confluenceTd">
          The name of the Data Collection to be prompted to the operator when
          the material is being assembled. Data Collection is preconfigured
          in&nbsp;
          <a
            href="http://usplnd0wiki01:8090/display/PB/Data+Collection"
            rel="nofollow"
          >
            Data Collection Maintenance
          </a>{" "}
          and assigned in Material Maintenance.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Disassemble Name
        </td>
        <td colSpan={1} className="confluenceTd">
          The name of the Data Collection to be prompted to the operator when
          the material is being disassembled.&nbsp;Data Collection is
          preconfigured in&nbsp;
          <a
            href="http://usplnd0wiki01:8090/display/PB/Data+Collection"
            rel="nofollow"
          >
            Data Collection Maintenance
          </a>
          &nbsp;<span>and assigned in Material Maintenance.</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Phoenix Material Type
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>
            Indicate the type of material that is using across Phoenix System.
            Values can be:
          </p>
          <ul>
            <li>WIP</li>
            <li>Serialized Material</li>
            <li>Unserialized Material</li>
            <li>Inventory</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Material Scan Required
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>
            If 'Enforce Material Name' is checked on the Material Maintenance
            Screen, this value will be checked.
          </p>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Document Name
        </td>
        <td colSpan={1} className="confluenceTd">
          If a document or label are assigned to the material, the name will
          appear in this column.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Has Image
        </td>
        <td colSpan={1} className="confluenceTd">
          If an image is attached to the material, the box will be checked.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Packout Weight
        </td>
        <td colSpan={1} className="confluenceTd">
          Weight assigned in Material Maintenance.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Packout Volume
        </td>
        <td colSpan={1} className="confluenceTd">
          Volume <span>assigned in Material Maintenance.</span>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Backflush Indicator
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>Indicates the type of backflush required</p>
          <ul>
            <li>
              <strong>No Backflush</strong>
              <br />
              The material is not generally backflushed
            </li>
            <li>
              <strong>Always Backflush</strong>
              <br />
              The naterial is always backflushed
            </li>
            <li>
              <strong>Backflush determine by Work Center</strong>
              <br />
              The work center determines whether thet material is backflushed
            </li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Configurable
        </td>
        <td colSpan={1} className="confluenceTd">
          Indicate if the material is a configurable product (For example,
          X-SERIES, NL-SERIES, S-SERIES for CTO Order)
          <br />
          Is Configurable material will have a BOM generated with BOM Type=Order
          during Delivery Order Release
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Is Auto Birth Disabled
        </td>
        <td colSpan={1} className="confluenceTd">
          If a Material is configured to disable auto birth, serial number will
          need to manually birth to Phoenix system using Material Serialization
          screen based on the Validation Mask before it can be use for
          production.&nbsp;
          <br />
          If a Material is configured to auto birth, serial number will auto
          birth when the serial number scanned into Phoenix system based on the
          Validation Mask.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          MPN Matching Status
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>
            Determine the material matching condition for each quantity of the
            material.
          </p>
          <ul>
            <li>
              <strong>None</strong>
              <br />
              No condition applied
            </li>
            <li>
              <strong>By Manufacturer</strong>
              <br />
              All quantity of the material must have an MPN from the same
              manufacturer
            </li>
            <li>
              <strong>By Manufacturer Part Number (MPN)</strong>
              <br />
              All quantity of the material must have the same MPN
            </li>
          </ul>
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Material Manufacturers
        </td>
        <td colSpan={1} className="confluenceTd">
          Manufacturer associated to the material in the Material Maintenance
          Screen.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Part Numbers
        </td>
        <td colSpan={1} className="confluenceTd">
          Manufacturer Part Number(MPN) for the Manufacturers. Value is
          maintained in the Material Maintenance screen. This will be used to
          verified on the selected Material Matching condition.
        </td>
      </tr>
      <tr>
        <td colSpan={1} className="confluenceTd">
          Part Number Types
        </td>
        <td colSpan={1} className="confluenceTd">
          <p>
            User configure the type of Manufacturer Part Number (MPN) in the
            Material Maintenance Screen.
          </p>
          <ul>
            <li>
              <strong>Complete</strong>
              <br />
              Represents full string value of the MPN.
            </li>
            <li>
              <strong>Prefix</strong>
              <br />
              Represents only the prefix of MPN
            </li>
          </ul>
        </td>
      </tr>
    </tbody>
  </table>




























#### Attachments

[image2013-7-16 8:49:50.png](/.attachments/29919923.png)
[image2013-7-15 10:28:2.png](/.attachments/29919924.png)
[image2013-7-15 10:27:8.png](/.attachments/29919925.png)
