# Introduction

**Usage:** 
($Exists,$VisualAidName,$VisualAidURL,$ForceView,$EffectiveDateFrom,$EffectiveDateTo) = GetVisualAidForWip();


**Description:** Locate and displays the Visual Aid for the WIP

<table class="confluenceTable"><colgroup><col /> </colgroup><tbody><tr><td class="highlight confluenceTd" colspan="3"><strong><span style="color: rgb(0,0,255);">Return Parameters</span></strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Parameter</strong></td><td colspan="1" class="confluenceTd"><strong style="text-align: center;">Variable Type</strong></td><td colspan="1" class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$Exist</td><td class="confluenceTd">Boolean</td><td class="confluenceTd">Indicating if visual Aid is found else, all the field after will be blank</td></tr><tr><td class="confluenceTd">$VisualAidName</td><td class="confluenceTd">String</td><td class="confluenceTd">The Name Of the Visual Aid</td></tr><tr><td class="confluenceTd">$VisualAidURL</td><td class="confluenceTd">String</td><td class="confluenceTd">The URL of the Visual Aid</td></tr><tr><td class="confluenceTd">$ForceView</td><td class="confluenceTd">Boolean</td><td class="confluenceTd">If the force View Date Time is >= now</td></tr><tr><td class="confluenceTd">$EffectiveDateFrom</td><td class="confluenceTd">String</td><td class="confluenceTd">Date time in <br /> [yyyy/MM/dd <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a> tt] format where tt represents AM/PM</td></tr><tr><td class="confluenceTd">$EffectiveDateTo</td><td class="confluenceTd">String</td><td class="confluenceTd">Date time in <br /> [yyyy/MM/dd <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a> tt] format <span>where tt represents AM/PM</span></td></tr></tbody></table>



**Usage Example(s):** 
($Exists,$VisualAidName,$VisualAidURL,$ForceView,$EffectiveDateFrom,$EffectiveDateTo) = GetVisualAidForWip();
