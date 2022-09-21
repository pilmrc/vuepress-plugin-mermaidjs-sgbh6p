# Introduction

**Work In Progress** 
Materials are imported from SAP ECC via Idoc by batch job scheduling. The MATMAS Idoc is triggered when there are newly created Materials or changes have been made in SAP on fields required by Phoenix. All Materials configured with "SFS" in SAP will be triggered to shop floor with the source system indicator of "SAP". 
The diagram below shows the Material transfer path from SAP to shop floor. When Idoc is generated in SAP ECC, MATMAS05 Idoc will be transferred to GIS(Gentran Integration Suite). GIS will convert Idoc to XML format and send to MSMQ. After MSMQ received the MATMAS message, the data will be further processed before they are sent to shop floor. Any success/fail message will return a status message back to GIS. The data is transferre



Material Master Mapping
<table className="confluenceTable">
  <tbody>
    <tr>
      <th className="confluenceTh">
        <p>XML Element Name</p>
      </th>
      <th className="confluenceTh">
        <p>GIS is Mandatory</p>
      </th>
      <th colSpan={1} className="confluenceTh">
        <p>Shop Floor UI</p>
      </th>
      <th colSpan={1} className="confluenceTh">
        <p>Shop Floor Database</p>
      </th>
      <th colSpan={1} className="confluenceTh">
        Mapping
      </th>
      <th colSpan={1} className="confluenceTh">
        Overwritten
      </th>
    </tr>
    <tr>
      <td className="confluenceTd">Transaction.Plant</td>
      <td className="confluenceTd">YES</td>
      <td colSpan={1} className="confluenceTd">
        Plant
      </td>
      <td colSpan={1} className="confluenceTd">
        M.PlantCode
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>First time send from SAP (New) - Create. </span>
        <br />
        <span>Use as Primary Key to update existing Material</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>Transaction.TransType</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        No Mapping. Value for this field "MatMas"
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>Transaction.BPID</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        No Mapping. Used in Signaling Errors.
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Transaction.SAPIDocNumber
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        No Mapping. Used in Debugging
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Transaction.CustomerNumber
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td className="highlight confluenceTd" colSpan={6}>
        Materials Collection
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material.Name
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Material Name
      </td>
      <td colSpan={1} className="confluenceTd">
        M.Name
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          First time send from SAP (New) - Create. <br />
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            Use as Primary Key to update existing Material
          </span>
        </p>
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <p>Material.Long-Item-Number</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Customer Part Number
      </td>
      <td colSpan={1} className="confluenceTd">
        M.CustomerName
      </td>
      <td colSpan={1} className="confluenceTd">
        Direct Match
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material.Description
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Description
      </td>
      <td colSpan={1} className="confluenceTd">
        M.Description
      </td>
      <td colSpan={1} className="confluenceTd">
        Direct Match
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material.MaterialGroup
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        MaterialGroup.MaterialGroupAlias
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Optional: Variant Code provide from SAP can be blank for JGP</p>
        <p>This field can be blank</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.MRPController</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.MaterialType</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Material Type
      </td>
      <td colSpan={1} className="confluenceTd">
        M.MaterialType
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Shop Floor will only match these 7 types. Other types will put under
          "Others"
        </p>
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>FERT</p>
                </td>
                <td className="confluenceTd">
                  <p>Assemblies (FERT)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>HALB</p>
                </td>
                <td className="confluenceTd">
                  <p>Sub-Assemblies (HALB)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>ZROH</p>
                </td>
                <td className="confluenceTd">
                  <p>Components (ZROH)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>ZPRP</p>
                </td>
                <td className="confluenceTd">
                  <p>Prep Parts (ZPRP)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>ZRMA</p>
                </td>
                <td className="confluenceTd">
                  <p>RMA Parts (ZRMA)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>ZVRP</p>
                </td>
                <td className="confluenceTd">
                  <p>Packaging Parts (ZVRP)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>HIBE</p>
                </td>
                <td className="confluenceTd">
                  <p>MRO (HIBE)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Other material Type</p>
                </td>
                <td className="confluenceTd">
                  <p>Others</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.ProcType</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Procurement Type
      </td>
      <td colSpan={1} className="confluenceTd">
        M.ProcType
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>E</p>
                </td>
                <td className="confluenceTd">
                  <p>In House Production(Build)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>F</p>
                </td>
                <td className="confluenceTd">
                  <p>External Procurement (Buy)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>X</p>
                </td>
                <td className="confluenceTd">
                  <p>Both Procurement Types (Build/Buy)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>
                    <blank />
                  </p>
                </td>
                <td className="confluenceTd">
                  <p>UNKNOWN</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.SProcType</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        SAP Phantom
      </td>
      <td colSpan={1} className="confluenceTd">
        M.IsSAPPhantom
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>50</p>
                </td>
                <td className="confluenceTd">
                  <p>TRUE</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Value other than 50</p>
                </td>
                <td className="confluenceTd">
                  <p>FALSE</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.PinCount</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Pin Count
      </td>
      <td colSpan={1} className="confluenceTd">
        M.PinCount
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Direct Match.</p>
        <p>
          Default As "0" for{" "}
          <blank>
            , "0" During DPMO Calculation, system will have to convert to 1.
            <br />
            In GIS, Pin Count is converted to Integer. "divided by 1000". So
            Shop Floor will just need to direct get the value.
          </blank>
        </p>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.ComponentType</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Component Type
      </td>
      <td colSpan={1} className="confluenceTd">
        M.ComponentType
      </td>
      <td colSpan={1} className="confluenceTd">
        Direct Match
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.BulkIssueFlag</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Managed As: Bulk
      </td>
      <td colSpan={1} className="confluenceTd">
        M.IsBulkIssue
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>X</p>
                </td>
                <td className="confluenceTd">
                  <p>TRUE</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>
                    <blank />
                  </p>
                </td>
                <td className="confluenceTd">
                  <p>FALSE</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.Configurable</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        &nbsp;
      </td>
      <td colSpan={1} className="confluenceTd">
        &nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material.Serialized
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Managed As: Serialized
      </td>
      <td colSpan={1} className="confluenceTd">
        M.IsSerialized
      </td>
      <td colSpan={1} className="confluenceTd">
        SerialNumberProfile= ZNIN or blank =&gt; Non Serialized (Blank) Else
        =&gt; Serialized (X)
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>BatchManaged
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Managed As: Batch
      </td>
      <td colSpan={1} className="confluenceTd">
        M.IsBatchManaged
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>X</p>
                </td>
                <td className="confluenceTd">
                  <p>TRUE</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>
                    <blank />
                  </p>
                </td>
                <td className="confluenceTd">
                  <p>FALSE</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>EffectiveDate
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>UnitOfMeasure
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Unit Of Measure
      </td>
      <td colSpan={1} className="confluenceTd">
        M.UnitOfMeasure
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Link UOM with UOMs.ID in Shop Floor. Store UOMID at
          Material.UnitofMeasure
        </p>
        <p>If UOM does not exist in UOM Table. Move to Error Folder</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>Status
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Status
      </td>
      <td colSpan={1} className="confluenceTd">
        M.Status
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Shop Floor will receive the status with the condition below (New
          Material):
        </p>
        <p>• Material Type FERT / HALB, status receive as "New"</p>
        <p>
          • Other than FERT / HALB, status receive as "Active" for the first
          time
        </p>
        <p>
          - If the Phoenix Material Type is NULL, status receive as "NEW", if
          not, set it as "Active" for material type other than "FERT/HALB"
        </p>
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>
                    <blank />
                  </p>
                </td>
                <td className="confluenceTd">
                  <p>New OR Active</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>EC</p>
                </td>
                <td className="confluenceTd">
                  <p>New</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>E9</p>
                </td>
                <td className="confluenceTd">
                  <p>Inactive</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>EO</p>
                </td>
                <td className="confluenceTd">
                  <p>Inactive</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>01</p>
                </td>
                <td className="confluenceTd">
                  <p>Hold</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>02</p>
                </td>
                <td className="confluenceTd">
                  <p>Hold</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            YES except:
          </span>
        </p>
        <p>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            • Shop Floor Status = Hold
          </span>
        </p>
        <p>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            • Shop Floor Status = Inactive
          </span>
        </p>
        <p>
          <span style={{ backgroundColor: "transparent", fontSize: "10.0pt" }}>
            • Shop Floor Status &lt;&gt; “New” if SAP Status = “New
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>TsmShelf
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>YES</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Max Shelf Life
      </td>
      <td colSpan={1} className="confluenceTd">
        M.TsmShelf
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          If Moisuture Classification is available and min shelf life is empty,
          Update TsmShelf = "999999999", TsmShelfUnit = "YEARS"
        </p>
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>Shelf Life</p>
                </td>
                <td className="confluenceTd">
                  <p>Floor Life</p>
                </td>
                <td className="confluenceTd">
                  <p>IsTSM</p>
                </td>
                <td className="confluenceTd">
                  <p>Shelf Life Value</p>
                </td>
                <td className="confluenceTd">
                  <p>Floor Life Value</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>Get Value</p>
                </td>
                <td className="confluenceTd">
                  <p>Get Value</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>NO</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>999999999 YEARS</p>
                </td>
                <td className="confluenceTd">
                  <p>Get Value</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>NO&nbsp;</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>Get Value</p>
                </td>
                <td className="confluenceTd">
                  <p>"M1"</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>NO</p>
                </td>
                <td className="confluenceTd">
                  <p>NO&nbsp;</p>
                </td>
                <td className="confluenceTd">
                  <p>NO</p>
                </td>
                <td className="confluenceTd">
                  <p>-</p>
                </td>
                <td className="confluenceTd">
                  <p>-</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>INVALID</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>Get Value</p>
                </td>
                <td className="confluenceTd">
                  <p>"M6"</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>NO</p>
                </td>
                <td className="confluenceTd">
                  <p>INVALID</p>
                </td>
                <td className="confluenceTd">
                  <p>YES</p>
                </td>
                <td className="confluenceTd">
                  <p>999999999 YEARS</p>
                </td>
                <td className="confluenceTd">
                  <p>"M6"</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>TsmShelfUnit
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Max Shelf Life
      </td>
      <td colSpan={1} className="confluenceTd">
        M.TsmShelfUnit
      </td>
      <td colSpan={1} className="confluenceTd">
        <div className="table-wrap">
          <table className="confluenceTable">
            <tbody>
              <tr>
                <td className="confluenceTd">
                  <p>
                    <blank />
                  </p>
                </td>
                <td className="confluenceTd">
                  <p>Days (1)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>D &nbsp;</p>
                </td>
                <td className="confluenceTd">
                  <p>Days (1)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>M</p>
                </td>
                <td className="confluenceTd">
                  <p>Months (2)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>Y</p>
                </td>
                <td className="confluenceTd">
                  <p>Years (3)</p>
                </td>
              </tr>
              <tr>
                <td className="confluenceTd">
                  <p>W</p>
                </td>
                <td className="confluenceTd">
                  <p>Weeks (4)</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>TsmFloorLife
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Moisture Classification
      </td>
      <td colSpan={1} className="confluenceTd">
        M.MoisutureClassificationID
      </td>
      <td colSpan={1} className="confluenceTd">
        First 4 characters is use to determine QM Control Key. If Qm Control Key
        = "0010", is refer to Floor Life (LF/Moisture Sensitive/ESD/CofC wInv
        Blk).&nbsp;
        <br />
        System shall only calculate the data when QM Control Key = "0010". No
        action done for other values. (No Update)
        <br />
        System shall based on the Certification Type (e.g. M1 / M2C) refer to
        Moisture Classification table to get the&nbsp; Acceptable Exposure Time
        (Days) and then convert to the Data Format (Default
        Materials.TsmFloorUnit = "Hours")
        <br />
        If the Certification Type is not match with the moisture classification,
        Skip Material and move to error folder.- If shelf Life available,
        Moisture Classification is empty, default Moisture Classification as
        "M1' If Mismatch = default to "M6"
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Material.</span>SAPMaterialGroup
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>NO</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Material Group
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>M.MaterialGroup</p>
        <p>MaterialGroup.MaterialGroup</p>
      </td>
      <td colSpan={1} className="confluenceTd">
        Direct Match. Material Group must exist in MaterialGroups table. Else
        Error
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td className="highlight confluenceTd" colSpan={1}>
        <span style={{ color: "rgb(0,51,102)" }}>
          Additional Attributes Collection
        </span>
      </td>
      <td className="highlight confluenceTd" colSpan={1}>
        &nbsp;
      </td>
      <td className="highlight confluenceTd" colSpan={1}>
        &nbsp;
      </td>
      <td className="highlight confluenceTd" colSpan={1}>
        &nbsp;
      </td>
      <td className="highlight confluenceTd" colSpan={1}>
        &nbsp;
      </td>
      <td className="highlight confluenceTd" colSpan={1}>
        &nbsp;
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Attribute.Name</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
      <td colSpan={1} className="confluenceTd">
        Custom Data
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>CustomDatas.CustomDataName</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Make sure to insert to CustomDatas table whenever there's a Name that
        doesn't exist based on a match using CustomDataCategory = 4 and
        CustomDataName = Name
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Attribute.Value</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
      <td colSpan={1} className="confluenceTd">
        Custom Data Value
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>MaterialCustomDatas.Value</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Do an insert and update. Make sure to insert CustomDatas record if it
        does not exist.
      </td>
      <td colSpan={1} className="confluenceTd">
        YES
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Attribute.Plant</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        NO
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        -
      </td>
      <td colSpan={1} className="confluenceTd">
        &nbsp;
      </td>
    </tr>
  </tbody>
