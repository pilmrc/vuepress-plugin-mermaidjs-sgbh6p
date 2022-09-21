# Introduction

Setup Sheet 
Deviationis the screen to create a deviated setup from an original (not deviated) setup.This is part of the Deviation module and the "Setup Sheet" is a type of deviation.
The setup sheet deviation is used to create a setup sheet, usually for limited time, with some difference with the original due to some change in the production flow.
For instance, when a partnumber is not available is possible to replace it with another partnumber (i.e. from different vendor) without change the setup sheet used in the normal production. Or create a deviated setup sheet because a machine is broken and production has to use another machine for a while.
Anyway, the main usage of a deviated setup sheet is to temporary work with different material or to allocate them is different position (different slot). 
An Original Setup Sheet can have different deviated setup sheets when different deviations are applied to it.Even if the deviation has completed or expired, the deviated setup sheet still continue to exist to complete the WIP associated to the deviation. When a deviated setup sheet is not anymore necessary it shall be deactivated (see 
[Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)and [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)for the Active flag). When a WIP is associated to a Setup Sheet deviation 
*type* (see Deviation for details) the system will check if the setup installed, on the step where the WIP is moved, is related to the same deviation number, so that is not possible to produce a WIP associated to deviation A with a setup sheet with deviation B.


### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("DEVIATION")
0-->1("SETUP SHEET MENU")

:::
Setup sheet menu can be visible only after the deviation number has been created (or selected):
![image2017-7-31 12:4:33.png](/.attachments/29918346.png)





#### Screen Activity


Deviation Setup Sheet type enables user to perform the following activity:

- create a new setup sheet from original one and associate it to the deviation number

Pre Condition
The following data needs to be pre-configured before creating a deviation setup sheet

- Deviation number created and in
"New" status
- Deviation number associated to one or more assembly/ies

- Setup sheet exist for above assemblies (Original Setup Sheet)



#### Screen Dependency


Following screens have direct dependency with deviation Setup Sheet

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)


- [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)


- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)


- [Validate](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Validate-Setup-Sheet-(4.2).md)


- Shared Setup Sheet

![image2017-7-31 12:5:43.png](/.attachments/29918345.png)





#### Fields



<table className="wrapped confluenceTable">
  <tbody>
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
        <p>Customer/Division</p>
      </td>
      <td className="confluenceTd">
        <p>
          The customer/division configured for the deviation number. (Read Only)
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Bom
      </td>
      <td colSpan={1} className="confluenceTd">
        The BOM number associated to the material related to the deviation
        number
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Material
      </td>
      <td colSpan={1} className="confluenceTd">
        The material number related to the deviation
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>Scope</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>The deviation scope (see </span>
        <a href="Deviation-29918292.html">Deviation</a>
        <span>&nbsp;</span>
        <span>for details)</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Status
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>The deviation status</span>
      </td>
    </tr>
    <tr>
      <td colSpan={2} className="confluenceTd">
        <br />
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        <span>[Setup Sheet ID] - Number / Version</span>
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          It is the setup sheet ID selected to be used as Original Setup ID.
        </p>
        <p>
          The deviated setup will be created from the Original Setup ID, then
          the user will be able to modify it based on deviation needs.
        </p>
      </td>
    </tr>
    <tr>
      <td className="confluenceTd">
        <div className="content-wrapper">
          <p>
            "+" button{" "}
            <span className="confluence-embedded-file-wrapper">
              <img
                className="confluence-embedded-image"
                src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918343.png&$format=octetStream"
                data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918343.png&$format=octetStream"
                data-unresolved-comment-count={0}
                data-linked-resource-id={29918343}
                data-linked-resource-version={1}
                data-linked-resource-type="attachment"
                data-linked-resource-default-alias="image2017-7-31 13:49:52.png"
                data-base-url="http://usplnd0wiki01:8090"
                data-linked-resource-content-type="image/png"
                data-linked-resource-container-id={29918341}
                data-linked-resource-container-version={2}
              />
            </span>
          </p>
        </div>
      </td>
      <td className="confluenceTd">
        <p>
          It is the way to create the deviated setup sheet ID. A confirmation
          prompt will appear before proceed. Once created the setup sheet ID
          cannot be deleted (
          <em>
            the deletion is performed by the system only when the Deviation
            Number is deleted
          </em>
          ).
        </p>
        <p>
          The deviated setup sheet will have same header and Detail than the
          original (except for the field "Deviation" that will contain the
          deviation number). The Detail can be modified to reflect the deviation
          request.
        </p>
      </td>
    </tr>
    <tr>
      <td style={{ textAlign: "center" }} colSpan={2} className="confluenceTd">
        <strong>Data Grid Columns</strong>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Setup ID status
      </td>
      <td colSpan={1} className="confluenceTd">
        The deviated Setup Sheet ID status
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Assembly
      </td>
      <td colSpan={1} className="confluenceTd">
        The assembly number related to the deviated setup sheet
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route
      </td>
      <td colSpan={1} className="confluenceTd">
        The route related to the deviated setup sheet
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Route Step
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>The route step related to the deviated setup sheet</span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Equipment
      </td>
      <td colSpan={1} className="confluenceTd">
        <span>
          The equipment name related to the deviated setup sheet. This value is
          available only for Equipment Setup Sheet. For Manual Station Setup
          Sheet this column is blank.
        </span>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Original Setup ID
      </td>
      <td colSpan={1} className="confluenceTd">
        It is the setup sheet ID where the deviated setup sheet is coming from
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Deviated Setup Sheet
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>
          These are the information related to the setup sheet just created.
        </p>
        <p>
          The format is:
          <em>
            {" "}
            [Setup Sheet ID] -{" "}
            <setup number="">
              {" "}
              / <setup version="" />
            </setup>
          </em>
        </p>
        <p>
          This column is a link to Part Allocation screen to allow user to
          modify the Detail of the deviated setup sheet before use it.
        </p>
      </td>
    </tr>
  </tbody>
