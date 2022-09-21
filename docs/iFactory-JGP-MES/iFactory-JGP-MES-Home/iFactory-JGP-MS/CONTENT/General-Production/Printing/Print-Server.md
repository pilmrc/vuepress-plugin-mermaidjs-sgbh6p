# Introduction

A Print Server contains a set of printers connected through a network. When the Print Server receives a job from client workstation, it sends the job to be printed by the selected printer.  Label Definition path and Label Data Drop path are configured within each Print Server. The file containing data to be printed are stored in the Label Data Drop path while the label templates (format) are stored in the Label Definition path. When user selects the printer to print labels, system will send the label data file to the Label Data Drop path as configured in the printer’s Print Server. Label template is defined in each label/document itself. System will look up for the label template in the Print Server’s Label Definition path and prints the label according to the format defined in the template. Changes in print server configuration impacts all the print operation




### How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("PRINTER")
1-->2("PRINT SERVER")

:::

Screen Activity
Print Server Maintenance enables user to perform the following activity:

- Create, view, update and delete print server records

- View all printers in the Print Server

Screen Dependency
The following screen(s) has dependency with Print Server:

- *[Printer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md)*




#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Print Server Name</p></td><td class="confluenceTd"><p>The unique name given to the Print Server</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Additional description for the Print Server can be entered in this field</p></td></tr><tr><td class="confluenceTd"><p>Label Definition Path</p></td><td class="confluenceTd"><p>Label Definition Path defines the location that stores the label file format. Example of label file format extension: test-label.lwl</p><p>Label file format defines the format of the label to print such as spacing, header, line breaks etc.</p></td></tr><tr><td class="confluenceTd"><p>Label Data Drop Path</p></td><td class="confluenceTd"><p>Label Data Drop Path defines the location that stores the label data file. Example of label data file extension: test-label.pas</p><p>While Label file format defines the format of the label, label data file contains the actual data to be printed into the label</p></td></tr><tr><td class="confluenceTd"><p>Printer Configuration Path</p></td><td class="confluenceTd"><p>Printer Configuration Path shall define the location that stores the printer configuration information such as printer names. Example: prntr32.ini</p></td></tr></tbody></table>

**Label Definition Path defines the location that stores the label file format. Example of label file format extension: test_label.lwl** 
Label file format defines the format of the label to print such as spacing, header, line breaks etc.
Label Data Drop Path
Label Data Drop Path defines the location that stores the label data file. Example of label data file extension: test_label.pas
While Label file format defines the format of the label, label data file contains the actual data to be printed into the label
Printer Configuration Path
Printer Configuration Path shall define the location that stores the printer configuration information such as printer names. Example: prntr32.ini
