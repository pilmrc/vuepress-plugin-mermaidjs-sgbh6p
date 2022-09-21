# Introduction



### **Input from SAP ZHUPACK** 


![image2020-1-22_13-31-21.png](/.attachments/64422100.png)


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
      <td className="confluenceTd">CUSTOMER</td>
      <td className="confluenceTd">Customer name in iFactory.</td>
    </tr>
    <tr>
      <td className="confluenceTd">DIVISION</td>
      <td className="confluenceTd">Division name in iFactory.</td>
    </tr>
    <tr>
      <td className="confluenceTd">SITE</td>
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
        EVENT.EVENTID
      </td>
      <td colSpan={1} className="confluenceTd">
        Event ID and it is always is "5".
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        EVENT.EVENTDESC
      </td>
      <td colSpan={1} className="confluenceTd">
        Event Desc and it is always is "Retrieve by ContainerID".
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINER.CONTAINERTYPE
      </td>
      <td colSpan={1} className="confluenceTd">
        Indicate the Container level or Pallet level. 1 refer to the Container
        level and 6 is referring to the Pallet level.
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINER.ISREQUIREDSERIAL
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          Determine whether the iFactory needs to return the&nbsp;
          <span style={{ color: "rgb(0,0,0)" }}>
            <serial-upper>
              {" "}
              (WIP Serial Number) information or not when SAP ZHUPACK query the
              container. There will have 2 possible value which is "Y" or "N".
              This only take consideration for WIP container contains material
              with serial number.
            </serial-upper>
          </span>
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINER.CONTAINERIDS.CONTAINERID
      </td>
      <td colSpan={1} className="confluenceTd">
        Refer to the Container Number (Box Number).
      </td>
    </tr>
  </tbody>
</table>

"SERIAL_UPPER" (WIP Serial Number) information or not when SAP ZHUPACK query the container. There will have 2 possible value which is "Y" or "N". This only take consideration for WIP container contains material with serial number.
CONTAINER.CONTAINERIDS.CONTAINERIDRefer to the Container Number (Box Number).

#### **Response Result to SAP ZHUPACK** 



- The system is extracting data only for a container in "Closed" status and with Hold flag to "False". (Any other status is considered invalid)



- Sample response result for Lot Container that Closed status and with Hold flag "False"


![image2020-1-22_14-14-45.png](/.attachments/64422102.png)



- Sample response result for WIP Container and ISREQUIREDSERIAL tag is "Y" with Closed status and with Hold flag "False"



![image2020-1-22_14-17-4.png](/.attachments/64422105.png)


![image2020-1-22_14-17-30.png](/.attachments/64422106.png)



- Sample response results for Lot Container with Scrapped status



![image2020-1-22_14-34-42.png](/.attachments/64422108.png)



- Sample response results for WIP Container with On-Hold status


![image2020-1-22_14-37-28.png](/.attachments/64422111.png)




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
      <td className="confluenceTd">SERIAL-UPPER</td>
      <td className="confluenceTd">
        <p>
          If{" "}
          <isrequiredserial>
            {" "}
            = Y, the system returns the Material serial number.&nbsp; If{" "}
            <isrequiredserial>
              {" "}
              = N, the system will not return the Material serial number.
            </isrequiredserial>
          </isrequiredserial>
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">MATERIAL-UPPER</td>
      <td className="confluenceTd">
        Refer to the Top Level Material that packed under the container.
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">CARTON</td>
      <td className="confluenceTd">
        <span style={{ color: "rgb(0,0,0)" }}>
          Refer to the Container Number&nbsp;(Box Number)
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINERID
      </td>
      <td colSpan={1} className="confluenceTd">
        Refer to the Container Number&nbsp;(Box Number)
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        CONTAINER-STATUS
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Refer to Container or Box status as below:</p>
        <ul>
          <li>
            C - The Container or Box is in Closed status and with Hold flag
            "False"
          </li>
          <li>
            I - The Container or Box is an invalid container number/box number
            OR the WIPs is "In Process" status OR the Lots is "In Progress"
            status.
          </li>
          <li>O - The Container or Box is in Open status</li>
          <li>X - The Container or Box is in Scrapped status</li>
          <li>H - The Container or Box is in On Hold status</li>
          <li>N - The Container or Box is in Consumed status</li>
          <li>S - The Container or Box is in Shipped status</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        TOTAL-QUANTITY
      </td>
      <td colSpan={1} className="confluenceTd">
        Refer to the total quantity of item packed in the container or box
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        ISRMA
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>Refer to whether the container consists of RMA product or not</p>
      </td>
    </tr>
  </tbody>
