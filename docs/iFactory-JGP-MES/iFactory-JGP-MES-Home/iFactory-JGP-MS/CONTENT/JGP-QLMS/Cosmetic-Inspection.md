# Introduction

Cosmetic Inspection is an inspection/test operation where authorized user can inspect the unit(s) and record results with PASS / FAIL status. This operation can be performed through Kiosk also. Both NT and Non-NT user can perform this operation. 


### How to get there?


NT Login user can perform this operation both the below ways whereas non-NT login user can access through Kiosk only.

::: mermaid
graph LR
A("QLMS Lab Operations")-->0("Cosmetic Inspection")

:::

::: mermaid
graph LR
A("QLMS Lab Operations")-->0("Kiosk")
0-->1("Cosmetic Inspection")

:::


#### **Permission (QLMS)** 


**Cosmetic Inspection in QLMS system (NTID user)** 

- Cosmetic Inspection


- Can Access Cosmetic Inspection


- Can Modify Cosmetic Inspection



#### **Cosmetic Inspection in Kiosk ( NTID and Non NTID User)** 



- Grant access to service account user group with the following permissions:

- Kiosk( ifactory)


- QLMS (ifactory)


- Can Access Kiosk( ifactory)


- Can access WIP controller in API Wrapper( ifactory)


- Can access API Wrapper( ifactory)


- Kiosk (QLMS)


- Can Access Kiosk (QLMS)



#### **Screen Activity** 


Cosmetic Inspection screen enables user to perform the following activity:

- Inspect the units for the particular work order ID with PASS status

- Inspect the units for the particular work order ID with FAIL status after providing the comments why user wants to Fail the inspection

- User can go back to kiosk main Menu if accessing this screen through kiosk



#### **Pre-conditions** 



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)
needs to be configured and assigned to current user, and user has to login with selected Customer
- User has to configure Part Cycle time with 'Skip Cosmetic Insp' option OFF and having 'Group' with Cosmetic Inspection user assigned

- User has to
generate work order ID through inspection registration submission and get confirmed the same work order ID through work order confirmation

- Once confirmed, user should get email notification on performing Cosmetic inspection. User who gets this notification should perform Cosmetic Inspection against units of notified work order ID.


#### **Screen Dependency** 



- [Part Cycle Time](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)


- [Work Order Confirmation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Work-Order-Confirmation.md)



#### **Screen Specification** 


1.When the scanned Work Order ID does not belong to the selected Customer - System notifies with error message and does not let user to proceed with cosmetic inspection
2. When scanned an invalid entry - System notifies properly saying the Work Order ID does not exists
3. When scanned
a Work Order ID which does not need Cosmetic inspection - System notifies with error message saying: "Cosmetic Inspection is not required for WO: "Work Order ID""4. When 
scanning a work order ID against which cosmetic inspection is already completed - System notifies with proper error message
5. With valid data details, system shows relative information on scanned Work Order ID
6. User can PASS the inspection and relative successful message is been appeared in GREEN
7. Whereas Comments field becomes mandatory if user wants the inspection to be failed
8. Although user can fail the inspection result after providing Comments against it. An AMBER colored Inspection success message is been shown with FAILED status


#### **Fields** 



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
        <p>Scan Work Order</p>
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          User can scan a valid Work Order ID and system accepts it only when
          the Work Order is required cosmetic Inspection.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <read only="" information="" />
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          Below information on scanned Work order is been shown when system
          accepts Work Order ID for cosmetic inspection
        </p>
        <p>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Customer&nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; : Customer that associated with the scanned Work Order.
        </p>
        <p>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Project&nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; :&nbsp;Project that associated with the scanned
          Work Order.
        </p>
        <p>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Product Family&nbsp; : Product
          family that&nbsp;associated with the scanned Work Order.
        </p>
        <p>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Material&nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; : Material&nbsp;that associated with the scanned
          Work Order.
        </p>
        <p>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Version/Drawing Revision :
          Version/Drawing Revision that&nbsp;associated with the scanned Work
          Order.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Pass
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        <p>
          This is a button clicking which user can PASS the cosmetic inspection
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          <span style={{ color: "rgb(0,0,0)" }}>Fail</span>
        </p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>
          This is a button clicking which user can FAIL the cosmetic inspection
          after entering Comments
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <p>Comments</p>
      </td>
      <td style={{ textAlign: "left" }} colSpan={1} className="confluenceTd">
        <ul>
          <li>
            This field is free form and mandatory when user Fails the inspection
          </li>
          <li>This is optional when user PASS the inspection result</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        Back
      </td>
      <td style={{ textAlign: "left" }} className="confluenceTd">
        This is a button that available only when accessing this screen through
        Kiosk. It is useful to go back to main Kiosk screen
      </td>
    </tr>
  </tbody>
</table>




#### Attachments

[image2019-9-3_8-49-30.png](/.attachments/57639053.png)
[image2019-9-3_8-50-0.png](/.attachments/57639054.png)
[image2019-9-3_8-42-25.png](/.attachments/57639055.png)
[image2019-9-3_8-48-43.png](/.attachments/57639056.png)
[image2019-9-3_8-48-2.png](/.attachments/57639057.png)
[image2019-9-3_9-8-14.png](/.attachments/57639058.png)
[image2019-9-3_9-9-25.png](/.attachments/57639059.png)
[image2019-9-17_13-10-30.png](/.attachments/57639064.png)
[image2019-9-17_13-11-41.png](/.attachments/57639065.png)
[image2019-9-17_13-13-36.png](/.attachments/57639066.png)
[image2019-9-17_13-14-44.png](/.attachments/57639067.png)
[image2019-9-17_13-15-12.png](/.attachments/57639068.png)
[image2019-9-17_13-15-40.png](/.attachments/57639069.png)
[image2019-9-17_13-16-8.png](/.attachments/57639070.png)
[image2019-9-19_7-11-37.png](/.attachments/57639121.png)
[image2019-9-19_7-12-42.png](/.attachments/57639122.png)
[image2019-11-14_15-46-4.png](/.attachments/61079594.png)
[image2019-12-2_13-55-37.png](/.attachments/61079809.png)
