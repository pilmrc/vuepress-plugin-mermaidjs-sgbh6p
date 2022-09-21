# Introduction


In the production floor, various documents and labels are being printed. In order to print from Phoenix, user must first create a Document (data file). Each document configured here will have their own printing behavior, corresponding loftware template (\*.lwl file) and data to be included for printing. To print, user selects the configured Document and 
[Printer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md). When user clicks "Print", system will drop the Document's data file (\*.pas file) into a location configured in the printer. Next, system will locate the loftware template file required by the Document from the location configured in the printer. Finally, printer prints the Document's data file using the design format defined in the loftware template.
How to get there?
::: mermaid
graph LR
A("CONFIGURATION")-->0("DOCUMENT")
0-->1("DOCUMENT MAINTENANCE")

:::

**Precondition** 
The following items need to be pre-configured to create a new setup sheet:

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

- [Print Server](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)

- [Printer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md)




### Screen Activity


Document Maintenance enables user to perform the following activity:

- Create, view, update and delete documents

- Print document



#### Screen Dependency


The following screen(s) has direct dependency with document

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

- [Print Server](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)

- [Printer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md)

- [Custom Data](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)
(If required for the label)
- [Container Type (3.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)

- [Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order.md)

- [WIP Maintenance (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)
(WIP is required to print with document type)

Fields
<table className="confluenceTable">
  <tbody>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="Document(3.0)-MainTab">
          <strong>Main Tab</strong>
        </h5>
      </td>
    </tr>
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
      <td className="confluenceTd">
        <p>Document Name</p>
      </td>
      <td className="confluenceTd">
        <p>The unique name given to the document</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Version</td>
      <td className="confluenceTd">
        <p>
          <span style={{ color: "rgb(255,0,0)" }}>
            <span style={{ color: "rgb(0,0,0)" }}>
              Version of the document that is manually entered and controlled by
              user.{" "}
            </span>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Description
      </td>
      <td colSpan={1} className="confluenceTd">
        Additional description for the document can be entered in this field
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Customer
      </td>
      <td colSpan={1} className="confluenceTd">
        The customer that uses this document
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Type</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Groups the document to the following types:</p>
        <ul>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              WIP
            </span>
          </li>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              Material
            </span>
          </li>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              Container
            </span>
          </li>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              Serialized Material
            </span>
          </li>
          <li>
            <span style={{ fontSize: "10.0pt", lineHeight: "13.0pt" }}>
              Generic
            </span>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Status</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>A document can be in one of the statuses below:</p>
        <ul>
          <li>
            New (The document is still under configuration and not ready for
            use)
          </li>
          <li>Active (The document is ready for use in production)</li>
          <li>
            Inactive&nbsp;(The document is obsolete or temporary not used in
            production)
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Max Result Per Page
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>The number of records to print per page</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Document Retention Period
      </td>
      <td colSpan={1} className="confluenceTd">
        The number of days the document (.pas) file is retained before it is
        removed from the print server
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Quantity to print
      </td>
      <td colSpan={1} className="confluenceTd">
        The default quantity printed when user clicks the Print button
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Loftware Template
      </td>
      <td colSpan={1} className="confluenceTd">
        The loftware file name that will be used to print this document.
        Loftware file contains the printing design/format
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Reprint Allowed
      </td>
      <td colSpan={1} className="confluenceTd">
        If enabled, user can print again the same label/document
        <br />
        If disabled, reprinting is now allowed&nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Reprint Authorization Required
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          <em>*&nbsp;This function is not available yet *</em>
        </p>
        <p>
          If enabled, system will prompt for supervisor ID &amp; password during
          reprint
          <br />
          If disabled, reprint can be performed without getting any
          authorization&nbsp;
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Multiple Pages?
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          The default Max Result Per Page is one. If more is allowed, check this
          box so that user can set the number of returned record in the Max
          Result Per Page field.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Store Document Contents on Print
      </td>
      <td colSpan={1} className="confluenceTd">
        If enabled, the PAS data file content will be saved into{" "}
        <span style={{ color: "rgb(0,0,0)" }}>documentlogs table</span> once the
        label/document is printed
        <br />
        If disabled, the PAS data file will be automatically deleted once the
        label/document is printed
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Print Engine
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Two print engines are available:</p>
        <ul>
          <li>Loftware</li>
          <li>SQL Reporting Services</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Document Definition
      </td>
      <td colSpan={1} className="confluenceTd">
        The document template (*.lwl) that will be used to print this document
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Field Order
      </td>
      <td colSpan={1} className="confluenceTd">
        The sequence of data as seen in the content in the PAS data file
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Field Name
      </td>
      <td colSpan={1} className="confluenceTd">
        The unique field name for the data. This field name must match the field
        name in the loftware template
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span
          className="confluence-anchor-link"
          id="Document(3.0)-DocumentFieldType"
        />
        Document Field Type
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Field data can be in the following types:</p>
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td
                  colSpan={2}
                  style={{ textAlign: "center" }}
                  className="confluenceTd"
                >
                  <strong>WIP Document Type</strong>
                </td>
              </tr>
              <tr>
                <th className="confluenceTh">Document Field Type</th>
                <th className="confluenceTh">Description</th>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <span>Constants </span>
                </td>
                <td className="confluenceTd">
                  <span>
                    Prints the exact characters as defined in the constant's
                    field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Data Collection
                </td>
                <td colSpan={1} className="confluenceTd">
                  <p>*&nbsp;This function is not available yet *</p>
                  <p>
                    Allows user to configure Data Collection name for printing
                  </p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <span>Datecode</span>
                </td>
                <td className="confluenceTd">
                  <span>
                    Lists different format of date/time in the datecode's field
                    value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Serialized Assembled Items
                </td>
                <td colSpan={1} className="confluenceTd">
                  Lists allowable printing properties related to serialized
                  assembled items in the document field value
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span>Serialized Assembled Items By Product Family</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  Similar to Serialized Assembled Items with the additional
                  condition where user is required to provide the Product Family
                  in the Contingent Value field. System will only print the
                  serialized assembled item properties if the serialized
                  material is from the same product family as configured in the
                  contingent value field
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span>Serialized Assembled Items By Name</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Similar to Serialized Assembled Items with the additional
                    condition where user is required to provide the serialized
                    material name in the Contingent Value field. System will
                    only print the serialized{" "}
                    <span>assembled item properties</span> if the serialized
                    material name matches the name as configured in the
                    contingent value field.
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span>Serialized Materials Properties</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  List allowable printing properties for serialized material in
                  the document field value
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <span>System Properties </span>
                </td>
                <td className="confluenceTd">
                  <span>
                    Lists allowable system properties printing in its
                    corresponding field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Unserialized Assembled Materials
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties related to unserialized
                    assembled items in the document field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span>WIP Properties</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>Lists allowable printing of WIP properties </span>
                  <span>in its corresponding field value</span>
                </td>
              </tr>
              <tr>
                <td
                  colSpan={2}
                  style={{ textAlign: "center" }}
                  className="confluenceTd"
                >
                  <strong>Order Document Type</strong>
                </td>
              </tr>
              <tr>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>
                    Document Field Type
                  </span>
                </td>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Constant
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Prints the exact characters as defined in the constant's
                    field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Delivery Header
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties for the delivery header
                    in the <span>document field value</span>
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Delivery Line Items
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties for the delivery line
                    items in the{" "}
                  </span>
                  <span>document field value</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Order Properties
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing of order properties in the{" "}
                  </span>
                  <span>document field value</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Packed Delivery Items
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing of packed delivery items properties
                    in the{" "}
                  </span>
                  <span>document field value</span>
                </td>
              </tr>
              <tr>
                <td
                  colSpan={2}
                  style={{ textAlign: "center" }}
                  className="confluenceTd"
                >
                  <strong style={{ textAlign: "center" }}>
                    Container Document Type
                  </strong>
                </td>
              </tr>
              <tr>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>
                    Document Field Type
                  </span>
                </td>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Configurable Delivery WIP Items
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties of configurable WIP
                    items that matches the product family configured in the
                    contingent value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Constants
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Prints the exact characters as defined in the constant's
                    field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <p>Container Items</p>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties of container items{" "}
                    <span>in the </span>
                    <span>document field value</span>
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Container Items By Family Grouped By Material
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties of container items that
                    matches the product family configured in the contingent
                    value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Container Properties
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing of container properties in the{" "}
                  </span>
                  <span>document field value</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Datecode
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists different format of date/time in the datecode's field
                    value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Delivery Items By Family Grouped By Material
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable printing properties of delivery items that
                    matches the product family configured in the contingent
                    value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  System Properties
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable system properties printing in its
                    corresponding field value
                  </span>
                </td>
              </tr>
              <tr>
                <td
                  colSpan={2}
                  style={{ textAlign: "center" }}
                  className="confluenceTd"
                >
                  <strong style={{ textAlign: "center" }}>
                    Serialized Material Document Type
                  </strong>
                </td>
              </tr>
              <tr>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>
                    Document Field Type
                  </span>
                </td>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Constant
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Prints the exact characters as defined in the constant's
                    field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Data Collection
                </td>
                <td colSpan={1} className="confluenceTd">
                  <p>*&nbsp;This function is not available yet *</p>
                  <p>
                    Allows user to configure Data Collection name for printing
                  </p>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  DateCode
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists different format of date/time in the datecode's field
                    value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  Serialized Material Properties
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    List allowable printing properties for serialized material
                    in the document field value
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  System Properties
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Lists allowable system properties printing in its
                    corresponding field value
                  </span>
                </td>
              </tr>
              <tr>
                <td
                  colSpan={2}
                  style={{ textAlign: "center" }}
                  className="confluenceTd"
                >
                  <strong style={{ textAlign: "center" }}>
                    Generic Document Type
                  </strong>
                </td>
              </tr>
              <tr>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>
                    Document Field Type
                  </span>
                </td>
                <td className="highlight confluenceTd" colSpan={1}>
                  <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span>Constant</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span>
                    Prints the exact characters as defined in the constant's
                    field value
                  </span>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Document Field Value
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          If Constants field type is selected, user is required to enter the
          fixed character to print.
        </p>
        <p>
          For all other field types and depending on the field type selected,
          the document field value will populate allowable printing properties
          for user to configure.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Contingent Value
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Allows user to configure additional value to filter and print only
          data that matches the contingent value.
        </p>
        <p>
          If the Field Value selected contains a square bracket, for example
          [Product Family], user is required to specify the product family in
          the contingent value.
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Required
      </td>
      <td colSpan={1} className="confluenceTd">
        If enabled, system will validate no blank value before generating the
        PAS file. If there is blank value, the PAS data file will not be
        generated
        <br />
        If disabled, blank value is allowed in the PAS data file&nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Repeating
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Loop through the object and print out all the data collected for the
          specific field type.
        </p>
      </td>
    </tr>
  </tbody>
</table>





- The document template (\*.lwl) that will be used to print this document

Field OrderThe sequence of data as seen in the content in the PAS data fileField NameThe unique field name for the data. This field name must match the field name in the loftware templateDocument Field Type
Field data can be in the following types:
<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>WIP Document Type</strong></td></tr><tr><th class="confluenceTh">Document Field Type</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span>Constants </span></td><td class="confluenceTd"><span>Prints the exact characters as defined in the constant's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd"><p>* This function is not available yet *</p><p>Allows user to configure Data Collection name for printing</p></td></tr><tr><td class="confluenceTd"><span>Datecode</span></td><td class="confluenceTd"><span>Lists different format of date/time in the datecode's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Serialized Assembled Items</td><td colspan="1" class="confluenceTd">Lists allowable printing properties related to serialized assembled items in the document field value</td></tr><tr><td colspan="1" class="confluenceTd"><span>Serialized Assembled Items By Product Family</span></td><td colspan="1" class="confluenceTd">Similar to Serialized Assembled Items with the additional condition where user is required to provide the Product Family in the Contingent Value field. System will only print the serialized assembled item properties if the serialized material is from the same product family as configured in the contingent value field</td></tr><tr><td colspan="1" class="confluenceTd"><span>Serialized Assembled Items By Name</span></td><td colspan="1" class="confluenceTd"><span>Similar to Serialized Assembled Items with the additional condition where user is required to provide the serialized material name in the Contingent Value field. System will only print the serialized <span>assembled item properties</span> if the serialized material name matches the name as configured in the contingent value field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Serialized Materials Properties</span></td><td colspan="1" class="confluenceTd">List allowable printing properties for serialized material in the document field value</td></tr><tr><td class="confluenceTd"><span>System Properties </span></td><td class="confluenceTd"><span>Lists allowable system properties printing in its corresponding field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Unserialized Assembled Materials</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties related to unserialized assembled items in the document field value</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>WIP Properties</span></td><td colspan="1" class="confluenceTd"><span>Lists allowable printing of WIP properties </span><span>in its corresponding field value</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Order Document Type</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Document Field Type</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Constant</td><td colspan="1" class="confluenceTd"><span>Prints the exact characters as defined in the constant's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Header</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties for the delivery header in the <span>document field value</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Line Items</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties for the delivery line items in the </span><span>document field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Order Properties</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing of order properties in the </span><span>document field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Packed Delivery Items</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing of packed delivery items properties in the </span><span>document field value</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Container Document Type</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Document Field Type</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Configurable Delivery WIP Items</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties of configurable WIP items that matches the product family configured in the contingent value</span></td></tr><tr><td colspan="1" class="confluenceTd">Constants</td><td colspan="1" class="confluenceTd"><span>Prints the exact characters as defined in the constant's field value</span></td></tr><tr><td colspan="1" class="confluenceTd"><p>Container Items</p></td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties of container items <span>in the </span><span>document field value</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Container Items By Family Grouped By Material</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties of container items that matches the product family configured in the contingent value</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Properties</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing of container properties in the </span><span>document field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Datecode</td><td colspan="1" class="confluenceTd"><span>Lists different format of date/time in the datecode's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Items By Family Grouped By Material</td><td colspan="1" class="confluenceTd"><span>Lists allowable printing properties of delivery items that matches the product family configured in the contingent value</span></td></tr><tr><td colspan="1" class="confluenceTd">System Properties</td><td colspan="1" class="confluenceTd"><span>Lists allowable system properties printing in its corresponding field value</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Serialized Material Document Type</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Document Field Type</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Constant</td><td colspan="1" class="confluenceTd"><span>Prints the exact characters as defined in the constant's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd"><p>* This function is not available yet *</p><p>Allows user to configure Data Collection name for printing</p></td></tr><tr><td colspan="1" class="confluenceTd">DateCode</td><td colspan="1" class="confluenceTd"><span>Lists different format of date/time in the datecode's field value</span></td></tr><tr><td colspan="1" class="confluenceTd">Serialized Material Properties</td><td colspan="1" class="confluenceTd"><span>List allowable printing properties for serialized material in the document field value</span></td></tr><tr><td colspan="1" class="confluenceTd">System Properties</td><td colspan="1" class="confluenceTd"><span>Lists allowable system properties printing in its corresponding field value</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Generic Document Type</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Document Field Type</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,0,0);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Constant</span></td><td colspan="1" class="confluenceTd"><span>Prints the exact characters as defined in the constant's field value</span></td></tr></tbody></table>

**Document Field Value** 
If Constants field type is selected, user is required to enter the fixed character to print.
For all other field types and depending on the field type selected, the document field value will populate allowable printing properties for user to configure.
Contingent ValueAllows user to configure additional value to filter and print only data that matches the contingent value.
If the Field Value selected contains a square bracket, for example [Product Family], user is required to specify the product family in the contingent value.
RequiredIf enabled, system will validate no blank value before generating the PAS file. If there is blank value, the PAS data file will not be generated
If disabled, blank value is allowed in the PAS data file RepeatingLoop through the object and print out all the data collected for the specific field type.