</table>



Material.Long_Item_Number
YESCustomer Part NumberM.CustomerNameDirect MatchYESMaterial.DescriptionYESDescriptionM.DescriptionDirect MatchYESMaterial.MaterialGroupNO-MaterialGroup.MaterialGroupAliasOptional: Variant Code provide from SAP can be blank for JGP
This field can be blank
YESMaterial.MRPControllerNO----Material.MaterialTypeYESMaterial TypeM.MaterialTypeShop Floor will only match these 7 types. Other types will put under "Others"
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>FERT</p>
      </td>
      <td className="confluenceTd">
        <p>Assemblies (FERT)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>HALB</p>
      </td>
      <td className="confluenceTd">
        <p>Sub-Assemblies (HALB)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>ZROH</p>
      </td>
      <td className="confluenceTd">
        <p>Components (ZROH)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>ZPRP</p>
      </td>
      <td className="confluenceTd">
        <p>Prep Parts (ZPRP)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>ZRMA</p>
      </td>
      <td className="confluenceTd">
        <p>RMA Parts (ZRMA)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>ZVRP</p>
      </td>
      <td className="confluenceTd">
        <p>Packaging Parts (ZVRP)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>HIBE</p>
      </td>
      <td className="confluenceTd">
        <p>MRO (HIBE)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Other material Type</p>
      </td>
      <td className="confluenceTd">
        <p>Others</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.ProcTypeNOProcurement TypeM.ProcType
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>E</p>
      </td>
      <td className="confluenceTd">
        <p>In House Production(Build)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>F</p>
      </td>
      <td className="confluenceTd">
        <p>External Procurement (Buy)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>X</p>
      </td>
      <td className="confluenceTd">
        <p>Both Procurement Types (Build/Buy)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>
          <blank />
        </p>
      </td>
      <td className="confluenceTd">
        <p>UNKNOWN</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.SProcTypeNOSAP PhantomM.IsSAPPhantom
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>50</p>
      </td>
      <td className="confluenceTd">
        <p>TRUE</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Value other than 50</p>
      </td>
      <td className="confluenceTd">
        <p>FALSE</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.PinCountNOPin CountM.PinCountDirect Match.
