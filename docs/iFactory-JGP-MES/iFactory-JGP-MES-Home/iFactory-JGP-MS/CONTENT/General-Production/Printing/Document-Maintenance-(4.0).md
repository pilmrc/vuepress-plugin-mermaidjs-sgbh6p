# Introduction

data promptIn the production floor, various documents and labels are being printed. In order to print from ngMES, user must first create a Document (data file). Each document configured here will have their own printing behavior, corresponding loftware template (\*.lwl file) and data to be included for printing. To print, user selects the configured Document and Printer. When user clicks "Print", system will drop the Document's data file (\*.pas file) into a location configured in the printer. Next, system will locate the loftware template file required by the Document from the location configured in the printer. Finally, printer prints the Document's data file using the design format defined in the loftware template. Note, for datetime fields, the local time the activity took place is what will be printed on the .pas file.

How to get there?

::: mermaid
graph LR
A("LABELS/PRINTERS")-->0("dOCUMENT MAINTENANCE")

:::

**Precondition** 
The following items need to be pre-configured to create a new document:

- Customer

- Print Server

- Printer




### Screen Activity


Document Maintenance enables user to perform the following activity:

- Create, view, update and delete documents


#### Screen Dependency


The following screen(s) has direct dependency with document

- Customer

- Print Server

- Printer

- Custom Data (If required for the label)

- Container Type

- Order

- WIP Maintenance (WIP is required to print with document type)

- WIP Release (WIP is required to print with document type)

- Create Carrier (Document type = Carrier)

- Carrier Packout (Document type = CarrierContainer)

- GRN Maintenance

- GRN Storage Manager

- GRN Bake In & Bake Out

- Open Non MSD GRN Box

- GRN Split

- Workorder confirmation

- Sample List View

- Sample Distribution

