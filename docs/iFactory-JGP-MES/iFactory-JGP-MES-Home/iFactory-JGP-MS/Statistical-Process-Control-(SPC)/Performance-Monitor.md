# Introduction

Performance Monitor screen enables user to monitor the production process by control charts , capability index , graphs and statistical hypothesis test to 
detect trends or changes in the process before they result in non-conforming product and scrap. User also can perform simulation to check which is the suitable chart type for monitoring production process.


### How to get there?



::: mermaid
graph LR
A("SPC")-->0("Performance Monitor")

:::


#### Permission

The following permissions need to be granted for accessing the screen :

1.  Can View Performance Monitor

#### Screen Activity

Performance Monitor screen allows to perform the following activities:

*   View control charts , raw data , capability index and graphs
*   Perform statistical hypothesis tests 
*   Perform simulation.
*   View the trend of the production process.
*   View, submit , approved or reject corrective action form

#### Pre Condition

The following item need to be ready before view Performance Monitor:

*   Cerate chart configuration.

#### Screen Dependency

The following screen(s) has direct dependency with Performance Monitor.

*   Chart Configuration ( Add Configuration and Manage Configuration)
*   SPC List
*   My Dashboard

#### Functions

| **Filter** | **Description** |
| --- | --- |
| Select Product Family | Enable user to select (searchable) the configured configuration in order to display the control chart. |
| Select Configuration | Enable user to select (searchable) the configured configuration based on the selected Product Family in order to display the control chart.<br /><br />It will list both Active and Inactive configuration for selection . Only those deleted configuration wouldn't be showing in selection. |
| **Product Information** |     |
| **Field** | **Description** |
| Project | Project information of the particular product/process characteristic (CTQ/CTF). |
| Material | Material information of the particular product/process characteristic (CTQ/CTF). |
| Assembly/Revision/Version | Assembly/Revision/Version |
| Factory | Factory information of the particular product/process characteristic (CTQ/CTF). |
| Mfg Manufacturing Area | Manufacturing Area information of the particular product/process characteristic (CTQ/CTF). |
| Mfg Route | Route information of the particular product/process characteristic (CTQ/CTF). |
| Mfg Route Step | Route Step information of the particular product/process characteristic (CTQ/CTF). |
| Mfg Resource | Resource information of the particular product/process characteristic (CTQ/CTF). |
| Measure Manufacturing Area | Measure Manufacturing Area information of the particular product/process characteristic (CTQ/CTF). |
| Measure Route | Measure Route information of the particular product/process characteristic (CTQ/CTF). |
| Measure Route Step | Measure Route Step information of the particular product/process characteristic (CTQ/CTF). |
| Measure Equipment | Measure Equipment information of the particular product/process characteristic (CTQ/CTF). |
| Attribute | Attribute information of the particular product/process characteristic (CTQ/CTF).<br /><br />Only display when the data source = iFactory. If it is not configured will be blank. |
| Job Type | Job Type information of the particular product/process characteristic (CTQ/CTF).<br /><br />Only display when the data source = QLMS. |
| Tool / Mold ID | Tool / Mold ID information of the particular product/process characteristic (CTQ/CTF).<br /><br />Only display when the data source = QLMS. If it is not configured will be blank. |
| Cavity | Cavity information of the particular product/process characteristic (CTQ/CTF).<br /><br />Only display when the data source = QLMS. If it is not configured will be blank. |
| **Control Chart Tab** |     |
|  **Top Panel** |     |
| Function | Description |
| View By | There are 2 options to view the data in control chart tab.<br /><br />*   By Graphs - view the data in control chart form to monitor the production process trend and easily to track if the data point is out/within the control limits.<br />*   By Table - view the data in raw data form. |
| Mail To | Click on this Mail To icon will launch a new email screen embedded with control chart URL link. |
| Time Period | Time period filtering only enable user to view the available data in certain period but not for simulation and perform corrective action.<br /><br />Once system retrieved the data for the particular period , the control chart will be generated and capability index will be calculated based on the data from the control chart. The control chart will show which data point is violated the rules but no corrective action can be processed when the data is filtered by time periods. |
| Show USL/LSL | Enable user to show the USL/LSL on control chart.<br /><br />This is default to OFF. If user want to view the configured USL/LSL in chart configuration , then turn this to ON and the USL/LSL will be plotted on the control chart. |
| Auto Refresh | Auto refresh enable the page refresh based the configured data capture frequency.<br /><br />For instance , if data capture frequency is 5 mins then the page will be auto refreshed every 5 mins . If the data capture frequency is 8.30a.m , then the page will be auto refreshed at 8.30a.m.<br /><br />When enable Auto Refresh,<br /><br />*   All top panel fields except graphs and table will be disabled  (Time period, Control limit both auto and manual, Rule Violation, Change chart type, Change CTQ will be disabled)<br />*   When click to open corrective action form , the auto refresh switch will turn off. When the corrective action form is submitted the auto refresh switch will be automatically turned on to start auto refresh. <br />*   Auto refresh will be switched off when the user navigates to Graphs and Statistical Hypothesis Test tabs. Once the user navigated back to control charts, the latest data will be shown by default and the user has to manually switch on the auto refresh again |
| Master Detail Chart | Enable user to view the trend of production process.<br /><br />This chart can show up to 1000 data points only and not clickable if user navigate to historical data or in simulation mode. |
| Control Limits | There are 2 options in control limits section.<br /><br />Auto - Display the latest control limits from the control chart and it is not editable. It is shown based on control chart type and its sequence.(e.g : I-MR ,then top row for I chart , bottom row for MR chart)<br /><br />         - For unequal sample size , it will only show one row of control limit for P and U chart.<br /><br />Manual - This is for simulation purpose. User can insert the control limits and apply on the control chart. It is shown based on control chart type and its sequence. (e.g I-MR-R/S , top row for I chart, middle row for MR chart, bottom row for R or S chart).<br /><br />          - For unequal sample size , it will only show one row of control limit for P and U chart.<br /><br />Note: There is no control limit for Levey-Jennings control chart.<br /><br />There is tool tip to help user on which chart that they are referring to. |
| Change CTQ/Attribute | Enable user to change from one CTQ/Attribute to another CTQ/Attribute that configured under the same configuration.<br /><br />Only to change CTQ/Attribute when it is not in simulation mode or historical data.<br /><br />Note: One configuration only allows maximum 10 CTQ/Attribute configurations. |
| Change Chart Type | Enable user to change chart type for simulation purpose.<br /><br />Only the following pair control chart can be switched to each other.<br /><br />*   Levey Jennings  () I-MR<br />*   Xbar-R ()Xbar-S |
| Rule Violations | The configured rule violations is shown and it is editable. <br /><br />Once reselected and applied , it will auto enter the simulation mode . In simulation mode , the control limit will be recalculated based on the 25 data points on the control chart then the data points will be checking against the recalculated control limit based on the latest selection.  |
| **Control Chart ** |     |
| Function | Description |
| Chart Title | The chart title is the SPC number and combination of Configuration Name + Product/Process Characteristic (CTQ/CTF) + Control Chart Type. <br /><br />Notes: Existing chart title will not have change until user change the Configuration Name then only reflect on the control chart. The chart title is the SPC number and combination of Customer/Division +Material +Product/Process Characteristic (CTQ/CTF) + Control Chart Type.  |
| Control Chart  | Charts to be plotted based on the configured control chart type. ( Levey-Jennings only has one chart to be plotted . I-MR, Xbar-S , Xbar-R and User defined control chart will have 2 charts to be plotted. I-MR-R/S will have 3 charts to be plotted). <br /><br />There are 2 Y-axis (vertical) on the control chart to represent control limits. (Note : Red line - UCL and LCL , Green line - CL. ).<br /><br />*   Fixed control limit - Always fixed on the control chart even if navigate to historical data. <br />*   Calculated control limit - Always calculate when there is new data point plotted.<br /><br />X-Axis (horizontal ) on the control chart is the date+time scale. ( Note: The latest datetime from the subgroup data and the date format follows Jabil standard which M/D/YYY format, time follow client time zone.) |
| Data Point | Data point is calculated based on the subgroup data then plotted on the control chart. When navigate to the data point , the details of data point will be shown.<br /><br />*   The data point is showing grey color if it is not violating any rules. <br />*   The data point is showing red color if it is violated rule.<br />*   The data point is showing yellow color if corrective action form has been submitted or rejected.<br />*   The data point is showing green color if the corrective action form approved.<br /><br />  <br /><br />Note : Once the point is violated during dynamic control limit , then it will remain as violated point even if new data point came in and the control limit changed. |
| Corrective Action Form | Corrective Action Form is allowed user to provide the root cause investigation and corrective action that have done on the production process/configuration for approval.<br /><br />In corrective action form ,<br /><br />*   The top section shows the data point value with the violated rules information and its datetime. <br />*   The middle section allows user to provide the category of the cause (common / special) , root cause investigation  and corrective action. The submitted datetime and person will be generated once the form is submitted.<br />*   The bottom section allows approver to approve or reject the submitted corrective action form. The approved datetime and approver will be generated once the form is approved. The rejection datetime/person who rejected will be generated once the form is rejected.<br /><br />Note :<br /><br />*   if the data point is approved as common cause , then it will be included in all the calculation regardless calculated control limit or fixed control limit.<br />*   if the data point is approved as special cause , then it will be excluded from all the calculation in calculated control limit control chart when new data pull happened but the data point will still be showing on the control chart and table. |
| Burger Menu | Enable user to view the control chart in full screen , download the control chart in PDF format and download the data points in .CSV /.XLS format. |
| Previous Button | Enable user to view historical data. When user clicked on previous button , it will disable the top panel ( filtering) but it still allow user to view / submit the corrective action form. |
| Next Button | Enable user to view newer data . The top panel is disabled if the data points belong to historical data but it still allow user to view / submit the corrective action form. If the data points belong to the latest 25 data points then the top panel is enabled . |
| Start Simulation | Enable user to start simulation when user navigate to historical data by clicking previous button. Once started simulation , then time period , control limit and rule violation section will be enabled. |
| Stop Simulation | Enable user to stop simulation and return to the latest 25 data points. |
| Supporting Data Section | Enable user to view the histogram and capability /performance /process/control limit calculation of the showed control chart . <br /><br />Supporting Data section only available for all the variable control chart not for attribute control chart.<br /><br />Burger menu in Support Data Section enable user to view the control chart in full screen , download the control chart in PDF format and download the data points in .CSV /.XLS format. |
| **Graphs Tab** |     |
| **Top Panel** |     |
| **Function** | **Description** |
| View by  | Default filter to enable user to view the data in graphs format. |
| Change CTQ/Attribute | Auto display the CTQ/Attribute based on the CTQ/Attribute selection in control charts tab. |
| Change Graph Type | Enable user to change graph type. <br /><br />The following graphs available for variable data type.<br /><br />*   Histogram<br />*   Boxplot<br />*   Interval Plot<br /><br />The following graphs available for attribute data type based on the control chart type.<br /><br />*   PNP → Bar Chart<br />*   CU → Pareto Chart |
| **Graphs** |     |
| **Function ** | **Description** |
| Burger Menu | Enable user to view the control chart in full screen , download the control chart in PDF format and download the data points in .CSV /.XLS format. |
| Graph Title | The graph title is the SPC number and  Configuration Name + Product/Process Characteristic (CTQ/CTF) + Graph Type.<br /><br />Notes: Existing graph title will not have change until user change the Configuration Name then only reflect on the graph. The graph title is the SPC number and combination of Customer/Division +Material +Product/Process Characteristic (CTQ/CTF) + Graph Type. |
| Graphs | The graphs always show based on the latest 25 data points . It is also show based on the data type and control chart type.<br /><br />Variable data can be displayed in the following graphs<br /><br />*   Histogram<br />*   Boxplot<br />*   Interval Plot<br /><br />( Note : All the graphs above are allowed to change bar color ( histogram) , Box color ( Boxplot) and Point color ( Interval plot) for presentation purpose and the color changes is temporary . The default color is light blue)<br /><br />Attribute data will be displayed in the following graphs based on the control chart type<br /><br />*   PNP → Bar Chart<br />*   CU → Pareto Chart |
| **Statistical Hypothesis Test ( Only available for variable data type)** |     |
| **Function ** | **Description** |
| CTQ/CTF | Display the selected CTQ/CTF in control charts tab. |
| Normality Test Button | Enable user to run the normality test for the latest 25 data points. |
| Run Test Button | Enable user to perform  the run test for the latest 25 data points. |