Default As "0" for "blank", "0" During DPMO Calculation, system will have to convert to 1.

In GIS, Pin Count is converted to Integer. "divided by 1000". So Shop Floor will just need to direct get the value.YESMaterial.ComponentTypeNOComponent TypeM.ComponentTypeDirect MatchYESMaterial.BulkIssueFlagNOManaged As: BulkM.IsBulkIssue
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>X</p>
      </td>
      <td className="confluenceTd">
        <p>TRUE</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>
          <blank />
        </p>
      </td>
      <td className="confluenceTd">
        <p>FALSE</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.ConfigurableNO--Material.SerializedNOManaged As: SerializedM.IsSerializedSerialNumberProfile= ZNIN or blank =" Non Serialized (Blank) Else =" Serialized (X)YESMaterial.BatchManagedNOManaged As: BatchM.IsBatchManaged
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>X</p>
      </td>
      <td className="confluenceTd">
        <p>TRUE</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>
          <blank />
        </p>
      </td>
      <td className="confluenceTd">
        <p>FALSE</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.EffectiveDateNO----Material.UnitOfMeasureYESUnit Of MeasureM.UnitOfMeasureLink UOM with UOMs.ID in Shop Floor. Store UOMID at Material.UnitofMeasure
If UOM does not exist in UOM Table. Move to Error Folder
YESMaterial.StatusNOStatusM.StatusShop Floor will receive the status with the condition below (New Material):
• Material Type FERT / HALB, status receive as "New"
• Other than FERT / HALB, status receive as "Active" for the first time
- If the Phoenix Material Type is NULL, status receive as "NEW", if not, set it as "Active" for material type other than "FERT/HALB"
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>
          <blank />
        </p>
      </td>
      <td className="confluenceTd">
        <p>New OR Active</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>EC</p>
      </td>
      <td className="confluenceTd">
        <p>New</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>E9</p>
      </td>
      <td className="confluenceTd">
        <p>Inactive</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>EO</p>
      </td>
      <td className="confluenceTd">
        <p>Inactive</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>01</p>
      </td>
      <td className="confluenceTd">
        <p>Hold</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>02</p>
      </td>
      <td className="confluenceTd">
        <p>Hold</p>
      </td>
    </tr>
  </tbody>
