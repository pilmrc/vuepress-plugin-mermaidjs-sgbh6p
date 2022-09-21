# Introduction

Validate Sampling for Batch Tag
Materials produced are packed into containers and ship to customers. A container can be a box or a pallet where several boxes are packed into a larger box. This screen allows user to create a container type. Container Type defines the behavior of the containers and their packing restrictions. In Production Order Packout/Delivery Packout/WIP Packout/Palletization or any other packing station, user will select the Container Type to create containers. All container created under the selected Container Type will be bonded by the Container Type configuration here. 




### How to get there?



::: mermaid
graph LR
A("PACKOUT")-->0("CONTAINER Type")

:::

Precondition
The following items need to be pre-configured to create a new container

- Next Number / Validation Mask

- Route Steps

- Document with container document type

- Material

- Assembly Revision (if required)

- Container (if creating a pallet)

- WIP Attribute (if required)

- Material Custom Data & Value (if required)

- Container Custom Data (if required)

- Batch Tag Name (If required)


#### Screen Activity


Container Maintenance enables user to perform the following activity:

- Create, view, update and delete container records

- Configure allowed materials to be packed in a container

- Configure packed quantity per box/pallet

- Define container weight and dimension

- Configure label printing for the container

- Add custom data values for the container

- Associate Route Steps to the container

- Add Batch tag name(s) to the container

- Restrict to same GRN against associated material, if the packout station has Material checkpoint rule defined against that material


#### Screen Dependency


The following screen(s) has direct dependency with Inventory ID

- WIP Packout

- Delivery Packout

- Production Order Packout


#### Creating a Container Type



- Go to Container Type Maintenance screen

- In the header section, enter a unique name for the container type

- Enter all the mandatory data for the container type. Refer to the Fields section for details on each field

- Save the configuration