- #### **View Control Limit Changed from Dynamic to Fixed Control Limit on Control Chart.**

User will be able to view the control limit (LCL-CL-UCL) changed on the control chart after the fixed control limit is approved. This supports both variable and attribute control chart type.
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;">
	<colgroup><col style="width: 20.306%;"/><col style="width: 79.7218%;"/></colgroup>
	<tbody>
		<tr>
			<th class="confluenceTh">Control Chart Type</th>
			<th class="confluenceTh">Scenarios</th>
		</tr>
		<tr>
			<td class="confluenceTd">
				<p><span style="color: rgb(0,0,0);">Variable control charts ( I-MR , Xbar-R, Xbar-S , I-MR/S, User defined chart) </span></p>
				<p>
					<span style="color: rgb(0,0,0);">Attribute Control Charts ( Equal size PNP and CU charts )<span> </span></span>
				</p>
			</td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<ul>
						<li>If a group of data covers in dynamic control limit, then last calculated dynamic LCL-CL-UCL will be shown; </li>
						<li>If a group of data covers in dynamic and fixed 1 control limit, then last calculated dynamic LCL-CL-UCL will be shown for dynamic control limit's data point, and Fixed 1 LCL-CL-UCL  will be shown for Fixed 1 control limit's data points; </li>
						<li>If a group of data covers in Fixed 1 control limit, then only Fixed 1 LCL-CL-UCL will be shown. </li>
						<li>If a group of data covers in Fixed 1 and fixed 2 control limit, then Fixed 1 LCL-CL-UCL will be shown for fixed 1 control limit's data points, and Fixed 2 LCL-CL-UCL will be shown for Fixed 2 control limit's data points; </li>
						<li>If a group of data covers in dynamic , fixed 1 and fixed 2 control limit, then last calculated dynamic LCL-CL-UCL will be shown for dynamic control limit's data point, Fixed 1 LCL-CL-UCL  will be shown for Fixed 1 control limit's data point and 
							<span>Fixed 2 LCL-CL-UCL  will be shown for Fixed 2 control limit's data point</span>; 
						</li>
					</ul>
					<p>For an example :</p>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252214.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252214.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="103252214" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-11-19-9-52-42.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
				</div>
			</td>
		</tr>
		<tr>
			<td class="confluenceTd"><span style="color: rgb(0,0,0);">Variable Control Chart ( Levey-Jennings) </span></td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<p><span style="color: rgb(0,0,0);">Note : Xbar-3S = LCL ; Xbar = CL ; Xbar+3S =UCL</span></p>
					<ul>
						<li>If a group of data covers in dynamic control limit, then last calculated dynamic (Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S) will be shown; </li>
						<li>If a group of data covers in dynamic and fixed 1 control limit, then last calculated dynamic
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S) </span>will be shown for dynamic control limit's data points, and Fixed 1
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)</span> will be shown for Fixed 1 control limit's data point; 
						</li>
						<li>If a group of data covers in Fixed 1 control limit, then only Fixed 1
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)</span>will be shown. 
						</li>
						<li>If a group of data covers in Fixed 1 and fixed 2 control limit, then Fixed 1
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)</span>
							<span> will </span>be shown for fixed 1 control limit's data point, and Fixed 2
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S) </span>will be shown for Fixed 2 control limit's data point; 
						</li>
						<li>If a group of data covers in dynamic , fixed 1 and fixed 2 control limit, then last calculated dynamic LCL-CL-UCL
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)</span>will be shown for dynamic control limit's data point, Fixed 1
							<span>(Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)</span>will be shown for Fixed 1 control limit's data point and 
							<span>Fixed 2 (Xbar-3S)-(Xbar-2S) - (Xbar-1S)-(Xbar)-(Xbar+1S)-(Xbar+2S)-(Xbar+3S)  will be shown for Fixed 2 control limit's data point</span>
							<span>; </span>
						</li>
					</ul>
					<p><br /></p>
					<p><span>For an example ,</span></p>
				</div>
				<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252215.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252215.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="103252215" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-11-19-9-55-23.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
			</td>
		</tr>
		<tr>
			<td class="confluenceTd"><span style="color: rgb(0,0,0);">Attribute Control Chart ( Unequal Subgroup Size P and U Chart)</span></td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<p><span style="color: rgb(0,0,0);">Note : Only CL will be changed from dynamic to fixed and fixed to fixed, LCL and UCL will be recalculated based on CL and subgroup size when data pull happened</span></p>
				</div>
				<ul>
					<li><span>If a group of data covers in dynamic CL, then last calculated dynamic CL will be shown; </span></li>
					<li><span>If a group of data covers in dynamic and fixed 1 CL, then last calculated dynamic CL will be shown for dynamic CL's data point, and Fixed 1 CL will be shown for Fixed 1 CL's data points; </span></li>
					<li><span>If a group of data covers in Fixed 1 CL, then only Fixed 1 CL will be shown. </span></li>
					<li><span>If a group of data covers in Fixed 1 and fixed 2 CL, then Fixed 1 CL will be shown for fixed 1 CL's data points, and Fixed 2 CL will be shown for Fixed 2 CL's data points; </span></li>
					<li>
						<span>If a group of data covers in dynamic , fixed 1 and fixed 2 CL, then last calculated dynamic CL will be shown for dynamic CL's data point, Fixed 1 CL will be shown for Fixed 1 CL's data point and </span>
						<span>Fixed 2 CL will be shown for Fixed 2 CL's data point</span>
						<span>; </span>
					</li>
				</ul>
				<p><span>For an example,</span></p>
				<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252216.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/103252216.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="103252216" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-11-19-9-56-24.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
			</td>
		</tr>
	</tbody>