</table>

YES except:
• Shop Floor Status = Hold
• Shop Floor Status = Inactive
• Shop Floor Status "" “New” if SAP Status = “New
Material.TsmShelfYESMax Shelf LifeM.TsmShelfIf Moisuture Classification is available and min shelf life is empty, Update TsmShelf = "999999999", TsmShelfUnit = "YEARS"
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>Shelf Life</p>
      </td>
      <td className="confluenceTd">
        <p>Floor Life</p>
      </td>
      <td className="confluenceTd">
        <p>IsTSM</p>
      </td>
      <td className="confluenceTd">
        <p>Shelf Life Value</p>
      </td>
      <td className="confluenceTd">
        <p>Floor Life Value</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>Get Value</p>
      </td>
      <td className="confluenceTd">
        <p>Get Value</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>NO</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>999999999 YEARS</p>
      </td>
      <td className="confluenceTd">
        <p>Get Value</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>NO&nbsp;</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>Get Value</p>
      </td>
      <td className="confluenceTd">
        <p>"M1"</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>NO</p>
      </td>
      <td className="confluenceTd">
        <p>NO&nbsp;</p>
      </td>
      <td className="confluenceTd">
        <p>NO</p>
      </td>
      <td className="confluenceTd">
        <p>-</p>
      </td>
      <td className="confluenceTd">
        <p>-</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>INVALID</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>Get Value</p>
      </td>
      <td className="confluenceTd">
        <p>"M6"</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>NO</p>
      </td>
      <td className="confluenceTd">
        <p>INVALID</p>
      </td>
      <td className="confluenceTd">
        <p>YES</p>
      </td>
      <td className="confluenceTd">
        <p>999999999 YEARS</p>
      </td>
      <td className="confluenceTd">
        <p>"M6"</p>
      </td>
    </tr>
  </tbody>
