# Introduction



### **Input from SAP ZHUPACK** 


![image2020-1-30_14-49-1.png](/.attachments/64422199.png)


<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <th className="confluenceTh">XML Element Name</th>
      <th className="confluenceTh">Mapping</th>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>CUSTOMER</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Customer name in iFactory.
        </span>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>DIVISION</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Division name in iFactory.
        </span>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>SITE</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Site Code and the system will ignore the "
        </span>
        <span style={{ color: "rgb(0,0,0)" }}>
          JGP-iFactory-" and take the character after this as the Site key. For
          example JGP-iFactory-SIP then the Site Code will be SIP.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>EVENT.EVENTID</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Event ID and it is always is "5".
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>EVENT.EVENTDESC</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Event Desc and it is always is "Retrieve by ContainerID".
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>CONTAINER.CONTAINERTYPE</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Indicate the Container level or Pallet level. 1 refer to the Container
          level and 6 is referring to the Pallet level.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          CONTAINER.ISREQUIREDSERIAL
        </span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Determine whether the iFactory needs to return the&nbsp;
        </span>
        <span style={{ color: "rgb(0,0,0)" }}>
          <serial-upper>
            {" "}
            (WIP Serial Number) information or not when SAP ZHUPACK query the
            container. There will have 2 possible value which is "Y" or "N".
            This only take consideration for WIP container contains material
            with serial number.
          </serial-upper>
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINER.CONTAINERIDS.CONTAINERID
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Refer to the Pallet Container Number (Pallet Number).
        </span>
      </td>
    </tr>
  </tbody>
</table>

"SERIAL_UPPER" (WIP Serial Number) information or not when SAP ZHUPACK query the container. There will have 2 possible value which is "Y" or "N". This only take consideration for WIP container contains material with serial number.
CONTAINER.CONTAINERIDS.CONTAINERIDRefer to the Pallet Container Number (Pallet Number).


#### **Response Result to SAP ZHUPACK** 



- The system is extracting data only for a Pallet in "Closed" status and with Hold flag to "False". (Any other status is considered invalid)

- Sample response result for Lot Pallet that Closed status and with Hold flag "False"
![image2020-1-30_14-55-12.png](/.attachments/64422200.png)



- **Sample response result for WIP Pallet and ISREQUIREDSERIAL tag is "Y" with Closed status and with Hold flag "False"**

![image2020-1-30_14-56-14.png](/.attachments/64422201.png)



- **Sample response results for Lot Pallet with Scrapped status**


![image2020-1-30_14-57-8.png](/.attachments/64422202.png)



- **Sample response results for WIP Pallet with On-Hold status**

![image2020-1-30_14-58-12.png](/.attachments/64422203.png)



- Sample response results for WIP Pallet with Shipped status

![image2020-1-30_15-1-0.png](/.attachments/64422204.png)

<table className="wrapped confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <th className="confluenceTh">XML Element Name</th>
      <th className="confluenceTh">Mapping</th>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>SERIAL-UPPER</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          If{" "}
          <isrequiredserial>
            {" "}
            = Y, the system returns the Material serial number.&nbsp; If{" "}
            <isrequiredserial>
              {" "}
              = N, the system will not return the Material serial number.
            </isrequiredserial>
          </isrequiredserial>
        </span>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>MATERIAL-UPPER</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Refer to the Top Level Material that packed under the lower container
          which is packed under the Pallet.
        </span>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>PALLET</span>
      </td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Refer to the Pallet Container Number&nbsp;(Pallet Number)
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>CARTON</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Refer to the Lower Container Number&nbsp;(Box Number)
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>CONTAINERID</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Refer to the Pallet Container Number&nbsp;(Pallet Number) which is
          same as PALLET
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>CONTAINER-STATUS</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p style={{ textAlign: "left" }}>Refer to Pallet status as below:</p>
        <ul style={{ textAlign: "left" }}>
          <li>C - The Pallet is in Closed status and with Hold flag "False"</li>
          <li>
            I - The Pallet is an invalid pallet number&nbsp;
            <span style={{ color: "rgb(23,43,77)" }}>
              OR the WIPs is "In Process" status OR the Lots is "In Progress"
              status that packed in the lower level container
            </span>
          </li>
          <li>O - The Pallet is in Open status</li>
          <li>X - The Pallet is in Scrapped status</li>
          <li>H - The Pallet is in On Hold status</li>
          <li>N - The Pallet is in Consumed status</li>
          <li>S - The Pallet is in Shipped status</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>TOTAL-QUANTITY</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Refer to the total quantity of item packed in each lower container and
          SAP will sum it to get the total quantity for the pallet
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>ISRMA</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span style={{ color: "rgb(23,43,77)" }}>
          Refer to whether the pallet consists of RMA product or not
        </span>
      </td>
    </tr>
  </tbody>