</table>


- #### The formula for each control chart , graphs and statistical hypothesis test
<table class="relative-table wrapped confluenceTable" style="width: 56.4976%;">
	<colgroup><col style="width: 33.1035%;"/><col style="width: 66.798%;"/></colgroup>
	<tbody>
		<tr>
			<th class="confluenceTh">Item</th>
			<th class="confluenceTh">Files</th>
		</tr>
		<tr>
			<td class="confluenceTd">Control Chart</td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<p><a href="attachments/82903836/86311141.xlsx" data-linked-resource-id="86311141" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SPC chart examples detail (1).xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27">SPC chart examples detail (1).xlsx</a></p>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="1" class="confluenceTd">Supporting Data Calculation</td>
			<td colspan="1" class="confluenceTd">
				<div class="content-wrapper">
					<p><a href="attachments/82903836/86311140.xlsx" data-linked-resource-id="86311140" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Process Capability Calculation 20200728.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27">Process Capability Calculation 20200728.xlsx</a></p>
				</div>
			</td>
		</tr>
		<tr>
			<td class="confluenceTd">Graphs</td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<p><a href="attachments/82903836/86311138.xlsx" data-linked-resource-id="86311138" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Graph 07072020-v1.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27">Graph 07072020-v1.xlsx</a></p>
				</div>
			</td>
		</tr>
		<tr>
			<td class="confluenceTd">Statistical Hypothesis Test</td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<p><a href="attachments/82903836/86311139.xlsx" data-linked-resource-id="86311139" data-linked-resource-version="2" data-linked-resource-type="attachment" data-linked-resource-default-alias="statistical hypothesis test 0923.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27">statistical hypothesis test 0923.xlsx</a></p>
				</div>
			</td>
		</tr>
	</tbody>