#### Fields


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="ContainerType-GeneralTab">
          <strong>General Tab</strong>
        </h5>
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
      <td className="confluenceTd">
        <p>Container Type</p>
      </td>
      <td className="confluenceTd">
        <p>The unique name for the container type</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Description
      </td>
      <td colSpan={1} className="confluenceTd">
        Enter a description for the container type
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Status Type
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>A container can be in one of the statuses below:</p>
        <ul>
          <li>New (Under configuration and not ready for production use)</li>
          <li>Active (Ready for production use)</li>
          <li>
            Inactive (Hide in the Container Type selection in the container)
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Usage Type
        <div className="content-wrapper">
          <p>
            <br />
          </p>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          This list is preconfigured with following values, but if required
          could be added additionally.
        </p>
        <p>
          It is used to define the usage of the container for overpacking.
          Working in conjunction with "Requires Overpack" field (described
          below), to define the overpack hierarchy.
        </p>
        <ul>
          <li>Box</li>
          <li>
            Pallet (Used as overpack where boxes are packed into a pallet)
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Next Number
      </td>
      <td colSpan={1} className="confluenceTd">
        Configure the box Serial Number generation
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Validation Mask
      </td>
      <td colSpan={1} className="confluenceTd">
        Configure if the Box SN type is of Assigned Serial Number. Either of one
        field (Next Number / Validation Mask) is mandatory to enter.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Customer
      </td>
      <td colSpan={1} className="confluenceTd">
        To indicate the container belongs to specific Customer
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        SAP Packaging Material
      </td>
      <td colSpan={1} className="confluenceTd">
        Enter the corresponding SAP Packaging Material name
      </td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5
          style={{ textAlign: "center" }}
          id="ContainerType-Weight&DimensionsTab"
        >
          <span style={{ color: "rgb(51,51,51)" }}>
            Weight &amp; Dimensions Tab
          </span>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Field</strong>
      </td>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Description</strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Height
      </td>
      <td colSpan={1} className="confluenceTd">
        Container's height measured in mm
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Width
      </td>
      <td colSpan={1} className="confluenceTd">
        Container's height&nbsp;measured in mm
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Length
      </td>
      <td colSpan={1} className="confluenceTd">
        Container's length&nbsp;measured in mm
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Volume
      </td>
      <td colSpan={1} className="confluenceTd">
        Container's volume&nbsp;measured in litres (dm<sup>3</sup>)
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Fill Weight
      </td>
      <td colSpan={1} className="confluenceTd">
        Container's maximum weight allowed in Kg
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsWeightRuleEnforced</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        If this option is enabled, system will not allow the packed weight to
        exceed the configured Max Fill Weight. The system is considering the
        weight configured in material maintenance to calculate the actual
        weight.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsVolumeRuleEnforced</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        If this option is enabled, system will not allow packing volume to
        exceed the configured container volume in this tab. The system is
        considering the volume configured in material maintenance to calculate
        the actual volume.
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "center" }} colSpan={2} className="confluenceTd">
        <h5 id="ContainerType-PackoutConfigurations">
          <strong>Packout Configurations</strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Field</strong>
      </td>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Description</strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(124,124,124)" }}>
          Container Type Packout Rules
        </span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Depending on customer requirement, WIP can be packed by specific
          groupings. The following restrictions are configurable:
        </p>
        <ul>
          <li>
            Is Restricted To Customer - Only allow materials of the same
            customer to be packed into this container
          </li>
          <li>
            Is Restricted To Same Product Family - Only allow materials of the
            same Product Family to be packed into this container
          </li>
          <li>
            Is Restricted To Same Bom - Only allow WIPs of the same BOM to be
            packed into this container
          </li>
          <li>
            Is Restricted To Same Batch - Only allow WIPs of the same Batch to
            be packed into this container
          </li>
          <li>
            Is Restricted To Same Material - &nbsp;Only allow the same materials
            to be packed into this container
          </li>
          <li>
            Is Restricted To Same Assembly Revision - Only allow WIPs of the
            same Assembly Revision to be packed into this container
          </li>
          <li>
            Is Restricted To Same Alias Assembly - All WIP are match with 1
            <sup>st</sup> WIP packed and only allow either
            <ol>
              <li>
                Same Alias Assembly Revision and same base assembly to be packed
                into this container. OR
              </li>
              <li>
                Same Base Assembly yet convert to alias to be packed into this
                container. (system will block if the scan WIP's base assembly
                don't have any record configured in Assembly Alias Maintenance
                screen)
              </li>
            </ol>
          </li>
          <li>
            Is Restricted To Same Order - Only allow materials of the same Order
            to be packed into this container
          </li>
          <li>
            Is Restricted to Same Super Lot - Only allow lots that belong to the
            same Super Lot to be packed into this container.
          </li>
          <li>
            Is Restricted to Same Lot - Not allowed to mix lots in this
            container (only same material with same Internal Batch Number).
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Container Defect Type
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Apply to Lot Planned Order and WIP Packout (Not for BTO/CTO) Station
        </p>
        <ul>
          <li>
            No Open Defect - Only allow items with no open defect to be packed
            into this container. (This option is set as Default)
          </li>
          <li>
            Same Open Defect - Only allow items contain with the exact same
            defects to be packed into this container{" "}
            <span>
              with the concept of follow the leader rule. e.g. If configured
              with "Same Open Defect" means for the first lot/WIP has 2 defects,
              then subsequent lot/WIP shall have the same 2 defects and no
              additional defects.{" "}
            </span>
          </li>
          <li>
            Any Open Defect - Only allow items with defects to be packed into
            this container
          </li>
        </ul>
        <p>
          Above lot/WIP defect is referring to the latest defect (Defect from
          the last test). Applicable when the "Usage Type" is set to "Box" under
          the "General" Tab
        </p>
        <p>
          Scrapped WIP is not allowed to be packed into container but Scrapped
          Lot is allowed to be packed for options "<span>Same Open Defect</span>
          " and "<span>Any </span>
          <span>Open Defect</span>".
        </p>
        <p>
          There is only "No Open Defect" option for Planned order and WIP
          Packout in BTO/CTO Route.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Container WIP Constraint
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Apply to WIP Packout <span>(Not for BTO/CTO) </span>Station only
        </p>
        <ul>
          <li>
            Allow In Process WIP Only - Only allow WIP with status "InProcess"
            to be packed into this container
          </li>
          <li>
            Allow Complete WIP Only - Only allow WIP with status "Complete" to
            be packed into this container (This option is set as Default)
          </li>
        </ul>
        <p>
          <span>
            There is only "<span>Allow Complete WIP Only</span>" option for
            Planned order and WIP Packout in BTO/CTO Route.
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        RestrictedByMaxContainerPerOrder
      </td>
      <td colSpan={1} className="confluenceTd">
        <ul>
          <li>Specify the maximum number of containers allowed for an order</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material Release Date Range
      </td>
      <td colSpan={1} className="confluenceTd">
        <ul>
          <li>
            Allow user to control the container rules and filter the Material
            Release Date Range by:
            <ul>
              <li>Month</li>
              <li>Day Range</li>
            </ul>
          </li>
          <li>
            If Month is selected, only WIP that is released in the same month
            and year as the first WIP packed into the container, can be packed.
          </li>
          <li>
            If Day Range is selected, user need to enter number of days. The
            earliest and the latest&nbsp;WIP released date in the container must
            be within the day range entered.
          </li>
          <li>
            <span style={{ color: "rgb(34,34,34)" }}>
              If there is no value selected for{" "}
              <span>Material Release Date Range</span>&nbsp;, no restriction
              will happen against the container created for the container
              type.&nbsp;
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Restrict to same attributes
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="content-wrapper">
          <p>
            Enabling it, allows to enter&nbsp;WIP or Lot attributes which the
            system will check when packing units. This feature works for both
            WIP and Lot packout. For Lot validation, s
            <span style={{ color: "rgb(0,0,0)" }}>
              ystem exclude system assigned attribute (Current is "Internal
              Batch Number") from "Restrict To Same Attributes" validation.
            </span>
          </p>
          <p>
            I
            <span style={{ color: "rgb(0,0,0)" }}>
              n Add WIP/Lot Attributes dialog, there is a toggle&nbsp;
            </span>
            <span style={{ color: "rgb(0,0,0)" }}>
              “Force Configure All Attributes” with default value of
              “Off”.&nbsp;
            </span>
          </p>
          <ul>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                If “Force Configure All Attributes” is turned OFF, system will
                only check the attributes that are configured in container type.
                Attributes that are not added here will be ignored during
                packing.
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                If “Force Configure All Attributes” is turned ON, all the unit's
                attributes must be added. Unit with any attribute not
                configured/added in container type will not be allowed to pack
                into the container.
              </span>
            </li>
          </ul>
          <p>
            <span style={{ color: "rgb(0,0,0)" }}>
              There is a toggle "Is Required" when adding each attribute. It
              will be "On" by default.&nbsp;
            </span>
          </p>
          <ul>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                When the attribute's “Is Required” = Yes, the unit must have the
                attribute before it is allowed to be packed into the container.
                Subsequent units to pack in the container must have the same
                attribute value as the first unit packed.
              </span>
            </li>
            <li>
              <span style={{ color: "rgb(0,0,0)" }}>
                When the attribute's “Is Required” = No, it is not mandatory for
                the unit to have the attribute in order to be packed.&nbsp;If
                the first unit packed does not have the attribute, following
                units should not have the attribute (follow the leader). If the
                first unit packed have the attribute, following units must have
                the attribute with the same value.
              </span>
            </li>
          </ul>
          <p>
            <span style={{ color: "rgb(0,0,0)" }}>
              <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                <img
                  className="confluence-embedded-image confluence-content-image-border"
                  width={550}
                  src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423243.png&$format=octetStream"
                  data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423243.png&$format=octetStream"
                  data-unresolved-comment-count={0}
                  data-linked-resource-id={62423243}
                  data-linked-resource-version={1}
                  data-linked-resource-type="attachment"
                  data-linked-resource-default-alias="image2020-1-2-16-55-40.png"
                  data-base-url="http://usplnd0wiki01:8090"
                  data-linked-resource-content-type="image/png"
                  data-linked-resource-container-id={29918891}
                  data-linked-resource-container-version={33}
                />
              </span>
              &nbsp;&nbsp;
              <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                <img
                  className="confluence-embedded-image confluence-content-image-border"
                  width={550}
                  src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423244.png&$format=octetStream"
                  data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/62423244.png&$format=octetStream"
                  data-unresolved-comment-count={0}
                  data-linked-resource-id={62423244}
                  data-linked-resource-version={1}
                  data-linked-resource-type="attachment"
                  data-linked-resource-default-alias="image2020-1-2-17-3-47.png"
                  data-base-url="http://usplnd0wiki01:8090"
                  data-linked-resource-content-type="image/png"
                  data-linked-resource-container-id={29918891}
                  data-linked-resource-container-version={33}
                />
              </span>
            </span>
          </p>
        </div>
        <p>
          Note 1: Batch Tag number is part of Attribute therefore user can
          configure restrict to same batch tag number with this option.
        </p>
        <p>
          Note 2:&nbsp;
          <span style={{ color: "rgb(0,0,0)" }}>
            If user configured the system assigned attribute (Current is
            "Internal Batch Number") in Restrict to Same Attributes , system
            will ignore this attribute during pakcout whatever "Force Configure
            All Attributes" is turned ON or OFF and Is Required is Yes or No.
          </span>
        </p>
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img
                className="confluence-embedded-image"
                height={250}
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/89587939.png&$format=octetStream"
                data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/89587939.png&$format=octetStream"
                data-unresolved-comment-count={0}
                data-linked-resource-id={89587939}
                data-linked-resource-version={1}
                data-linked-resource-type="attachment"
                data-linked-resource-default-alias="image2021-3-23-16-12-53.png"
                data-base-url="http://usplnd0wiki01:8090"
                data-linked-resource-content-type="image/png"
                data-linked-resource-container-id={29918891}
                data-linked-resource-container-version={33}
              />
            </span>
            &nbsp;&nbsp;
            <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img
                className="confluence-embedded-image"
                height={250}
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/89587940.png&$format=octetStream"
                data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/89587940.png&$format=octetStream"
                data-unresolved-comment-count={0}
                data-linked-resource-id={89587940}
                data-linked-resource-version={1}
                data-linked-resource-type="attachment"
                data-linked-resource-default-alias="image2021-3-23-16-14-1.png"
                data-base-url="http://usplnd0wiki01:8090"
                data-linked-resource-content-type="image/png"
                data-linked-resource-container-id={29918891}
                data-linked-resource-container-version={33}
              />
            </span>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Generate GRN
      </td>
      <td colSpan={1} className="confluenceTd">
        If turn On, this container name is used to generate GRN. By default,
        option should be set to Off. This is applied to Box/Pallet Usage
        Type.&nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Custom Data Packout
      </td>
      <td colSpan={1} className="confluenceTd">
        <ul>
          <li>
            Requires Overpack - To indicate if the container is required to be
            packed into another container. It is used to filter the container
            type with a configured UsageType can be used for doing overpack.
            <br />
            <ul>
              <li>
                Box: the container can be packed into other container with usage
                type Box
              </li>
              <li>
                Pallet: the container can only be packed into another another
                container with usage type Pallet
              </li>
            </ul>
            &nbsp;
          </li>
          <li>
            RestrictedByWipAttribute - Only allow WIPs with the specified{" "}
            <a href="Container-Type-29918891.html">WIP Attribute</a> and Value
            to be packed into this container
            <br />
            If this option is selected, user must enter a WIP Attribute Name
            &amp; Value.&nbsp;
            <moved to="" provide="" a="" list="" of="" attributes="">
              <br />
              <br />
            </moved>
          </li>
          <li>
            <span style={{ color: "rgb(45,46,47)" }}>
              IsRestrictedByCustomData - Only allow Materials with the specified{" "}
              <a href="Container-Type-29918891.html">Container Type</a> and
              Value to be packed into this container.
            </span>
            <br />
            If this option is selected, user must enter a Material Custom Data
            &amp; Value
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>
          Validate Sampling for Batch Tag
        </span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Enabling it, allows to add active Batch tag names so the system will
          check when packing units. System support 'Generic' &amp; 'Manual
          Sampling' batch tag types.
        </p>
        <p>For 'Generic' batch tag:</p>
        <ol>
          <li>
            <span>
              If "Batch tag name" is added, then only units with the attribute
              value(s)and batch tag name will be packed.
            </span>
          </li>
          <li>
            If the sample is passed, then only system allows pack-out, otherwise
            restricts with below error messages
            <ol>
              <li>
                <p>
                  <span>
                    &nbsp;If the unit has batch tag still under sampling, the
                    validation don't allow to continue with the message
                  </span>
                </p>
                <p>
                  <span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span>
                  “Batch tag “{" "}
                  <batch tag="" name="">
                    {" "}
                    “ with value “{" "}
                    <batch tag="" value="">
                      {" "}
                      “ still under sampling.”
                    </batch>
                  </batch>
                </p>
              </li>
              <li>
                <p>
                  If the unit has batch tag sampling fail, the validation don't
                  allow to continue with the message
                </p>
                <p>
                  <span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span>
                  “Batch tag “{" "}
                  <batch tag="" name="">
                    {" "}
                    “ with value “{" "}
                    <batch tag="" value="">
                      {" "}
                      “ FAILED sampling.”
                    </batch>
                  </batch>
                </p>
              </li>
              <li>
                <p>
                  If the container contains units with batch tag still under
                  sampling, the validation doesn't allow to continue with the
                  message
                </p>
                <p>
                  <span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span>
                  “At least one unit with Batch tag “{" "}
                  <batch tag="" name="">
                    {" "}
                    “ with value “{" "}
                    <batch tag="" value="">
                      {" "}
                      “ still under sampling.”
                    </batch>
                  </batch>
                </p>
              </li>
              <li>
                <p>
                  If the container contains units with batch tag sampling Fail,
                  the validation doesn't allow to continue with the message
                </p>
                <p>
                  <span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span>
                  “At least one unit with Batch tag “{" "}
                  <batch tag="" name="">
                    {" "}
                    “ with value “{" "}
                    <batch tag="" value="">
                      {" "}
                      “ FAILED sampling.”
                    </batch>
                  </batch>
                </p>
              </li>
            </ol>
          </li>
        </ol>
        <p>For 'Manual Sampling' batch tag:</p>
        <ol>
          <li>
            <span>
              If "Batch tag name" is added and units with the attribute value(s)
              and batch tag name:
            </span>
            <ol>
              <li>
                <span>
                  If the batch tag number is 'Active' status,&nbsp; it means the
                  unit still under sampling, the validation don't allow to
                  continue with the message:&nbsp;&nbsp;“Batch tag “{" "}
                  <batch tag="" name="">
                    {" "}
                    “ with value “{" "}
                    <batch tag="" value="">
                      {" "}
                      “ still under sampling.”.
                    </batch>
                  </batch>
                </span>
              </li>
              <li>
                <span>
                  If the batch tag number is 'Completed' status, it means the
                  unit has completed sampling, the validation allow to continue.
                </span>
              </li>
            </ol>
          </li>
          <li>
            <span>
              If "Batch tag name" is added and units doesn't have associated
              attribute value(s) and batch tag name, the validation allow to
              continue.
            </span>
          </li>
        </ol>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Panel
      </td>
      <td colSpan={1} className="confluenceTd">
        Toggle option and OFF by default. On enabling the toggle,&nbsp;the
        container with this configuration is only allowed to pack panel (Is in
        Panel = "Yes") otherwise the container does not support the Panel pack
        in Packout station.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Restrict to Same GRN against Material Checkpoint
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Toggle option and OFF by default. On enabling the toggle,&nbsp;the
          container with this configuration is only allowed to pack the WIPs /
          Lots which has same GRN (in WIP Genealogy) against a material which is
          configured against Material Checkpoint Rule at the same station.
        </p>
        <p>
          This toggle has no significance if there is no active Checkpoint Rule
          defined.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Auto-hold on Container Closure
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Toggle option and OFF by default. On enabling the toggle, the
          container with this configuration will hold the container
          automatically on closure after packout / overpack so that the
          box/Pallet will be restricted to auto-shipment.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5
          style={{ textAlign: "center" }}
          id="ContainerType-ContainerTypeItems"
        >
          Container Type Items
        </h5>
        <p style={{ textAlign: "center" }}>
          (Allowed user to select material or container. A box can be packed
          with material and smaller containers)
        </p>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Field</strong>
      </td>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <strong>Description</strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Item Type
      </td>
      <td colSpan={1} className="confluenceTd">
        Indicates whether the item is a Material or another Container
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Item
      </td>
      <td colSpan={1} className="confluenceTd">
        If Packed Item selected is "Material", display name of the material
        selected.
        <br />
        If Packed Item selected is "Container", display name of the container
        type selected.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Plant Code
      </td>
      <td colSpan={1} className="confluenceTd">
        This field will auto populate material plant code upon selection of a
        material. This field is inactive if packed item "Container" is selected
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Assembly Revision
      </td>
      <td colSpan={1} className="confluenceTd">
        Display the Assembly Revision of the material if selected. Empty if item
        type is Container
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Min Quantity
      </td>
      <td colSpan={1} className="confluenceTd">
        Minimum quantity&nbsp;of the selected item required to be packed into
        this container. The container cannot be closed if the Min Quantity is
        not met. Also in case of overpack it is the quantity of containers to be
        packed.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Quantity
      </td>
      <td colSpan={1} className="confluenceTd">
        Maximum quantity of the selected item allowed to be packed into this
        container. Also in case of overpack it is the number of containers to be
        packed. Use 0 for not defining a limit to container capacity.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        &nbsp;Min Volume
      </td>
      <td colSpan={1} className="confluenceTd">
        Volume is tracked in liters and it is the minimum required volume to be
        packed in the container.{" "}
        <span>
          The container cannot be closed if the Required Volume is not met.
          Previously called "Required Volume"
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Min Carrier
      </td>
      <td colSpan={1} className="confluenceTd">
        This Min Carrier is only applicable for Box usage type and Lot/Batch
        material. There is no checking for this field.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Carrier
      </td>
      <td colSpan={1} className="confluenceTd">
        This Max Carrier is only applicable for Box usage type and Lot/Batch
        material. Maximum carrier is allowed to be packed into this
        container.&nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="ContainerType-RouteStepTypes">
          Route Step Types
        </h5>
        <p style={{ textAlign: "center" }}>
          (The user shall have the optional ability to limit the container types
          available to the end user for a particular packing operation
          (production or RMA).
        </p>
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        Field
      </td>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        Description
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>Add</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Allow user to add a new Route Step Type&nbsp;and has option to extend
          to a Route/Route step. User has option to add the record base on the
          following station:
        </p>
        <ul>
          <li>
            Packout (WIP Packout, Plan Order Packout and Production Order
            Packout)
          </li>
          <li>Warehouse</li>
          <li>Receiving</li>
        </ul>
        <p>
          <u>Packout</u>
        </p>
        <p>
          If no specific container types have been associated for a route step
          type or extend to Route/Route step this will be interpreted by the
          system that all container types are allowed to use.
        </p>
        <p>
          If WIP is scanned which packed to a Box but the container type is
          configured with route step restriction (e.g. Route Step Type or extend
          to Route/Route Step) but no record is matching with current packout
          step, then behave as below:
        </p>
        <ol>
          <li>
            <span>No Information Box should be showed</span>
          </li>
          <li>
            Container Type list will show the Container Type associated with the
            Route Step Type<span>&nbsp;</span>
            <strong>and the compatible container type</strong>
          </li>
          <li>
            <span>"Scan WIP" textbox to disable</span>
          </li>
          <li>
            <span>Pack and Switch buttons disable</span>
          </li>
          <li>
            <span>
              Warning toastr message "Container Type '
              <container type="" name="">
                ' is not configured with the Route Step Type '
                <route step="" type="" name="">
                  '".
                </route>
              </container>
            </span>
          </li>
        </ol>
        <p>
          If Carrier is scanned which packed to a Box but the container type is
          configured with route step restriction (e.g. Route Step Type or extend
          to Route/Route Step) but no record is matching with current packout,
          &nbsp;then behave as below:
        </p>
        <ol>
          <li>
            <span>No Information Box should be showed</span>
          </li>
          <li>
            <span>
              Container Type list will show the Container Type associated with
              the Route Step Type&nbsp;
              <strong>and the compatible container type</strong>
              <br />
            </span>
          </li>
          <li>
            <span>
              "Carrier/ Lot Number" textbox is to disable&nbsp;
              <br />
            </span>
          </li>
          <li>
            <span>
              Pack and Switch buttons is disable
              <br />
            </span>
          </li>
          <li>
            <span>
              Warning toastr message "Container Type '
              <container type="" name="">
                ' is not configured with the Route Step Type '
                <route step="" type="" name="">
                  '"
                </route>
              </container>
            </span>
          </li>
        </ol>
        <p>
          <u>Warehouse &amp; Receiving</u>
        </p>
        <p>
          If a container is scan at warehouse and receiving station (For WIP
          only, Lot Warehouse and Lot Receiving is not supported by this
          feature), system will prompt error when it's container type is
          configured with route step restriction but no record is matching for
          it's current warehouse/receiving route step.
        </p>
        <p>
          <span>
            If no route step type or extend to Route/Route step associated to a
            container type, this will be interpreted by the system that this
            container type has no restriction and allow to process at any
            warehouse and receiving route steps.&nbsp;
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Search Route Step Type
      </td>
      <td colSpan={1} className="confluenceTd">
        To select the Route Step Type that will be associated to the container
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Cancel
      </td>
      <td colSpan={1} className="confluenceTd">
        Cancel the operation to associate a Route Step type
      </td>
    </tr>
  </tbody>
</table>



- **Same Base Assembly yet convert to alias to be packed into this container. (system will block if the scan WIP’s base assembly don’t have any record configured in Assembly Alias Maintenance screen)**


- Is Restricted To Same Order - Only allow materials of the same Order to be packed into this container

- Is Restricted to Same Super Lot - Only allow lots that belong to the same Super Lot to be packed into this container.

- Is Restricted to Same Lot - Not allowed to mix lots in this container (only same material with same Internal Batch Number).
Container Defect TypeApply to Lot Planned Order and WIP Packout (Not for BTO/CTO) Station

- No Open Defect - Only allow items with no open defect to be packed into this container. (This option is set as Default)

- Same Open Defect - Only allow items contain with the exact same defects to be packed into this container
with the concept of follow the leader rule. e.g. If configured with "Same Open Defect" means for the first lot/WIP has 2 defects, then subsequent lot/WIP shall have the same 2 defects and no additional defects. 
- Any Open Defect - Only allow items with defects to be packed into this container
Above lot/WIP defect is referring to the latest defect (Defect from the last test). Applicable when the "Usage Type" is set to "Box" under the "General" Tab
Scrapped WIP is not allowed to be packed into container but Scrapped Lot is allowed to be packed for options "
Same Open Defect" and "Any Open Defect".There is only "No Open Defect" option for Planned order and WIP Packout in BTO/CTO Route.
Container WIP ConstraintApply to WIP Packout 
(Not for BTO/CTO) Station only
- Allow In Process WIP Only - Only allow WIP with status "InProcess" to be packed into this container

- Allow Complete WIP Only - Only allow WIP with status "Complete" to be packed into this container (This option is set as Default)
There is only "
Allow Complete WIP Only" option for Planned order and WIP Packout in BTO/CTO Route.RestrictedByMaxContainerPerOrder
- Specify the maximum number of containers allowed for an order
Material Release Date Range
- Allow user to control the container rules and filter the Material Release Date Range by:

- Month

- Day Range

- If Month is selected, only WIP that is released in the same month and year as the first WIP packed into the container, can be packed.

- If Day Range is selected, user need to enter number of days. The earliest and the latest WIP released date in the container must be within the day range entered.

- If there is no value selected for

Material Release Date Range, no restriction will happen against the container created for the container type. Restrict to same attributesEnabling it, allows to enter WIP or Lot attributes which the system will check when packing units. This feature works for both WIP and Lot packout. For Lot validation, s
ystem exclude system assigned attribute (Current is "Internal Batch Number") from "Restrict To Same Attributes" validation.
I
n Add WIP/Lot Attributes dialog, there is a toggle 
“Force Configure All Attributes” with default value of “Off”. 

- If “Force Configure All Attributes” is turned OFF, system will only check the attributes that are configured in container type. Attributes that are not added here will be ignored during packing.


- If “Force Configure All Attributes” is turned ON, all the unit’s attributes must be added. Unit with any attribute not configured/added in container type will not be allowed to pack into the container.

There is a toggle "Is Required" when adding each attribute. It will be "On" by default. 

- When the attribute’s “Is Required” = Yes, the unit must have the attribute before it is allowed to be packed into the container. Subsequent units to pack in the container must have the same attribute value as the first unit packed.


- When the attribute’s “Is Required” = No, it is not mandatory for the unit to have the attribute in order to be packed. If the first unit packed does not have the attribute, following units should not have the attribute (follow the leader). If the first unit packed have the attribute, following units must have the attribute with the same value.

![image2020-1-2_16-55-40.png](/.attachments/62423243.png)



![image2020-1-2_17-3-47.png](/.attachments/62423244.png)


Note 1: Batch Tag number is part of Attribute therefore user can configure restrict to same batch tag number with this option.
Note 2: 
If user configured the system assigned attribute (Current is "Internal Batch Number") in Restrict to Same Attributes , system will ignore this attribute during pakcout whatever "Force Configure All Attributes" is turned ON or OFF and Is Required is Yes or No.
![image2021-3-23_16-12-53.png](/.attachments/89587939.png)



![image2021-3-23_16-14-1.png](/.attachments/89587940.png)


Generate GRN
If turn On, this container name is used to generate GRN. By default, option should be set to Off. This is applied to Box/Pallet Usage Type. Custom Data Packout
- Requires Overpack - To indicate if the container is required to be packed into another container. It is used to filter the container type with a configured UsageType can be used for doing overpack.


- Box: the container can be packed into other container with usage type Box

- Pallet: the container can only be packed into another another container with usage type Pallet

- RestrictedByWipAttribute - Only allow WIPs with the specified
[WIP Attribute](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)and Value to be packed into this container
If this option is selected, user must enter a WIP Attribute Name & Value. "Moved to provide a list of attributes"


- IsRestrictedByCustomData - Only allow Materials with the specified

[Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)and Value to be packed into this container.
If this option is selected, user must enter a Material Custom Data & ValueValidate Sampling for Batch Tag
Enabling it, allows to add active Batch tag names so the system will check when packing units. System support 'Generic' & 'Manual Sampling' batch tag types.
For 'Generic' batch tag:

- If "Batch tag name" is added, then only units with the attribute value(s)and batch tag name will be packed.

- If the sample is passed, then only system allows pack-out, otherwise restricts with below error messages

- If the unit has batch tag still under sampling, the validation don’t allow to continue with the message


“Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”
- If the unit has batch tag sampling fail, the validation don’t allow to continue with the message


“Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ FAILED sampling.”
- If the container contains units with batch tag still under sampling, the validation doesn’t allow to continue with the message


“At least one unit with Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”
- If the container contains units with batch tag sampling Fail, the validation doesn’t allow to continue with the message


“At least one unit with Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ FAILED sampling.”For 'Manual Sampling' batch tag:

- If "Batch tag name" is added and units with the attribute value(s) and batch tag name:

- If the batch tag number is 'Active' status,  it means the unit still under sampling, the validation don't allow to continue with the message:  “Batch tag “ "Batch Tag Name" “ with value “ "Batch Tag Value" “ still under sampling.”.

- If the batch tag number is 'Completed' status, it means the unit has completed sampling, the validation allow to continue.

- If "Batch tag name" is added and units doesn't have associated attribute value(s) and batch tag name, the validation allow to continue.
PanelToggle option and OFF by default. On enabling the toggle, the container with this configuration is only allowed to pack panel (Is in Panel = "Yes") otherwise the container does not support the Panel pack in Packout station.Restrict to Same GRN against Material CheckpointToggle option and OFF by default. On enabling the toggle, the container with this configuration is only allowed to pack the WIPs / Lots which has same GRN (in WIP Genealogy) against a material which is configured against Material Checkpoint Rule at the same station.
This toggle has no significance if there is no active Checkpoint Rule defined.
Auto-hold on Container ClosureToggle option and OFF by default. On enabling the toggle, the container with this configuration will hold the container automatically on closure after packout / overpack so that the box/Pallet will be restricted to auto-shipment.
Container Type Items(Allowed user to select material or container. A box can be packed with material and smaller containers)
**Field** **Description** Item TypeIndicates whether the item is a Material or another ContainerItemIf Packed Item selected is "Material", display name of the material selected.
If Packed Item selected is "Container", display name of the container type selected.Plant CodeThis field will auto populate material plant code upon selection of a material. This field is inactive if packed item "Container" is selectedAssembly RevisionDisplay the Assembly Revision of the material if selected. Empty if item type is ContainerMin QuantityMinimum quantity of the selected item required to be packed into this container. The container cannot be closed if the Min Quantity is not met. Also in case of overpack it is the quantity of containers to be packed.Max QuantityMaximum quantity of the selected item allowed to be packed into this container. Also in case of overpack it is the number of containers to be packed. Use 0 for not defining a limit to container capacity.Min VolumeVolume is tracked in liters and it is the minimum required volume to be packed in the container. The container cannot be closed if the Required Volume is not met. Previously called "Required Volume"Min CarrierThis Min Carrier is only applicable for Box usage type and Lot/Batch material. There is no checking for this field.Max CarrierThis Max Carrier is only applicable for Box usage type and Lot/Batch material. Maximum carrier is allowed to be packed into this container. Route Step Types(The user shall have the optional ability to limit the container types available to the end user for a particular packing operation (production or RMA).
FieldDescriptionAdd
Allow user to add a new Route Step Type and has option to extend to a Route/Route step. User has option to add the record base on the following station:

- Packout (WIP Packout, Plan Order Packout and Production Order Packout)

- Warehouse

- Receiving
*Packout* 
If no specific container types have been associated for a route step type or extend to Route/Route step this will be interpreted by the system that all container types are allowed to use.
If WIP is scanned which packed to a Box but the container type is configured with route step restriction (e.g. Route Step Type or extend to Route/Route Step) but no record is matching with current packout step, then behave as below:

- No Information Box should be showed

- Container Type list will show the Container Type associated with the Route Step Type
**and the compatible container type** 
- "Scan WIP" textbox to disable

- Pack and Switch buttons disable

- Warning toastr message "Container Type '"Container Type Name"' is not configured with the Route Step Type '"Route Step Type Name"'".
If Carrier is scanned which packed to a Box but the container type is configured with route step restriction (e.g. Route Step Type or extend to Route/Route Step) but no record is matching with current packout,  then behave as below:

- No Information Box should be showed

- Container Type list will show the Container Type associated with the Route Step Type
**and the compatible container type** 

- "Carrier/ Lot Number" textbox is to disable


- Pack and Switch buttons is disable


- Warning toastr message "Container Type '"Container Type Name"' is not configured with the Route Step Type '"Route Step Type Name"'"
*Warehouse & Receiving* 
If a container is scan at warehouse and receiving station (For WIP only, Lot Warehouse and Lot Receiving is not supported by this feature), system will prompt error when it’s container type is configured with route step restriction but no record is matching for it’s current warehouse/receiving route step.
If no route step type or extend to Route/Route step associated to a container type, this will be interpreted by the system that this container type has no restriction and allow to process at any warehouse and receiving route steps. 
Search Route Step TypeTo select the Route Step Type that will be associated to the containerCancelCancel the operation to associate a Route Step type


#### Attachments

[image2019-4-16_16-2-51.png](/.attachments/45974843.png)
[image2020-1-2_16-55-40.png](/.attachments/62423243.png)
[image2020-1-2_17-3-47.png](/.attachments/62423244.png)
[image2021-3-23_16-10-1.png](/.attachments/89587935.png)
[image2021-3-23_16-10-34.png](/.attachments/89587936.png)
[image2021-3-23_16-11-8.png](/.attachments/89587937.png)
[image2021-3-23_16-11-43.png](/.attachments/89587938.png)
[image2021-3-23_16-12-53.png](/.attachments/89587939.png)
[image2021-3-23_16-14-1.png](/.attachments/89587940.png)