</table>


SERIAL_UPPER
If "ISREQUIREDSERIAL" = Y, the system returns the Material serial number.  If "ISREQUIREDSERIAL" = N, the system will not return the Material serial number.
MATERIAL_UPPER
Refer to the Top Level Material that packed under the lower container which is packed under the Pallet.
PALLET
Refer to the Pallet Container Number (Pallet Number)
CARTON
Refer to the Lower Container Number (Box Number)
CONTAINERID
Refer to the Pallet Container Number (Pallet Number) which is same as PALLET
CONTAINER_STATUS
Refer to Pallet status as below:

- C - The Pallet is in Closed status and with Hold flag "False"

- I - The Pallet is an invalid pallet number
OR the WIPs is "In Process" status OR the Lots is "In Progress" status that packed in the lower level container

- O - The Pallet is in Open status

- X - The Pallet is in Scrapped status

- H - The Pallet is in On Hold status

- N - The Pallet is in Consumed status

- S - The Pallet is in Shipped status
TOTAL_QUANTITY
Refer to the total quantity of item packed in each lower container and SAP will sum it to get the total quantity for the pallet
ISRMA
Refer to whether the pallet consists of RMA product or not



#### **Enhancement for SSCC 18d code as pallet number** 



- Background: SAP can not accept number as prefix for container number


- SSCC (Serial Shipping Container Code ) 18d code data structure

![image2021-5-8_10-13-19.png](/.attachments/91128423.png)



- SSCC is generated in iFactory using next number checksum modulo10 feature


- The enhancement is just for
"EVENTID" equal “5”SAP side scan the pallet number using a specific scanner to add prefix "P" for it，then generate XML file and send the request to iFactory，iFactory remove the prefix，retrieve info and get back to SAP (the prefix will be added back)
For example, pallet number is "
001959490005000114
" in iFactory ![image2021-5-8_10-16-37.png](/.attachments/91128424.png)


SAP add prefix "P
" for it as "P
001959490005000114
" and generate the XML file![image2021-5-8_10-19-29.png](/.attachments/91128425.png)


iFactory get the request and remove the prefix，retire the actual data and send back to SAP，for "CARTON" prefix "B" is added  back and add prefix "P" for "PALLET" & "CONTAINERID"
![image2021-5-8_10-21-41.png](/.attachments/91128426.png)





#### **Support Assembly Alias** 


Shipping Validation supports Assembly Alias, which means if the product is converted by Assembly Alias, the latest Alias material can be retrieved
For example, the material of "GM021" is converted from "PBC981801A0-N" to "
PBC981801A0-N-S
" by Assembly Alias ![image2021-5-10_14-26-9.png](/.attachments/92733445.png)


Request and get the correct material info
![image2021-5-10_14-26-55.png](/.attachments/92733446.png)





#### Attachments

[image2020-1-30_14-49-1.png](/.attachments/64422199.png)
[image2020-1-30_14-55-12.png](/.attachments/64422200.png)
[image2020-1-30_14-56-14.png](/.attachments/64422201.png)
[image2020-1-30_14-57-8.png](/.attachments/64422202.png)
[image2020-1-30_14-58-12.png](/.attachments/64422203.png)
[image2020-1-30_15-1-0.png](/.attachments/64422204.png)
[image2021-5-8_10-13-19.png](/.attachments/91128423.png)
[image2021-5-8_10-16-37.png](/.attachments/91128424.png)
[image2021-5-8_10-19-29.png](/.attachments/91128425.png)
[image2021-5-8_10-21-41.png](/.attachments/91128426.png)
[image2021-5-10_14-26-9.png](/.attachments/92733445.png)
[image2021-5-10_14-26-55.png](/.attachments/92733446.png)