</table>


Graph 07072020_v1.xlsx
Statistical Hypothesis Test[statistical hypothesis test 0923.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Statistical-Process-Control-(SPC)/Performance-Monitor.md)
![image2021-2-9_14-53-42.png](/.attachments/86311540.png)




#### Data Source: QLMS and By workorder behavior


If the configuration for data source: QLMS and it is not by workorder, then system will retrieve data when the sample data is matched the subgroup size within the frequency.
![image.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/82fd7b01-ee11-4ec6-9f5b-87cf4f3b98c4?fileName=image.png)



If the configuration for data source: QLMS and it is by workorder, then system retrieve data when the sample data by if workorder is matched the subgroup size within the frequency. Otherwise, not retrieve data when the sample data in workorder is not match the subgroup size.
![image.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/991b860b-89a4-4fe8-b694-c86cbee5d460?fileName=image.png)


![image.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/9b0d13bb-7f2c-4b35-a2c6-a8f43f265d2d?fileName=image.png)





#### View Control Charts display By Workorder ON.


User will view the Workorder ID in detail box and the table if data source QLMS and by Workorder ON.
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;">
	<colgroup><col style="width: 20.306%;"/><col style="width: 79.7218%;"/></colgroup>
	<tbody>
		<tr>
			<th class="confluenceTh">Data Source</th>
			<th class="confluenceTh">Scenarios</th>
		</tr>
		<tr>
			<td class="confluenceTd"><span style="color: rgb(0,0,0);">QLMS</span></td>
			<td class="confluenceTd">
				<div class="content-wrapper">
					<ul>
						<li>If the data source is QLMS and not retrieve data by Workorder<span>, the Control Charts data points detail box information not display the Workorder ID.</span></li>
					</ul>
					<p>
						<span><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="900" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923935.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923935.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923935" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-43-54.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></span>
					</p>
					<ul>
						<li>If the data source is QLMS and not retrieve data by Workorder<span>, the Control charts data points table information not display the Workorder ID.</span></li>
					</ul>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="900" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923936.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923936.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923936" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-44-44.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
					<ul>
						<li>If the data source is QLMS and retrieve data by Workorder<span>, the Control Charts data points detail box information display Workorder ID.</span></li>
					</ul>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923937.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923937.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923937" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-45-7.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
					<ul>
						<li>If the data source is QLMS and retrieve data By Workorder<span>, the Control Charts data points table information display Workorder ID.</span></li>
					</ul>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923938.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923938.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923938" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-45-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="1" class="confluenceTd">
				<p><span style="color: rgb(0,0,0);">MES/iFactory/Manual/Machine</span></p>
			</td>
			<td colspan="1" class="confluenceTd">
				<div class="content-wrapper">
					<ul>
						<li><span>If the data source is MES/iFactory/Manual/Machine, the Control Charts data points detail box information.</span></li>
					</ul>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="900" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923933.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923933.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923933" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-34-30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
					<ul>
						<li><span>If the data source is MES/iFactory/Manual/Machine, the Control Charts data points table information.</span></li>
					</ul>
					<p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="900" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923934.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/104923934.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="104923934" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-12-24-13-35-24.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903836" data-linked-resource-container-version="27"/></span></p>
				</div>
			</td>
		</tr>
	</tbody>