</table>

SERIAL_UPPERIf "ISREQUIREDSERIAL" = Y, the system returns the Material serial number.  If "ISREQUIREDSERIAL" = N, the system will not return the Material serial number.
MATERIAL_UPPERRefer to the Top Level Material that packed under the container.CARTONRefer to the Container Number (Box Number)
CONTAINERIDRefer to the Container Number (Box Number)CONTAINER_STATUSRefer to Container or Box status as below:

- C - The Container or Box is in Closed status and with Hold flag "False"

- I - The Container or Box is an invalid container number/box number OR the WIPs is "In Process" status OR the Lots is "In Progress" status.

- O - The Container or Box is in Open status

- X - The Container or Box is in Scrapped status

- H - The Container or Box is in On Hold status

- N - The Container or Box is in Consumed status

- S - The Container or Box is in Shipped status
TOTAL_QUANTITYRefer to the total quantity of item packed in the container or boxISRMARefer to whether the container consists of RMA product or not


#### **Enhancement for SSCC 18d code as container number** 



- Background: SAP can not accept number as prefix for container number


- SSCC (Serial Shipping Container Code ) 18d code data structure

![image2021-5-8_9-13-47.png](/.attachments/91128413.png)



- **SSCC is generated in iFactory using next number checksum modulo10 feature**


- The enhancement is just for
"EVENTID" equal “5”SAP side scan the container number using a specific scanner to add prefix "B" for it，then generate XML file and send the request to iFactory，iFactory remove the prefix，retrieve info and get back to SAP (the prefix will be added back)
For example, container number is "001959490004000115" in iFactory 
![image2021-5-8_10-8-51.png](/.attachments/91128419.png)


SAP add prefix "B" for it as "B001959490004000115" and generate the XML file
![image2021-5-8_10-9-32.png](/.attachments/91128420.png)


iFactory get the request and remove the prefix，retire the actual data and send back to SAP，for "CARTON" & "CONTAINERID" prefix "B" is added  back
![image2021-5-8_10-10-1.png](/.attachments/91128421.png)





#### **Support Assembly Alias** 


Shipping Validation supports Assembly Alias, which means if the product is converted by Assembly Alias, the latest Alias material can be retrieved
For example, the material of "GM037" is converted from "PBC981801A0-N" to "PBC981801A0-N-S" by Assembly Alias 
![image2021-5-10_14-6-20.png](/.attachments/92733441.png)


Request and get the correct material info
![image2021-5-10_14-10-43.png](/.attachments/92733442.png)






#### Attachments

[image2020-1-22_13-31-21.png](/.attachments/64422100.png)
[image2020-1-22_14-14-45.png](/.attachments/64422102.png)
[image2020-1-22_14-15-56.png](/.attachments/64422103.png)
[image2020-1-22_14-17-4.png](/.attachments/64422105.png)
[image2020-1-22_14-17-30.png](/.attachments/64422106.png)
[image2020-1-22_14-34-42.png](/.attachments/64422108.png)
[image2020-1-22_14-37-28.png](/.attachments/64422111.png)
[image2021-5-8_9-13-47.png](/.attachments/91128413.png)
[image2021-5-8_9-24-42.png](/.attachments/91128414.png)
[image2021-5-8_9-25-17.png](/.attachments/91128415.png)
[image2021-5-8_9-25-27.png](/.attachments/91128416.png)
[image2021-5-8_9-27-37.png](/.attachments/91128417.png)
[image2021-5-8_10-8-51.png](/.attachments/91128419.png)
[image2021-5-8_10-9-32.png](/.attachments/91128420.png)
[image2021-5-8_10-10-1.png](/.attachments/91128421.png)
[image2021-5-10_14-6-20.png](/.attachments/92733441.png)
[image2021-5-10_14-10-43.png](/.attachments/92733442.png)
[image2021-5-10_14-12-23.png](/.attachments/92733443.png)
