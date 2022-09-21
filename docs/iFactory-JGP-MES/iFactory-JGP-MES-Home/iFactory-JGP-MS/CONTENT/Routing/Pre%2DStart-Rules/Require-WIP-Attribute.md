# Introduction

This rule verifies that a WIP contains certain Attributes and/or Values.
<table className="confluenceTable">
  <colgroup>
    <col />
    <col />
  </colgroup>
  <tbody>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <a
          href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ApplicationScope"
          rel="nofollow"
        >
          Application Scope
        </a>
      </td>
      <td className="confluenceTd">
        Customer + Product Family + Material/Plant Code
      </td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={1}
        data-highlight-colour="grey"
      >
        <a
          href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-BlankScope"
          rel="nofollow"
        >
          Blank Scope Applies to all WIPs
        </a>
      </td>
      <td colSpan={1} className="confluenceTd">
        Yes
      </td>
    </tr>
    <tr>
      <td className="highlight-grey confluenceTd" data-highlight-colour="grey">
        <a
          href="http://usplnd0wiki01:8090/display/PB/Pre-Start+Rules#Pre-StartRules-ParamRel"
          rel="nofollow"
        >
          Parameter Inter-relationship
        </a>
      </td>
      <td className="confluenceTd">Apply All</td>
    </tr>
    <tr>
      <td
        className="highlight-grey confluenceTd"
        colSpan={2}
        data-highlight-colour="grey"
      >
        Verification Parameters
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Attribute Name (Required)
      </td>
      <td colSpan={1} className="confluenceTd">
        The name of Attribute of which the WIP must contain. The following
        condition will apply accordingly as per follow:
        <ul>
          <li>Apply OR condition for same Attribute Name</li>
          <li>Apply AND condition for different Attribute Name</li>
        </ul>
        <p>&nbsp;</p>
        <p>For example: if below item configured:</p>
        <ul>
          <li>Attribute Name: COLOR; Attribute Value: PINK</li>
          <li>Attribute Name: SIZE; Attribute Value: 10</li>
          <li>
            Attribute Name: SHAPE; Attribute Value: <blank />
          </li>
          <li>Attribute Name: COLOR; Attribute Value: GOLD</li>
          <li>Attribute Name: SIZE; Attribute Value: 15</li>
        </ul>
        <p>As per result:</p>
        <ul>
          <li>
            WIP with Color = GOLD; Size 10 and Shape A should pass the pre-start
            rule validation.
          </li>
          <li>
            WIP with Color = PINK; Size 15 and Shape B should pass the pre-start
            rule validation.
          </li>
          <li>
            WIP with Color = PINK; Size 15 and&nbsp;
            <span style={{ color: "rgb(255,0,0)" }}>no Shape</span>
            &nbsp;attribute should fail the pre-start rule validation.
          </li>
          <li>
            WIP with&nbsp;
            <span style={{ color: "rgb(255,0,0)" }}>Color = Gray</span>; Size 10
            and Shape A should fail the pre-start rule validation.
          </li>
          <li>
            WIP with Color = GOLD;&nbsp;
            <span style={{ color: "rgb(255,0,0)" }}>Size 12</span>&nbsp;and
            Shape A should fail the pre-start rule validation.
          </li>
        </ul>
        <p>
          <br />
        </p>
        <p>
          Note: The attribute name and value are also case sensitive. This
          enhancement for OR condition is applicable for WIP &nbsp;only
          (Repetitive and BTO/CTO).
        </p>
      </td>
    </tr>
    <tr>
      <td colSpan={1} className="confluenceTd">
        Attribute Value (Optional)
      </td>
      <td colSpan={1} className="confluenceTd">
        <p>The exact value for the Attribute of which the WIP must contain.</p>
        <p>
          Leave this field blank if WIP must only contain the Attribute without
          regards to what value is assigned to that Attribute.
        </p>
      </td>
    </tr>
  </tbody>
</table>



- **Sample Scenario 1:**

At QC route step, user wishes to confirm that any WIP of Material "MAT-000-A1" and Plant Code "JB01"contains Attribute called "Color Code" the Attribute has value of "Red" before it is allowed to start.**Sample Configuration:**  
Configure the Pre-Start Rule at QC route step with below parameters
<table className="confluenceTable">
  <tbody>
    <tr>
      <th className="confluenceTh">Customer Name</th>
      <th className="confluenceTh">Product Family</th>
      <th className="confluenceTh">Material + Plant Code</th>
      <th className="confluenceTh">Attribute Name</th>
      <th colSpan={1} className="confluenceTh">
        Attribute Value
      </th>
    </tr>
    <tr>
      <td className="confluenceTd">
        <em>blank</em>
      </td>
      <td className="confluenceTd">
        <em>blank</em>
      </td>
      <td className="confluenceTd">
        <span>MAT-000-A1 + JB01</span>
      </td>
      <td className="confluenceTd">Color Code</td>
      <td colSpan={1} className="confluenceTd">
        Red
      </td>
    </tr>
  </tbody>
</table>

**Result:**  
This configuration will prevent any WIP from being started at QC route step if the WIP does not contain Attribute with name "Color Code" or the Value for the Attribute "Color Code" is not "Red"
**Sample Scenario 2:**  
At QC route step, user wishes to confirm that anyWIP of Product Family "Tiger"contains an Attribute called "Config Test", without concern for the Value assigned for the Attribute, before it is allowed to start **Sample Configuration:**  
Configure the Pre-Start Rule at QC route step with below parameters
<table className="confluenceTable">
  <tbody>
    <tr>
      <th className="confluenceTh">Customer Name</th>
      <th className="confluenceTh">Product Family</th>
      <th className="confluenceTh">Material + Plant Code</th>
      <th className="confluenceTh">Attribute Name</th>
      <th colSpan={1} className="confluenceTh">
        Attribute Value
      </th>
    </tr>
    <tr>
      <td className="confluenceTd">
        &nbsp;<em>blank</em>
      </td>
      <td className="confluenceTd">&nbsp;Tiger</td>
      <td className="confluenceTd">
        <em>blank</em>
      </td>
      <td className="confluenceTd">Config Test</td>
      <td colSpan={1} className="confluenceTd">
        <em>blank</em>
      </td>
    </tr>
  </tbody>
</table>

**Result:**  
This configuration will prevent WIP from being started at QC route step if the WIP does not contain an Attribute with name "Config Test".

