# Introduction

Material can be made up of several classification/types. The higher level material classified as Assemblies (FERT) are the materials Jabil produces for customers
. To make up the higher level material, we have Sub-Assemblies (HALB) and components (ZROH). For example, customer requires Jabil to produce an X-Series (FERT) storage device. The X-Series will be made up of materials such as the motherboard (HALB) and memory card (ZROH).


### How to get there?




::: mermaid
graph LR
A("IFACTORY")-->0("PRODUCT")
0-->1("MATERIAL")

:::


#### Screen Activity


Material Maintenance enables user to perform the following activity:

- Create, view, update and delete material

- Configure Time Sensitive Material (TSM)

- Maintain material certification

- Maintain Material Custom Data

- Configure default assembly point and data to collect when the material is being assembled

- Attach visual aids to the material

- Configure Packout Attributes

- Configure External API Call

Pre Condition
The following data needs to be pre-configured (if used) before user configures Material 

- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)

- [Material Custom Data](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)

- [Package Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Package-Type.md)

- [Moisture Classification Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Moisture-Classification.md)

- [Assemble Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assembly-Type.md)

- [Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)

- [Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)

- [Data Collection Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Collect/Data-Collection-(4.4).md)

- [Document](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Maintenance-(4.0).md)

- [Visual Aid Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)




#### Screen Dependency


Material Maintenance is a vital screen in all configurations as almost every screen depends on Material.



#### Fields



<table
  className="wrapped relative-table confluenceTable"
  style={{ width: "59.4858%" }}
