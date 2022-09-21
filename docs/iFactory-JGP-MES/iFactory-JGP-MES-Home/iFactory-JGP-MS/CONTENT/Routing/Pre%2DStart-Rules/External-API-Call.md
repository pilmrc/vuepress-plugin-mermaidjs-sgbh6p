# Introduction

In some cases, it happens that a customize rule which is only specific for certain site or customer that not supported in iFactory. “External API Call” pre-start rule is filling up this gaps by calling a web api which develop by 3
rdparty/site base on the route step it configured. By calling the customize web api, a standard pre-start input model as per below will be passing in for customize web api as input for its processing.5 objects below will be passed as input (Repetitive)

- WipItem

- RouteStepId

- ContainerItem (currently will return blank value. Not applicable as existing pre-start rule is design on WIP only)

- ScanType

- Resource Id

- User Logon
For WipItem, user can extract more details as per below: -

- Id

- IsPersistent

- IsTransient

- LastUpdated

- LastUpdatedBy

- SerialNumber

- IsOnHold

- IsOnShippingHold

- IsPacked

- IsAssembled

- IsScrapped

- MaterialId

- ShopFloorOrderId

- PlannedOrderId

- IsTemporarySerialNumber

- WipReturnCount

- IsCurrentlyPristine

- TemporarySerialNumber

- CustomerId

- BomId

- BatchId

- CreatedBy

- CreationDate

- FirstOperationDateTime

- CurrentRouteStepId

- IsPanelBroken

- PanelPosition

- AssemblyRevisionId

- PanelId

- IsJabilBuilt
Objects below will be passed as input (LOT)

- LotItem

- ContainerItem

- UserLogin
For LotItem, user can extract more details as per below: -

- CarrierId

- Quantity

- Status

- IsScrap

- OnHold

- CreatedOn

- CreatedBy

- LastScannedAtRouteStep

- BatchNumber

- PlannedOrder

- MaterialName

- ProductFamily

- ProductState

- Customer

- Division

- Assembly

- ContainerItem
It is advice that this external api call pre-start rule should put as last execute rule (e.g. if the route step have 4 rules to run, configure this external api call rule as number 4
thexecute rule). WIP/LOT cannot be started if the web api is return a non “pass” result or exceed the configured timeout value in seconds.For Batch Manufacturing 2.0, it is not able to configure External API Call in Lot Release Route Step, there is no lot released yet so nothing to validate. If it configured in Release Route Step(e.g. MOE), then it will always pass even configured this External API Call.
<table
  className="relative-table wrapped confluenceTable"
  style={{ width: "913.0px" }}
>
  <colgroup>
    <col style={{ width: "0.0px" }} />
    <col style={{ width: "0.0px" }} />
  </colgroup>
  <thead>
    <tr>
      <th className="confluenceTh">
        <p>Field</p>
      </th>
      <th className="confluenceTh">
        <p>Description</p>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td className="confluenceTd">URL</td>
      <td className="confluenceTd">
        This is the http/https address (web api) that configure to be call by
        the rule when a WIP/Carrier scanned at the configured route step.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Timeout (in seconds)
      </td>
      <td colSpan={1} className="confluenceTd">
        A time value for seconds that will be timeout if exceed this value.
      </td>
    </tr>
  </tbody>
</table>


Permissions need to be granted in order to be able to use the external API (API token tied to the Service Account). Below is the permission that is needed:
- Can Access API Wrapper - Can Access controller in API Wrapper

Example:

- Below are the additional permissions needed for the Shenzhen user group USER_GROUP_ABC_PACKOUT_R1ACCOVER to be able to Packout:


- Can Access NG - Allow Generate Document


- Can Access NG - Can Access From External Client Gateway


- Can Access NG - Can Access WIP View

- Can Access NG - Can Configure WIP

- Can Access NG - Can Packout

- Document (iFactory) - Can Access Document

- Document Assignment (iFactory) - Can Access Document Assignment

- Assembly Configuration - Can Access Assembly Configuration

- Packout - WIP Packout Station (grant the necessary permission)

**Sample Scenarios:** 

- At MOE route step, user wishes to perform a customize rule validation before can start a WIP/LOT.


- For Shenzhen site, at WIP/LOT Packout Station, user will scan WIP/LOT to pack and the external API will return a Pass if able to pack or Fail together with error message if WIP/LOT is not allowed to pack.

**Sample Configuration:**  
Configure the Pre-Start Rule at the MOE route step with below parameters.
<table
  className="relative-table wrapped confluenceTable"
  style={{ width: "629.0px" }}
>
  <colgroup>
    <col style={{ width: "0.0px" }} />
    <col style={{ width: "0.0px" }} />
  </colgroup>
  <thead>
    <tr>
      <th className="confluenceTh">
        <p>URL</p>
      </th>
      <th className="confluenceTh">
        <p>Timeout (in seconds)</p>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td className="confluenceTd">
        http://
        <your web="" api="" address="" />
      </td>
      <td className="confluenceTd">10</td>
    </tr>
  </tbody>
</table>

**Result:**  
This configuration will prevent a WIP/LOT to start when the web api is returning a non “pass” result.