</table>

Material.
TsmShelfUnitNOMax Shelf LifeM.TsmShelfUnit
<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="confluenceTd">
        <p>
          <blank />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Days (1)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>D &nbsp;</p>
      </td>
      <td className="confluenceTd">
        <p>Days (1)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>M</p>
      </td>
      <td className="confluenceTd">
        <p>Months (2)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Y</p>
      </td>
      <td className="confluenceTd">
        <p>Years (3)</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>W</p>
      </td>
      <td className="confluenceTd">
        <p>Weeks (4)</p>
      </td>
    </tr>
  </tbody>
</table>

YES
Material.TsmFloorLifeNOMoisture ClassificationM.MoisutureClassificationIDFirst 4 characters is use to determine QM Control Key. If Qm Control Key = "0010", is refer to Floor Life (LF/Moisture Sensitive/ESD/CofC wInv Blk). 
System shall only calculate the data when QM Control Key = "0010". No action done for other values. (No Update)
System shall based on the Certification Type (e.g. M1 / M2C) refer to Moisture Classification table to get the  Acceptable Exposure Time (Days) and then convert to the Data Format (Default Materials.TsmFloorUnit = "Hours")
If the Certification Type is not match with the moisture classification, Skip Material and move to error folder.- If shelf Life available, Moisture Classification is empty, default Moisture Classification as "M1' If Mismatch = default to "M6"YESMaterial.SAPMaterialGroupNOMaterial GroupM.MaterialGroup
MaterialGroup.MaterialGroup
Direct Match. Material Group must exist in MaterialGroups table. Else ErrorYESAdditional Attributes Collection
Attribute.Name
NOCustom DataCustomDatas.CustomDataName
Make sure to insert to CustomDatas table whenever there's a Name that doesn't exist based on a match using CustomDataCategory = 4 and CustomDataName = NameYESAttribute.Value
NOCustom Data ValueMaterialCustomDatas.Value
Do an insert and update. Make sure to insert CustomDatas record if it does not exist.YESAttribute.Plant
NO---