Fields
<table className="wrapped relative-table confluenceTable" style={{ width: "99.9305%" }}>
  <colgroup>
    <col style={{ width: "15.1427%" }} />
    <col style={{ width: "84.8991%" }} />
  </colgroup>
  <tbody>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <h5 style={{ textAlign: "center" }} id="DocumentMaintenance(4.0)-MainTab">
          <span style={{ color: "rgb(0,51,102)" }}>
            <strong>Main Tab</strong>
          </span>
        </h5>
      </td>
    </tr>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <span style={{ color: "rgb(0,51,102)" }}>
            <strong>Field</strong>
          </span>
        </p>
      </td>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <p>
          <span style={{ color: "rgb(0,51,102)" }}>
            <strong>Description</strong>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,51,102)" }}>Document Name</span>
        </p>
      </td>
      <td className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,51,102)" }}>The unique name given to the document</span>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Version</span>
      </td>
      <td className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,51,102)" }}>Version of the document that is manually entered and controlled by user.</span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Description</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Additional description for the document can be entered in this field</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Customer</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>The customer that uses this document</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Type</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Group the document to the following types:</p>
        <div className="table-wrap">
          <table className="wrapped confluenceTable">
            <tbody>
              <tr>
                <th className="confluenceTh">Type Name</th>
                <th className="confluenceTh">Detail</th>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Assembled Item</p>
                </td>
                <td className="confluenceTd">Document with information related to an Assembled Item in Assemble screen</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">Carrier</td>
                <td colSpan={1} className="confluenceTd">Document with information related to Carrier
                  <strong style={{ textAlign: "center" }}>{" "}
                    <strong style={{ textAlign: "center" }}>(Lot/Batch material specific)</strong>
                  </strong>
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">CarrierContainer</td>
                <td colSpan={1} className="confluenceTd">Document with information related to Carrier Container{" "}
                  <strong style={{ textAlign: "center" }}>{" "} (Lot/Batch material specific)</strong>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Container</p>
                </td>
                <td className="confluenceTd">Document with information related to a Container</td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Generic</p>
                </td>
                <td className="confluenceTd">Document not related to any specific objects</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">GRN</td>
                <td colSpan={1} className="confluenceTd">Document with information related to GRN</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">MSD</td>
                <td colSpan={1} className="confluenceTd">
                  <p>Document with information related to MSD feature.</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">Order</td>
                <td className="confluenceTd">Document with information related to a Delivery or Production Order or QLMS workorder</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">Sample</td>
                <td colSpan={1} className="confluenceTd">Document with information related to Sample Management.</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">Serialized Material</td>
                <td colSpan={1} className="confluenceTd">Document with information related to a Serialized Material</td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SuperLot</td>
                <td colSpan={1} className="confluenceTd">Document with information related to Super Lot&nbsp;
                  <strong style={{ textAlign: "center" }}>(Lot/Batch material specific)</strong>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>WIP</p>
                </td>
                <td className="confluenceTd">Document with information related to a WIP</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,51,102)" }}>Status</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>A document can be in one of the statuses below:</p>
        <ul>
          <li>New - The document is still under configuration and not ready for use</li>
          <li>Active - The document is ready for use in production</li>
          <li>Inactive&nbsp;- The document is obsolete or temporary not used in production</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Document Processor (previously named as Print Engine)</td>
      <td className="confluenceTd">
        <p>Multiple document processors are available:</p>
        <ul>
          <li>External API Call – Call an external web API for customize processing such as update customize db without waiting for return status. This is applicable to WIP, Lot Batch and Container type.{" "}
            <span>Warning toastr will be prompt if API is not call successfully during runtime. WipId, LotId and UserLogin are the default value to return.</span>
          </li>
          <li>FileGeneration - Generate a file which is then placed in certain folder within the network location.</li>
          <li>Loftware - Utilize the Loftware system to print a label</li>
          <li>SQL Reporting Services - Utilize the SQL Reporting Services to generate a report.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Document Definition</td>
      <td className="confluenceTd">
        <p>Different Print Engine requires different input for document definition:</p>
        <div className="table-wrap">
          <table className="wrapped confluenceTable">
            <tbody>
              <tr>
                <th className="confluenceTh">Print Engine</th>
                <th className="confluenceTh">Document Definition Input</th>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">External API Call</td>
                <td colSpan={1} className="confluenceTd">
                  <p>The URL link for http/https address (web api) that configure to be call for processing. E.g. http://
                    <your web="" api="" address="">.</your>
                  </p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">FileGeneration</td>
                <td className="confluenceTd">Network path where the generated file will be placed into. E.g. "\\servername\foldername"</td>
              </tr>
              <tr>
                <td className="confluenceTd">Loftware</td>
                <td className="confluenceTd">The name of theLoftwareTemplate file which the document will utilize to print a label. Combine with "Label Definition Path" configured in Printer Server to form the full address that points to theLoftwareTemplate file.LoftwareTemplate file always ends withextension".lwl". E.g. "subfoldername\template.lwl"</td>
              </tr>
              <tr>
                <td className="confluenceTd">SQL Reporting Services</td>
                <td className="confluenceTd">The urllink to the SSRS report to be printed. E.g. "
                  <a href="http://alfphxiis03.corp.jabil.org/ReportServer/PRD/MEM/IsilonPalletTraveler" className="external-link" rel="nofollow">http://alfphxiis03.corp.jabil.org/ReportServer/PRD/MEM/IsilonPalletTraveler</a>"</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Verify Quantity</td>
      <td className="confluenceTd">The quantity that will be printed to acknowledge the quality of the documents before the total quantity can be from 0 -255</td>
    </tr>
    <tr>
      <td className="confluenceTd">Scan Quantity</td>
      <td className="confluenceTd">
        <p>
          <span className="il" style={{ color: "rgb(0,51,102)" }}>The quantity that will be printed to verify if the barcode is scannable. Scan</span>
          <span style={{ color: "rgb(34,34,34)" }}>&nbsp;quantity applies when a serial number is generated and shall be lower than Verify Quantity</span>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Label Stock</td>
      <td className="confluenceTd">Defines the label stock for a Document, so the user can load the correct paper in the printer</td>
    </tr>
    <tr>
      <td className="confluenceTd">Ribbon Stock</td>
      <td className="confluenceTd">Defines the ribbon stock for a Document. so the user can load the correct Ribbon in the printer</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Custom Procedure</td>
      <td colSpan={1} className="confluenceTd">The name of the stored procedure to generate the content to be printed. Required for Print Engine type "FileGeneration"</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Max Results Per Page</td>
      <td colSpan={1} className="confluenceTd">
        <p>The number of records to print per page. Maximum up to 9999.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Document Retention Period</td>
      <td colSpan={1} className="confluenceTd">The number of days the document (.pas) file is retained before it is removed from the print server</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">IsMultiPage</td>
      <td colSpan={1} className="confluenceTd">
        <p>If document contains certain fields with multiple records that requires more than 1 page, check this option to allow printing multiple pages of label for this document. Configure the records per page in "Max Results Per Page" field.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">IsMultiSection</td>
      <td colSpan={1} className="confluenceTd">Divide fields into Sections each with its own Document Definition so that multiple templates fields can be combined to one pas file. Apply to Document type = WIP and Container</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">IsReprintAuthorizationRequired</td>
      <td colSpan={1} className="confluenceTd">
        <p>Allowsonlyuser with Reprint permission to reprint this document.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsDocumentContentKept</span>
      </td>
      <td colSpan={1} className="confluenceTd">Keep document content after document is printed</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsManualPrintingAllowed</span>
      </td>
      <td colSpan={1} className="confluenceTd">Allow printing the document using Document Generation</td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <strong>Document Fields</strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Field Order</td>
      <td colSpan={1} className="confluenceTd">The sequence of data as seen in the content in the PAS data file</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Field Name</td>
      <td colSpan={1} className="confluenceTd">The unique field name for the data. This field name must match the field name in theloftwaretemplate</td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <div className="content-wrapper">
          <p>Field Type + Value + Contingent Value for each document types</p>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: Assembled Item</strong>
                  </td>
                </tr>
                <tr>
                  <th className="confluenceTh">Field Type Name</th>
                  <th className="confluenceTh">Description</th>
                  <th className="confluenceTh">Value</th>
                  <th className="confluenceTh">Contingent Value</th>
                </tr>
                <tr>
                  <td rowSpan={17} className="confluenceTd">ASSEMBLED ITEM
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td rowSpan={17} className="confluenceTd">Get information about the item that was just assembled to a wip
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td className="confluenceTd">
                    <p>ASSEMBLEDDATE - Return thedatetimewhen the item is assembled</p>
                  </td>
                  <td className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td className="confluenceTd">ASSEMBLEDWIPATTRIBUTE[NAME]- Return the attribute value of the Assembled Item.</td>
                  <td className="confluenceTd">Specify attribute name to return the specific attribute value</td>
                </tr>
                <tr>
                  <td className="confluenceTd">CRD- Return the CRD of the Assembled Item</td>
                  <td className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ITEMIDENTIFIER- Return the Serial Number of the Assembled Item</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALCUSTOMDATA[NAME]
                    <strong>-</strong>Return the Custom Data Value of the Assembled Item</td>
                  <td colSpan={1} className="confluenceTd">Specify custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION - Return the Assembled Item's material description</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALMANUFACTURER- Return the Manufacturer associated to the Assembled Item's scanned MPN</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME- Return the Assembled Item's material name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MPN - Return the Assembled Item's scanned Manufacturer Part Number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTBATCH- Return the parent WIP's batch number.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTCUSTOMERMATERIALNAME
                    <strong>-</strong>Return the parent WIP's customer material name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTMATERIALCUSTOMDATA[NAME]
                    <strong>-</strong>Return a custom data's value from the parent WIP</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify custom data name to return the specific custom data value</span>
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTMATERIALNAME - Return the parent WIP's material name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTSERIALNUMBER - Return the parent WIP's Serial Number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTSHOPFLOORORDER
                    <strong>-</strong>Return the parent WIP's Shopfloor Order Number. Only valid if parent WIP is associatedto an order.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PARENTWIPATTRIBUTE[NAME] - Return value of an attribute of the parent WIP.</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify attribute name to return the specific attribute value</span>
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHOPFLOORORDER - ???</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ASSEMBLED ITEM DATA COLLECTION</td>
                  <td colSpan={1} className="confluenceTd">Get assembled item's data collection value directly</td>
                  <td colSpan={1} className="confluenceTd">
                    <p>Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td rowSpan={4} className="confluenceTd">ASSEMBLED ITEM UPD
                    <br />
                    <br />
                    <br /></td>
                  <td rowSpan={4} className="confluenceTd">GET UPD value of wipand serialized material assembled to a wipby specifying UPD Name
                    <br />
                    <br />
                    <br /></td>
                  <td colSpan={1} className="confluenceTd">
                    <p>MATERIALDESCRIPTION - Return material description of the assembled item</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME- Return material name of the assembled item</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALSERIAL- Return serial Number of the assembled item</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">UPD - Return UPD value of matching UPD name in thecurrentassembled item</td>
                  <td colSpan={1} className="confluenceTd">Specify UPD Name optionally. If none return all UPD values.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CONSTANTS</td>
                  <td colSpan={1} className="confluenceTd">Print a constant value</td>
                  <td colSpan={1} className="confluenceTd">Specify the Constant Value to be returned</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DATA PROMPT</td>
                  <td colSpan={1} className="confluenceTd">Allow user to enter a value when document is triggered to be printed</td>
                  <td colSpan={1} className="confluenceTd">Specify the value to be printed when prompted</td>
                  <td colSpan={1} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM ATTRIBUTE BY CUSTOM DATA AND VALUE</td>
                  <td colSpan={1} className="confluenceTd">Get attribute value of peer childwipor serialized materials assembled to the same parent WIP via custom data name and value</td>
                  <td colSpan={1} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td rowSpan={4} className="confluenceTd">PEER ASSEMBLED ITEM BY NAME
                    <br />
                    <br />
                    <br /></td>
                  <td rowSpan={4} className="confluenceTd">Get information of a peer child wipor serialized material assembled to the same parent WIP
                    <br />
                    <br />
                    <br /></td>
                  <td colSpan={1} className="confluenceTd">ITEMIDENTIFIER[NAME] - Return the Serial Number of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of the specific material</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION[NAME] - return the material description of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
                    <span>the</span>{" "} specific material</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME[NAME] - return the material name of the target peer.</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
                    <span>the</span>{" "} specific material</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MPN[NAME] - return the scanned Manufacturer Part Number of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
                    <span>the</span>{" "} specific material</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM CUSTOM DATA BY CUSTOM DATA AND VALUE</td>
                  <td colSpan={1} className="confluenceTd">Get custom data value of a peer assembled to the same parent WIP via custom data name and value</td>
                  <td colSpan={1} className="confluenceTd">Specify name of the custom data to return the custom data value</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM CUSTOM DATA BY NAME</td>
                  <td colSpan={1} className="confluenceTd">Get custom data value of a peer assembled to the same parent WIP via material name and custom data name</td>
                  <td colSpan={1} className="confluenceTd">Specify name of the material to find peer(s) of a specific material</td>
                  <td colSpan={1} className="confluenceTd">Specify the custom data name to find peer(s) with matching custom data name</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY CUSTOM DATA AND VALUE</td>
                  <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via custom data name and value</td>
                  <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY FAMILY</td>
                  <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via Product Family</td>
                  <td colSpan={1} className="confluenceTd">Specify Product Family name to find peer(s) with material in the specific Product Family</td>
                  <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY NAME</td>
                  <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via MaterialName</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) with specific material</td>
                  <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEMS ATTRIBUTE VALUE</td>
                  <td colSpan={1} className="confluenceTd">Get attribute value of peer childwipor serialized materials assembled to the same parent WIP via material name</td>
                  <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) with specific material</td>
                  <td colSpan={1} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
                </tr>
                <tr>
                  <td rowSpan={5} className="confluenceTd">PEER ASSEMBLED ITEMS BY CUSTOM DATA AND VALUE</td>
                  <td rowSpan={5} className="confluenceTd">Get information of peer(s) assembled to the same parent via custom data name and value</td>
                  <td colSpan={1} className="confluenceTd">CRDBYCUSTOMDATA[NAME] - return CRD of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MANUFACTURERPARTNUMBERBYCUSTOMDATA[NAME] - return scanned MPN of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTIONBYCUSTOMDATA[NAME] - return material description of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAMEBYCUSTOMDATA[NAME] - return material name of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALSERIALBYCUSTOMDATA[NAME] - return serial number of the target peer</td>
                  <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "1169.0px" }}>
              <tbody>
                <tr>
                  <td style={{ textAlign: "center", width: "1169.0px" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type:
                      <strong>Container</strong>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" style={{ width: "145.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,51,102)" }}>Field Type Name</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "277.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "418.0px" }} data-highlight-colour="grey">&nbsp;Value</td>
                  <td className="highlight-grey confluenceTd" style={{ width: "329.0px" }} data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={5} className="confluenceTd">CONFIGURABLE DELIVERY WIP ITEMS
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "277.0px" }} rowSpan={5} className="confluenceTd">Get information of Configurable items packed into a container (Delivery Packout) via Product Family
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Product Family name to find materials belonging to the specific Product Family</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return material custom data value of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SERIALNUMBER - return serial number of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={6} className="confluenceTd">CONFIGURABLE PACKED DELIVERY ITEMS GROUP BY MATERIAL
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "277.0px" }} rowSpan={6} className="confluenceTd">Get information of Configurable items packed into a container (Delivery Packout) via Material name
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITY
                    <span>- return total quantity of item packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMERMATERIALNAME - return the Customer Material Name of the items packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAME - return the material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SERIALNUMBER - return the serial number of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} className="confluenceTd">CONSTANTS</td>
                  <td style={{ width: "277.0px" }} className="confluenceTd">
                    <p>
                      <span>Print a constant value</span>
                    </p>
                  </td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={16} className="confluenceTd">
                    <p>CONTAINER ITEMS</p>
                  </td>
                  <td style={{ width: "277.0px" }} rowSpan={16} className="confluenceTd">Get information of items packed in the container</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYNUMBER{" "}</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;return the Assembly Number of the item(s) packed in the container.&nbsp;</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644080.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644080.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={49644080} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-36-33.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assembly Numbers:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Pallet:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={190} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871833} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Box packed with WIP:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" width={701} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871832} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={204} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871834} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-thumbnail" height={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871836.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871836.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871836} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-22-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,51,102)" }}>ASSEMBLYDESCRIPTION</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;return the assembly description of item(s) packed in the container.&nbsp;</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;Following is applicable to{" "}
                        <strong>Packout Repetitive</strong>. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Container:&nbsp;
                        <br />
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871987} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-11-25-12.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} /></span>
                        <br />
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:
                        <br />
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871999.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871999.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871999} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-45-49.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} /></span>
                        <br />
                      </span>
                    </p>
                    <p>
                      <br />
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;Following is applicable to{" "}
                        <strong>Overpack Repetitive</strong>. System will retrieve the information about current Assembly Description or Material Description using the ID of current Container and a second ID in case of multiple assemblies</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Pallet:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871996.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871996.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871996} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-43-5.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Box packed with WIP:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871997.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871997.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871997} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-44-5.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871998.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871998.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871998} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-44-43.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872002.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872002.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872002} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-48-31.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYREVISION - return&nbsp;the Assembly Revision of the item(s) packed in the container.&nbsp;
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644081.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644081.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={49644081} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-40-19.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} /></span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assembly Revision of assembly number:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Pallet:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={190} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871833} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Box packed with WIP:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" width={701} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871832} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={204} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871834} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,51,102)" }}>Result:</span>
                    </p>
                    <p>
                      <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                        <img className="confluence-embedded-image confluence-thumbnail" height={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871838.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871838.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871838} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-31-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITY- return total quantity of item packed in the container (In case of overpack are the number of container packed, example box into pallet)</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>MATERIALNAME - return the material name of item(s) packed in the container</p>
                    <p>
                      <span style={{ color: "rgb(0,51,102)" }}>- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assemblies:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Pallet:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={190} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871833} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Box packed with WIP:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" width={701} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871832} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={204} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871834} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:</span>
                    </p>
                    <p>
                      <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                        <img className="confluence-embedded-image confluence-thumbnail" height={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871837.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871837.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871837} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-27-0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(0,51,102)" }}>without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYREVISION -&nbsp;With progression, this field will retrieve original Assembly Revision. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYVERSION -&nbsp;With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(0,51,102)" }}>without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SERIALNUMBER - return the serial number of item(s) packed in the container. In case of overpack it is the list of container serial number included (example, box serial number into pallet)</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">WIPATTRIBUTE[NAME] - return the WIP attribute of WIP packed in the container. WIP attribute should be uniquely listed. (Value should have no repeat) This is not supported for over packing.</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify WIP Attribute Name to return the value uniquely (Value will show once even though there are many same attribute value from different WIP)</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASMATERIALCUSTOMDATA[NAME] - return the alias material's custom data value of the items packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={6} className="confluenceTd">CONTAINER ITEMS BY FAMILY GROUPED BY MATERIAL</td>
                  <td style={{ width: "277.0px" }} rowSpan={6} className="confluenceTd">Get information of items packed in the container via Product Family</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Product Family to find the items with material that belongs to the specific Product Family</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return the material custom data value of the items packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return the material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Product Family to find the items with material that belongs to the specific Product Family</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return the material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PARENTWIPMATERIALNAMEBYPRODUCTFAMILY[NAME] - return the parent WIP material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PARENTWIPSERIALNUMBERBYPRODUCTFAMILY[NAME] -{" "}
                    <span>return the parent WIP serial number of item(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={35} className="confluenceTd">CONTAINER PROPERTIES</td>
                  <td style={{ width: "277.0px" }} rowSpan={35} className="confluenceTd">Get information of the current Container</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYNUMBER - return the Assembly Number of the item(s) packed in the container. If IsMultiPage is ON, information&nbsp;
                        <span>is repeated on every page if there's only 1 assembly number in the container. If there're multiple assemblies, it will be shown on the page up to the max results then continued on the following page.&nbsp;</span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span>
                          <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                            <img className="confluence-embedded-image confluence-content-image-border" height={548} width={350} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644083.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644083.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={49644083} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-10-25-44.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                          </span>
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span>if multiple version of assembly will show as below:</span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span>
                          <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                            <img className="confluence-embedded-image confluence-thumbnail" height={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871839.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871839.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51871839} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-14-19-28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                          </span>
                        </span>
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYDESCRIPTION</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;return the assembly description of item(s) packed in the container.&nbsp;</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;Following is applicable to{" "}
                        <strong>Packout Repetitive</strong>. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Container:&nbsp;</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-external-resource" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918399/image2019-6-24-11-25-12.png?version=1&modificationDate=1561346712610&api=v2" />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:
                        <br />
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872000.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872000.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872000} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-46-43.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} /></span>
                        <br />
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;Following is applicable to{" "}
                        <strong>Overpack Repetitive</strong>. System will retrieve the information about current Assembly Description or Material Description using the ID of current Container and a second ID in case of multiple assemblies</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Pallet:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872004.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872004.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872004} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-50-40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Box packed with WIP:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872005.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872005.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872005} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-51-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872006.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872006.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872006} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-51-47.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872007.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872007.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872007} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-52-26.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYREVISION - return the Assembly Revision of the item(s) packed in the container.&nbsp;If IsMultiPage is ON, information&nbsp;
                      <span>is repeated on every page if there's only 1 assembly number in the container. If there're multiple assemblies, it will be shown on the page up to the max results then continued on the following page.</span>
                    </span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERATTRIBUTE[NAME] - return container attribute</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify container attribute to return the attribute value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>CONTAINERNUMBER - return container number</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERTYPENAME - return container type name</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>CURRENTRESOURCENAME – return the resource name by current route step it is trigger the label printing (not in queue step)</p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CURRENTROUTESTEPID – return the ID of the route step it is trigger the label printing.</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CURRENTROUTESTEP - return the route step it is trigger the label printing. (Rename from ROUTESTEP, require manually change to CURRENTROUTESTEP)</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMDATA[NAME] - return custom data value of a container custom data</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify custom data name to return specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">DELIVERYNUMBER - return the Delivery Order number that the container is associated to</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIAL - return the material(s) packed in the container.&nbsp;
                    <span style={{ color: "rgb(0,0,0)" }}>If IsMultiPage is ON, information&nbsp;
                      <span>is repeated on every page if there's only 1 type of material in the container. If there're multiple materials, it will be shown on the page up to the max results then continued on the following page.</span>
                    </span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTION -&nbsp;return the material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYREVISION -&nbsp;With progression, this field will retrieve original Assembly Revision. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYVERSION -&nbsp;With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PACKDATE- return the date the Container is packed</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PACKEDITEMS - return total quantity of items packed in the Container. If Overpack is the number of containers included.</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PACKEDWIPITEMS - return total WIP quantity of Box/Pallet.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PRODUCTIONORDER - return the Production Order Number that the container is associated to</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PURCHASEORDER - return the Purchase Order Number that the container is associated to</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SALESORDER - return the Sales Order Number that the container is associated to</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SHIPTOPURCHASEORDER - return the Purchase Order Number of a Ship To Party that the container is associated to</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return the material description of the item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">TOPLEVELMATERIALNAME - return the material name of the item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">TOPLEVELWIPSERIAL - return the serial number of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMERNAME&nbsp;- Return customer name</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">DIVISIONNAME - Return division name</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">RMA - Return "1" if there is RMA WIP in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BOXCREATION - return the{" "}
                    <span style={{ color: "rgb(0,0,0)" }}>"</span>
                    <span style={{ color: "rgb(0,0,0)" }}>Created On"</span>
                    <span style={{ color: "rgb(0,0,0)" }}>
                      <span>&nbsp;date&nbsp;</span>from Container View screen</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>PACKSHIFTCODE - return the shift name from shift maintenance</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>PACKSHIFTDATE -&nbsp;return the{" "}
                      <span style={{ color: "rgb(0,0,0)" }}>"</span>
                      <span style={{ color: "rgb(0,0,0)" }}>Created On"</span>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span>&nbsp;date&nbsp;</span>from Container View screen but will cross check with shift maintenance start time and start date. If cross date,&nbsp;PACKSHIFTDATE will return of shift date started</span>
                    </span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} className="confluenceTd">DATA PROMPT</td>
                  <td style={{ width: "277.0px" }} className="confluenceTd">
                    <p>
                      <span>Allows users to manually enter or select when triggering document printing</span>
                    </p>
                  </td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span>Specify the value to be printed when prompted</span>
                    </p>
                    <p>
                      <span>04.20：</span>
                    </p>
                    <p>
                      <span>1.Validation no configure , Allow user to enter a value when document is triggered to be printed</span>
                    </p>
                    <p>
                      <span>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770819.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770819.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={113770819} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-20-9-52-38.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                        <br />2.Validation configure calender ,Allow user to Choose enter a value when document is triggered to be printed.</span>
                    </p>
                    <p>
                      <span>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770820.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770820.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={113770820} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-20-9-53-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={14} className="confluenceTd">
                    <span>DATECODE</span>
                  </td>
                  <td style={{ width: "277.0px" }} rowSpan={14} className="confluenceTd">
                    <span>Get current datecode in various format.</span>
                  </td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p>
                      <span>yyyy - 4 digits year</span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>qq - 1 digit quarter.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>mm - 2 digits month.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>dy - 3 digits day of year</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>dd - 2 digits day of month</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ww - 2 digits workweek number. Starting on a Sunday and Jan 1{" "}</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>dw - 1 digit day of week</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>hh - 2 digits hour. 24 hours format</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>mi - 2 digits minute</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ss - 2 digits second</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ms - 3 digits milisecond</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>yy - 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>y - 1 digit year. The right most digit. E.g. 2016 = 6</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>yyyymmdd - 8 digits iso calendar date</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={4} className="confluenceTd">DELIVERY ITEMS BY FAMILY GROUPED BY MATERIAL</td>
                  <td style={{ width: "277.0px" }} rowSpan={4} className="confluenceTd">Get information of delivery items packed in the current Container</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return material custom data value of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify custom data name to return specific custom data value</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={5} className="confluenceTd">PACKED DELIVERY ITEMS GROUP BY MATERIAL</td>
                  <td style={{ width: "277.0px" }} rowSpan={5} className="confluenceTd">Get information of Items packed in the current container (DeliveryPackout)</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CONTAINERITEMQUANTITY
                    <span>{" "} - return total quantity of item(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMERMATERIALNAME - return the customer material name of item(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATA[NAME]
                    <span>{" "} - return material custom data value of item(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify custom data name to return specific custom data value</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTION
                    <span>{" "} - return material description of item(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAME
                    <span>{" "} - return material name of item(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={11} className="confluenceTd">PRODUCTION ORDER HEADER</td>
                  <td style={{ width: "277.0px" }} rowSpan={11} className="confluenceTd">Get information of the Production Order that the current Container is associated to</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMER - return customer name of the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">CUSTOMERALIAS - return customer alias of the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">DIVISION - return the Division name of the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PRODUCTIONORDER - return the Production Order Number</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - return the attribute value of the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Attribute name to return specify Attribute value</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PURCHASEORDER - return the Purchased Order Number</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">QUANTITY - return
                    <span>quantity of</span>
                    <span>the Production Order</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SALESORDER - return the Sales Order Number</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SHIPTOPURCHASEORDER - return the Purchased Order of the Ship To Party</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return the top level material description in the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">TOPLEVELMATERIALNAME - return the top level material name in the Production Order</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={9} className="confluenceTd">SYSTEM PROPERTIES</td>
                  <td style={{ width: "277.0px" }} rowSpan={9} className="confluenceTd">
                    <span>Get information of system and application state</span>
                  </td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>GLOBALSITEID</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ISOCOUNTRYCODE2</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ISOCOUNTRYCODE3</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ISOCOUNTRYNAME</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>ISOCOUNTRYNUMBER</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>REGION</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>SITEID</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>SITENAME</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>USER</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={18} className="confluenceTd">WIP CONTAINER ITEMS</td>
                  <td style={{ width: "277.0px" }} rowSpan={18} className="confluenceTd">Get information of WIPs that are packed in the current Container</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALTERNATEWIPIDENTIFIER[NAME] - return alternate serial number of WIP(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify Alternate name to return specific alternate serial number</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <p style={{ textAlign: "left" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYDESCRIPTION</span>
                    </p>
                    <p style={{ textAlign: "left" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;return the assembly description of item(s) packed in the container.&nbsp;</span>
                    </p>
                    <p style={{ textAlign: "left" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>-&nbsp;Following is applicable to Packout Repetitive. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
                    </p>
                    <p style={{ textAlign: "left" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
                    </p>
                    <p style={{ textAlign: "left" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>Container:</span>
                    </p>
                    <p>
                      <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                        <img className="confluence-embedded-image confluence-external-resource confluence-content-image-border" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918399/image2019-6-24-11-25-12.png?version=1&modificationDate=1561346712610&api=v2" />
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>Result:</span>
                    </p>
                    <p>
                      <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                        <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872001.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872001.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={51872001} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-47-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                      </span>
                    </p>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYNUMBER - return the Assembly Number of WIP(s) packed in the container.&nbsp;
                      <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                        <img className="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644082.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644082.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={49644082} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-49-52.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} /></span>
                    </span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYREVISION - return the Assembly Revision of WIP(s) packed in the container.&nbsp;</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALCUSTOMDATA[NAME] -{" "}
                    <span>return material custom data value of WIP(s) packed in the container</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify custom data name to return specific custom data value</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return material description of WIP(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">MATERIALNAME - return material name of WIP(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYREVISION -&nbsp;With progression, this field will retrieve original Assembly Revision. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ORIGINALASSEMBLYVERSION -&nbsp;With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SERIALNUMBER - return serial number of WIP(s) packed in the container. This is valid also for overpack.</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">SHOPFLOORORDER - return Shop Floor Order Number of WIP(s) packed in the container</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span>WIPATTRIBUTEBYSERIAL[NAME] - return all the WIP attribute of the WIP packed in the container. This is not supported for over packing.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify WIP Attribute Name to return the WIP attribute value associated</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">PRODUCTFAMILY - return product family name of WIP(s) packed in the container.</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYREVISION -&nbsp;return Alias Assembly Revision converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">ALIASASSEMBLYVERSION -&nbsp;return Alias Assembly Version converted from the base/production Assembly</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASMATERIALCUSTOMDATA[NAME] - return the alias material's custom data value of the items packed in the container.</span>
                  </td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "145.0px" }} rowSpan={4} className="confluenceTd">WIP CONTAINER ITEMS UPD</td>
                  <td style={{ width: "277.0px" }} rowSpan={4} className="confluenceTd">Get UPD value ofchildwip/wipand serialized materials assembled in packedwippacked in the current Container via UPD name</td>
                  <td style={{ width: "418.0px" }} className="confluenceTd">[MATERIALDESCRIPTION] - return material description of the item with UPD</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Specify UPD name to find the item with specific UPD associated</td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">[MATERIALNAME] - return material name of the item with UPD</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify UPD name to find the item with specific UPD associated</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">[MATERIALSERIAL] - return material name of the item with UPD</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify UPD name to find the item with specific UPD associated</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "418.0px" }} className="confluenceTd">[UPDVALUE] - return UPD value of the item with UPD</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Specify UPD name to find the item with specific UPD associated</span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <th className="confluenceTh">
                    <div className="content-wrapper">
                      <p className="auto-cursor-target">2022.04 New features：</p>
                      <p className="auto-cursor-target">Reprint labels in the same pas file for document type [Conainer] when the operator reprints 2 or more labels in Document Reprint.&nbsp;</p>
                      <p className="auto-cursor-target">
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={250} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920839.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920839.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={110920839} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-46-11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </p>
                      <p className="auto-cursor-target">
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920840.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920840.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={110920840} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-47-6.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </p>
                    </div>
                  </th>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "1416.0px" }}>
              <tbody>
                <tr>
                  <td style={{ textAlign: "center", width: "1416.0px" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: Generic</strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" style={{ width: "250.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Document Field Type</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "499.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "525.0px" }} data-highlight-colour="grey">Value</td>
                  <td className="highlight-grey confluenceTd" style={{ width: "142.0px" }} data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td style={{ width: "250.0px" }} rowSpan={16} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYREVISION PROPERTIES</span>
                  </td>
                  <td style={{ width: "499.0px" }} rowSpan={16} className="confluenceTd">Get information associated to the AssemblyRevision</td>
                  <td style={{ width: "525.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASASSEMBLYNUMBER -&nbsp;return Alias Assembly Number converted from the base/production Assembly</span>
                  </td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASASSEMBLYREVISION -&nbsp;return Alias Assembly Revision converted from the base/production Assembly</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASASSEMBLYVERSION -&nbsp;return Alias Assembly Version converted from the base/production Assembly</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASMATERIALCUSTOMDATA[NAME] -&nbsp;return the custom data value of the alias assembly's material custom data.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ALIASMATERIALNAME -&nbsp;return material name of the alias assembly</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ASSEMBLYNUMBER - return assembly number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">ASSEMBLYREVISION - return assemble revision</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">ASSEMBLYVERSION - return assembly version</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">CUSTOMER - return customer of the assembly</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">CUSTOMERNUMBER - return customer part number of the assembly</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">CUSTOMERREVISION - return customer revision of the material</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">DESCRIPTION - return description of the assembly</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">DIVISION - return division of the assembly</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the custom data value of the assembly's material custom data. Specify the custom data name to return the specific custom data value.</td>
                  <td colSpan={1} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">MATERIALNAME - return material name of the assembly</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "525.0px" }} className="confluenceTd">PRODUCTFAMILY - return Product Family of the assembly's material</td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "250.0px" }} className="confluenceTd">CONSTANTS</td>
                  <td style={{ width: "499.0px" }} className="confluenceTd">Print a constant value</td>
                  <td style={{ width: "525.0px" }} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "250.0px" }} className="confluenceTd">DATA PROMPT</td>
                  <td style={{ width: "499.0px" }} className="confluenceTd">
                    <p>
                      <span>Allow user to enter a value when document is triggered{" "}</span>
                      <span>to be printed</span>
                    </p>
                  </td>
                  <td style={{ width: "525.0px" }} className="confluenceTd">
                    <span>Specify the value to be printed when prompted</span>
                  </td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td style={{ width: "250.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(51,51,51)" }}>NEXT NUMBER</span>
                  </td>
                  <td style={{ width: "499.0px" }} className="confluenceTd">Allow user to select a Next Number name</td>
                  <td style={{ width: "525.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(51,51,51)" }}>Select the Next Number from&nbsp;a list of all the available Next Number name for WIP/Material Serial Number and Material Carrier next number types.</span>
                  </td>
                  <td style={{ width: "142.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "1370.0px" }}>
              <tbody>
                <tr>
                  <td style={{ textAlign: "center", width: "1370.0px" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: GRN</strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" style={{ width: "226.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Document Field Type</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "342.0px" }} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "674.0px" }} data-highlight-colour="grey">Value</td>
                  <td className="highlight-grey confluenceTd" style={{ width: "128.0px" }} data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td style={{ width: "226.0px" }} className="confluenceTd">SYSTEM PROPERTIES</td>
                  <td style={{ width: "342.0px" }} className="confluenceTd">
                    <p>Get information of system and application state</p>
                  </td>
                  <td style={{ width: "674.0px" }} className="confluenceTd">Refer to System Properties of Document Type: Container</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "226.0px" }} rowSpan={15} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>GRN PROPERTIES</span>
                    </p>
                    <p>
                      <br />
                    </p>
                  </td>
                  <td style={{ width: "342.0px" }} rowSpan={15} className="confluenceTd">Get information associated on the GRN. Document to configure in the Material Maintenance for GRN label print out according to Part Number.</td>
                  <td style={{ width: "674.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>DateCode -&nbsp;return Date Code retrieved from the GRN</span>
                  </td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>GRNNumber -&nbsp;return GRN Number</span>
                  </td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">GRNPrefix – return prefix of this GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">IsTSMMaterial – return is this GRN belong to MSD type</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,51,102)" }}>LotCode -&nbsp;return Lot Code retrieved from the GRN</span>
                  </td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">MoistureClassification – return moisture classification (exposure level) if this is MSD GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">MSDBagStatus – return bag status if this is MSD GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">MSDRemainingTime – return remaining time if this is MSD GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">PartDescription – return part description of this GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>PartNumber -&nbsp;return Part Number of the GRN</span>
                  </td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">Quantity - return the number of quantity of the GRN</td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "674.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>VendorCode -&nbsp;return Vendor Code retrieved from the GRN</span>
                  </td>
                  <td style={{ width: "128.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>
                      <span style={{ color: "black" }}>Operation -&nbsp;
                        <span style={{ color: "rgb(0,0,0)" }}>return which one is operating this GRN action&nbsp;</span>
                      </span>
                    </p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>
                      <span style={{ color: "black" }}>SplitFrom -&nbsp;
                        <span style={{ color: "rgb(0,0,0)" }}>return this GRN split from which GRN</span>
                      </span>
                    </p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>
                      <br />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "black" }}>ValidationCode&nbsp;-&nbsp;
                      <span style={{ color: "rgb(0,0,0)" }}>return a random code for "Open Bag" validation</span>
                    </span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "865.0px" }}>
              <tbody>
                <tr>
                  <td style={{ textAlign: "center", width: "865.0px" }} colSpan={4} className="confluenceTd">
                    <strong>
                      <span style={{ color: "rgb(0,0,0)" }}>Document Type : MSD</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" style={{ width: "151.0px" }} title="Background colour : Grey" data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }} title="">Document Field Type</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "266.0px" }} title="Background colour : Grey" data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }} title="">Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" style={{ width: "321.0px" }} title="Background colour : Grey" data-highlight-colour="grey">Value</td>
                  <td className="highlight-grey confluenceTd" style={{ width: "127.0px" }} title="Background colour : Grey" data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td style={{ width: "151.0px" }} className="confluenceTd">GRN PROPERTIES</td>
                  <td style={{ width: "266.0px" }} className="confluenceTd">Get information associated on the GRN.</td>
                  <td style={{ width: "321.0px" }} className="confluenceTd">
                    <p>Refer to GRN Properties of Document Type: GRN</p>
                  </td>
                  <td style={{ width: "127.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "151.0px" }} rowSpan={4} className="confluenceTd">MSD BAG OPERATING PROPERTIES</td>
                  <td style={{ width: "266.0px" }} rowSpan={4} className="confluenceTd">Get information associated on the MSD GRN bag status change operation.</td>
                  <td style={{ width: "321.0px" }} className="confluenceTd">BAG CLOSE DATETIME -&nbsp;return date and time when MSD GRN bag close.</td>
                  <td style={{ width: "127.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BAG OPEN DATETIME -&nbsp;return date and time when MSD GRN bag open.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">INSIDE DRYBOX DATETIME – return date and time when MSD GRN put inside dry box.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">OUTSIDE DRYBOX DATETIME – return date and time when MSD GRN take outside dry box.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "151.0px" }} rowSpan={3} className="confluenceTd">MSD BAKE OPERATING PROPERTIES</td>
                  <td style={{ width: "266.0px" }} rowSpan={3} className="confluenceTd">Get information associated on the MSD GRN bake operation.</td>
                  <td style={{ width: "321.0px" }} className="confluenceTd">BAKE IN DATETIME -&nbsp;return date and time when MSD GRN bake in.</td>
                  <td style={{ width: "127.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "321.0px" }} className="confluenceTd">BAKE OUT DATETIME -&nbsp;return date and time when MSD GRN bake out.</td>
                  <td style={{ width: "127.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BAKE TEMPERATURE – return set temperature when MSD GRN in bake process.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SYSTEM PROPERTIES</td>
                  <td colSpan={1} className="confluenceTd">Get information of system and application state</td>
                  <td colSpan={1} className="confluenceTd">Refer to System Properties of Document Type: Container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type:
                      <strong>Order</strong>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Document Field Type</span>
                  </td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">&nbsp;Value</td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CONSTANTS</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Print a constant value</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DATA PROMPT</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Allow user to enter a value when document is triggered to be printed</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify the value to be printed when prompted</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td rowSpan={34} className="confluenceTd">DELIVERY HEADER</td>
                  <td rowSpan={34} className="confluenceTd">Get header information of the current Delivery Order</td>
                  <td colSpan={1} className="confluenceTd">CUSTOMERORDER</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DELIVERYDATE</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DELIVERYNUMBER</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PURCHASEORDER</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCITY</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCONTACTLINE1</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCONTACTLINE2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCONTACTLINE3</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCONTACTNAME</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCOUNTRY</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCOUNTRY2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTODISTRICT</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOPARTNERNUMBER</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOPOSTCODE</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOREGION</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOSTREET1</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOSTREET2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOSTREET3</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOSTREET4</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCITY</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCONTACTLINE1</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCONTACTLINE2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCONTACTLINE3</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCONTACTNAME</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCOUNTRY</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOCOUNTRY2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTODISTRICT</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOPARTNERNUMBER</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOPOSTCODE</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOREGION</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOSTREET1</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOSTREET2</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOSTREET3</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SOLDTOSTREET4</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td rowSpan={8} className="confluenceTd">DELIVERY LINE ITEMS</td>
                  <td rowSpan={8} className="confluenceTd">Get information of Delivery Line Items in the current Delivery Order</td>
                  <td colSpan={1} className="confluenceTd">CUSTOMERORDERITEMCATEGORY - return Item Category of Customer Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CUSTOMERORDERITEMNUMBER - return Item Number of Customer Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CUSTOMERORDERPARENTITEMNUMBER - return Parent Item Number of Customer Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DELIVERYITEMNUMBER - return Delivery Item number of the Delivery</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DELIVERYITEMQUANTITY - return total quantity of Delivery Item in the Delivery</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION - return material description of the item(s) in the Delivery</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME - return material name of the item(s) in the Delivery</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PURCHASEORDERITEMNUMBER - return Purchase Order Item Number of the Delivery</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td rowSpan={12} className="confluenceTd">ORDER PROPERTIES</td>
                  <td rowSpan={12} className="confluenceTd">Get properties of the current Order</td>
                  <td colSpan={1} className="confluenceTd">ATTRIBUTE[NAME] - return the order attribute value</td>
                  <td colSpan={1} className="confluenceTd">Specify the Attribute name to return specific Attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BILLTOCONTACTNAME - return the bill to contact name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BILLTOCUSTOMER - return the bill to customer</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">COUNTRYOFORIGIN - return the Country of Origin of the order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DELIVERYNUMBER - return the Delivery Number of the order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DUEDATE - return the scheduled end date of the order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PRODUCTIONORDER - return the Production Order number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SALESORDER - return the Sales Order number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCONTACTNAME - return theShip Tocontact name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOCUSTOMER - return the Ship To Customer</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>TOPLEVELMATERIALDESCRIPTION - return the top level material description of the order</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">TOPLEVELMATERIALNAME - return the top level material name of the order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td rowSpan={52} className="confluenceTd">PACKED DELIVERY ITEMS</td>
                  <td rowSpan={52} className="confluenceTd">Get information of a Items packed into a delivery (Deliverypackout)</td>
                  <td colSpan={1} className="confluenceTd">BILLTOCITY - return Customer Order Bill To City</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCONTACTLINE1 - return Customer Order Bill To Contact Line 1</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCONTACTLINE2</span>
                    <span>- return Customer Order Bill To Contact Line 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCONTACTLINE3</span>
                    <span>- return Customer Order Bill To Contact Line 3</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCONTACTNAME</span>
                    <span>- return Customer Order Bill To Contact Name</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCOUNTRY</span>
                    <span>- return Customer Order Bill To Country</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCOUNTRY2</span>
                    <span>- return Customer Order Bill To Country 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOCOUNTRYFORMALNAME</span>
                    <span>- return Formal Customer Order Bill To Country</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTODISTRICT - return Customer Order Bill To District</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOPARTNERNUMBER - return Customer ORder Bill To Partner Number</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOPOSTCODE - return Customer Order Bill To Postcode</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOREGION - return Customer Order Bill To Region</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOSTREET1 - return Customer Order Bill To Street 1</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOSTREET2</span>
                    <span>- return Customer Order Bill To Street 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOSTREET3</span>
                    <span>- return Customer Order Bill To Street 3</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>BILLTOSTREET4</span>
                    <span>- return Customer Order Bill To Street 4</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CONTAINERCUSTOMDATA[NAME] - return container custom data value of the Containers in the current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CONTAINERID - return container id(s) in current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CUSTOMERORDER - return Customer Order number</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CUSTOMERORDERITEMATTRIBUTE[NAME] - return Attribute value of Customer Order</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify Attribute name to return the specific Attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CUSTOMERORDERITEMNUMBER - return Customer Order item number of current delivery</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CUSTOMERORDERPARENTITEMNUMBER - return Customer Order Parent Item Number of current delivery</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>DELIVERYDATE - return delivery date</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>DELIVERYITEMNUMBER - return Delivery item number</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>DELIVERYITEMQUANTITY - return total quantity for current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>DELIVERYNUMBER - return Delivery Number for current delivery</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>MATERIALCUSTOMDATA[NAME] - return material custom data value of items in current Delivery</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>MATERIALDESCRIPTION - return material description of current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>MATERIALNAME - return material name of current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>MATERIALSERIAL - return serial number of current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>PURCHASEORDER - return Purchase Order Number of current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SERIALIZEDMATERIALATTRIBUTE[NAME] - return Attribute value of Serialized Material packed in current delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify Attribute Name to return specific Attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCITY - return Customer Order Ship To City</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCONTACTLINE1 - return Customer Order Ship To Contact Line 1</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCONTACTLINE2</span>
                    <span>- return Customer Order Ship To Contact Line 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCONTACTLINE3</span>
                    <span>- return Customer Order Ship To Contact Line 3</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCONTACTNAME - return Customer Order Ship To Contact Name</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCOUNTRY - return Customer Order Ship To Country</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCOUNTRY2</span>
                    <span>- return Customer Order Ship To Country 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOCOUNTRYFORMALNAME</span>
                    <span>- return formal Customer Order Ship To Country</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTODISTRICT - return Customer Order Ship To District</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOPARTNERNUMBER - return Customer Order Ship To Partner Number</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOPOSTCODE - return Customer Order Ship To Postcode</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOREGION- return Customer Order Ship To Region</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOSTREET1 - return Customer Order Ship To Street 1</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOSTREET2</span>
                    <span>- return Customer Order Ship To Street 2</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOSTREET3</span>
                    <span>- return Customer Order Ship To Street 3</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>SHIPTOSTREET4</span>
                    <span>- return Customer Order Ship To Street 4</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>TOPLEVELMATERIALDESCRIPTION - return top level material description in the delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>TOPLEVELMATERIALNAME - return top level material name in the delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>TOPLEVELMATERIALSERIAL - return top level material serial number in the delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>WIPATTRIBUTE[NAME] - return Attribute value of the WIP in the delivery item</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify Attribute name to return specific Attribute value</td>
                </tr>
                <tr>
                  <td rowSpan={11} className="confluenceTd">PRODUCTION ORDER HEADER</td>
                  <td rowSpan={11} className="confluenceTd">Get header information for current Production Order</td>
                  <td colSpan={1} className="confluenceTd">CUSTOMER - return Production Order customer</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CUSTOMERALIAS - return Production Order customer alias</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DIVISION - return Production Order Division</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PRODUCTIONORDER - return Production Order Number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - returnAttribtevalue of Production Order</td>
                  <td colSpan={1} className="confluenceTd">Specify Attribute name to return specific Attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PURCHASEORDER - return Purchase Order Number of Production Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">QUANTITY - return Production Order quantity</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SALESORDER - return Sales Order of Production Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SHIPTOPURCHASEORDER - return Ship To Purchased Order Number</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return description of top level material in Production Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">TOPLEVELMATERIALNAME - return name of top level material in Production Order</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">QLMS PROPERTIES</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Get information of QLMS Properties</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>WorkOrderID - Return&nbsp; Work Order ID&nbsp;</p>
                    <p>Route - Return associate Route details. If not configured, display NA</p>
                    <p>Route Step - Return associate Route Step details.&nbsp;If not configured, display NA</p>
                    <p>Production Equipment Type - Return associated production equipment type details</p>
                    <p>Production Machine ID -&nbsp;Return associated production machine ID details</p>
                    <p>Mold ID/Tooling ID -Return associated Mold ID/Tooling ID details</p>
                    <p>Cavity -Return associated cavity details</p>
                    <p>Sample Number -&nbsp;Return associated sample number details</p>
                    <p>Serial Number -Return associated serial number details</p>
                    <p>Item Number -Return associated item number details</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SYSTEM PROPERTIES</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Get information of system and application state</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Refer to System Properties of Document Type: Container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type:{" "}
                      <span style={{ color: "rgb(45,46,47)" }}>SerializedMaterial</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Document Field Type</span>
                  </td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">&nbsp;Value</td>
                  <td className="highlight-grey confluenceTd" colSpan={1} data-highlight-colour="grey">Contingent Value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CONSTANTS</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Print a constant value</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DATA PROMPT</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Allow user to enter a value when document is triggered to be printed</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify the value to be printed when prompted</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DATECODE</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Get current datecode in various format.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">Refer to DATECODE in Document Type: Container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SERIALIZED MATERIAL DATACOLLECTION</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Get Serialized Material's data collection value</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>
                      <br />
                    </p>
                    <p>
                      <br />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td rowSpan={6} className="confluenceTd">SERIALIZED MATERIAL PROPERTIES
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td rowSpan={6} className="confluenceTd">Get information of current Serialized Material
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td colSpan={1} className="confluenceTd">BIRTHDATE - return Serialized Material created on date</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CUSTOMER - return customer of the Serialized Material</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION - return material description of the Serialized Material</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME - return material name of the Serialized Material</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SERIALIZEDMATERIALATTRIBUTE[NAME] - return Attribute value of the Serialized Material</td>
                  <td colSpan={1} className="confluenceTd">Specify Attribute Name to return specific Attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SERIALNUMBER - return Serial Number of Serialized Material</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">SYSTEM PROPERTIES</td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Get information of system and application state</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <span>Refer to System Properties of Document Type: Container</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "694.0px" }}>
              <tbody>
                <tr>
                  <td style={{ width: "694.0px", textAlign: "center" }} colSpan={5} className="confluenceTd">
                    <strong>Document Type: SuperLot</strong>
                  </td>
                </tr>
                <tr>
                  <th style={{ width: "167.0px" }} className="confluenceTh">
                    <span style={{ color: "rgb(0,0,0)" }}>Document Field Type</span>
                  </th>
                  <th style={{ width: "237.0px" }} className="confluenceTh">
                    <span style={{ color: "rgb(0,0,0)" }}>Description</span>
                  </th>
                  <th style={{ width: "156.0px" }} colSpan={2} className="confluenceTh">&nbsp;Value</th>
                  <th style={{ width: "134.0px" }} className="confluenceTh">Contingent Value</th>
                </tr>
                <tr>
                  <td style={{ width: "167.0px" }} rowSpan={9} className="confluenceTd">
                    <span style={{ color: "rgb(34,34,34)" }}>SUPER LOT PROPERTIES</span>
                  </td>
                  <td style={{ width: "237.0px" }} rowSpan={9} className="confluenceTd">Get properties of current Super Lot</td>
                  <td style={{ width: "156.0px" }} colSpan={2} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYNUMBER -&nbsp;return assembly number&nbsp;</span>
                      <span style={{ color: "rgb(0,0,0)" }}>of the Super Lot&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>
                    </p>
                  </td>
                  <td style={{ width: "134.0px", marginLeft: "180.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYREVISION -&nbsp;return assembly revision of the Super Lot</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>ASSEMBLYVERSION -&nbsp;return assembly version of the Super Lot</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>SUPERLOTQUANTITY - return quantity of the Super Lot</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>SUPERLOTSERIALNUMBER - return serial number of the Super Lot</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return material custom data value</td>
                  <td colSpan={1} className="confluenceTd">Specify custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">MATERIALDESCRIPTION - return material description</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">MATERIALNAME - return material name of the superlot</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={2} className="confluenceTd">WORKORDERNUMBER - return work order number of the superlot</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td className="confluenceTd">CONSTANTS</td>
                  <td className="confluenceTd">Print a constant value</td>
                  <td colSpan={2} className="confluenceTd">Specify the Constant Value to be returned</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "1169.0px" }}>
              <tbody>
                <tr>
                  <td style={{ width: "1169.0px", textAlign: "center" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: WIP</strong>
                  </td>
                </tr>
                <tr>
                  <th style={{ width: "202.0px" }} className="confluenceTh">
                    <span>Field Type Name</span>
                  </th>
                  <th style={{ width: "329.0px" }} className="confluenceTh">Description</th>
                  <th style={{ width: "375.0px" }} className="confluenceTh">&nbsp;Value</th>
                  <th style={{ width: "263.0px" }} className="confluenceTh">Contingent Value</th>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">ASSEMBLED ITEM ATTRIBUTE BY CUSTOM DATA AND VALUE</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Get attribute value of childwipor serialized material assembled to the current WIP via custom data name and value</td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">ASSEMBLED ITEM ATTRIBUTE BY NAME</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Get attribute value of childwipor serialized material assembled to the current WIP via material name</td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify material name to find child assembled item(s) of the specific material.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">ASSEMBLED ITEM CUSTOM DATA BY CUSTOM DATA AND VALUE</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Get custom data value ofassembled-itemsassembled to the current WIP via custom data name and value</td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">Specify name of the custom data to return the custom data value</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">ASSEMBLED ITEM DATACOLLECTION BY CUSTOM DATA AND VALUE</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Get data collection value ofassembled-itemsassembled to the current WIP via custom data name and value</td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={8} className="confluenceTd">ASSEMBLED ITEMS BY CUSTOM DATA AND VALUE
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={8} className="confluenceTd">Get information of assembled-itemsassembled to the current WIP via custom data name and value
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ASSEMBLEDDATEBYCUSTOMDATA[NAME] - return thedatetimewhen theassembled-itemwas assembled.</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CRDBYCUSTOMDATA[NAME] - return the CRD of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMERMATERIALNAMEBYCUSTOMDATA[NAME] - returncusotmermaterial name of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MANUFACTURERPARTNUMBERBYCUSTOMDATA[NAME] - return the scanned MPN of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTIONBYCUSTOMDATA[NAME] - returnmaterialdescription of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALMANUFACTURERBYCUSTOMDATA[NAME] - return manufacturer of the scanned MPN of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAMEBYCUSTOMDATA[NAME] - return themateralname of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALSERIALBYCUSTOMDATA[NAME] - return the serial number of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={4} className="confluenceTd">ASSEMBLED ITEMS UPD
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={4} className="confluenceTd">Get UPDvalue of child wipand serialized materials assembled to the current WIP via UPD name. Child assembled items of all levels are retrieve recursively.
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION - Return material description of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME- Return material name of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALSERIAL- Return serial Number of the assembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">UPD - Return UPD value of matching UPD name in thecurrentassembled item</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={13} className="confluenceTd">ASSEMBLYREVISION PROPERTIES
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={13} className="confluenceTd">
                    <p>Get information associated to the AssemblyRevision of the current WIP</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ASSEMBLYNUMBER - return assembly number of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ASSEMBLYREVISION - return assemble revision of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ASSEMBLYVERSION - return assembly version of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMER - return customer of the WIP assembly</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMERNUMBER - return customer part number of the WIP assembly</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMERREVISION - return customer revision of the WIP material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">DESCRIPTION - return description of the WIP assembly</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">DIVISION - return division of the WIP assembly</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME - return material name of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ORIGINALASSEMBLYREVISION -&nbsp;With progression, this field will retrieve original Assembly Revision. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ORIGINALASSEMBLYVERSION -&nbsp;With progression, this field will retrieve original Assembly Number. Whereas,&nbsp;
                    <span style={{ color: "rgb(32,31,30)" }}>without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PRODUCTFAMILY - return Product Family of the WIP material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">CONSTANTS</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Print a constant value</span>
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">DATA PROMPT</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">
                    <span>Allow user to enter a value when document is triggered to be printed</span>
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>Specify the value to be printed when prompted</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={14} className="confluenceTd">DATECODE
                    <span>DATACOLLECTION</span>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "329.0px" }} rowSpan={14} className="confluenceTd">
                    <p>Get currentdatecodein various format.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <p>yyyy = 4 digits year.</p>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>qq = 1 digit quarter.</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>mm = 2 digits month.</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>dy = 3 digits day of year</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>dd = 2 digits day of month</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>ww = 2 digits workweek number. Starting on a Sunday and Jan 1{" "}</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>dw = 1 digit day of week</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>hh = 2 digits hour. 24 hours format</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>mi = 2 digits minute</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>ss = 2 digits second</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>ms = 3 digits milisecond</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>yy = 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>y = 1 digit year. The right most digit. E.g. 2016 = 6</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span>yyyymmdd = 8 digits iso calendar date</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={3} className="confluenceTd">SERIALIZED ASSEMBLED ITEMS
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={3} className="confluenceTd">Get information of Serialized Assembled Items in current WIP
                    <br />
                    <br /></td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return material description of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME - return material name of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALSERIAL - return serial number of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={3} className="confluenceTd">SERIALIZED ASSEMBLED ITEMS BY FAMILY
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={3} className="confluenceTd">
                    <p>
                      <span>Get information of Serialized Assembled Items in current WIP via Product Family</span>
                    </p>
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify Product Family
                    <span>name</span>
                    <span>to find assembled items with material that belongs to those Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <span>Specify Product Family name to find assembled items with material that belongs to those Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALSERIALBYPRODUCTFAMILY[NAME] - return serial number of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <span>Specify Product Family</span>
                    <span>name</span>
                    <span>to find assembled items with material that belongs to those Product Family</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={3} className="confluenceTd">SERIALIZED ASSEMBLED ITEMS BY NAME
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={3} className="confluenceTd">
                    <p>
                      <span>Get information of Serialized Assembled Items in current WIP via material name</span>
                    </p>
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION[NAME] - return material description of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify material name to find assembled items of the specific material</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME[NAME] - return material name of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <span>Specify material name to find assembled items of the specific material</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALSERIAL[NAME] - return serial number of the assembled item(s)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <span>Specify material name to find assembled items of the specific material</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={6} className="confluenceTd">SERIALIZED MATERIAL PROPERTIES
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={6} className="confluenceTd">
                    <p>Get properties of Serialized Material(s) assembled in current WIP</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">BIRTHDATE - return the Created On date of the Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMER - return the Customer of the Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return material description of the Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME - return material name of the Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SERIALIZEDMATERIALATTRIBUTE[NAME] - return the attribute value of a Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <span>Specify attribute name to return the specific attribute value</span>
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SERIALNUMBER - return serial number of the Serialized Material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={9} className="confluenceTd">SYSTEM PROPERTIES
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={9} className="confluenceTd">
                    <p>
                      <span>Get information of system and application state</span>
                    </p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">GLOBALSITEID</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ISOCOUNTRYCODE2</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ISOCOUNTRYCODE3</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ISOCOUNTRYNAME</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ISOCOUNTRYNUMBER</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">REGION</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SITEID</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SITENAME</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">USER</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={4} className="confluenceTd">UNSERIALIZED ASSEMBLED ITEMS
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={4} className="confluenceTd">
                    <p>Get information of Unserialized Material(s) assembled to current WIP</p>
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MANUFACTURER - return manufacturer name of scanned MPN for unserialized material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MANUFACTURERPARTNUMBER - return scanned MPN of unserialized material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return material description of unserialized material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME - return material name of unserialized material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} rowSpan={29} className="confluenceTd">WIP PROPERTIES
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></td>
                  <td style={{ width: "329.0px" }} rowSpan={29} className="confluenceTd">
                    <p>Get properties of current WIP</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                  </td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ALTERNATEWIPIDENTIFIER[NAME] - return the customer specific serial number of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify the Alternate name to find the specific serial number</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">ATTRIBUTE[NAME] - return the WIP Attribute value</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify the Attribute name to return the specific attribute value</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">BATCH - return the WIP Batch number</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">BIRTHDATE - return the Creation Date of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">BOMNAME - return the BOM name of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">BOMVERSION - return the BOM version of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">COUNTRYOFORIGIN - return the WIP Attributes Value with Attribute Name = "COO"</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CURRENTRESOURCENAME – return the resource name by current route step it is trigger the label printing (not in queue step)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <p>CURRENTROUTESTEPID – return the ID of the route step it is trigger the label printing.</p>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CURRENTROUTESTEP - return the route step it is trigger the label printing. (Rename from ROUTESTEP, require manually change to CURRENTROUTESTEP)</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMER - return Customer of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMERMATERIALNAME - return the Customer Material Name of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">CUSTOMERORDER - return the Customer Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">DELIVERYNUMBER - return the Delivery Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">DIVISION - return the Division of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the custom data value of the WIP material's custom data</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALDESCRIPTION - return the material description of the WIP material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">MATERIALNAME - return the material name of the WIP material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PANELTYPE - return the Panel Type of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PLANNEDORDER - return the Planned Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PLANTCODE - return the Plant Code of the WIP material</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PRODUCTIONORDER - return the Production Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - return Attribute value of the Production Order that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">Specify the Attribute name to return the specific Attribute value</td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">PURCHASEORDER - return the Purchased Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SALESORDER - return the Sales Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SERIALNUMBER - return the Serial Number of the WIP</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SHIPTOPURCHASEORDER - return the Purchased Order Number of a Ship To party that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">SHOPFLOORORDER - return the Shop Floor Order Number that the WIP is associated to</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "375.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(45,46,47)" }}>PRODUCTFAMILY - return the Product Family of the WIP is associated to</span>
                  </td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "202.0px" }} className="confluenceTd">WIP TEST PHASE ASSIGNMENTS</td>
                  <td style={{ width: "329.0px" }} className="confluenceTd">Get test phases assigned toWipbased onwip'sbomand optionally, routesteps</td>
                  <td style={{ width: "375.0px" }} className="confluenceTd">TESTPHASE - return test phases thethe currentWIP is configured to go through within the current route</td>
                  <td style={{ width: "263.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <th className="confluenceTh">
                    <div className="content-wrapper">
                      <p className="auto-cursor-target">2022.04 New features：</p>
                      <p className="auto-cursor-target">Reprint labels in the same pas file for document type [WIP] when the operator reprints 2 or more labels in Document Reprint.&nbsp;</p>
                      <p className="auto-cursor-target">
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-content-image-border" height={150} width={420} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920836.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920836.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={110920836} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-38-1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </p>
                      <p className="auto-cursor-target">
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image confluence-content-image-border" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920837.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920837.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={110920837} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-38-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </p>
                      <p className="auto-cursor-target">
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={400} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920838.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920838.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={110920838} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-39-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </p>
                    </div>
                  </th>
                  <th className="confluenceTh">
                    <br />
                  </th>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable" style={{ width: "1415.0px" }}>
              <tbody>
                <tr>
                  <td style={{ textAlign: "center", width: "1415.0px" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: Carrier{" "}
                      <strong style={{ textAlign: "center" }}>{" "} (Only Apply to 5.0)</strong>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <th style={{ width: "146.0px" }} className="confluenceTh">Field Type Name</th>
                  <th style={{ width: "150.0px" }} className="confluenceTh">Description</th>
                  <th style={{ width: "826.0px" }} className="confluenceTh">&nbsp;Value</th>
                  <th style={{ width: "293.0px" }} className="confluenceTh">Contingent Value</th>
                </tr>
                <tr>
                  <td style={{ width: "146.0px" }} rowSpan={10} className="confluenceTd">
                    <p>ASSEMBLYREVISION PROPERTIES</p>
                  </td>
                  <td style={{ width: "150.0px" }} rowSpan={10} className="confluenceTd">
                    <p>Get information associated to the</p>
                    <p>Assembly properties of the current</p>
                    <p>Lot in the Carrier</p>
                  </td>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>ASSEMBLYNUMBER - return assembly number of the Lot</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>ASSEMBLYREVISION - return assemble revision of the&nbsp;Lot</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>ASSEMBLYVERSION - return assembly version of the&nbsp;Lot</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>CUSTOMER - return customer of the&nbsp;Lot assembly</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>CUSTOMERNUMBER - return customer part number of the Lot assembly</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>CUSTOMERREVISION - return customer revision of the Lot material</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>DESCRIPTION - return description of the Lot assembly</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>DIVISION - return division of the Lot assembly</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>MATERIALNAME - return material name of the Lot</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>PRODUCTFAMILY - return Product Family of the Lot material</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "146.0px" }} rowSpan={14} className="confluenceTd">CARRIER PROPERTIES</td>
                  <td style={{ width: "150.0px" }} rowSpan={14} className="confluenceTd">Get properties of current carrier
                    <p>
                      <br /></p>
                  </td>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>CARRIERQUANTITY</span>&nbsp;- return quantity on the carrier</td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">CARRIERSERIALNUMBER - return carrier number</td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>CURRENTCARRIERRESULT -&nbsp;return the current carrier status (PASS / FAIL).&nbsp;If the Lot in that carrier does not have open defect, then the CURRENTCARRIERRESULT is PASS, else&nbsp;
                      <span>CURRENTCARRIERRESULT is FAIL</span>
                    </span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>CURRENTRESOURCENAME -&nbsp;return the resource name of current route step that triggered the label printing (not the in queue step)</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>CURRENTROUTESTEP -&nbsp;return the route step that triggered the label printing</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(45,46,47)" }}>CUSTOMER - return customer</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(45,46,47)" }}>DIVISION - return the Division</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>LOTATTRIBUTE[NAME] - return the value of the lot's attribute</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">Specify the attribute name to return the specific attribute value</td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>LOTID - return the lot ID</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>LOTQUANTITY - return the lot quantity</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <p>
                      <span>MATERIALCUSTOMDATA[NAME] -</span>return the custom data value of the lot material's custom data</p>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(45,46,47)" }}>MATERIALNAME - return material name of the Lot in the Carrier</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span style={{ color: "rgb(45,46,47)" }}>PRODUCTFAMILY - return Product Family of the Lot's product in the Carrier</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "826.0px" }} className="confluenceTd">SUPERLOTSERIALNUMBER - return Super Lot number associated to the lot</td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td style={{ width: "146.0px" }} className="confluenceTd">CONSTANTS</td>
                  <td style={{ width: "150.0px" }} className="confluenceTd">
                    <span>Print a constant value</span>
                  </td>
                  <td style={{ width: "826.0px" }} className="confluenceTd">
                    <span>Specify the Constant Value to be returned</span>
                  </td>
                  <td style={{ width: "293.0px" }} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="table-wrap">
            <table className="wrapped confluenceTable">
              <tbody>
                <tr>
                  <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
                    <strong>Document Type: CarrierContainer (Only Apply to 5.0)</strong>
                  </td>
                </tr>
                <tr>
                  <th className="confluenceTh">Field Type Name</th>
                  <th className="confluenceTh">Description</th>
                  <th colSpan={1} className="confluenceTh">&nbsp;Value</th>
                  <th colSpan={1} className="confluenceTh">Contingent Value</th>
                </tr>
                <tr>
                  <td rowSpan={14} className="confluenceTd">
                    <span>CARRIER CONTAINER ITEMS</span>
                    <br />
                    <p>
                      <br />
                    </p>
                  </td>
                  <td rowSpan={14} className="confluenceTd">
                    <p>
                      <span>Get information of items packed in the container for carrier</span>
                    </p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>CARRIERBATCHNUMBER - return the carrier Batch number</p>
                    <p>Notes: no available for Batch Manufacturing 2.0.</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CARRIERSERIALNUMBER - return carrier number of item(s) packed into container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">LOTATTRIBUTE[NAME] - return the lot attribute value of the items packed into the container</td>
                  <td colSpan={1} className="confluenceTd">Specify the lot attribute name to return the specific lot attribute value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">LOTSERIALNUMBER - return lot number of item(s) packed into container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PRODUCTFAMILY - return product family of item(s) packed into container.</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
                  <td colSpan={1} className="confluenceTd">Specify the custom data name to return the specific custom data value</td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">MATERIALNAME - return the material name of item(s) packed in the container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">PLANNEDORDERNUMBER - return planned order number of item(s) packed into container</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>PRODUCTSTATE - return the list of unique product state of item(s) packed into container</p>
                    <p>Notes: no available for Batch Manufacturing 2.0.</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CARRIERITEMQUANTITY - Q
                    <span style={{ color: "rgb(0,0,0)" }}>
                      <span style={{ color: "rgb(0,0,0)" }}>uantity of individual carriers packed into the container
                        <br />
                        <br /></span>
                    </span>
                    <div>One container contains 2 carriers. Carrier Item Quantity will report as</div>
                    <div>Quantity1: 100</div>
                    <div>Quantity2: 200</div>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CONTAINERITEMQUANTITY&nbsp;
                    <span>- return total quantity of item packed in the container&nbsp;</span>
                    <span style={{ color: "rgb(0,0,0)" }}>(In case of Overpack, should the number of containers packed, example box into pallet. In Lot Packout (lower level containers), it is the number of carriers in the container).</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span style={{ color: "rgb(0,0,0)" }}>CONTAINERSERIALNUMBER - return the container serial number. (In case of overpack it is the list of container serial number packed (example, box serial number packed into pallet). Blank in case of Lot container (box)</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>
                      <span style={{ color: "rgb(45,46,47)" }}>CONTAINERPACKINGSEQUENCE(just for TOT&amp;Nag):Returns the sequence number packed into the Pallet.</span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(45,46,47)" }}>
                        <span className="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                          <img className="confluence-embedded-image" height={150} src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/120750925.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/120750925.png&$format=octetStream" data-unresolved-comment-count={0} data-linked-resource-id={120750925} data-linked-resource-version={1} data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-7-8-10-19-32.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id={29918399} data-linked-resource-container-version={54} />
                        </span>
                      </span>
                    </p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td rowSpan={11} className="confluenceTd">
                    <span>CARRIER CONTAINER PROPERTIES</span>
                  </td>
                  <td rowSpan={11} className="confluenceTd">
                    <span>Get properties of current container for a carrier</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>CONTAINERCOUNT - return the number of containers containing the batch managed carrier items</p>
                    <p>Notes: no available for Batch Manufacturing 2.0.</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CONTAINERNUMBER - return container number</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>CONTAINERSEQUENCENUMBER - return the sequence number of the container containing the batch managed carrier items</p>
                    <p>Notes: no available for Batch Manufacturing 2.0.</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CONTAINERTYPENAME - return container type name</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CUSTOMERNAME - return customer name</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">DIVISIONNAME - return division name</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">ROUTESTEP - return the route step</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">CONTAINERQUANTITY - return the total quantity of items packed into the container
                    <br />
                    <span style={{ color: "rgb(0,0,0)" }}>IE: Scan to pack from 2 carriers with qty = 10 &amp; Qty 20 each. Container Quantity = 30</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <p>TOTALCARRIERITEMQUANTITY -{" "}
                      <span style={{ color: "rgb(0,0,0)" }}>Total quantity of items in a batch carrier.
                        <br />IE: A batch managed carrier with a large quantity was split to pack in{" "}
                        <span style={{ color: "rgb(0,0,0)" }}>4 containers with 500 in each containers. Total Carrier Item Quantity = 2000</span>
                        <br />
                      </span>
                    </p>
                    <p>
                      <span style={{ color: "rgb(0,0,0)" }}>
                        <span style={{ color: "rgb(0,0,0)" }}>Notes: no available for Batch Manufacturing 2.0.</span>
                      </span>
                    </p>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">USERNAME - return username</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">BOXCREATION - return the "Created On"&nbsp;date&nbsp;from Container View screen</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colSpan={1} className="confluenceTd">
                    <span>CONSTANTS</span>
                  </td>
                  <td colSpan={1} className="confluenceTd">
                    <p>Print a constant value</p>
                  </td>
                  <td colSpan={1} className="confluenceTd">Specify the Constant value to be returned</td>
                  <td colSpan={1} className="confluenceTd">
                    <br />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div className="table-wrap">
          <table className="wrapped confluenceTable">
            <tbody>
              <tr>
                <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
                  <strong>Document Type: Sample</strong>
                </td>
              </tr>
              <tr>
                <th className="confluenceTh">Field Type Name</th>
                <th className="confluenceTh">Description</th>
                <th className="confluenceTh">&nbsp;Value</th>
                <th className="confluenceTh">Contingent Value</th>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <span>CONSTANTS</span>
                </td>
                <td className="confluenceTd">Print a constant value</td>
                <td className="confluenceTd">Specify the Constant value to be returned</td>
                <td className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td rowSpan={9} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>SYSTEM PROPERTIES</span>
                </td>
                <td rowSpan={9} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>Get information of system and application state</span>
                </td>
                <td className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>GLOBALSITEID</span>
                </td>
                <td className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ISOCOUNTRYCODE2</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ISOCOUNTRYCODE3</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ISOCOUNTRYNAME</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ISOCOUNTRYNUMBER</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>REGION</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>SITEID</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>SITENAME</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>USER</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>DATA PROMPT</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>Allow user to enter a value when document is triggered to be printed</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>Specify the value to be printed when prompted</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td rowSpan={14} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>DATECODE</span>
                </td>
                <td rowSpan={14} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>Get current datecode in various format.</span>
                </td>
                <td className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>yyyy - 4 digits year</span>
                </td>
                <td className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>qq - 1 digit quarter.</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>mm - 2 digits month.</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>dy - 3 digits day of year</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>dd - 2 digits day of month</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ww - 2 digits workweek number. Starting on a Sunday and Jan 1</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>dw - 1 digit day of week</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>hh - 2 digits hour. 24 hours format</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>mi - 2 digits minute</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ss - 2 digits second</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>ms - 3 digits milisecond</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>yy - 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>y - 1 digit year. The right most digit. E.g. 2016 = 6</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(23,43,77)" }}>yyyymmdd - 8 digits iso calendar date</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td rowSpan={34} className="confluenceTd">
                  <span style={{ color: "rgb(0,0,0)" }}>Sample Properties</span>
                </td>
                <td rowSpan={34} className="confluenceTd">Get information of Sample ID</td>
                <td colSpan={1} className="confluenceTd">APPROVER</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">
                  <span style={{ color: "rgb(0,0,0)" }}>APPLICATIVEPHASE</span>
                </td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">BUILDING</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">CREATIONDATE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">DEPARTMENT</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">DEPARTMENTOWNER</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">DESCRIPTION</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">FLOOR</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">GROUPCODE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">EOLDATE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">MANUFACTURINGAREA</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">MODEL</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PARTNUMBER</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PRODUCTNAME</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PROCESS</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PROCESSSTEP</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PRODUCTGROUP</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PRODUCTIONAREA</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PROJECT</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">PHASE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">RECEIPTDATE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">RECEIVINGDATETIME</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">REVISION</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SAMPLEID</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SAMPLELOCATION</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SAMPLESTATUS</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SAMPLETYPE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SERIALNUMBER</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">SIGNEE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">TASKSTATUS</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">TRANSFERFROM</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">TRANSFERTO</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">TRANSFERREDDATETIME</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
              <tr>
                <td colSpan={1} className="confluenceTd">VALIDITYDATE</td>
                <td colSpan={1} className="confluenceTd">
                  <br />
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Section</td>
      <td colSpan={1} className="confluenceTd">Allow user to select the target section for current field from the sections configured in Section tab if IsMultiSection is "On"</td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsRepeating</span>
      </td>
      <td className="confluenceTd">
        <p>Loop through the object and print out all the data collected for the specific field type.</p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(45,46,47)" }}>IsRequired</span>
      </td>
      <td colSpan={1} className="confluenceTd">If enabled, system will validate no blank value before generating the PAS file. If there is blank value, the PAS data file will not be generated
        <br />If disabled, blank value is allowed in the PAS data file&nbsp;</td>
    </tr>
  </tbody>
</table>
<table className="wrapped confluenceTable">
  <tbody>
    <tr>
      <th className="confluenceTh">Type Name</th>
      <th className="confluenceTh">Detail</th>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembled Item</p>
      </td>
      <td className="confluenceTd">Document with information related to an Assembled Item in Assemble screen</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Carrier</td>
      <td colSpan={1} className="confluenceTd">Document with information related to Carrier
        <strong style={{ textAlign: "center" }}>{" "}
          <strong style={{ textAlign: "center" }}>(Lot/Batch material specific)</strong>
        </strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">CarrierContainer</td>
      <td colSpan={1} className="confluenceTd">Document with information related to Carrier Container{" "}
        <strong style={{ textAlign: "center" }}>{" "} (Lot/Batch material specific)</strong>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Container</p>
      </td>
      <td className="confluenceTd">Document with information related to a Container</td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Generic</p>
      </td>
      <td className="confluenceTd">Document not related to any specific objects</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">GRN</td>
      <td colSpan={1} className="confluenceTd">Document with information related to GRN</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MSD</td>
      <td colSpan={1} className="confluenceTd">
        <p>Document with information related to MSD feature.</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">Order</td>
      <td className="confluenceTd">Document with information related to a Delivery or Production Order or QLMS workorder</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Sample</td>
      <td colSpan={1} className="confluenceTd">Document with information related to Sample Management.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">Serialized Material</td>
      <td colSpan={1} className="confluenceTd">Document with information related to a Serialized Material</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">SuperLot</td>
      <td colSpan={1} className="confluenceTd">Document with information related to Super Lot&nbsp;
        <strong style={{ textAlign: "center" }}>(Lot/Batch material specific)</strong>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
      <td className="confluenceTd">Document with information related to a WIP</td>
    </tr>
  </tbody>
</table>
<table className="wrapped confluenceTable">
  <tbody>
    <tr>
      <th className="confluenceTh">Print Engine</th>
      <th className="confluenceTh">Document Definition Input</th>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">External API Call</td>
      <td colSpan={1} className="confluenceTd">
        <p>The URL link for http/https address (web api) that configure to be call for processing. E.g. http://
          <your web="" api="" address="">.</your>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">FileGeneration</td>
      <td className="confluenceTd">Network path where the generated file will be placed into. E.g. "\\servername\foldername"</td>
    </tr>
    <tr>
      <td className="confluenceTd">Loftware</td>
      <td className="confluenceTd">The name of theLoftwareTemplate file which the document will utilize to print a label. Combine with "Label Definition Path" configured in Printer Server to form the full address that points to theLoftwareTemplate file.LoftwareTemplate file always ends withextension".lwl". E.g. "subfoldername\template.lwl"</td>
    </tr>
    <tr>
      <td className="confluenceTd">SQL Reporting Services</td>
      <td className="confluenceTd">The urllink to the SSRS report to be printed. E.g. "
        <a href="http://alfphxiis03.corp.jabil.org/ReportServer/PRD/MEM/IsilonPalletTraveler" className="external-link" rel="nofollow">http://alfphxiis03.corp.jabil.org/ReportServer/PRD/MEM/IsilonPalletTraveler</a>"</td>
    </tr>
  </tbody>
</table><table className="wrapped confluenceTable">
  <tbody>
    <tr>
      <td style={{ textAlign: "center" }} colSpan={4} className="confluenceTd">
        <strong>Document Type: Assembled Item</strong>
      </td>
    </tr>
    <tr>
      <th className="confluenceTh">Field Type Name</th>
      <th className="confluenceTh">Description</th>
      <th className="confluenceTh">Value</th>
      <th className="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td rowSpan={17} className="confluenceTd">ASSEMBLED ITEM
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td rowSpan={17} className="confluenceTd">Get information about the item that was just assembled to a wip
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td className="confluenceTd">
        <p>ASSEMBLEDDATE - Return thedatetimewhen the item is assembled</p>
      </td>
      <td className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">ASSEMBLEDWIPATTRIBUTE[NAME]- Return the attribute value of the Assembled Item.</td>
      <td className="confluenceTd">Specify attribute name to return the specific attribute value</td>
    </tr>
    <tr>
      <td className="confluenceTd">CRD- Return the CRD of the Assembled Item</td>
      <td className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">ITEMIDENTIFIER- Return the Serial Number of the Assembled Item</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALCUSTOMDATA[NAME]
        <strong>-</strong>Return the Custom Data Value of the Assembled Item</td>
      <td colSpan={1} className="confluenceTd">Specify custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION - Return the Assembled Item's material description</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALMANUFACTURER- Return the Manufacturer associated to the Assembled Item's scanned MPN</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALNAME- Return the Assembled Item's material name</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MPN - Return the Assembled Item's scanned Manufacturer Part Number</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTBATCH- Return the parent WIP's batch number.</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTCUSTOMERMATERIALNAME
        <strong>-</strong>Return the parent WIP's customer material name</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTMATERIALCUSTOMDATA[NAME]
        <strong>-</strong>Return a custom data's value from the parent WIP</td>
      <td colSpan={1} className="confluenceTd">
        <span>Specify custom data name to return the specific custom data value</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTMATERIALNAME - Return the parent WIP's material name</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTSERIALNUMBER - Return the parent WIP's Serial Number</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTSHOPFLOORORDER
        <strong>-</strong>Return the parent WIP's Shopfloor Order Number. Only valid if parent WIP is associatedto an order.</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PARENTWIPATTRIBUTE[NAME] - Return value of an attribute of the parent WIP.</td>
      <td colSpan={1} className="confluenceTd">
        <span>Specify attribute name to return the specific attribute value</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">SHOPFLOORORDER - ???</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">ASSEMBLED ITEM DATA COLLECTION</td>
      <td colSpan={1} className="confluenceTd">Get assembled item's data collection value directly</td>
      <td colSpan={1} className="confluenceTd">
        <p>Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowSpan={4} className="confluenceTd">ASSEMBLED ITEM UPD
        <br />
        <br />
        <br /></td>
      <td rowSpan={4} className="confluenceTd">GET UPD value of wipand serialized material assembled to a wipby specifying UPD Name
        <br />
        <br />
        <br /></td>
      <td colSpan={1} className="confluenceTd">
        <p>MATERIALDESCRIPTION - Return material description of the assembled item</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALNAME- Return material name of the assembled item</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALSERIAL- Return serial Number of the assembled item</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">UPD - Return UPD value of matching UPD name in thecurrentassembled item</td>
      <td colSpan={1} className="confluenceTd">Specify UPD Name optionally. If none return all UPD values.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">CONSTANTS</td>
      <td colSpan={1} className="confluenceTd">Print a constant value</td>
      <td colSpan={1} className="confluenceTd">Specify the Constant Value to be returned</td>
      <td colSpan={1} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">DATA PROMPT</td>
      <td colSpan={1} className="confluenceTd">Allow user to enter a value when document is triggered to be printed</td>
      <td colSpan={1} className="confluenceTd">Specify the value to be printed when prompted</td>
      <td colSpan={1} className="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM ATTRIBUTE BY CUSTOM DATA AND VALUE</td>
      <td colSpan={1} className="confluenceTd">Get attribute value of peer childwipor serialized materials assembled to the same parent WIP via custom data name and value</td>
      <td colSpan={1} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td rowSpan={4} className="confluenceTd">PEER ASSEMBLED ITEM BY NAME
        <br />
        <br />
        <br /></td>
      <td rowSpan={4} className="confluenceTd">Get information of a peer child wipor serialized material assembled to the same parent WIP
        <br />
        <br />
        <br /></td>
      <td colSpan={1} className="confluenceTd">ITEMIDENTIFIER[NAME] - Return the Serial Number of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of the specific material</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTION[NAME] - return the material description of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
        <span>the</span>specific material</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALNAME[NAME] - return the material name of the target peer.</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
        <span>the</span>specific material</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MPN[NAME] - return the scanned Manufacturer Part Number of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) of
        <span>the</span>specific material</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM CUSTOM DATA BY CUSTOM DATA AND VALUE</td>
      <td colSpan={1} className="confluenceTd">Get custom data value of a peer assembled to the same parent WIP via custom data name and value</td>
      <td colSpan={1} className="confluenceTd">Specify name of the custom data to return the custom data value</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM CUSTOM DATA BY NAME</td>
      <td colSpan={1} className="confluenceTd">Get custom data value of a peer assembled to the same parent WIP via material name and custom data name</td>
      <td colSpan={1} className="confluenceTd">Specify name of the material to find peer(s) of a specific material</td>
      <td colSpan={1} className="confluenceTd">Specify the custom data name to find peer(s) with matching custom data name</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY CUSTOM DATA AND VALUE</td>
      <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via custom data name and value</td>
      <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY FAMILY</td>
      <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via Product Family</td>
      <td colSpan={1} className="confluenceTd">Specify Product Family name to find peer(s) with material in the specific Product Family</td>
      <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEM DATACOLLECTION BY NAME</td>
      <td colSpan={1} className="confluenceTd">Get data collection value of a peer assembled to the same parent WIP via MaterialName</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) with specific material</td>
      <td colSpan={1} className="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">PEER ASSEMBLED ITEMS ATTRIBUTE VALUE</td>
      <td colSpan={1} className="confluenceTd">Get attribute value of peer childwipor serialized materials assembled to the same parent WIP via material name</td>
      <td colSpan={1} className="confluenceTd">Specify material name to find peer(s) with specific material</td>
      <td colSpan={1} className="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
    </tr>
    <tr>
      <td rowSpan={5} className="confluenceTd">PEER ASSEMBLED ITEMS BY CUSTOM DATA AND VALUE</td>
      <td rowSpan={5} className="confluenceTd">Get information of peer(s) assembled to the same parent via custom data name and value</td>
      <td colSpan={1} className="confluenceTd">CRDBYCUSTOMDATA[NAME] - return CRD of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MANUFACTURERPARTNUMBERBYCUSTOMDATA[NAME] - return scanned MPN of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALDESCRIPTIONBYCUSTOMDATA[NAME] - return material description of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALNAMEBYCUSTOMDATA[NAME] - return material name of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">MATERIALSERIALBYCUSTOMDATA[NAME] - return serial number of the target peer</td>
      <td colSpan={1} className="confluenceTd">Specify CustomDataName[CustomDataValue] to find peer(s) with matching custom data name and value.</td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 1169.0px;">
  <tbody>
    <tr>
      <td style="text-align: center;width: 1169.0px;" colspan="4" class="confluenceTd">
        <strong>Document Type:
          <strong>Container</strong>
        </strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" style="width: 145.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,51,102);">Field Type Name</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 277.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 418.0px;" data-highlight-colour="grey"> Value</td>
      <td class="highlight-grey confluenceTd" style="width: 329.0px;" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="5" class="confluenceTd">CONFIGURABLE DELIVERY WIP ITEMS
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 277.0px;" rowspan="5" class="confluenceTd">Get information of Configurable items packed into a container (Delivery Packout) via Product Family
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Product Family name to find materials belonging to the specific Product Family</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return material custom data value of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family name to find materials belonging to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SERIALNUMBER - return serial number of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="6" class="confluenceTd">CONFIGURABLE PACKED DELIVERY ITEMS GROUP BY MATERIAL
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 277.0px;" rowspan="6" class="confluenceTd">Get information of Configurable items packed into a container (Delivery Packout) via Material name
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITY
        <span>- return total quantity of item packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMERMATERIALNAME - return the Customer Material Name of the items packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAME - return the material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SERIALNUMBER - return the serial number of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" class="confluenceTd">CONSTANTS</td>
      <td style="width: 277.0px;" class="confluenceTd">
        <p>
          <span>Print a constant value</span>
        </p>
      </td>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="16" class="confluenceTd">
        <p>CONTAINER ITEMS</p>
      </td>
      <td style="width: 277.0px;" rowspan="16" class="confluenceTd">Get information of items packed in the container</td>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">ASSEMBLYNUMBER</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- return the Assembly Number of the item(s) packed in the container. </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644080.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644080.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="49644080" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-36-33.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assembly Numbers:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Pallet:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="190" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871833" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Box packed with WIP:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" width="701" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871832" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="204" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871834" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-thumbnail" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871836.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871836.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871836" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-22-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span style="color: rgb(0,51,102);">ASSEMBLYDESCRIPTION</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- return the assembly description of item(s) packed in the container. </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to
            <strong>Packout Repetitive</strong>. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Container: 
            <br />
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871987" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-11-25-12.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" /></span>
            <br />
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:
            <br />
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871999.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871999.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871999" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-45-49.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" /></span>
            <br />
          </span>
        </p>
        <p>
          <br />
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to
            <strong>Overpack Repetitive</strong>. System will retrieve the information about current Assembly Description or Material Description using the ID of current Container and a second ID in case of multiple assemblies</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Pallet:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871996.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871996.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871996" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-43-5.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Box packed with WIP:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871997.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871997.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871997" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-44-5.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871998.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871998.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871998" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-44-43.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872002.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872002.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872002" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-48-31.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">ASSEMBLYREVISION - return the Assembly Revision of the item(s) packed in the container. 
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644081.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644081.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="49644081" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-40-19.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" /></span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assembly Revision of assembly number:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Pallet:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="190" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871833" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Box packed with WIP:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" width="701" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871832" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="204" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871834" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,51,102);">Result:</span>
        </p>
        <p>
          <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
            <img class="confluence-embedded-image confluence-thumbnail" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871838.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871838.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871838" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-31-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITY- return total quantity of item packed in the container (In case of overpack are the number of container packed, example box into pallet)</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>MATERIALNAME - return the material name of item(s) packed in the container</p>
        <p>
          <span style="color: rgb(0,51,102);">- Following is applicable to Overpack Repetitive. Print out is referring to the ID of Container packed and another ID for multiple assemblies:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Pallet:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="190" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871833.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871833" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-14-9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Box packed with WIP:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" width="701" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871832.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871832" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-13-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="204" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871834.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871834" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-16-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:</span>
        </p>
        <p>
          <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
            <img class="confluence-embedded-image confluence-thumbnail" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871837.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871837.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871837" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-11-27-0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(0,51,102);">without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYREVISION - With progression, this field will retrieve original Assembly Revision. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYVERSION - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(0,51,102);">without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SERIALNUMBER - return the serial number of item(s) packed in the container. In case of overpack it is the list of container serial number included (example, box serial number into pallet)</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">WIPATTRIBUTE[NAME] - return the WIP attribute of WIP packed in the container. WIP attribute should be uniquely listed. (Value should have no repeat) This is not supported for over packing.</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify WIP Attribute Name to return the value uniquely (Value will show once even though there are many same attribute value from different WIP)</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASMATERIALCUSTOMDATA[NAME] - return the alias material's custom data value of the items packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="6" class="confluenceTd">CONTAINER ITEMS BY FAMILY GROUPED BY MATERIAL</td>
      <td style="width: 277.0px;" rowspan="6" class="confluenceTd">Get information of items packed in the container via Product Family</td>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Product Family to find the items with material that belongs to the specific Product Family</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return the material custom data value of the items packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return the material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Product Family to find the items with material that belongs to the specific Product Family</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return the material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PARENTWIPMATERIALNAMEBYPRODUCTFAMILY[NAME] - return the parent WIP material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PARENTWIPSERIALNUMBERBYPRODUCTFAMILY[NAME] -
        <span>return the parent WIP serial number of item(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="35" class="confluenceTd">CONTAINER PROPERTIES</td>
      <td style="width: 277.0px;" rowspan="35" class="confluenceTd">Get information of the current Container</td>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">ASSEMBLYNUMBER - return the Assembly Number of the item(s) packed in the container. If IsMultiPage is ON, information 
            <span>is repeated on every page if there's only 1 assembly number in the container. If there're multiple assemblies, it will be shown on the page up to the max results then continued on the following page. </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span>
              <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                <img class="confluence-embedded-image confluence-content-image-border" height="548" width="350" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644083.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644083.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="49644083" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-10-25-44.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
              </span>
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span>if multiple version of assembly will show as below:</span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span>
              <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
                <img class="confluence-embedded-image confluence-thumbnail" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871839.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871839.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51871839" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-13-14-19-28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
              </span>
            </span>
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">ASSEMBLYDESCRIPTION</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- return the assembly description of item(s) packed in the container. </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to
            <strong>Packout Repetitive</strong>. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Container: </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-external-resource" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918399/image2019-6-24-11-25-12.png?version=1&modificationDate=1561346712610&api=v2" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:
            <br />
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872000.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872000.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872000" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-46-43.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" /></span>
            <br />
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">- Following is applicable to
            <strong>Overpack Repetitive</strong>. System will retrieve the information about current Assembly Description or Material Description using the ID of current Container and a second ID in case of multiple assemblies</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 5</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Pallet:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872004.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872004.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872004" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-50-40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Box packed with WIP:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872005.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872005.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872005" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-51-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872006.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872006.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872006" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-51-47.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:</span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872007.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872007.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872007" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-52-26.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYREVISION - return the Assembly Revision of the item(s) packed in the container. If IsMultiPage is ON, information 
          <span>is repeated on every page if there's only 1 assembly number in the container. If there're multiple assemblies, it will be shown on the page up to the max results then continued on the following page.</span>
        </span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERATTRIBUTE[NAME] - return container attribute</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify container attribute to return the attribute value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>CONTAINERNUMBER - return container number</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERTYPENAME - return container type name</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>CURRENTRESOURCENAME – return the resource name by current route step it is trigger the label printing (not in queue step)</p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CURRENTROUTESTEPID – return the ID of the route step it is trigger the label printing.</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CURRENTROUTESTEP - return the route step it is trigger the label printing. (Rename from ROUTESTEP, require manually change to CURRENTROUTESTEP)</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMDATA[NAME] - return custom data value of a container custom data</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify custom data name to return specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">DELIVERYNUMBER - return the Delivery Order number that the container is associated to</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIAL - return the material(s) packed in the container. 
        <span style="color: rgb(0,0,0);">If IsMultiPage is ON, information 
          <span>is repeated on every page if there's only 1 type of material in the container. If there're multiple materials, it will be shown on the page up to the max results then continued on the following page.</span>
        </span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYREVISION - With progression, this field will retrieve original Assembly Revision. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYVERSION - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PACKDATE- return the date the Container is packed</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PACKEDITEMS - return total quantity of items packed in the Container. If Overpack is the number of containers included.</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PACKEDWIPITEMS - return total WIP quantity of Box/Pallet.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PRODUCTIONORDER - return the Production Order Number that the container is associated to</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PURCHASEORDER - return the Purchase Order Number that the container is associated to</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SALESORDER - return the Sales Order Number that the container is associated to</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SHIPTOPURCHASEORDER - return the Purchase Order Number of a Ship To Party that the container is associated to</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return the material description of the item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">TOPLEVELMATERIALNAME - return the material name of the item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">TOPLEVELWIPSERIAL - return the serial number of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMERNAME - Return customer name</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">DIVISIONNAME - Return division name</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">RMA - Return "1" if there is RMA WIP in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BOXCREATION - return the
        <span style="color: rgb(0,0,0);">"</span>
        <span style="color: rgb(0,0,0);">Created On"</span>
        <span style="color: rgb(0,0,0);">
          <span> date </span>from Container View screen</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>PACKSHIFTCODE - return the shift name from shift maintenance</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>PACKSHIFTDATE - return the
          <span style="color: rgb(0,0,0);">"</span>
          <span style="color: rgb(0,0,0);">Created On"</span>
          <span style="color: rgb(0,0,0);">
            <span> date </span>from Container View screen but will cross check with shift maintenance start time and start date. If cross date, PACKSHIFTDATE will return of shift date started</span>
        </span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" class="confluenceTd">DATA PROMPT</td>
      <td style="width: 277.0px;" class="confluenceTd">
        <p>
          <span>Allows users to manually enter or select when triggering document printing</span>
        </p>
      </td>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span>Specify the value to be printed when prompted</span>
        </p>
        <p>
          <span>04.20：</span>
        </p>
        <p>
          <span>1.Validation no configure , Allow user to enter a value when document is triggered to be printed</span>
        </p>
        <p>
          <span>
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770819.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770819.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="113770819" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-20-9-52-38.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
            <br />2.Validation configure calender ,Allow user to Choose enter a value when document is triggered to be printed.</span>
        </p>
        <p>
          <span>
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770820.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/113770820.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="113770820" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-20-9-53-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="14" class="confluenceTd">
        <span>DATECODE</span>
      </td>
      <td style="width: 277.0px;" rowspan="14" class="confluenceTd">
        <span>Get current datecode in various format.</span>
      </td>
      <td style="width: 418.0px;" class="confluenceTd">
        <p>
          <span>yyyy - 4 digits year</span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>qq - 1 digit quarter.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>mm - 2 digits month.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>dy - 3 digits day of year</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>dd - 2 digits day of month</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ww - 2 digits workweek number. Starting on a Sunday and Jan 1</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>dw - 1 digit day of week</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>hh - 2 digits hour. 24 hours format</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>mi - 2 digits minute</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ss - 2 digits second</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ms - 3 digits milisecond</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>yy - 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>y - 1 digit year. The right most digit. E.g. 2016 = 6</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>yyyymmdd - 8 digits iso calendar date</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="4" class="confluenceTd">DELIVERY ITEMS BY FAMILY GROUPED BY MATERIAL</td>
      <td style="width: 277.0px;" rowspan="4" class="confluenceTd">Get information of delivery items packed in the current Container</td>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITYBYPRODUCTFAMILY[NAME] - return total quantity of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATABYPRODUCTFAMILY[NAME] - return material custom data value of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify custom data name to return specific custom data value</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify Product Family to find the items with material that belongs to the specific Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="5" class="confluenceTd">PACKED DELIVERY ITEMS GROUP BY MATERIAL</td>
      <td style="width: 277.0px;" rowspan="5" class="confluenceTd">Get information of Items packed in the current container (DeliveryPackout)</td>
      <td style="width: 418.0px;" class="confluenceTd">CONTAINERITEMQUANTITY
        <span>- return total quantity of item(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMERMATERIALNAME - return the customer material name of item(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATA[NAME]
        <span>- return material custom data value of item(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify custom data name to return specific custom data value</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTION
        <span>- return material description of item(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAME
        <span>- return material name of item(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="11" class="confluenceTd">PRODUCTION ORDER HEADER</td>
      <td style="width: 277.0px;" rowspan="11" class="confluenceTd">Get information of the Production Order that the current Container is associated to</td>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMER - return customer name of the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">CUSTOMERALIAS - return customer alias of the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">DIVISION - return the Division name of the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PRODUCTIONORDER - return the Production Order Number</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - return the attribute value of the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Attribute name to return specify Attribute value</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PURCHASEORDER - return the Purchased Order Number</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">QUANTITY - return
        <span>quantity of</span>
        <span>the Production Order</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SALESORDER - return the Sales Order Number</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SHIPTOPURCHASEORDER - return the Purchased Order of the Ship To Party</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return the top level material description in the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">TOPLEVELMATERIALNAME - return the top level material name in the Production Order</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="9" class="confluenceTd">SYSTEM PROPERTIES</td>
      <td style="width: 277.0px;" rowspan="9" class="confluenceTd">
        <span>Get information of system and application state</span>
      </td>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>GLOBALSITEID</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ISOCOUNTRYCODE2</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ISOCOUNTRYCODE3</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ISOCOUNTRYNAME</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>ISOCOUNTRYNUMBER</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>REGION</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>SITEID</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>SITENAME</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>USER</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="18" class="confluenceTd">WIP CONTAINER ITEMS</td>
      <td style="width: 277.0px;" rowspan="18" class="confluenceTd">Get information of WIPs that are packed in the current Container</td>
      <td style="width: 418.0px;" class="confluenceTd">ALTERNATEWIPIDENTIFIER[NAME] - return alternate serial number of WIP(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify Alternate name to return specific alternate serial number</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <p style="text-align: left;">
          <span style="color: rgb(0,0,0);">ASSEMBLYDESCRIPTION</span>
        </p>
        <p style="text-align: left;">
          <span style="color: rgb(0,0,0);">- return the assembly description of item(s) packed in the container. </span>
        </p>
        <p style="text-align: left;">
          <span style="color: rgb(0,0,0);">- Following is applicable to Packout Repetitive. System will retrieve the information about current Assembly Description using the same ID of the related WIP</span>
        </p>
        <p style="text-align: left;">
          <span style="color: rgb(0,0,0);">e.g. Following example should be turned on the "IsMultiPage" and set the "Max Results" to be 3</span>
        </p>
        <p style="text-align: left;">
          <span style="color: rgb(0,0,0);">Container:</span>
        </p>
        <p>
          <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
            <img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51871987.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29918399/image2019-6-24-11-25-12.png?version=1&modificationDate=1561346712610&api=v2" />
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">Result:</span>
        </p>
        <p>
          <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
            <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872001.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/51872001.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="51872001" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-6-24-14-47-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
          </span>
        </p>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYNUMBER - return the Assembly Number of WIP(s) packed in the container. 
          <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
            <img class="confluence-embedded-image confluence-thumbnail confluence-content-image-border" width="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644082.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49644082.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="49644082" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-29-9-49-52.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" /></span>
        </span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYREVISION - return the Assembly Revision of WIP(s) packed in the container. </span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALCUSTOMDATA[NAME] -
        <span>return material custom data value of WIP(s) packed in the container</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify custom data name to return specific custom data value</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALDESCRIPTION - return material description of WIP(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">MATERIALNAME - return material name of WIP(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYREVISION - With progression, this field will retrieve original Assembly Revision. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ORIGINALASSEMBLYVERSION - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SERIALNUMBER - return serial number of WIP(s) packed in the container. This is valid also for overpack.</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">SHOPFLOORORDER - return Shop Floor Order Number of WIP(s) packed in the container</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span>WIPATTRIBUTEBYSERIAL[NAME] - return all the WIP attribute of the WIP packed in the container. This is not supported for over packing.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify WIP Attribute Name to return the WIP attribute value associated</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">PRODUCTFAMILY - return product family name of WIP(s) packed in the container.</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASMATERIALCUSTOMDATA[NAME] - return the alias material's custom data value of the items packed in the container.</span>
      </td>
      <td style="width: 329.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 145.0px;" rowspan="4" class="confluenceTd">WIP CONTAINER ITEMS UPD</td>
      <td style="width: 277.0px;" rowspan="4" class="confluenceTd">Get UPD value ofchildwip/wipand serialized materials assembled in packedwippacked in the current Container via UPD name</td>
      <td style="width: 418.0px;" class="confluenceTd">[MATERIALDESCRIPTION] - return material description of the item with UPD</td>
      <td style="width: 329.0px;" class="confluenceTd">Specify UPD name to find the item with specific UPD associated</td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">[MATERIALNAME] - return material name of the item with UPD</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify UPD name to find the item with specific UPD associated</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">[MATERIALSERIAL] - return material name of the item with UPD</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify UPD name to find the item with specific UPD associated</span>
      </td>
    </tr>
    <tr>
      <td style="width: 418.0px;" class="confluenceTd">[UPDVALUE] - return UPD value of the item with UPD</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Specify UPD name to find the item with specific UPD associated</span>
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <th class="confluenceTh">
        <div class="content-wrapper">
          <p class="auto-cursor-target">2022.04 New features：</p>
          <p class="auto-cursor-target">Reprint labels in the same pas file for document type [Conainer] when the operator reprints 2 or more labels in Document Reprint. </p>
          <p class="auto-cursor-target">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920839.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920839.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110920839" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-46-11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </p>
          <p class="auto-cursor-target">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920840.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920840.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110920840" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-47-6.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </p>
        </div>
      </th>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 1416.0px;">
  <tbody>
    <tr>
      <td style="text-align: center;width: 1416.0px;" colspan="4" class="confluenceTd">
        <strong>Document Type: Generic</strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" style="width: 250.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Document Field Type</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 499.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 525.0px;" data-highlight-colour="grey">Value</td>
      <td class="highlight-grey confluenceTd" style="width: 142.0px;" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td style="width: 250.0px;" rowspan="16" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYREVISION PROPERTIES</span>
      </td>
      <td style="width: 499.0px;" rowspan="16" class="confluenceTd">Get information associated to the AssemblyRevision</td>
      <td style="width: 525.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASASSEMBLYNUMBER - return Alias Assembly Number converted from the base/production Assembly</span>
      </td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASASSEMBLYREVISION - return Alias Assembly Revision converted from the base/production Assembly</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASASSEMBLYVERSION - return Alias Assembly Version converted from the base/production Assembly</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASMATERIALCUSTOMDATA[NAME] - return the custom data value of the alias assembly's material custom data.</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ALIASMATERIALNAME - return material name of the alias assembly</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">ASSEMBLYNUMBER - return assembly number</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">ASSEMBLYREVISION - return assemble revision</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">ASSEMBLYVERSION - return assembly version</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">CUSTOMER - return customer of the assembly</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">CUSTOMERNUMBER - return customer part number of the assembly</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">CUSTOMERREVISION - return customer revision of the material</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">DESCRIPTION - return description of the assembly</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">DIVISION - return division of the assembly</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the custom data value of the assembly's material custom data. Specify the custom data name to return the specific custom data value.</td>
      <td colspan="1" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">MATERIALNAME - return material name of the assembly</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 525.0px;" class="confluenceTd">PRODUCTFAMILY - return Product Family of the assembly's material</td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 250.0px;" class="confluenceTd">CONSTANTS</td>
      <td style="width: 499.0px;" class="confluenceTd">Print a constant value</td>
      <td style="width: 525.0px;" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 250.0px;" class="confluenceTd">DATA PROMPT</td>
      <td style="width: 499.0px;" class="confluenceTd">
        <p>
          <span>Allow user to enter a value when document is triggered</span>
          <span>to be printed</span>
        </p>
      </td>
      <td style="width: 525.0px;" class="confluenceTd">
        <span>Specify the value to be printed when prompted</span>
      </td>
      <td style="width: 142.0px;" class="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td style="width: 250.0px;" class="confluenceTd">
        <span style="color: rgb(51,51,51);">NEXT NUMBER</span>
      </td>
      <td style="width: 499.0px;" class="confluenceTd">Allow user to select a Next Number name</td>
      <td style="width: 525.0px;" class="confluenceTd">
        <span style="color: rgb(51,51,51);">Select the Next Number from a list of all the available Next Number name for WIP/Material Serial Number and Material Carrier next number types.</span>
      </td>
      <td style="width: 142.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 1370.0px;">
  <tbody>
    <tr>
      <td style="text-align: center;width: 1370.0px;" colspan="4" class="confluenceTd">
        <strong>Document Type: GRN</strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" style="width: 226.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Document Field Type</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 342.0px;" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 674.0px;" data-highlight-colour="grey">Value</td>
      <td class="highlight-grey confluenceTd" style="width: 128.0px;" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td style="width: 226.0px;" class="confluenceTd">SYSTEM PROPERTIES</td>
      <td style="width: 342.0px;" class="confluenceTd">
        <p>Get information of system and application state</p>
      </td>
      <td style="width: 674.0px;" class="confluenceTd">Refer to System Properties of Document Type: Container</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 226.0px;" rowspan="15" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">GRN PROPERTIES</span>
        </p>
        <p>
          <br />
        </p>
      </td>
      <td style="width: 342.0px;" rowspan="15" class="confluenceTd">Get information associated on the GRN. Document to configure in the Material Maintenance for GRN label print out according to Part Number.</td>
      <td style="width: 674.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">DateCode - return Date Code retrieved from the GRN</span>
      </td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">GRNNumber - return GRN Number</span>
      </td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">GRNPrefix – return prefix of this GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">IsTSMMaterial – return is this GRN belong to MSD type</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">
        <span style="color: rgb(0,51,102);">LotCode - return Lot Code retrieved from the GRN</span>
      </td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">MoistureClassification – return moisture classification (exposure level) if this is MSD GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">MSDBagStatus – return bag status if this is MSD GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">MSDRemainingTime – return remaining time if this is MSD GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">PartDescription – return part description of this GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">PartNumber - return Part Number of the GRN</span>
      </td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">Quantity - return the number of quantity of the GRN</td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 674.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">VendorCode - return Vendor Code retrieved from the GRN</span>
      </td>
      <td style="width: 128.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>
          <span style="color: black;">Operation - 
            <span style="color: rgb(0,0,0);">return which one is operating this GRN action </span>
          </span>
        </p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>
          <span style="color: black;">SplitFrom - 
            <span style="color: rgb(0,0,0);">return this GRN split from which GRN</span>
          </span>
        </p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: black;">ValidationCode - 
          <span style="color: rgb(0,0,0);">return a random code for "Open Bag" validation</span>
        </span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 865.0px;">
  <tbody>
    <tr>
      <td style="text-align: center;width: 865.0px;" colspan="4" class="confluenceTd">
        <strong>
          <span style="color: rgb(0,0,0);">Document Type : MSD</span>
        </strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" style="width: 151.0px;" title="Background colour : Grey" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);" title="">Document Field Type</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 266.0px;" title="Background colour : Grey" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);" title="">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" style="width: 321.0px;" title="Background colour : Grey" data-highlight-colour="grey">Value</td>
      <td class="highlight-grey confluenceTd" style="width: 127.0px;" title="Background colour : Grey" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td style="width: 151.0px;" class="confluenceTd">GRN PROPERTIES</td>
      <td style="width: 266.0px;" class="confluenceTd">Get information associated on the GRN.</td>
      <td style="width: 321.0px;" class="confluenceTd">
        <p>Refer to GRN Properties of Document Type: GRN</p>
      </td>
      <td style="width: 127.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 151.0px;" rowspan="4" class="confluenceTd">MSD BAG OPERATING PROPERTIES</td>
      <td style="width: 266.0px;" rowspan="4" class="confluenceTd">Get information associated on the MSD GRN bag status change operation.</td>
      <td style="width: 321.0px;" class="confluenceTd">BAG CLOSE DATETIME - return date and time when MSD GRN bag close.</td>
      <td style="width: 127.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BAG OPEN DATETIME - return date and time when MSD GRN bag open.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">INSIDE DRYBOX DATETIME – return date and time when MSD GRN put inside dry box.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">OUTSIDE DRYBOX DATETIME – return date and time when MSD GRN take outside dry box.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 151.0px;" rowspan="3" class="confluenceTd">MSD BAKE OPERATING PROPERTIES</td>
      <td style="width: 266.0px;" rowspan="3" class="confluenceTd">Get information associated on the MSD GRN bake operation.</td>
      <td style="width: 321.0px;" class="confluenceTd">BAKE IN DATETIME - return date and time when MSD GRN bake in.</td>
      <td style="width: 127.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 321.0px;" class="confluenceTd">BAKE OUT DATETIME - return date and time when MSD GRN bake out.</td>
      <td style="width: 127.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BAKE TEMPERATURE – return set temperature when MSD GRN in bake process.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SYSTEM PROPERTIES</td>
      <td colspan="1" class="confluenceTd">Get information of system and application state</td>
      <td colspan="1" class="confluenceTd">Refer to System Properties of Document Type: Container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <td style="text-align: center;" colspan="4" class="confluenceTd">
        <strong>Document Type:
          <strong>Order</strong>
        </strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Document Field Type</span>
      </td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"> Value</td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CONSTANTS</td>
      <td colspan="1" class="confluenceTd">
        <span>Print a constant value</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DATA PROMPT</td>
      <td colspan="1" class="confluenceTd">
        <span>Allow user to enter a value when document is triggered to be printed</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Specify the value to be printed when prompted</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td rowspan="34" class="confluenceTd">DELIVERY HEADER</td>
      <td rowspan="34" class="confluenceTd">Get header information of the current Delivery Order</td>
      <td colspan="1" class="confluenceTd">CUSTOMERORDER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DELIVERYDATE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DELIVERYNUMBER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PURCHASEORDER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCITY</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCONTACTLINE1</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCONTACTLINE2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCONTACTLINE3</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCONTACTNAME</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCOUNTRY</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCOUNTRY2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTODISTRICT</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOPARTNERNUMBER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOPOSTCODE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOREGION</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOSTREET1</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOSTREET2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOSTREET3</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOSTREET4</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCITY</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCONTACTLINE1</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCONTACTLINE2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCONTACTLINE3</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCONTACTNAME</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCOUNTRY</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOCOUNTRY2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTODISTRICT</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOPARTNERNUMBER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOPOSTCODE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOREGION</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOSTREET1</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOSTREET2</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOSTREET3</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SOLDTOSTREET4</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="8" class="confluenceTd">DELIVERY LINE ITEMS</td>
      <td rowspan="8" class="confluenceTd">Get information of Delivery Line Items in the current Delivery Order</td>
      <td colspan="1" class="confluenceTd">CUSTOMERORDERITEMCATEGORY - return Item Category of Customer Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CUSTOMERORDERITEMNUMBER - return Item Number of Customer Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CUSTOMERORDERPARENTITEMNUMBER - return Parent Item Number of Customer Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DELIVERYITEMNUMBER - return Delivery Item number of the Delivery</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DELIVERYITEMQUANTITY - return total quantity of Delivery Item in the Delivery</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALDESCRIPTION - return material description of the item(s) in the Delivery</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALNAME - return material name of the item(s) in the Delivery</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PURCHASEORDERITEMNUMBER - return Purchase Order Item Number of the Delivery</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="12" class="confluenceTd">ORDER PROPERTIES</td>
      <td rowspan="12" class="confluenceTd">Get properties of the current Order</td>
      <td colspan="1" class="confluenceTd">ATTRIBUTE[NAME] - return the order attribute value</td>
      <td colspan="1" class="confluenceTd">Specify the Attribute name to return specific Attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BILLTOCONTACTNAME - return the bill to contact name</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BILLTOCUSTOMER - return the bill to customer</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">COUNTRYOFORIGIN - return the Country of Origin of the order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DELIVERYNUMBER - return the Delivery Number of the order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DUEDATE - return the scheduled end date of the order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTIONORDER - return the Production Order number</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SALESORDER - return the Sales Order number</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCONTACTNAME - return theShip Tocontact name</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOCUSTOMER - return the Ship To Customer</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>TOPLEVELMATERIALDESCRIPTION - return the top level material description of the order</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TOPLEVELMATERIALNAME - return the top level material name of the order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="52" class="confluenceTd">PACKED DELIVERY ITEMS</td>
      <td rowspan="52" class="confluenceTd">Get information of a Items packed into a delivery (Deliverypackout)</td>
      <td colspan="1" class="confluenceTd">BILLTOCITY - return Customer Order Bill To City</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCONTACTLINE1 - return Customer Order Bill To Contact Line 1</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCONTACTLINE2</span>
        <span>- return Customer Order Bill To Contact Line 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCONTACTLINE3</span>
        <span>- return Customer Order Bill To Contact Line 3</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCONTACTNAME</span>
        <span>- return Customer Order Bill To Contact Name</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCOUNTRY</span>
        <span>- return Customer Order Bill To Country</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCOUNTRY2</span>
        <span>- return Customer Order Bill To Country 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOCOUNTRYFORMALNAME</span>
        <span>- return Formal Customer Order Bill To Country</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTODISTRICT - return Customer Order Bill To District</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOPARTNERNUMBER - return Customer ORder Bill To Partner Number</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOPOSTCODE - return Customer Order Bill To Postcode</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOREGION - return Customer Order Bill To Region</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOSTREET1 - return Customer Order Bill To Street 1</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOSTREET2</span>
        <span>- return Customer Order Bill To Street 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOSTREET3</span>
        <span>- return Customer Order Bill To Street 3</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>BILLTOSTREET4</span>
        <span>- return Customer Order Bill To Street 4</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CONTAINERCUSTOMDATA[NAME] - return container custom data value of the Containers in the current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CONTAINERID - return container id(s) in current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CUSTOMERORDER - return Customer Order number</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CUSTOMERORDERITEMATTRIBUTE[NAME] - return Attribute value of Customer Order</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify Attribute name to return the specific Attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CUSTOMERORDERITEMNUMBER - return Customer Order item number of current delivery</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CUSTOMERORDERPARENTITEMNUMBER - return Customer Order Parent Item Number of current delivery</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>DELIVERYDATE - return delivery date</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>DELIVERYITEMNUMBER - return Delivery item number</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>DELIVERYITEMQUANTITY - return total quantity for current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>DELIVERYNUMBER - return Delivery Number for current delivery</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>MATERIALCUSTOMDATA[NAME] - return material custom data value of items in current Delivery</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>MATERIALDESCRIPTION - return material description of current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>MATERIALNAME - return material name of current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>MATERIALSERIAL - return serial number of current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>PURCHASEORDER - return Purchase Order Number of current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SERIALIZEDMATERIALATTRIBUTE[NAME] - return Attribute value of Serialized Material packed in current delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify Attribute Name to return specific Attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCITY - return Customer Order Ship To City</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCONTACTLINE1 - return Customer Order Ship To Contact Line 1</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCONTACTLINE2</span>
        <span>- return Customer Order Ship To Contact Line 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCONTACTLINE3</span>
        <span>- return Customer Order Ship To Contact Line 3</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCONTACTNAME - return Customer Order Ship To Contact Name</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCOUNTRY - return Customer Order Ship To Country</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCOUNTRY2</span>
        <span>- return Customer Order Ship To Country 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOCOUNTRYFORMALNAME</span>
        <span>- return formal Customer Order Ship To Country</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTODISTRICT - return Customer Order Ship To District</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOPARTNERNUMBER - return Customer Order Ship To Partner Number</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOPOSTCODE - return Customer Order Ship To Postcode</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOREGION- return Customer Order Ship To Region</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOSTREET1 - return Customer Order Ship To Street 1</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOSTREET2</span>
        <span>- return Customer Order Ship To Street 2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOSTREET3</span>
        <span>- return Customer Order Ship To Street 3</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>SHIPTOSTREET4</span>
        <span>- return Customer Order Ship To Street 4</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>TOPLEVELMATERIALDESCRIPTION - return top level material description in the delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>TOPLEVELMATERIALNAME - return top level material name in the delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>TOPLEVELMATERIALSERIAL - return top level material serial number in the delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>WIPATTRIBUTE[NAME] - return Attribute value of the WIP in the delivery item</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify Attribute name to return specific Attribute value</td>
    </tr>
    <tr>
      <td rowspan="11" class="confluenceTd">PRODUCTION ORDER HEADER</td>
      <td rowspan="11" class="confluenceTd">Get header information for current Production Order</td>
      <td colspan="1" class="confluenceTd">CUSTOMER - return Production Order customer</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CUSTOMERALIAS - return Production Order customer alias</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DIVISION - return Production Order Division</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTIONORDER - return Production Order Number</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - returnAttribtevalue of Production Order</td>
      <td colspan="1" class="confluenceTd">Specify Attribute name to return specific Attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PURCHASEORDER - return Purchase Order Number of Production Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">QUANTITY - return Production Order quantity</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SALESORDER - return Sales Order of Production Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPTOPURCHASEORDER - return Ship To Purchased Order Number</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TOPLEVELMATERIALDESCRIPTION - return description of top level material in Production Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TOPLEVELMATERIALNAME - return name of top level material in Production Order</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">QLMS PROPERTIES</td>
      <td colspan="1" class="confluenceTd">
        <span>Get information of QLMS Properties</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>WorkOrderID - Return  Work Order ID </p>
        <p>Route - Return associate Route details. If not configured, display NA</p>
        <p>Route Step - Return associate Route Step details. If not configured, display NA</p>
        <p>Production Equipment Type - Return associated production equipment type details</p>
        <p>Production Machine ID - Return associated production machine ID details</p>
        <p>Mold ID/Tooling ID -Return associated Mold ID/Tooling ID details</p>
        <p>Cavity -Return associated cavity details</p>
        <p>Sample Number - Return associated sample number details</p>
        <p>Serial Number -Return associated serial number details</p>
        <p>Item Number -Return associated item number details</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SYSTEM PROPERTIES</td>
      <td colspan="1" class="confluenceTd">
        <span>Get information of system and application state</span>
      </td>
      <td colspan="1" class="confluenceTd">Refer to System Properties of Document Type: Container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <td style="text-align: center;" colspan="4" class="confluenceTd">
        <strong>Document Type:
          <span style="color: rgb(45,46,47);">SerializedMaterial</span>
        </strong>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Document Field Type</span>
      </td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">
        <span style="color: rgb(0,0,0);">Description</span>
      </td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"> Value</td>
      <td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Contingent Value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CONSTANTS</td>
      <td colspan="1" class="confluenceTd">
        <span>Print a constant value</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DATA PROMPT</td>
      <td colspan="1" class="confluenceTd">
        <span>Allow user to enter a value when document is triggered to be printed</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Specify the value to be printed when prompted</span>
      </td>
      <td colspan="1" class="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DATECODE</td>
      <td colspan="1" class="confluenceTd">
        <span>Get current datecode in various format.</span>
      </td>
      <td colspan="1" class="confluenceTd">Refer to DATECODE in Document Type: Container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SERIALIZED MATERIAL DATACOLLECTION</td>
      <td colspan="1" class="confluenceTd">
        <span>Get Serialized Material's data collection value</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>
          <br />
        </p>
        <p>
          <br />
        </p>
      </td>
    </tr>
    <tr>
      <td rowspan="6" class="confluenceTd">SERIALIZED MATERIAL PROPERTIES
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td rowspan="6" class="confluenceTd">Get information of current Serialized Material
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td colspan="1" class="confluenceTd">BIRTHDATE - return Serialized Material created on date</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CUSTOMER - return customer of the Serialized Material</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALDESCRIPTION - return material description of the Serialized Material</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALNAME - return material name of the Serialized Material</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SERIALIZEDMATERIALATTRIBUTE[NAME] - return Attribute value of the Serialized Material</td>
      <td colspan="1" class="confluenceTd">Specify Attribute Name to return specific Attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SERIALNUMBER - return Serial Number of Serialized Material</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SYSTEM PROPERTIES</td>
      <td colspan="1" class="confluenceTd">
        <span>Get information of system and application state</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span>Refer to System Properties of Document Type: Container</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table><table class="wrapped confluenceTable" style="width: 694.0px;">
  <tbody>
    <tr>
      <td style="width: 694.0px;text-align: center;" colspan="5" class="confluenceTd">
        <strong>Document Type: SuperLot</strong>
      </td>
    </tr>
    <tr>
      <th style="width: 167.0px;" class="confluenceTh">
        <span style="color: rgb(0,0,0);">Document Field Type</span>
      </th>
      <th style="width: 237.0px;" class="confluenceTh">
        <span style="color: rgb(0,0,0);">Description</span>
      </th>
      <th style="width: 156.0px;" colspan="2" class="confluenceTh"> Value</th>
      <th style="width: 134.0px;" class="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td style="width: 167.0px;" rowspan="9" class="confluenceTd">
        <span style="color: rgb(34,34,34);">SUPER LOT PROPERTIES</span>
      </td>
      <td style="width: 237.0px;" rowspan="9" class="confluenceTd">Get properties of current Super Lot</td>
      <td style="width: 156.0px;" colspan="2" class="confluenceTd">
        <p>
          <span style="color: rgb(0,0,0);">ASSEMBLYNUMBER - return assembly number </span>
          <span style="color: rgb(0,0,0);">of the Super Lot                </span>
        </p>
      </td>
      <td style="width: 134.0px;margin-left: 180.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYREVISION - return assembly revision of the Super Lot</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">
        <span style="color: rgb(0,0,0);">ASSEMBLYVERSION - return assembly version of the Super Lot</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">
        <span style="color: rgb(0,0,0);">SUPERLOTQUANTITY - return quantity of the Super Lot</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">
        <span style="color: rgb(0,0,0);">SUPERLOTSERIALNUMBER - return serial number of the Super Lot</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return material custom data value</td>
      <td colspan="1" class="confluenceTd">Specify custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">MATERIALDESCRIPTION - return material description</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">MATERIALNAME - return material name of the superlot</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">WORKORDERNUMBER - return work order number of the superlot</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">CONSTANTS</td>
      <td class="confluenceTd">Print a constant value</td>
      <td colspan="2" class="confluenceTd">Specify the Constant Value to be returned</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 1169.0px;">
  <tbody>
    <tr>
      <td style="width: 1169.0px;text-align: center;" colspan="4" class="confluenceTd">
        <strong>Document Type: WIP</strong>
      </td>
    </tr>
    <tr>
      <th style="width: 202.0px;" class="confluenceTh">
        <span>Field Type Name</span>
      </th>
      <th style="width: 329.0px;" class="confluenceTh">Description</th>
      <th style="width: 375.0px;" class="confluenceTh"> Value</th>
      <th style="width: 263.0px;" class="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">ASSEMBLED ITEM ATTRIBUTE BY CUSTOM DATA AND VALUE</td>
      <td style="width: 329.0px;" class="confluenceTd">Get attribute value of childwipor serialized material assembled to the current WIP via custom data name and value</td>
      <td style="width: 375.0px;" class="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">ASSEMBLED ITEM ATTRIBUTE BY NAME</td>
      <td style="width: 329.0px;" class="confluenceTd">Get attribute value of childwipor serialized material assembled to the current WIP via material name</td>
      <td style="width: 375.0px;" class="confluenceTd">Specify WIP Attribute Name to return the WIP Attribute Value</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify material name to find child assembled item(s) of the specific material.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">ASSEMBLED ITEM CUSTOM DATA BY CUSTOM DATA AND VALUE</td>
      <td style="width: 329.0px;" class="confluenceTd">Get custom data value ofassembled-itemsassembled to the current WIP via custom data name and value</td>
      <td style="width: 375.0px;" class="confluenceTd">Specify name of the custom data to return the custom data value</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">ASSEMBLED ITEM DATACOLLECTION BY CUSTOM DATA AND VALUE</td>
      <td style="width: 329.0px;" class="confluenceTd">Get data collection value ofassembled-itemsassembled to the current WIP via custom data name and value</td>
      <td style="width: 375.0px;" class="confluenceTd">Specify DataCollectionName[DataLabel] to return data collection value with the matching Data Collection name and Data Label name. Use * if DataCollectionName is unknown.</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="8" class="confluenceTd">ASSEMBLED ITEMS BY CUSTOM DATA AND VALUE
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="8" class="confluenceTd">Get information of assembled-itemsassembled to the current WIP via custom data name and value
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 375.0px;" class="confluenceTd">ASSEMBLEDDATEBYCUSTOMDATA[NAME] - return thedatetimewhen theassembled-itemwas assembled.</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CRDBYCUSTOMDATA[NAME] - return the CRD of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMERMATERIALNAMEBYCUSTOMDATA[NAME] - returncusotmermaterial name of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MANUFACTURERPARTNUMBERBYCUSTOMDATA[NAME] - return the scanned MPN of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTIONBYCUSTOMDATA[NAME] - returnmaterialdescription of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALMANUFACTURERBYCUSTOMDATA[NAME] - return manufacturer of the scanned MPN of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAMEBYCUSTOMDATA[NAME] - return themateralname of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALSERIALBYCUSTOMDATA[NAME] - return the serial number of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify CustomDataName[CustomDataValue] to find child assembled item(s) with matching custom data name and value.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="4" class="confluenceTd">ASSEMBLED ITEMS UPD
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="4" class="confluenceTd">Get UPDvalue of child wipand serialized materials assembled to the current WIP via UPD name. Child assembled items of all levels are retrieve recursively.
        <br />
        <br />
        <br /></td>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION - Return material description of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME- Return material name of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALSERIAL- Return serial Number of the assembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">UPD - Return UPD value of matching UPD name in thecurrentassembled item</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify UPD name to find child items with matching UPD associated to it</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="13" class="confluenceTd">ASSEMBLYREVISION PROPERTIES
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="13" class="confluenceTd">
        <p>Get information associated to the AssemblyRevision of the current WIP</p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">ASSEMBLYNUMBER - return assembly number of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ASSEMBLYREVISION - return assemble revision of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ASSEMBLYVERSION - return assembly version of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMER - return customer of the WIP assembly</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMERNUMBER - return customer part number of the WIP assembly</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMERREVISION - return customer revision of the WIP material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">DESCRIPTION - return description of the WIP assembly</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">DIVISION - return division of the WIP assembly</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME - return material name of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">ORIGINALASSEMBLYNUMBER - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYNUMBER and ORIGINALASSEMBLYNUMBER will have same value.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">ORIGINALASSEMBLYREVISION - With progression, this field will retrieve original Assembly Revision. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYREVISION and ORIGINALASSEMBLYREVISION will have same value.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">ORIGINALASSEMBLYVERSION - With progression, this field will retrieve original Assembly Number. Whereas, 
        <span style="color: rgb(32,31,30);">without progression ASSEMBLYVERSION and ORIGINALASSEMBLYVERSION will have same value.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PRODUCTFAMILY - return Product Family of the WIP material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">CONSTANTS</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Print a constant value</span>
      </td>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">DATA PROMPT</td>
      <td style="width: 329.0px;" class="confluenceTd">
        <span>Allow user to enter a value when document is triggered to be printed</span>
      </td>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>Specify the value to be printed when prompted</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">Specify Validation Mask. It can validate the prompt value which user input.</td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="14" class="confluenceTd">DATECODE
        <span>DATACOLLECTION</span>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 329.0px;" rowspan="14" class="confluenceTd">
        <p>Get currentdatecodein various format.</p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">
        <p>yyyy = 4 digits year.</p>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>qq = 1 digit quarter.</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>mm = 2 digits month.</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>dy = 3 digits day of year</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>dd = 2 digits day of month</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>ww = 2 digits workweek number. Starting on a Sunday and Jan 1</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>dw = 1 digit day of week</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>hh = 2 digits hour. 24 hours format</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>mi = 2 digits minute</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>ss = 2 digits second</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>ms = 3 digits milisecond</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>yy = 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>y = 1 digit year. The right most digit. E.g. 2016 = 6</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span>yyyymmdd = 8 digits iso calendar date</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="3" class="confluenceTd">SERIALIZED ASSEMBLED ITEMS
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="3" class="confluenceTd">Get information of Serialized Assembled Items in current WIP
        <br />
        <br /></td>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION - return material description of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME - return material name of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALSERIAL - return serial number of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="3" class="confluenceTd">SERIALIZED ASSEMBLED ITEMS BY FAMILY
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="3" class="confluenceTd">
        <p>
          <span>Get information of Serialized Assembled Items in current WIP via Product Family</span>
        </p>
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTIONBYPRODUCTFAMILY[NAME] - return material description of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify Product Family
        <span>name</span>
        <span>to find assembled items with material that belongs to those Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAMEBYPRODUCTFAMILY[NAME] - return material name of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <span>Specify Product Family name to find assembled items with material that belongs to those Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALSERIALBYPRODUCTFAMILY[NAME] - return serial number of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <span>Specify Product Family</span>
        <span>name</span>
        <span>to find assembled items with material that belongs to those Product Family</span>
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="3" class="confluenceTd">SERIALIZED ASSEMBLED ITEMS BY NAME
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="3" class="confluenceTd">
        <p>
          <span>Get information of Serialized Assembled Items in current WIP via material name</span>
        </p>
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION[NAME] - return material description of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify material name to find assembled items of the specific material</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME[NAME] - return material name of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <span>Specify material name to find assembled items of the specific material</span>
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALSERIAL[NAME] - return serial number of the assembled item(s)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <span>Specify material name to find assembled items of the specific material</span>
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="6" class="confluenceTd">SERIALIZED MATERIAL PROPERTIES
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="6" class="confluenceTd">
        <p>Get properties of Serialized Material(s) assembled in current WIP</p>
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">BIRTHDATE - return the Created On date of the Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMER - return the Customer of the Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION - return material description of the Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME - return material name of the Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SERIALIZEDMATERIALATTRIBUTE[NAME] - return the attribute value of a Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <span>Specify attribute name to return the specific attribute value</span>
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SERIALNUMBER - return serial number of the Serialized Material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="9" class="confluenceTd">SYSTEM PROPERTIES
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="9" class="confluenceTd">
        <p>
          <span>Get information of system and application state</span>
        </p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">GLOBALSITEID</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ISOCOUNTRYCODE2</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ISOCOUNTRYCODE3</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ISOCOUNTRYNAME</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ISOCOUNTRYNUMBER</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">REGION</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SITEID</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SITENAME</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">USER</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="4" class="confluenceTd">UNSERIALIZED ASSEMBLED ITEMS
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="4" class="confluenceTd">
        <p>Get information of Unserialized Material(s) assembled to current WIP</p>
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">MANUFACTURER - return manufacturer name of scanned MPN for unserialized material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MANUFACTURERPARTNUMBER - return scanned MPN of unserialized material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION - return material description of unserialized material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME - return material name of unserialized material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" rowspan="29" class="confluenceTd">WIP PROPERTIES
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td style="width: 329.0px;" rowspan="29" class="confluenceTd">
        <p>Get properties of current WIP</p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </td>
      <td style="width: 375.0px;" class="confluenceTd">ALTERNATEWIPIDENTIFIER[NAME] - return the customer specific serial number of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify the Alternate name to find the specific serial number</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">ATTRIBUTE[NAME] - return the WIP Attribute value</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify the Attribute name to return the specific attribute value</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">BATCH - return the WIP Batch number</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">BIRTHDATE - return the Creation Date of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">BOMNAME - return the BOM name of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">BOMVERSION - return the BOM version of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">COUNTRYOFORIGIN - return the WIP Attributes Value with Attribute Name = "COO"</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CURRENTRESOURCENAME – return the resource name by current route step it is trigger the label printing (not in queue step)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <p>CURRENTROUTESTEPID – return the ID of the route step it is trigger the label printing.</p>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CURRENTROUTESTEP - return the route step it is trigger the label printing. (Rename from ROUTESTEP, require manually change to CURRENTROUTESTEP)</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMER - return Customer of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMERMATERIALNAME - return the Customer Material Name of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">CUSTOMERORDER - return the Customer Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">DELIVERYNUMBER - return the Delivery Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">DIVISION - return the Division of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the custom data value of the WIP material's custom data</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALDESCRIPTION - return the material description of the WIP material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">MATERIALNAME - return the material name of the WIP material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PANELTYPE - return the Panel Type of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PLANNEDORDER - return the Planned Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PLANTCODE - return the Plant Code of the WIP material</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PRODUCTIONORDER - return the Production Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PRODUCTIONORDERATTRIBUTE[NAME] - return Attribute value of the Production Order that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">Specify the Attribute name to return the specific Attribute value</td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">PURCHASEORDER - return the Purchased Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SALESORDER - return the Sales Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SERIALNUMBER - return the Serial Number of the WIP</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SHIPTOPURCHASEORDER - return the Purchased Order Number of a Ship To party that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">SHOPFLOORORDER - return the Shop Floor Order Number that the WIP is associated to</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 375.0px;" class="confluenceTd">
        <span style="color: rgb(45,46,47);">PRODUCTFAMILY - return the Product Family of the WIP is associated to</span>
      </td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 202.0px;" class="confluenceTd">WIP TEST PHASE ASSIGNMENTS</td>
      <td style="width: 329.0px;" class="confluenceTd">Get test phases assigned toWipbased onwip'sbomand optionally, routesteps</td>
      <td style="width: 375.0px;" class="confluenceTd">TESTPHASE - return test phases thethe currentWIP is configured to go through within the current route</td>
      <td style="width: 263.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table><table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <th class="confluenceTh">
        <div class="content-wrapper">
          <p class="auto-cursor-target">2022.04 New features：</p>
          <p class="auto-cursor-target">Reprint labels in the same pas file for document type [WIP] when the operator reprints 2 or more labels in Document Reprint. </p>
          <p class="auto-cursor-target">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-content-image-border" height="150" width="420" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920836.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920836.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110920836" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-38-1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </p>
          <p class="auto-cursor-target">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image confluence-content-image-border" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920837.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920837.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110920837" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-38-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </p>
          <p class="auto-cursor-target">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920838.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110920838.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110920838" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-4-6-15-39-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </p>
        </div>
      </th>
      <th class="confluenceTh">
        <br />
      </th>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable" style="width: 1415.0px;">
  <tbody>
    <tr>
      <td style="text-align: center;width: 1415.0px;" colspan="4" class="confluenceTd">
        <strong>Document Type: Carrier
          <strong style="text-align: center;">(Only Apply to 5.0)</strong>
        </strong>
      </td>
    </tr>
    <tr>
      <th style="width: 146.0px;" class="confluenceTh">Field Type Name</th>
      <th style="width: 150.0px;" class="confluenceTh">Description</th>
      <th style="width: 826.0px;" class="confluenceTh"> Value</th>
      <th style="width: 293.0px;" class="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td style="width: 146.0px;" rowspan="10" class="confluenceTd">
        <p>ASSEMBLYREVISION PROPERTIES</p>
      </td>
      <td style="width: 150.0px;" rowspan="10" class="confluenceTd">
        <p>Get information associated to the</p>
        <p>Assembly properties of the current</p>
        <p>Lot in the Carrier</p>
      </td>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>ASSEMBLYNUMBER - return assembly number of the Lot</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>ASSEMBLYREVISION - return assemble revision of the Lot</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>ASSEMBLYVERSION - return assembly version of the Lot</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>CUSTOMER - return customer of the Lot assembly</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>CUSTOMERNUMBER - return customer part number of the Lot assembly</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>CUSTOMERREVISION - return customer revision of the Lot material</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>DESCRIPTION - return description of the Lot assembly</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>DIVISION - return division of the Lot assembly</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>MATERIALNAME - return material name of the Lot</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>PRODUCTFAMILY - return Product Family of the Lot material</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 146.0px;" rowspan="14" class="confluenceTd">CARRIER PROPERTIES</td>
      <td style="width: 150.0px;" rowspan="14" class="confluenceTd">Get properties of current carrier
        <p>
          <br /></p>
      </td>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">CARRIERQUANTITY</span> - return quantity on the carrier</td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">CARRIERSERIALNUMBER - return carrier number</td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">CURRENTCARRIERRESULT - return the current carrier status (PASS / FAIL). If the Lot in that carrier does not have open defect, then the CURRENTCARRIERRESULT is PASS, else 
          <span>CURRENTCARRIERRESULT is FAIL</span>
        </span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">CURRENTRESOURCENAME - return the resource name of current route step that triggered the label printing (not the in queue step)</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">CURRENTROUTESTEP - return the route step that triggered the label printing</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(45,46,47);">CUSTOMER - return customer</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(45,46,47);">DIVISION - return the Division</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">LOTATTRIBUTE[NAME] - return the value of the lot's attribute</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">Specify the attribute name to return the specific attribute value</td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">LOTID - return the lot ID</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(0,0,0);">LOTQUANTITY - return the lot quantity</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <p>
          <span>MATERIALCUSTOMDATA[NAME] -</span>return the custom data value of the lot material's custom data</p>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(45,46,47);">MATERIALNAME - return material name of the Lot in the Carrier</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">
        <span style="color: rgb(45,46,47);">PRODUCTFAMILY - return Product Family of the Lot's product in the Carrier</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 826.0px;" class="confluenceTd">SUPERLOTSERIALNUMBER - return Super Lot number associated to the lot</td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td style="width: 146.0px;" class="confluenceTd">CONSTANTS</td>
      <td style="width: 150.0px;" class="confluenceTd">
        <span>Print a constant value</span>
      </td>
      <td style="width: 826.0px;" class="confluenceTd">
        <span>Specify the Constant Value to be returned</span>
      </td>
      <td style="width: 293.0px;" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <td style="text-align: center;" colspan="4" class="confluenceTd">
        <strong>Document Type: CarrierContainer (Only Apply to 5.0)</strong>
      </td>
    </tr>
    <tr>
      <th class="confluenceTh">Field Type Name</th>
      <th class="confluenceTh">Description</th>
      <th colspan="1" class="confluenceTh"> Value</th>
      <th colspan="1" class="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td rowspan="14" class="confluenceTd">
        <span>CARRIER CONTAINER ITEMS</span>
        <br />
        <p>
          <br />
        </p>
      </td>
      <td rowspan="14" class="confluenceTd">
        <p>
          <span>Get information of items packed in the container for carrier</span>
        </p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>CARRIERBATCHNUMBER - return the carrier Batch number</p>
        <p>Notes: no available for Batch Manufacturing 2.0.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CARRIERSERIALNUMBER - return carrier number of item(s) packed into container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">LOTATTRIBUTE[NAME] - return the lot attribute value of the items packed into the container</td>
      <td colspan="1" class="confluenceTd">Specify the lot attribute name to return the specific lot attribute value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">LOTSERIALNUMBER - return lot number of item(s) packed into container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTFAMILY - return product family of item(s) packed into container.</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALCUSTOMDATA[NAME] - return the material custom data value of the items packed in the container</td>
      <td colspan="1" class="confluenceTd">Specify the custom data name to return the specific custom data value</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALDESCRIPTION - return the material description of item(s) packed in the container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MATERIALNAME - return the material name of item(s) packed in the container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PLANNEDORDERNUMBER - return planned order number of item(s) packed into container</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>PRODUCTSTATE - return the list of unique product state of item(s) packed into container</p>
        <p>Notes: no available for Batch Manufacturing 2.0.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CARRIERITEMQUANTITY - Q
        <span style="color: rgb(0,0,0);">
          <span style="color: rgb(0,0,0);">uantity of individual carriers packed into the container
            <br />
            <br /></span>
        </span>
        <div>One container contains 2 carriers. Carrier Item Quantity will report as</div>
        <div>Quantity1: 100</div>
        <div>Quantity2: 200</div>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CONTAINERITEMQUANTITY 
        <span>- return total quantity of item packed in the container </span>
        <span style="color: rgb(0,0,0);">(In case of Overpack, should the number of containers packed, example box into pallet. In Lot Packout (lower level containers), it is the number of carriers in the container).</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">CONTAINERSERIALNUMBER - return the container serial number. (In case of overpack it is the list of container serial number packed (example, box serial number packed into pallet). Blank in case of Lot container (box)</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>
          <span style="color: rgb(45,46,47);">CONTAINERPACKINGSEQUENCE(just for TOT&Nag):Returns the sequence number packed into the Pallet.</span>
        </p>
        <p>
          <span style="color: rgb(45,46,47);">
            <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
              <img class="confluence-embedded-image" height="150" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/120750925.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/120750925.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="120750925" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-7-8-10-19-32.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918399" data-linked-resource-container-version="54" />
            </span>
          </span>
        </p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="11" class="confluenceTd">
        <span>CARRIER CONTAINER PROPERTIES</span>
      </td>
      <td rowspan="11" class="confluenceTd">
        <span>Get properties of current container for a carrier</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>CONTAINERCOUNT - return the number of containers containing the batch managed carrier items</p>
        <p>Notes: no available for Batch Manufacturing 2.0.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CONTAINERNUMBER - return container number</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>CONTAINERSEQUENCENUMBER - return the sequence number of the container containing the batch managed carrier items</p>
        <p>Notes: no available for Batch Manufacturing 2.0.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CONTAINERTYPENAME - return container type name</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CUSTOMERNAME - return customer name</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DIVISIONNAME - return division name</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">ROUTESTEP - return the route step</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CONTAINERQUANTITY - return the total quantity of items packed into the container
        <br />
        <span style="color: rgb(0,0,0);">IE: Scan to pack from 2 carriers with qty = 10 & Qty 20 each. Container Quantity = 30</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>TOTALCARRIERITEMQUANTITY -
          <span style="color: rgb(0,0,0);">Total quantity of items in a batch carrier.
            <br />IE: A batch managed carrier with a large quantity was split to pack in
            <span style="color: rgb(0,0,0);">4 containers with 500 in each containers. Total Carrier Item Quantity = 2000</span>
            <br />
          </span>
        </p>
        <p>
          <span style="color: rgb(0,0,0);">
            <span style="color: rgb(0,0,0);">Notes: no available for Batch Manufacturing 2.0.</span>
          </span>
        </p>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">USERNAME - return username</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BOXCREATION - return the "Created On" date from Container View screen</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span>CONSTANTS</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Print a constant value</p>
      </td>
      <td colspan="1" class="confluenceTd">Specify the Constant value to be returned</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <tbody>
    <tr>
      <td style="text-align: center;" colspan="4" class="confluenceTd">
        <strong>Document Type: Sample</strong>
      </td>
    </tr>
    <tr>
      <th class="confluenceTh">Field Type Name</th>
      <th class="confluenceTh">Description</th>
      <th class="confluenceTh"> Value</th>
      <th class="confluenceTh">Contingent Value</th>
    </tr>
    <tr>
      <td class="confluenceTd">
        <span>CONSTANTS</span>
      </td>
      <td class="confluenceTd">Print a constant value</td>
      <td class="confluenceTd">Specify the Constant value to be returned</td>
      <td class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="9" class="confluenceTd">
        <span style="color: rgb(23,43,77);">SYSTEM PROPERTIES</span>
      </td>
      <td rowspan="9" class="confluenceTd">
        <span style="color: rgb(23,43,77);">Get information of system and application state</span>
      </td>
      <td class="confluenceTd">
        <span style="color: rgb(23,43,77);">GLOBALSITEID</span>
      </td>
      <td class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ISOCOUNTRYCODE2</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ISOCOUNTRYCODE3</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ISOCOUNTRYNAME</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ISOCOUNTRYNUMBER</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">REGION</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">SITEID</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">SITENAME</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">USER</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">DATA PROMPT</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">Allow user to enter a value when document is triggered to be printed</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">Specify the value to be printed when prompted</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="14" class="confluenceTd">
        <span style="color: rgb(23,43,77);">DATECODE</span>
      </td>
      <td rowspan="14" class="confluenceTd">
        <span style="color: rgb(23,43,77);">Get current datecode in various format.</span>
      </td>
      <td class="confluenceTd">
        <span style="color: rgb(23,43,77);">yyyy - 4 digits year</span>
      </td>
      <td class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">qq - 1 digit quarter.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">mm - 2 digits month.</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">dy - 3 digits day of year</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">dd - 2 digits day of month</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ww - 2 digits workweek number. Starting on a Sunday and Jan 1</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">dw - 1 digit day of week</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">hh - 2 digits hour. 24 hours format</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">mi - 2 digits minute</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ss - 2 digits second</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">ms - 3 digits milisecond</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">yy - 2 digits year. The 2 right most digits. E.g. 2016 = 16</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">y - 1 digit year. The right most digit. E.g. 2016 = 6</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(23,43,77);">yyyymmdd - 8 digits iso calendar date</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td rowspan="34" class="confluenceTd">
        <span style="color: rgb(0,0,0);">Sample Properties</span>
      </td>
      <td rowspan="34" class="confluenceTd">Get information of Sample ID</td>
      <td colspan="1" class="confluenceTd">APPROVER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <span style="color: rgb(0,0,0);">APPLICATIVEPHASE</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">BUILDING</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">CREATIONDATE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DEPARTMENT</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DEPARTMENTOWNER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DESCRIPTION</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">FLOOR</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">GROUPCODE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">EOLDATE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MANUFACTURINGAREA</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">MODEL</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PARTNUMBER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTNAME</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PROCESS</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PROCESSSTEP</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTGROUP</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PRODUCTIONAREA</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PROJECT</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">PHASE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">RECEIPTDATE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">RECEIVINGDATETIME</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">REVISION</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SAMPLEID</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SAMPLELOCATION</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SAMPLESTATUS</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SAMPLETYPE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SERIALNUMBER</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SIGNEE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TASKSTATUS</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TRANSFERFROM</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TRANSFERTO</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">TRANSFERREDDATETIME</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">VALIDITYDATE</td>
      <td colspan="1" class="confluenceTd">
        <br />
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped relative-table confluenceTable" style="width: 53.0444%;">
  <colgroup>
    <col style="width: 17.8054%;" />
    <col style="width: 82.1946%;" /></colgroup>
  <tbody>
    <tr>
      <td colspan="2" class="confluenceTd">
        <h5 style="text-align: center;" id="DocumentMaintenance(4.0)-Section-DividefieldsintoSectionseachwithitsownDocumentDefinitionsothatmultipletemplatesfieldscanbecombinedtoonepasfile.">
          <strong>Section - Divide fields into Sections each with its own Document Definition so that multiple templates fields can be combined to one pas file.</strong>
        </h5>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td>
      <td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td>
    </tr>
    <tr>
      <td class="confluenceTd">Section Name</td>
      <td class="confluenceTd">Provide a Section name to define the different sections</td>
    </tr>
    <tr>
      <td class="confluenceTd">Document Definition</td>
      <td class="confluenceTd">The Loftware Template file name that a section will utilize to print its fields. E.g.
        <span style="color: rgb(45,46,47);">TESTING\CONTROLLER.lwl</span>
      </td>
    </tr>
    <tr>
      <td colspan="2" class="confluenceTd">
        <div class="content-wrapper">
          <p>Sample for runtime:</p>
          <p>Below is a sample document configuration:</p>
          <div class="table-wrap">
            <table class="wrapped confluenceTable">
              <colgroup>
                <col style="width: 68.0pt;" />
                <col style="width: 73.0pt;" />
                <col style="width: 83.0pt;" />
                <col style="width: 93.0pt;" />
              </colgroup>
              <tbody>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">Field Name</td>
                  <td style="text-align: center;" class="confluenceTd">Is Section Field</td>
                  <td style="text-align: center;" class="confluenceTd">Section Name</td>
                  <td style="text-align: center;" class="confluenceTd">Template Name</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>Field01</p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">No</td>
                  <td style="text-align: center;" class="confluenceTd">　</td>
                  <td style="text-align: center;" class="confluenceTd">Template01</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>
                      <span>Field02</span>
                    </p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">No</td>
                  <td style="text-align: center;" class="confluenceTd">　</td>
                  <td style="text-align: center;" class="confluenceTd">Template01</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>
                      <span>Field03</span>
                    </p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">Yes</td>
                  <td style="text-align: center;" class="confluenceTd">Section01</td>
                  <td style="text-align: center;" class="confluenceTd">Template02</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>
                      <span>Field04</span>
                    </p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">Yes</td>
                  <td style="text-align: center;" class="confluenceTd">Section02</td>
                  <td style="text-align: center;" class="confluenceTd">Template02</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>
                      <span>Field05</span>
                    </p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">Yes</td>
                  <td style="text-align: center;" class="confluenceTd">Section03</td>
                  <td style="text-align: center;" class="confluenceTd">Template03</td>
                </tr>
                <tr>
                  <td style="text-align: center;" class="confluenceTd">
                    <p>
                      <span>Field06</span>
                    </p>
                  </td>
                  <td style="text-align: center;" class="confluenceTd">No</td>
                  <td style="text-align: center;" class="confluenceTd">　</td>
                  <td style="text-align: center;" class="confluenceTd">Template01</td>
                </tr>
              </tbody>
            </table>
          </div>
          <p>
            <br />After the label printing, the result as below:</p>
          <p>
            <span class="confluence-embedded-file-wrapper">
              <img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/d215f5ec-41d3-424a-9d6e-63d09103474a?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/d215f5ec-41d3-424a-9d6e-63d09103474a?fileName=image.png" />
            </span>
          </p>
        </div>
      </td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <colgroup>
    <col style="width: 68.0pt;" />
    <col style="width: 73.0pt;" />
    <col style="width: 83.0pt;" />
    <col style="width: 93.0pt;" />
  </colgroup>
  <tbody>
    <tr>
      <td style="text-align: center;" class="confluenceTd">Field Name</td>
      <td style="text-align: center;" class="confluenceTd">Is Section Field</td>
      <td style="text-align: center;" class="confluenceTd">Section Name</td>
      <td style="text-align: center;" class="confluenceTd">Template Name</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>Field01</p>
      </td>
      <td style="text-align: center;" class="confluenceTd">No</td>
      <td style="text-align: center;" class="confluenceTd">　</td>
      <td style="text-align: center;" class="confluenceTd">Template01</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>
          <span>Field02</span>
        </p>
      </td>
      <td style="text-align: center;" class="confluenceTd">No</td>
      <td style="text-align: center;" class="confluenceTd">　</td>
      <td style="text-align: center;" class="confluenceTd">Template01</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>
          <span>Field03</span>
        </p>
      </td>
      <td style="text-align: center;" class="confluenceTd">Yes</td>
      <td style="text-align: center;" class="confluenceTd">Section01</td>
      <td style="text-align: center;" class="confluenceTd">Template02</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>
          <span>Field04</span>
        </p>
      </td>
      <td style="text-align: center;" class="confluenceTd">Yes</td>
      <td style="text-align: center;" class="confluenceTd">Section02</td>
      <td style="text-align: center;" class="confluenceTd">Template02</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>
          <span>Field05</span>
        </p>
      </td>
      <td style="text-align: center;" class="confluenceTd">Yes</td>
      <td style="text-align: center;" class="confluenceTd">Section03</td>
      <td style="text-align: center;" class="confluenceTd">Template03</td>
    </tr>
    <tr>
      <td style="text-align: center;" class="confluenceTd">
        <p>
          <span>Field06</span>
        </p>
      </td>
      <td style="text-align: center;" class="confluenceTd">No</td>
      <td style="text-align: center;" class="confluenceTd">　</td>
      <td style="text-align: center;" class="confluenceTd">Template01</td>
    </tr>
  </tbody>
</table>
<table class="wrapped confluenceTable">
  <colgroup>
    <col />
    <col /></colgroup>
  <tbody>
    <tr>
      <td colspan="2" class="confluenceTd">
        <h5 style="text-align: center;" id="DocumentMaintenance(4.0)-DocumentOverrides-OverridesdefaultvalueofadocumentforcertainAssemblyRevision">Document Overrides - Overrides default value of a document for certain Assembly Revision</h5>
      </td>
    </tr>
    <tr>
      <td class="highlight-grey confluenceTd" data-highlight-colour="grey">
        <strong>Field</strong>
      </td>
      <td class="highlight-grey confluenceTd" data-highlight-colour="grey">
        <strong>Description</strong>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">
        <p>Assembly Description</p>
      </td>
      <td class="confluenceTd">Description of the Assembly of which its default document configuration is to be overridden</td>
    </tr>
    <tr>
      <td class="confluenceTd">Number</td>
      <td class="confluenceTd">Number of the Assembly of which its default document configuration is to be overridden</td>
    </tr>
    <tr>
      <td class="confluenceTd">Revision</td>
      <td class="confluenceTd">Revision of the Assembly of which its default document configuration is to be overridden</td>
    </tr>
    <tr>
      <td class="confluenceTd">
        <p>Version</p>
      </td>
      <td class="confluenceTd">Version of the Assembly of which its default document configuration is to be overridden</td>
    </tr>
    <tr>
      <td class="confluenceTd">Document Definition</td>
      <td class="confluenceTd">New document definition to override the default configuration</td>
    </tr>
    <tr>
      <td class="confluenceTd">Label Stock</td>
      <td class="confluenceTd">New Label Stock to override the default configuration</td>
    </tr>
    <tr>
      <td class="confluenceTd">Ribbon Stock</td>
      <td class="confluenceTd">New Ribbon Stock to override the default configuration</td>
    </tr>
  </tbody>
</table>



#### Attachments

[image2019-5-29_9-35-28.png](/.attachments/49644079.png)

[image2019-5-29_9-36-33.png](/.attachments/49644080.png)

[image2019-5-29_9-40-19.png](/.attachments/49644081.png)

[image2019-5-29_9-49-52.png](/.attachments/49644082.png)

[image2019-5-29_10-25-44.png](/.attachments/49644083.png)

[image2019-6-13_11-5-57.png](/.attachments/51871831.png)

[image2019-6-13_11-13-29.png](/.attachments/51871832.png)

[image2019-6-13_11-14-9.png](/.attachments/51871833.png)

[image2019-6-13_11-16-2.png](/.attachments/51871834.png)

[image2019-6-13_11-19-3.png](/.attachments/51871835.png)

[image2019-6-13_11-22-46.png](/.attachments/51871836.png)

[image2019-6-13_11-27-0.png](/.attachments/51871837.png)

[image2019-6-13_11-31-48.png](/.attachments/51871838.png)

[image2019-6-13_14-19-28.png](/.attachments/51871839.png)

[image2019-6-24_11-24-14.png](/.attachments/51871985.png)

[image2019-6-24_11-24-45.png](/.attachments/51871986.png)

[image2019-6-24_11-25-12.png](/.attachments/51871987.png)

[image2019-6-24_11-27-3.png](/.attachments/51871988.png)

[image2019-6-24_11-32-17.png](/.attachments/51871990.png)

[image2019-6-24_13-15-7.png](/.attachments/51871992.png)

[image2019-6-24_13-17-52.png](/.attachments/51871994.png)

[image2019-6-24_14-43-5.png](/.attachments/51871996.png)

[image2019-6-24_14-44-5.png](/.attachments/51871997.png)

[image2019-6-24_14-44-43.png](/.attachments/51871998.png)

[image2019-6-24_14-45-49.png](/.attachments/51871999.png)

[image2019-6-24_14-46-43.png](/.attachments/51872000.png)

[image2019-6-24_14-47-2.png](/.attachments/51872001.png)

[image2019-6-24_14-48-31.png](/.attachments/51872002.png)

[image2019-6-24_14-50-40.png](/.attachments/51872004.png)

[image2019-6-24_14-51-22.png](/.attachments/51872005.png)

[image2019-6-24_14-51-47.png](/.attachments/51872006.png)

[image2019-6-24_14-52-26.png](/.attachments/51872007.png)

[image2022-4-6_15-38-1.png](/.attachments/110920836.png)

[image2022-4-6_15-38-29.png](/.attachments/110920837.png)

[image2022-4-6_15-39-2.png](/.attachments/110920838.png)

[image2022-4-6_15-46-11.png](/.attachments/110920839.png)

[image2022-4-6_15-47-6.png](/.attachments/110920840.png)

[image2022-4-20_9-52-38.png](/.attachments/113770819.png)

[image2022-4-20_9-53-22.png](/.attachments/113770820.png)

[image2022-7-8_10-19-32.png](/.attachments/120750925.png)

