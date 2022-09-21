# Introduction

Collect Unallocated Task is an operation where any user with / without NTID login, can collect both unallocated task(s) ( which skip the task allocation) from Kiosk. 


### How to get there?


Both NT Login user and non-NT login user can access this screen through Kiosk.

::: mermaid
graph LR
A("QLMS Lab Operations")-->0("KIOSK")
0-->1("COLLECT TASK")
1-->2("Unallocated Task")

:::


#### **Screen Activity** 


Collect Unallocated Task screen enables user to perform the following activity:

- Confirm Work Order ID and Quantity once user tries to collect unallocated task

- User can collect any unallocated tasks available

- Partial collection is possible. So for example,  if the available quantity of the task is 10, user can collect the task qty "=10

- Once collected,

- System automatically
records the start datetime, quantity and measuring user in back-end

- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


#### **Pre-condition** 



- At-least one
[ ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)
unallocated task with Work order ID is available for task collection

#### **Screen Dependency** 



- [Task Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation.md)


#### **Grid Columns (Read-only Values)** 



<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight confluenceTd" style={{ textAlign: "left" }}>
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight confluenceTd" style={{ textAlign: "left" }}>
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Work Order ID</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          All the Work Order IDs that skipped task allocation will be listed
          here.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Project</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>The project that associated with the work order ID.</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Product Family</span>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>The product family of unit that need for measuring.</p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>Material</span>
        </p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        The material of unit that need for measuring.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route/Version
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          The route that produced products(s) need to be measuring.&nbsp;The
          filed showed route and route version value which&nbsp;registered in
          inspection registration and display NA if there is no route registered
          for workorder.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route Step
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          The route step that produced products(s) need to be measuring. The
          filed showed route step value which&nbsp;registered in inspection
          registration and display NA if there is no route step registered for
          workorder.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Job Type</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        The measurement type that work order associated to.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Measurement Equipment Type</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        The measurement equipment type that user needs to measure the unit.
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Remaining Quantity</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        The remaining quantity that user can collect for measuring.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Urgency Status</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        Indicate how urgent is the work order.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Submission Unit</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        The unit that submitted the work order.
      </td>
    </tr>
  </tbody>
</table>



#### **Confirmation Pop-up Fields** 



<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight confluenceTd" style={{ textAlign: "left" }}>
        <p>
          <strong>Field</strong>
        </p>
      </td>
      <td className="highlight confluenceTd" style={{ textAlign: "left" }}>
        <p>
          <strong>Description</strong>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>Work Order ID</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            Prompt a screen for user to scan the work order ID ( Mandatory)
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>Quantity</span>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>
            System auto populates the Remaining quantity in editable mode.
            Although user can modify the quantity (&lt;= available qty) for
            partial collection
          </span>
        </p>
      </td>
    </tr>
  </tbody>
</table>



#### Attachments

[image2019-9-17_13-16-8.png](/.attachments/57639368.png)
[image2019-9-17_13-15-40.png](/.attachments/57639369.png)
[image2019-9-19_7-12-42.png](/.attachments/57639370.png)
[image2019-9-17_13-14-44.png](/.attachments/57639371.png)
[image2019-9-17_13-10-30.png](/.attachments/57639372.png)
[image2019-9-17_13-11-41.png](/.attachments/57639373.png)
[image2019-9-17_13-13-36.png](/.attachments/57639374.png)