>
  <colgroup>
    <col style={{ width: "15.8129%" }} />
    <col style={{ width: "84.2105%" }} />
  </colgroup>
  <tbody>
    <tr>
      <td
        style={{ textAlign: "center", width: "659.0px" }}
        colSpan={2}
        className="confluenceTd"
      >
        <h5 id="Material-GeneralTab">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>General Tab</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Material Name</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>The unique name given to the material</p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Plant</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          The plant code to indicate the location of the material. Material and
          Plant combine makes a unique record for a material
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Description</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Additional description for the material can be entered in this field
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Customer Part Number
      </td>
      <td colSpan={1} className="confluenceTd">
        Material name as known by the customer
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material Group
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This field has direct relation with customer into SAP. Multiple
          material groups can belong to same customer.
        </p>
        <p>
          Notes: O
          <span style={{ color: "rgb(0,0,0)" }}>
            nly Material Type Unserialized Material and Inventory ID is only
            able to work as Share Material Grop
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>SAP Material Type</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Indicate the type of the material whether it is an assembly, component
          etc. <br />
          <span>This field is imported from SAP's Material Type field. </span>
          Material Types available are as follow with the bracketed code used in
          SAP
        </p>
        <ul>
          <li>Assemblies (FERT)</li>
          <li>Sub-Assemblies (HALB)</li>
          <li>Components (ZROH)</li>
          <li>Prep Parts (ZPRP)</li>
          <li>RMA Parts (ZRMA)</li>
          <li>Packaging Parts (ZVRP)</li>
          <li>MRO (HIBE)</li>
          <li>Others</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Material Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Indicate the real type of material that is using across Phoenix
          System. It determines by SAP Material Type, Procurement Type and
          Managed As value from SAP (refer to{" "}
          <a href="Material-Master-29920171.html">Material Master</a>).
        </p>
        <ul>
          <li>WIP</li>
          <li>Serialized Material</li>
          <li>Unserialized Material</li>
          <li>Inventory Id</li>
          <li>Lot Batch</li>
        </ul>
        <p>
          Note :&nbsp;System wouldn't validate material type against the BOM
          Item quantity.&nbsp;
        </p>
        <p>
          Note: Only the material Type is Unserialized Material / Inventory Id
          can be in the shared material group.&nbsp;
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Procurement Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Indicate if the material is built by Jabil or externally purchased.
          This field is imported from SAP's Procurement Type field.
          <br />
          Procurement Types available:
        </p>
        <ul>
          <li>In-House Production (Build)</li>
          <li>External Procurement (Buy)</li>
          <li>Both Procurement Types (Build/Buy)</li>
          <li>Unknown</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Status
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          This field is imported from SAP's status field. A material can be in
          one of the statuses below:
        </p>
        <ul>
          <li>Active (Ready for use in configuration and production)</li>
          <li>
            Inactive (Not available for use and will not be visible in when user
            search for this material in other maintenance screens)
          </li>
          <li>Hold (Material is temporarily placed on hold)</li>
          <li>
            New (Material is still under configuration and it is not ready to
            use in production
          </li>
        </ul>
        <p>
          <span>
            When a material with type FERT or HALB is imported, the status will
            be defaulted to "New". This allows Phoenix administrator to perform
            additional configuration to the material before it can be used.{" "}
            <br />
            For other material types, the status will be defaulted to "Active".{" "}
            <br />
            <br />
          </span>
          Rules for overwriting material status during SAP import
        </p>
        <ul>
          <li>
            If current status is "New", material status can be ovewritten with
            the new status sent from SAP
          </li>
          <li>
            If current status is "Inactive" or "On Hold",{" "}
            <span>
              material status cannot be overwritten{" "}
              <span>with the new status sent from SAP</span>
            </span>
          </li>
          <li>
            <span>
              <span>
                If current status is "Active", material status can only be{" "}
                <span>overwritten if </span>
                <span>
                  the new status sent from SAP is "Inactive" or "Hold"
                </span>
              </span>
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Managed As
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>Determine how data is collected and back-flushed for the material</p>
        <ul>
          <li>
            <strong>Bulk</strong> <br />
            This field is imported from SAP's Bulk Material field and can be
            overwritten during SAP material import. If material is marked as
            Bulk, it will not be back-flushed as it should already been consumed
            in SAP ECC when it is sent to the floor. Example of bulk materials
            are screws which do not have Serial Numbers or anything to collect
            when used on the production floor.
            <br />
            &nbsp;
          </li>
          <li>
            <strong>Serialized</strong>
            <br />
            This field is computed from the SAP's Serial Number Profile and can
            be overwritten during SAP material import. Serial Number Profile to
            indicates a material is Serialized (e.g. ZSYC) has to maintain in
            SAPSerialNumberProfile table by Site IT. If the Serial Number
            Profile is maintained in the table, system will mark the material as
            serialized. <br />
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              &nbsp;
            </span>
          </li>
          <li>
            <strong>Batch</strong>
            <br />
            <span>
              <span>
                This field is imported from SAP's Batch Management Indicator
                field and can be overwritten during SAP material import. If
                Batch Managed is checked, an inventory ID should be collected
                when this material is assembled. This material should be back
                flushed.
              </span>
            </span>
            &nbsp;
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Unit of Measure (UOM)
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          Indicates the standard used to measure material quantity. This field
          is imported from SAP's Unit of Measure field and{" "}
          <span>can be overwritten during SAP material import.</span> Example:
          EA (Each), PCE (Piece), CS (Box){" "}
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Phantom
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Indicates if this is a phantom material where the material never
          really exists as a stocked item but built to make up the parent
          material where the parent material is used to fulfill the order.
          <br />
          <span>
            This field is imported from SAP's Special Procurement field and{" "}
          </span>
          <span>can be overwritten during SAP material import. </span>
        </p>
        <p>
          This field is following the SAP Phantom during SAP material import.
          User can change the Phantom state of the material to manipulate the
          current material's BOM explosion requirement in Assemble Point and
          Assemble Screen. It will not overwritten by SAP Material import
          update.
        </p>
        <p>
          <span>
            Note: Material with SAP Phantom flag set as TRUE and/or Bulk flag
            set as TRUE will not be sent back to SAP for backflush in the order
            activity message.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Backflush
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          *&nbsp;<em>This field is no longer in use</em> *<br />
          <span
            style={{
              backgroundColor: "transparent",
              fontSize: "10.0pt",
              lineHeight: "13.0pt"
            }}
          >
            Indicates the type of backflush required
          </span>
        </p>
        <ul>
          <li>
            <strong>No Backflush</strong>
            <br />
            The material is not generally backflushed
          </li>
          <li>
            <strong>Always Backflush</strong>
            <br />
            The material is always backflushed
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
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Product Family
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        The product family for this material. Product family is required if the
        Serialized flag is checked<span>&nbsp;</span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Customer/Division
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Customer and Division will auto populate based on the product family
        selected
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Process Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Mandatory field when{" "}
          <span>Phoenix Material Type = WIP. Process Type available:</span>
        </p>
        <ul>
          <li>
            <span>
              <span style={{ color: "rgb(34,34,34)" }}>
                Repetitive / Board Build
              </span>
              <br className="-mce-tagged-br" />
            </span>
          </li>
          <li>
            <span>
              <span style={{ color: "rgb(34,34,34)" }}>
                <span style={{ color: "rgb(34,34,34)" }}>
                  Configurable / Box Build
                </span>
                <br className="-mce-tagged-br" />
              </span>
            </span>
          </li>
          <li>
            <span>
              <span style={{ color: "rgb(34,34,34)" }}>
                <span style={{ color: "rgb(34,34,34)" }}>
                  Lot / Batch Build
                </span>
              </span>
            </span>
          </li>
          <li>
            <span>
              <span style={{ color: "rgb(34,34,34)" }}>
                <span style={{ color: "rgb(34,34,34)" }}>
                  Repetitive with Work Order
                </span>
              </span>
            </span>
          </li>
        </ul>
        <p>
          <span>
            <span style={{ color: "rgb(34,34,34)" }}>
              <span style={{ color: "rgb(34,34,34)" }}>
                At Route Maintenance, the associated materials' process type
                will follow the route process type.
              </span>
            </span>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        SAP Source
      </td>
      <td colSpan={1} className="confluenceTd">
        ON: data coming from SAP OFF: data manually created
      </td>
    </tr>
    <tr>
      <td
        style={{ textAlign: "center", width: "659.0px" }}
        colSpan={2}
        className="confluenceTd"
      >
        <h5 style={{ textAlign: "center" }} id="Material-ProfileTab">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>Profile Tab</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Package Type</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Allows user to select the package type for the material. Package type is
        a more detailed version of 'Component Type' that we envisioned for
        tracking defects by pin pitch, spacing, pad geometry, etc.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Pin Count
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          This field is imported from SAP's Value From field and can be
          overwritten during SAP material import.
          <br />
          If Pin Count sent over from SAP is{" "}
          <blank>
            {" "}
            or "0", the system shall store it as "0" to enable DPMO calculation
            later.
          </blank>
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Component Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          This field is imported from SAP's Characteristic Value field and can
          be overwritten during SAP material import. In most cases Component
          Type represents a Package Type from SAP.
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        JEDEC Code
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        JEDEC Codes is a set of standardized packaging codes provided and
        governed by the JEDEC body. This data is configured in{" "}
        <a href="Package-Type-29919469.html">Package Type Maintenance</a>.{" "}
        <br />
        System shall auto populate the JEDEC Code according to the Package Type
        selected&nbsp;
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        JEDEC Orientation
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        JEDEC Orientation is a standardized package orientation provided and
        governed by the JEDEC body. This data is configured in{" "}
        <a href="Package-Type-29919469.html">Package Type Maintenance</a>
        <span>.</span>
        <br />
        System shall auto populate the JEDEC Orientation according to the
        Package Type selected&nbsp;
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Actual Weight
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Allows user to define the actual weight for each unit of this material.
        The UOM has to be chosen in different field
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Unit of Measure&nbsp; &nbsp;
      </td>
      <td colSpan={1} className="confluenceTd">
        Unit of Measure to be defined from the available drop down list. This
        will have to be selected if Actual Weight is configured.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Minimum Weight
      </td>
      <td colSpan={1} className="confluenceTd">
        Allows user to define the Minimum allowed weight, which has to be less
        than the Actual Weight
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Maximum Weight
      </td>
      <td colSpan={1} className="confluenceTd">
        Allows user to define the Maximum allowed weight, which has to be more
        than the Actual Weight
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Packout Volume (L)
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          <span>
            Allows user to define the weight for each unit of this material
          </span>{" "}
          in L (Litre)
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Image
      </td>
      <td colSpan={1} className="confluenceTd">
        It is possible to assign a picture to the material for future scope.
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="Material-QualityTab">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>Quality Tab</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Allow Inline Rework</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Determine the control to allow a material to fail and rework at
          Inspection &amp; Rework Station without sending to Rework Station.
        </p>
        <p>
          QC operator may not have permission to perform Rework as they are not
          trained to perform rework activities. However, there are certain
          materials such as label that can be reworked even by QC operator at
          Inspection &amp; Rework station by simply reprinting the label.
          Allowing QC operator to fix simple issues helps to save WIP processing
          time. To utilize this feature, the administrator can configure QC
          operator by disabling "User Can Add Rework Permission" and enabling
          "Add Inline Rework". In Material Maintenance, administrator can
          configure specific materials to allow inline rework by enabling the
          "Allow Inline Rework" flag.
        </p>
        <p>
          In Inspection and Rework station, QC operator can only add Rework for
          materials set as "Allow Inline Rework" by the administrator. For all
          other materials, QC operator will receive an error when they attempt
          to add Rework for all other materials.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Max Actuations</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        The maximum time the material can be used as a reference unit.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        TSM Material
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Indicates if the material is a time sensitive material. If enabled, user
        can configure the TSM behavior for this material
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Max Shelf Life</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Defines the maximum shelf life of a material. Shelf life period can be
          configured in Days, Weeks, Months or Years.
          <br />
          <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
            This field is imported from SAP's Min. Remaining Shelf Life (Shelf
            life) field and can be overwritten during SAP material import.
            <br />
            If Moisture Classification available, but Max Shelf Life is empty,
            system will default Max Shelf Life = "999,999,999" with Shelf period
            "YEARS"
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Moisture Classification</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Moisture Classification is the acceptable exposure time to calculate
          Floor Life.
          <br />
          <s>
            <span>
              This field is imported from SAP's{" "}
              <span>Period Indicator for Shelf Life Expiration Date</span>
              <span>&nbsp;</span>field. Phoenix will only import from SAP if the
              Moisture Classification's QM Control Key= "0010". <br />
              Moisture Classification is configured separately in &nbsp;
              <span>
                <a href="Moisture-Classification-29919465.html">
                  Moisture Classification Maintenance
                </a>
                . <br />
                If Shelf Life is available but Moisture Classification is not
                found (was not configured in Moisture Classification
                Maintenance), system will default the Moisture Classification to
                "M6"
                <br />
                If{" "}
                <span>
                  Shelf Life is available but Moisture Classification empty,{" "}
                  <span>
                    system will default the Moisture Classification to "M1"
                  </span>
                  <span>
                    &nbsp;(Unlimited)
                    <br />
                    If Moisture Classification "M1" and "M6" is not found in
                    Phoenix Database, system shall log Error&nbsp;
                  </span>
                </span>
              </span>
            </span>
          </s>
        </p>
        <p>
          <span>
            <span>
              <span>
                <span>
                  It is judged according to the QM Control Key &amp; Certificate
                  Type value in the Quality Management tab in SAP. If the QM
                  Control Key is "0009" and the Certificate Type starts with "M"
                  but does not start with "M0", it is an MSD material, and the
                  Moisture Classification is the value of the Certificate Type,
                  corresponds to the item of TsmFloorLife in the MatMas XML file
                  during material sync with SAP
                </span>
              </span>
            </span>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Max Floor Life</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          <span>Defines the maximum floor life of a material. </span>
        </span>
        This is a system calculated field. <br />
        Formula = [Acceptable exposure time] / [Floor Life Unit]
        <br />
        <br />
        Acceptable Exposure Time is derived from the Moisture Classification
        selected. <br />
        If Moisture Classification is "M6C", system will check the{" "}
        <span>
          Acceptable Exposure Time as configured in{" "}
          <a href="Moisture-Classification-29919465.html">
            Moisture Classification Maintenance
          </a>
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Bake Cycle
      </td>
      <td colSpan={1} className="confluenceTd">
        This field is enabled only when the Material is marked as 'TSM
        Material'. Value is mandatory to enter and defaulted by 0. Although
        system allows the value from 0-9999. If the user configured Max Bake
        Cycle as&nbsp; 0, that means user can go through bake cycle on this
        material for unlimited times, there is no restriction.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Bake Time (min)
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This field is enabled only when the Material is marked as 'TSM
          Material'. Value is optional to enter and the unit is in Minutes.
          Although system allows the value from 1-9999. If the user configured
          Min Bake time, in that case System validates and restricts if the Min
          bake time is greater than Max bake time.
        </p>
        <p>
          This configuration allows system to validate when the material is
          getting baked in oven.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Min Bake Time (min)
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This field is enabled only when the Material is marked as 'TSM
          Material'. Value is optional to enter and the unit is in Minutes.
          Although system allows the value from 1-9999. If the user configured
          Max Bake time, in that case System validates and restricts if the Min
          bake time is greater than Max bake time.
        </p>
        <p>Min Bake Time &lt;= Max Bake Time</p>
        <p>
          This configuration allows system to validate when the material is
          getting baked in oven.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Define Splitting Area
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Define Splitting Area' toggle</p>
        <p>
          Rows, by default is disabled and it allows input integer more than 0
          but maximum value is 10.
          <br />
          <span style={{ letterSpacing: "0.0px" }}>
            Columns, by default is disabled.&nbsp;
          </span>
          <span style={{ letterSpacing: "0.0px" }}>
            allow input integer more than 0 but maximum value is 10.
          </span>
        </p>
        <p>
          <span style={{ letterSpacing: "0.0px" }}>
            Define Splitting Area toggle will only apply for MIE and I&amp;R
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td
        style={{ textAlign: "center", width: "659.0px" }}
        colSpan={2}
        className="confluenceTd"
      >
        <h5 style={{ textAlign: "center" }} id="Material-Release&Assemble">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>Release &amp; Assemble</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Release Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Determine how Serial Numbers will be generated for serialized
          material. This is used in WIP Release and Manual Birth screens.
        </p>
        <ul>
          <li>
            <strong>Generate Serial Number</strong>
            <br />
            If this is selected, user is required to configure the Next Number
            for the Serial Number. In WIP Release or Manual Birth screen, system
            will automatically generate serial numbers based on the format
            defined in the Next Number
            <br />
            &nbsp;
          </li>
          <li>
            <strong>Assigned Serial Number</strong>
            <br />
            If this is selected, user is required to configure the Validation
            Mask for the Serial Number. For Assigned Serial Number, user will
            manually create a new Serial Number in WIP Release, Manual Birth or
            Material Serialization screen and system will validate the Serial
            Number created follows the format of the validation mask.
            <br />
            &nbsp;
          </li>
          <li>
            <strong>Progression Serial Number</strong>
            <br />
            If this is selected, Material could be used for progression only and
            is not allowed for WIP Release. This option is available if Material
            Type is "WIP". Validation Mask is optional for barcode mask
            validation during RMA dispatch.&nbsp;
            <span>
              Material is configured to be Alias Assembly is not allow to
              configure with this option.
            </span>
          </li>
        </ul>
        <ul>
          <li>
            <strong>N/A</strong>
            <br />
            If selected, no Serial Number for the material. User is not required
            to configure Next Number or Validation Mask
            <br />
            &nbsp;
          </li>
          <li>
            <strong>Temporary Serial Number</strong>
            <br />
            If selected, user is required to configure the Next Number for the
            temporary Serial Number. Temporary Serial Number will be replaced
            with the permanent Serial Number later in the production
            route.&nbsp;
            <br />
            &nbsp;
          </li>
        </ul>
        <p>
          It is also used for Lot Batch material type to determine how an
          Internal Batch Number will be generated. Internal Batch Number is
          unique by material.
        </p>
        <ul>
          <li>
            <strong>
              Assigned Batch Number
              <br />
            </strong>
            If this is selected, user is required to configure the Validation
            Mask for the Internal Batch Number. A new Internal Batch Number will
            be created during lot release or lot split and system will validate
            the Internal Batch Number created follows the format of the
            validation mask. Internal Batch Number is saved as "System Assigned"
            lot attribute.
          </li>
          <li>
            <strong>
              Generate Batch Number
              <br />
            </strong>
            If this is selected, user is required to configure the Next Number
            ("Batch Number" type) for the Internal Batch Number.{" "}
            <span style={{ color: "rgb(0,0,0)" }}>
              It is optional to also provide a Validation Mask to be used during
              lot split (if "Generate IBN On Split" = Off).&nbsp;
            </span>
            A new Internal Batch Number will be automatically created during lot
            release or lot split&nbsp;based on the format defined in the Next
            Number. Internal Batch Number is saved as "System Assigned" lot
            attribute.
            <strong>
              <br />
            </strong>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Next Number</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Determine the Serial Number format that will be auto-generated for
          this material in WIP Release, Manual Birth and Material Serialization
          screens. See <a href="Next-Number-29918714.html">Next Number</a>.
        </p>
        <p>
          For Lot Batch material type, t
          <span>
            he Next Number search result will return only "Batch Number" type.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Validation Mask</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Validates the Serial Number assigned/created for this material in WIP
          Release, Manual Birth and Material Serialization screens. See{" "}
          <a href="Validation-Mask-29918474.html">Validation Mask</a>{" "}
          configuration.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Assemble Action
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            Determines if the Serial Number needs to be pre-birthed prior to
            assembly, can be introduced to the system on assemble or whether
            there's a consigned list of Serials that can be assigned during
            assembly. <br />
            For unserialized material, this will determine if the material is
            auto-assembled by the system or requires user to manually scan to
            assemble. <br />
            <br />
            Assembly Action is dependent on the configuration of the material's
            Release Type and Material Type with the expected behavior in
            Assemble screen described in the table below.
          </p>
          <p>
            <span className="confluence-embedded-file-wrapper">
              <img
                className="confluence-embedded-image confluence-external-resource"
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919418.png&$format=octetStream"
                data-image-src="http://usplnd0wiki01:8090/download/attachments/29919417/image2016-7-18%2015%3A53%3A36.png?version=1&modificationDate=1530103839870&api=v2"
              />
            </span>
          </p>
          <p>
            <br />
          </p>
        </div>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Default Assemble Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Allows user to select the Assemble Type for this material. Assemble Type
        are pre-configured in{" "}
        <a href="Assembly-Type-29917720.html">Assemble Type Maintenance</a>.
        Assemble Type will determine where the material is assembled.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Default Data Collect on Assemble
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        The selected Data Collection will be prompted to the operator when the
        material is being assembled. Data Collection is pre-configured in{" "}
        <a href="29918056.html">Data Collection Maintenance</a>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span>Default Data Collect on Disassemble</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          The selected Data Collection will be prompted to the operator when the
          material is being disassembled.{" "}
          <span>Data Collection is pre-configured in </span>
          <a href="29918056.html">Data Collection Maintenance</a>
          <span>&nbsp;</span>
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Enforce Material Name
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Enforce operator to scan Material Name during assembly
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        GRN Validation Mask
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(34,34,34)" }}>
            Allow user to have validation mask configuration for Non-Unique
            Identifier (more than 16 char). If v
          </span>
          alidation mask is configured, system will validate at GRN maintenance
          screen when user creates a new GRN. If no validation mask is
          configured, system will remain the 16 alphanumeric GRN validation.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Enforce GRN
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          If set to TRUE, GRN field will be displayed in Assemble station and
          Inspection &amp; Rework station (<em>Only for replace operation</em>).
        </p>
        <p>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            If set to FALSE,{" "}
          </span>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            {" "}
            GRN field will not be displayed in
            <span> Assemble station and Inspection &amp; Rework station</span>
          </span>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            .
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <span title="">Automatically Split Items</span>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p title="">
          Applicable for material quantity that is more than 1 in the BOM during
          assemble.
        </p>
        <p title="">
          If set to TRUE, each quantity will appear as a separate line for
          assembly. If the material has 10 quantity, operator is required to
          assemble each of the 10 quantity one at a time. <br />
          If set to FALSE, the entire quantity will be grouped under one line
          item to assemble. If the material has 10 quantity, the operator is
          able to assemble all of the 10 quantity at once.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Is Configurable</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          Indicate if the material is a configurable product (For example,
          X-SERIES, NL-SERIES, S-SERIES for CTO Order)
          <br />
          Is Configurable material will have a BOM generated with BOM Type=Order
          during Delivery Order Release
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        <p>Release Document</p>
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>
          The label document used to generate and print the material's Serial
          Number during WIP Release, Manual Birth and Material Serialization.
        </p>
        <p>
          For Phoenix Material Type of "WIP" or "Serialized Material", the
          Release Document can only be printed if the Release Type is of
          "Generate Serial Number".
          <br />
          If Phoenix Material Type is "Serialized Material" and its Release Type
          is "Generate Serial Number", the release document is a required
          configuration. See <a href="29918399.html">Document maintenance</a>.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material Quantity Consumption
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            This is applicable to all Manual Station and Assemble Station for
            Serialize and Un-serialized material
          </p>
          <p>
            User have the option (From Setup Sheet/Always/Never) to enable.
            Default is set to 'Setup Sheet'.
          </p>
          <p>
            Configured in Material Maintenance is override the configuration at
            Setup Sheet. See the attached table below. No quantity is deducted
            although the Material Quantity Consumption is Yes if the GRN is not
            registered during the Part Allocation.
            <br />
            &nbsp;
            <span className="confluence-embedded-file-wrapper">
              <img
                className="confluence-embedded-image confluence-external-resource"
                src="plugins/servlet/confluence/placeholder/unknown-attachment"
                data-image-src="http://usplnd0wiki01:8090/plugins/servlet/confluence/placeholder/unknown-attachment?locale=en-US&version=2"
              />
            </span>
          </p>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Online Material Loading
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Available for unserialized and lot batch materials.&nbsp;</p>
        <p>
          If this is set to ON, user does not need to provide GRN in Manual
          Station Part Allocation screen. GRN will be provided at manual
          stations.
        </p>
        <p>
          If this is set to OFF, GRN is provided at Manual Station Part
          Allocation.
        </p>
        <p>This functionality is currently available for Lot Stations only.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Auto Release Super Lot
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Only will be visible when it is a Lot Batch material</p>
        <p>
          If this is set to OFF (Default Value), the super lot will not be auto
          released. User will be required to release the Super Lot using{" "}
          <a href="79790656.html">Super Lot Release</a> screen.
        </p>
        <p>
          If this is set to ON, the super lot will be auto released during lot
          release at MOE/MIE station.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="Material-RequiredCertification">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>Required Certification</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Certification Name
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Add or remove the certifications required for the user to use this
        material. <br />
        If 'Certification-Material' is added, system shall check whether the
        user possesses a valid 'Certification-Material' before they are allowed
        to work on this material.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Description
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        This is auto populated based on the certification name selected
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="Material-CustomData">
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>Custom Data</span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Material Custom Data Name
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span>
          The fields displayed in Custom Data tab are configured in{" "}
          <a href="Custom-Data-29918285.html">Custom Data Maintenance</a> with
          "Material" Custom Data Category
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Material Custom Data Value
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        User enters the custom data value here
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} title="" id="Material-VisualAid">
          <span style={{ color: "rgb(0,0,0)" }}>
            <strong>Visual Aid</strong>
          </span>
        </h5>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Field
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Visual Aid
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <span title="">
          Add or remove the visual aids that will be displayed to the operator.
          Visual Aid is pre-configured in{" "}
          <a href="Material-29919417.html">Visual Aid Maintenance</a>.
        </span>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Version
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Display the version of the selected Visual Aid.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Description
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Display the description of the selected Visual Aid.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route/Version
      </td>
      <td colSpan={1} className="confluenceTd">
        Displays the Route/Version where the visual aid route step is configured
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Route Step
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Allows user to configure the route step where the visual aid is prompted
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="Material-WIPDataCollections">
          <span style={{ color: "rgb(0,0,0)" }}>
            <strong>WIP Data Collections</strong>
          </span>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Data Collection
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Add or remove the data collection that will be prompt for the material.{" "}
        <span>Data Collection is preconfigured in </span>
        <a href="29918056.html">Data Collection Maintenance</a>
        <span>&nbsp;</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route/Version
      </td>
      <td colSpan={1} className="confluenceTd">
        Displays the Route/Version where the data collection route step is
        configured
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Route Step
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Allows user to configure the route step where the data collection is
        prompted
      </td>
    </tr>
    <tr>
      <td style={{ width: "659.0px" }} colSpan={2} className="confluenceTd">
        <h5
          style={{ textAlign: "center" }}
          id="Material-ManufacturersPartNumber"
        >
          <strong>
            <span style={{ color: "rgb(0,0,0)" }}>
              Manufacturers Part Number
            </span>
          </strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "105.0px" }}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        style={{ width: "554.0px" }}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Material Matching
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p title="">
          Determine the material matching condition for each quantity of the
          material.
        </p>
        <ul title="">
          <li>
            None
            <br />
            No condition applied
          </li>
          <li>
            By Manufacturer
            <br />
            All quantity of the material must have an MPN from the same
            manufacturer
          </li>
          <li>
            By Manufacturer Part Number (MPN)
            <br />
            All quantity of the material must have the same MPN
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Manufacturer
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        Add or remove the Manufacturers associated to the material
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Part Number
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        User enters the Manufacturer Part Number(MPN) for the Manufacturers.
        This will be used to verified on the selected Material Matching
        condition.
      </td>
    </tr>
    <tr>
      <td style={{ width: "105.0px" }} className="confluenceTd">
        Part Number Type
      </td>
      <td style={{ width: "554.0px" }} className="confluenceTd">
        <p>User configure the type of Manufacturer Part Number (MPN) entered</p>
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
    <tr>
      <td style={{ textAlign: "center" }} colSpan={2} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          <strong>On Release API Call</strong>
        </span>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        title="Background colour : Grey"
        colSpan={1}
        data-highlight-colour="grey"
      >
        Field&nbsp;
      </td>
      <td
        className="highlight-grey confluenceTd"
        title="Background colour : Grey"
        colSpan={1}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        URL
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            <span style={{ color: "rgb(23,43,77)" }}>
              This is the http/https address (web api) that configure to be call
              by the rule when a Assigned Serial Number scanned during WIP
              Release.&nbsp;
            </span>
          </p>
          <p>
            <span style={{ color: "rgb(23,43,77)" }}>
              Send the following information:
            </span>
          </p>
          <ul>
            <li>SerialNumber</li>
            <li>CustomerId</li>
            <li>CustomerName</li>
            <li>CustomerDivisionId</li>
            <li>CustomerDivisionName</li>
            <li>MaterialId</li>
            <li>MaterialName</li>
            <li>ProductFamilyId</li>
            <li>ProductFamilyName</li>
            <li>AssemblyNumber</li>
            <li>AssemblyRevision</li>
            <li>AssemblyVersion</li>
            <li>Attributes</li>
          </ul>
          <p>Sample as below:</p>
          <p>
            <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img
                className="confluence-embedded-image confluence-thumbnail"
                height={250}
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/94405192.png&$format=octetStream"
                data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/94405192.png&$format=octetStream"
                data-unresolved-comment-count={0}
                data-linked-resource-id={94405192}
                data-linked-resource-version={1}
                data-linked-resource-type="attachment"
                data-linked-resource-default-alias="image2021-7-2-13-41-17.png"
                data-base-url="http://usplnd0wiki01:8090"
                data-linked-resource-content-type="image/png"
                data-linked-resource-container-id={29919417}
                data-linked-resource-container-version={40}
              />
            </span>
          </p>
          <p>
            Notes: For 'Auto Release WIP' function in MOE/MIE, only batch entry
            mode support to pass Attributes for external API.
          </p>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>Timeout (in seconds)</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          A time value for seconds that will be timeout if exceed this value. (
          note: Up to 300 seconds)
        </span>
      </td>
    </tr>
  </tbody>
</table>


#### Attachments

[image2016-7-18 15:53:36.png](/.attachments/29919418.png)

[image2019-3-1_16-19-20.png](/.attachments/44761545.png)

[image2019-5-17_9-50-28.png](/.attachments/49643917.png)

[image2019-7-1_16-38-43.png](/.attachments/51872039.png)

[image2021-7-2_13-41-17.png](/.attachments/94405192.png)

