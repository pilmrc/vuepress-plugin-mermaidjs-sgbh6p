# Introduction

**Usage:** 
$printSuccessful = PrintGenericDocumentAtPrinter($documentName, $documentVersion, $printerName, $documentFieldsData, $failTestOnPrintFailure)


**Description:** Prints to a specified printer using a generic document with the field data supplied in an array of strings.

<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Function Arguments</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$documentName</td><td style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">String</strong></td><td class="confluenceTd">The name of the document to print to. The document must be of type "Generic".</td></tr><tr><td colspan="1" class="confluenceTd">$documentVersion</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd">The version of the document to print to.</td></tr><tr><td colspan="1" class="confluenceTd">$printerName</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong>String</strong></td><td colspan="1" class="confluenceTd"><p>The unique name of the print to print to.</p></td></tr><tr><td colspan="1" class="confluenceTd">$documentFieldsData</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Array</strong></td><td colspan="1" class="confluenceTd">Array of string values to print to document. The # of elements in the array must match the # of fields in the document.</td></tr><tr><td colspan="1" class="confluenceTd">$failTestOnPrintFailure</td><td colspan="1" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Boolean</strong></td><td colspan="1" class="confluenceTd">Whether to fail the test or not when printing fails.</td></tr></tbody></table>


<table class="confluenceTable"><tbody><tr><th colspan="3" class="confluenceTh"><span style="color: rgb(0,0,255);">Return Parameters</span></th></tr><tr><td class="confluenceTd"><strong>Parameter</strong></td><td class="confluenceTd"><p style="text-align: center;"><strong>Variable</strong><br /><strong>Type</strong></p></td><td class="confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">$printSuccessful</td><td style="text-align: center;" class="confluenceTd"><strong>Boolean</strong></td><td class="confluenceTd">Print engine result status. False if printing failed.</td></tr></tbody></table>


**Usage Example(s):** 
//document print details

$documentName = "Adam Label Test";
$documentVersion = "1";
$printerName = "RSV1OSG01M";
$documentFieldsData = Array1DCreate("STRING", 1); //to be filled in with match materials
Array1DSetValue($documentFieldsData, 0, "LABEL DATA");

$failTestOnPrintFailure = false;


$printSuccessful = PrintGenericDocumentAtPrinter($documentName, $documentVersion, $printerName, $documentFieldsData, $failTestOnPrintFailure);
