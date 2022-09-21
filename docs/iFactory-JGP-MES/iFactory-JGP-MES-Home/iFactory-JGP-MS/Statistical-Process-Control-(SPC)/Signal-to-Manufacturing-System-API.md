# Introduction

Signal to Manufacturing System API will be triggered when data points violated the rule , corrective action form submitted , approved or rejected .
SPC will send the following information to the integrated manufacturing system through the API. Thus far , there is no manufacturing system receiving the data from SPC.
For an example , SPC sent SPC data of MES data source for a data point and its details to dummy server.
![image2021-1-20_17-13-50.png](/.attachments/86311117.png)



{

"DataSourceName":"MES",
"GlobalSiteId":91,
"SiteId":91,
"SiteName":"Huangpu CL",
"CustomerId":172,
"CustomerName":"GP",
"DivisionId":172,
"DivisionName":"GP",
"ProjectId":2731,
"ProjectName":"BOILERS",
"MaterialId":50137,
"MaterialName":"GP-210-29453-1-B",
"AssemblyId":50137,
"AssemblyNumber":"GP-210-29453-1-B/0002/",
"FactoryId":5,
"FactoryName":"Huangpu",
"ManufacturingAreaId":510,
"ManufacturingAreaName":"BayGP20",
"RouteId":614,
"RouteName":"MFG HUA2 Line GP20",
"RouteStepId":14091,
"RouteStepName":"Audio_test",
"ResourceId":21939,
"ResourceName":"HUACLBOIAUD012",
"MeasureRouteStepId":14091,
"MeasureRouteStepName":"Audio_test",
"MeasureResourceId":21939,
"MeasureResourceName":"HUACLBOIAUD012",
"SpcNumber":"SPC0000907",
"DataType":"Variable",
"CtqCtf":"MIC1_12500Hz",
"Lsl":20.0,
"Usl":40.0,
"ControlChart":"XBar-S",
"SubGroupSize":6,
"CpkRule":""=",
"CpkExpectation":1.33,
"ControlLimits":[
{
"ChartType":"XBar",
"Lcl":26.64009060265609,
"Cl":27.50446666666666,
"Ucl":28.368842730677226
},
{
"ChartType":"S",
"Lcl":0.020148626200712554,
"Cl":0.6716208733570851,
"Ucl":1.3230931205134575
}
],
"CafSubmitDate":null,
"CafApproveRejectDate":null,
"CommonCause":null,
"SpecialCause":null,
"RootCause":null,
"CorrectiveActionDesc":null,
"CafApprovalStatus":null,
"CafApprovalNote":null,
"RuleViolationDate":"2021-01-20T16:01:00+08:00",
"RulesViolated":[
{
"RuleId":"1",
"KValue":3,
"RuleInformation":"1 point " k standard deviations from center line"
}
],
"DataPointValues":[
{
"Value":28.553333333333338,
"SubChartType":"XBar"
},
{
"Value":0.4186486195685661,
"SubChartType":"S"
}
],
"SubGroupValues":[
{
"SubgroupValue":"28.11",
"SubgroupSerialNumber":"C3441325916095"
},
{
"SubgroupValue":"28.73",
"SubgroupSerialNumber":"C3441325919283"
},
{
"SubgroupValue":"28.77",
"SubgroupSerialNumber":"C3441325919585"
},
{
"SubgroupValue":"27.95",
"SubgroupSerialNumber":"C3441325919153"
},
{
"SubgroupValue":"28.77",
"SubgroupSerialNumber":"C3441325884792"
},
{
"SubgroupValue":"28.99",
"SubgroupSerialNumber":"C3441325918235"
}
]
}


#### Attachments

[image2021-1-20_17-13-50.png](/.attachments/86311117.png)