### Mapping for Phoenix Material Type


<table className="confluenceTable">
  <tbody>
    <tr>
      <td className="highlight confluenceTd">SAP Material Type</td>
      <td className="highlight confluenceTd">
        <p>Procurement Type</p>
      </td>
      <td className="highlight confluenceTd">
        <p>Managed As</p>
      </td>
      <td className="highlight confluenceTd">
        <p>Phoenix Material Type</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>In House</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>External</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Serialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Both</p>
      </td>
      <td className="confluenceTd">
        <p>Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Both</p>
      </td>
      <td className="confluenceTd">
        <p>Not Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Unknown</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Sub-Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>In House</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Sub-Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>External</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Serialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Sub-Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Both</p>
      </td>
      <td className="confluenceTd">
        <p>Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Sub-Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Both</p>
      </td>
      <td className="confluenceTd">
        <p>Not Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Sub-Assembly</p>
      </td>
      <td className="confluenceTd">
        <p>Unknown</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Component</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>Serialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Component</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Batch</p>
      </td>
      <td className="confluenceTd">
        <p>Inventory ID</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Component</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Batch &amp; Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Inventory ID</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Component</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Component</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Not Serialized &amp; Batch &amp; Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Serialized</p>
      </td>
      <td className="confluenceTd">
        <p>Serialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Batch</p>
      </td>
      <td className="confluenceTd">
        <p>Inventory ID</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Batch &amp; Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Inventory ID</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Serialized &amp; Batch</p>
      </td>
      <td className="confluenceTd">
        <p>Serialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Prep Parts</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Not Serialized &amp; Batch &amp; Bulk</p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>RMA</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>WIP</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Packaging</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>MRO</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <p>Others</p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>
          <any />
        </p>
      </td>
      <td className="confluenceTd">
        <p>Unserialized Material</p>
      </td>
    </tr>
  </tbody>
</table>



#### Sample XML File


![image2018-2-22 9:32:6.png](/.attachments/29920172.png)



MATMAS XSD
"?xml version="1.0" encoding="utf-8"?"

"[xs:schema](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:sql="urn:schemas-microsoft-com:mapping-schema" elementFormDefault="qualified""
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Envelope""
"[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Transaction""
"[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"!-- Header --"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Plant" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="TransType" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="BPID" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="SAPIDocNumber" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Material" minOccurs="1" maxOccurs="unbounded""
"[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"!-- Material --"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Material" type="[xs:string](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)" maxOccurs="1"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Description" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="MaterialType" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Status" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="IsBulkIssue" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="SerialNumberProfile" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="IsBatchManaged" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="UnitOfMeasure" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="ProcType" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="SprocType" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="TsmShelf" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="TsmShelfUnit" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="TsmFloorLife" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="PinCount" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="ComponentType" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="AdditionalAttributes" minOccurs="0" maxOccurs="unbounded""
"[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Name" type="xs:string"/"
"[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)name="Value" type="xs:string"/"
"/[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:sequence](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:complexType](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:element](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"
"/[xs:schema](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Queue-Monitor/Material-Master.md)"



#### Attachments

[image2018-2-22 9:32:6.png](/.attachments/29920172.png)
[image2018-2-19 13:52:19.png](/.attachments/29920173.png)
