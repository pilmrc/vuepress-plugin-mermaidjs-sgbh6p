# Introduction

Localization screen is designed for administration of 
translation into multiple languages of phrases used inJabil applications. 
Localization is open for use by different applications and types of objects. This is configured at the development phase of an application via definition of Scope, Object and Target. 
Once Scope, Object and Target are defined then a corresponding phrase in Primary Culture can be translated to any other Culture activated at Jabil. 
Culture represents cultural dialect orlanguage differences by locale.For example “es-ES” represents “Spanish - Spain” while “es-MX” represents “Spanish - Mexico".Application phrases are maintained in Primary Culture which is "en-US" (US English) in Jabil Company. 

Phrase in Primary Culture can not be changed, added or deleted via Localization screen as it is defined at application development phase. But it can be translated to any other Culture.Each phrase used in the application is uniquely identified by "Scope", "Object", "Target" and "Phrase (en-US)". 

For example a field label of the screen could have "Scope" = "UI" (User Interface), "Object" = "Screen Name", "Target" = "Field Name" and "Phrase (en-US)" = "Assembly".Translations are maintained globally with the possibility to overwrite global translation locally (at Site level). 

Global scope means that once a specific target phrase was translated at specific Site then all Sites using the same Culture would see this translation.
But there is also a possibility to overwrite the existing global translation at Site level. Since then the local translation will be used. 
You can view "IsOverwritten" flag to check if global or local phrase translation is used.Localization uses a predefined Object called "AppCommon". It represents a common translation of a specific Target phrase that is used when a translation for the provided Scope and Object is not defined.

For example "Assembly" phrase can be translated to "Product" in "pl-PL" culture with Object: "AppCommon" and Target: "lbl_Assembly". 
Then it is not required to translate "Assembly" into "Product" for every application and screen when the same "Target" name is used. **"Standard Search"** 
tab is designed to view or add or modify Primary Culture phrase translations with a selected Culture, Scope and Object.**"Phrase Search"** 
tab is designed to search for all translations of a specific Primary Culture phrase despite of Scope and Object.
It can be used to review consistency of translation in a selected Culture or to find a reference (Scope-"Object-"Target) for the selected Primary Culture phrase. 


### How to get there?



::: mermaid
graph LR
A("LOCALIZATION")
:::


#### Screen Activity


Both
**Standard Search** and**Phrase Search** enable a user to perform the following activity:
- View existing translations

- Add translation

- Change existing translation

Pre Condition
The following data needs to be pre-configured before a user can maintain translations in selected Culture: 

- Scope, Object, Target

- phrase in Primary Culture ("Phrase (en-US)")

- translation Culture must be activated



#### Screen Dependency


Localization

- all application screens and reports shall use phrase translations defined in Localization screen



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="Localization-StandardSearchTab"><strong>Standard Search Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Culture</p></td><td class="confluenceTd"><p>Culture code used for the translation</p></td></tr><tr><td class="confluenceTd"><p>Scope</p></td><td class="confluenceTd"><p>Scope of the localized phrase. For example "UI" for a user interface (application screens).</p></td></tr><tr><td class="confluenceTd"><p>Object</p></td><td class="confluenceTd"><p>Object of the localized phrase. For example if Scope: "UI" was selected, Object represents the screen name.</p></td></tr><tr><td colspan="1" class="confluenceTd">Target</td><td colspan="1" class="confluenceTd">Target of the localized phrase. For example when Scope: "UI" was selected, Target represents a specific field or other object on the screen.<br />Target selection is optional, so you can display and maintain phrase translations of all Target phrases within a selected Scope and Object.<br />For example you can select a specific application screen and translate all phrases used like field labels, screen title, button names etc. </td></tr><tr><td colspan="1" class="confluenceTd">Phrase (en-US)</td><td colspan="1" class="confluenceTd">Phrase in Primary Culture.</td></tr><tr><td colspan="1" class="confluenceTd">Phrase (xx-YY)</td><td colspan="1" class="confluenceTd">Phrase translation in the selected Culture. <br />It is finished with "..." if only part of the phrase is displayed. Move a mouse over the translation phrase to see a pop-up comment with the whole translation phrase.</td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">Possible actions for the selected Target phrase translation. "Edit" opens a separate window where multi line translation can be edited.</td></tr><tr><td colspan="1" class="confluenceTd">IsOverwritten</td><td colspan="1" class="confluenceTd"><span>Indication if global translation of the target phrase was overwritten locally. <span>By default it is not visible. </span></span></td></tr><tr><td colspan="1" class="confluenceTd">Last Updated By</td><td colspan="1" class="confluenceTd">User name who last changed the translation. <span>By default it is not visible. </span></td></tr><tr><td colspan="1" class="confluenceTd">Last Updated</td><td colspan="1" class="confluenceTd">Date time when the translation was last changed. <span>By default it is not visible. </span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Localization-PhraseSearchTab">Phrase Search Tab</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Culture</td><td colspan="1" class="confluenceTd"><span>Culture code used for the translation</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Phrase (en-US)</span></td><td colspan="1" class="confluenceTd"><p>Primary Culture phrase. You can use wild cards to search for the phrase.</p></td></tr><tr><td colspan="1" class="confluenceTd">Scope</td><td colspan="1" class="confluenceTd"><p><span>Scope of the localized phrase. For example "UI" for a user interface (application screens).</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Object</td><td colspan="1" class="confluenceTd"><span>Object of the localized phrase. For example if Scope: "UI" was selected, Object represents the screen name.</span></td></tr><tr><td colspan="1" class="confluenceTd">Target</td><td colspan="1" class="confluenceTd"><span>Target of the localized phrase. For example when Scope: "UI" was selected, Target represents a specific field or other object on the screen.</span></td></tr><tr><td colspan="1" class="confluenceTd">Phrase (en-US)</td><td colspan="1" class="confluenceTd"><span>Phrase in Primary Culture.</span></td></tr><tr><td colspan="1" class="confluenceTd">Phrase (xx-YY)</td><td colspan="1" class="confluenceTd"><span>Phrase translation in the selected Culture. </span><br /><span>It is finished with "..." if only part of the phrase is displayed. Move a mouse over the translation phrase to see a pop-up comment with the whole translation phrase.</span></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd"><span>Possible actions for the selected Target phrase translation. </span><br /><span>"Edit" opens a separate window where translation of the selected Target phrase can be added or changed.</span></td></tr><tr><td colspan="1" class="confluenceTd">IsOverwritten</td><td colspan="1" class="confluenceTd">Indication if global translation of the target phrase was overwritten locally. By default it is not visible.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Last Updated By</span></td><td colspan="1" class="confluenceTd"><span>User name who last changed the translation. <span>By default it is not visible. </span></span></td></tr><tr><td colspan="1" class="confluenceTd">Last Updated</td><td colspan="1" class="confluenceTd"><span>Date time when the translation was last changed. <span>By default it is not visible. </span></span></td></tr></tbody></table>