</table>



#### Attachments

[Graph 07072020_v1.xlsx](/.attachments/86311138.xlsx)
[statistical hypothesis test 0923.xlsx](/.attachments/86311570.xlsx)
[Process Capability Calculation 20200728.xlsx](/.attachments/86311140.xlsx)
[SPC chart examples detail (1).xlsx](/.attachments/86311141.xlsx)
[image2021-2-9_14-47-46.png](/.attachments/86311533.png)
[image2021-2-9_14-53-42.png](/.attachments/86311540.png)
[statistical hypothesis test 0923.xlsx](/.attachments/86311139.xlsx)
[image2021-3-9_17-42-18.png](/.attachments/88113613.png)
[image2021-3-9_17-46-41.png](/.attachments/88113614.png)
[image2021-3-9_17-51-49.png](/.attachments/88113615.png)
[image2021-9-13_9-18-50.png](/.attachments/99221515.png)
[image2021-9-13_9-22-11.png](/.attachments/99221517.png)
[image2021-9-13_9-23-37.png](/.attachments/99221518.png)
[image2021-9-14_13-28-21.png](/.attachments/99221600.png)
[image2021-9-14_13-29-45.png](/.attachments/99221601.png)
[image2021-9-14_13-30-1.png](/.attachments/99221602.png)
[image2021-9-14_13-31-30.png](/.attachments/99221603.png)
[image2021-11-19_9-52-42.png](/.attachments/103252214.png)
[image2021-11-19_9-55-23.png](/.attachments/103252215.png)
[image2021-11-19_9-56-24.png](/.attachments/103252216.png)
[image2021-12-24_13-34-30.png](/.attachments/104923933.png)
[image2021-12-24_13-35-24.png](/.attachments/104923934.png)
[image2021-12-24_13-43-54.png](/.attachments/104923935.png)
[image2021-12-24_13-44-44.png](/.attachments/104923936.png)
[image2021-12-24_13-45-7.png](/.attachments/104923937.png)
[image2021-12-24_13-45-22.png](/.attachments/104923938.png)