</table>



*Another option* 
to create a deviated setup sheet is from Setup Sheet screen:
- from Original setup sheet is possible to open the "Deviation" combo box field

- this field will contain the list of available Deviation number that can be associated to the original setup

- once the deviation number is selected a confirmation prompt will appear before creating the deviated setup sheet

- if confirmed, the system will copy the original setup to the deviated setup

- user can modify header of deviated setup sheet before saving

- at saving, the system will create a new Setup Sheet ID and Detail can be managed accordingly (like any other setup sheet)
Once the deviated setup sheet has been created from Setup Sheet screen (Manual Station and/or Equipment) it will appear in the above Deviation menu as well.
It is possible, from Setup Sheet screen, to create deviated setup sheet using another deviated setup as reference:
![image2017-7-31 13:35:31.png](/.attachments/29918344.png)


In this case the new deviated setup created will refer to the same Original Setup ID (in the above picture all deviated setup sheet will refer to Original Setup ID 712), so that won't be possible to have a deviation of deviation.
For example: 
Setup 123 --" apply Dev001 --" new Setup ABC (with original setup ID: Setup 123)
Setup ABC --" apply Dev002 --" new Setup DEF 
(with original setup ID: Setup 123)**Once created the deviated setup sheet can be managed as any other setup sheets** 
(activate, deactivate, modify if not locked, etc.). When deviated setup sheet is created, the Original Setup Sheet will be 
**locked** . The system is able to show the difference between the Original Setup Sheet Detail and the Deviated Setup Sheet Detail (see [Equipment Setup Shee](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)t or [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)).When deviated setup sheet is entered into Part Allocation screen the system will notify that a deviated setup sheet is loaded. In part allocation screens, if the Original Setup ID is selected the system will prompt the list of deviated setup sheets related to it, so that operator is aware that some deviated setups are available for selected Original Setup Sheet ID (see
[ Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)and/or [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)).Even if a deviation is Expired or Deactivated, it is still possible to work with related deviated setup sheet. This will allow production to complete the WIP previously associated to the deviation when it wasn't expired/deactivated. To hide the deviated setup sheet from production usage the user has to set the deviated setup sheet to 
Inactive (in[ Equipment Setup Sheet ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)or [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)![image2017-7-31 14:2:30.png](/.attachments/29918342.png)


).

At WIP Movement: when a deviated setup sheet is installed in the related step and a WIP is moved to it, 
**the system will check if the WIP is associated to the same deviation number than the installed setup sheet** , so that it won't be possible to allocate material from a setup sheet of different deviation.





#### Attachments

[image2017-7-31 14:2:30.png](/.attachments/29918342.png)
[image2017-7-31 13:49:52.png](/.attachments/29918343.png)
[image2017-7-31 13:35:31.png](/.attachments/29918344.png)
[image2017-7-31 12:5:43.png](/.attachments/29918345.png)
[image2017-7-31 12:4:33.png](/.attachments/29918346.png)
[image2017-5-17 13:31:28.png](/.attachments/29918347.png)
[image2017-5-17 13:29:56.png](/.attachments/29918348.png)
[image2017-5-17 14:46:54.png](/.attachments/29918349.png)
[image2017-5-17 14:59:32.png](/.attachments/29918350.png)
[image2017-5-17 15:7:31.png](/.attachments/29918351.png)
[image2017-5-17 15:13:48.png](/.attachments/29918352.png)
[image2017-5-17 15:22:37.png](/.attachments/29918353.png)
[image2017-5-18 14:47:30.png](/.attachments/29918354.png)
[image2017-7-3 16:41:28.png](/.attachments/29918355.png)
[image2017-7-3 16:47:34.png](/.attachments/29918356.png)
[image2017-7-3 16:52:3.png](/.attachments/29918357.png)
[image2017-7-5 14:45:44.png](/.attachments/29918358.png)
[image2017-7-5 14:48:36.png](/.attachments/29918359.png)
[image2017-7-5 14:48:8.png](/.attachments/29918360.png)
[image2017-7-5 15:21:35.png](/.attachments/29918361.png)
