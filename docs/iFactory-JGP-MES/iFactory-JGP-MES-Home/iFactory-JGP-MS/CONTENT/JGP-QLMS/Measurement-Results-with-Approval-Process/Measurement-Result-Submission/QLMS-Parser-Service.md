# Introduction

This QLMS parser service is customized based on JGP log file format and allowed user to upload measured data ( log file ) into server directly .User is able to configure a single parser service against multiple readers.
Parser service is translating the following formats into Json format before transferring the data into QLMS database :

- .CSV

- .Txt

- .xlsx


- .xls



## Parser service configuration 



- Login into server through remote desktop.

- Navigate to E:\ApplicationServices\QLMS.Parser.Configuration  and click on iFactory.QLMS.Parser.Configurations

![image2019-12-21_13-21-4.png](/.attachments/62423183.png)


3. System will prompt the parser service configuration window shown as below. 

- Provide parser service name ( Note : Name need to be unique)

- Provide error folder path . (Note : The log file will be redirected to this error folder when not able to process the log file )

- Enable the parser service which mean the parser service is ready for processing the log file . ( Note : Only allow a parser service to be enabled at a time ).

![image2019-12-21_13-21-59.png](/.attachments/62423184.png)


4. Save the parser service configuration.


![image2019-12-21_13-29-5.png](/.attachments/62423185.png)


5. Continue to configure the reader for the parser service. Click on Reader tab.

- Reader is subset of parser service . User is allowed to configure multiple readers for a parser service .

- Provide reader name ( note : suggest to provide reader name with the name conversion ( Sitename + Equipment Type)

- Provide description for reader.

- Provide file source folder which parser service will read the log file from this path.

- provide format mask ( note:  \* .  \* means it accepts all types of file formats ( .csv, .xlsx, .txt,.xls) )

- Select the available library from library mapping dropdown. ( Note: Reader will translate the log file based on the configured library.)

- Configure the polling interval (minute) . Parser service will read the log file from source folder based on configured polling interval and this is default to 1 mins.

- Configure the post process how the parser service manages the processed files .

- Delete file ( note : There will be no file to be saved in server ).

- Move file to history folder which mean those processed files will be stored in history folder . ( Note: user needs to manually house keeping the history folder)

- Enable the reader configuration if it is ready for use.

![image2019-12-21_13-29-58.png](/.attachments/62423186.png)



6. Save the reader after configuration.

![image2019-12-21_13-46-53.png](/.attachments/62423187.png)





### Parser Service Run Time 


1. Drop the log file into file source folder.
2.  Parser service will read the log file from the file source folder.
3.  If the log file has been successfully processed , then the log file will be stored in History folder (  Note : This is depending on how user configured the Post Process. )
User is able to check the uploaded measured data via Measurement Result Submission in QLMS system.
4. If the log file hasn't been processed, then the log file will be stored in Error folder.
5.  User is able to troubleshoot what went wrong with log file through E:\ApplicationServices\QLMS.Parser\Logs.


### Log file mapping format for each site 


<table class="wrapped relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 7.78342%;" /><col style="width: 92.273%;" /></colgroup><tbody><tr><th class="confluenceTh">Sites</th><th class="confluenceTh">Mapping File</th></tr><tr><td class="confluenceTd">Suzhou SIP</td><td class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/77136823.xlsx" data-linked-resource-id="77136823" data-linked-resource-version="3" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file 对应表-20200803.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file 对应表-20200803.xlsx</a></p><p><a href="attachments/61079731/77136829.txt" data-linked-resource-id="77136829" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP OGP.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">SIP OGP.TXT</a></p><p><a href="attachments/61079731/77136828.xlsx" data-linked-resource-id="77136828" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP Manual.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">SIP Manual.xlsx</a></p><p><a href="attachments/61079731/77136827.csv" data-linked-resource-id="77136827" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SIP Hexagon.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">SIP Hexagon.csv</a></p><p><a href="attachments/61079731/77136826.txt" data-linked-resource-id="77136826" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MicroVu (2).txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MicroVu (2).txt</a></p></div></td></tr><tr><td class="confluenceTd">Wuxi Metal</td><td class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/77136834.csv" data-linked-resource-id="77136834" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020081700145-WXI Metal-Renishaw(Equator300)含工号-2020.7.28.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020081700145-WXI Metal-Renishaw(Equator300)含工号-2020.7.28.csv</a></p><p><a href="attachments/61079731/77136835.txt" data-linked-resource-id="77136835" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082500148-WXI Metal-Hexagon(Advance 7.7.10)-2020.7.28.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082500148-WXI Metal-Hexagon(Advance 7.7.10)-2020.7.28.TXT</a></p><p><a href="attachments/61079731/77136836.txt" data-linked-resource-id="77136836" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="UATQLMSFOMeasuringBuilding2020090300001-WXI Metal-MicroVu(Eexcel502,652,662)-2020.7.28.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">UATQLMSFOMeasuringBuilding2020090300001-WXI Metal-MicroVu(Eexcel502,652,662)-2020.7.28.txt</a></p><p><a href="attachments/61079731/77136837.xlsx" data-linked-resource-id="77136837" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file 对应表-WXI metal-更新2020.07.28-Option2-无法修改log或手动录入设备-范例格式仅数值-2020.7.28.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file 对应表-WXI metal-更新2020.07.28-Option2-无法修改log或手动录入设备-范例格式仅数值-2020.7.28.xlsx</a></p></div></td></tr><tr><td class="confluenceTd">Wuxi EPZ</td><td class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/77136840.xlsx" data-linked-resource-id="77136840" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file mapping template- phase 1.1-WXI EPZ (3).xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file mapping template- phase 1.1-WXI EPZ (3).xlsx</a></p><p><a href="attachments/61079731/77136838.xlsx" data-linked-resource-id="77136838" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082500148-KTS-20205221536191.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082500148-KTS-20205221536191.xlsx</a></p><p><a href="attachments/61079731/77136839.txt" data-linked-resource-id="77136839" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="UATQLMSFOMeasuringBuilding2020090300002-HXG-20207291530171.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">UATQLMSFOMeasuringBuilding2020090300002-HXG-20207291530171.TXT</a></p><p><a href="attachments/61079731/77136841.txt" data-linked-resource-id="77136841" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082500147-Micro-Vu-20207291530502.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082500147-Micro-Vu-20207291530502.TXT</a></p><p><a href="attachments/61079731/77136842.txt" data-linked-resource-id="77136842" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082500147-OGP-20207290752111.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082500147-OGP-20207290752111.TXT</a></p></div></td></tr><tr><td class="confluenceTd">HUA</td><td class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/77136844.xlsx" data-linked-resource-id="77136844" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file mapping template- phase 1.1 (HUA FATP) (0730).xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file mapping template- phase 1.1 (HUA FATP) (0730).xlsx</a></p><p><a href="attachments/61079731/77136843.xlsx" data-linked-resource-id="77136843" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Logfile-HUA-GP00018-20200722.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Logfile-HUA-GP00018-20200722.xlsx</a></p><p><br /></p></div></td></tr><tr><td colspan="1" class="confluenceTd">CTU Metal</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/77136845.xlsx" data-linked-resource-id="77136845" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file 对应表-CTU Update 0805D (1).xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file 对应表-CTU Update 0805D (1).xlsx</a></p><p><a href="attachments/61079731/77136846.xlsx" data-linked-resource-id="77136846" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082100146 ctu hexagon.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082100146 ctu hexagon.xlsx</a></p><p><a href="attachments/61079731/77136847.xlsx" data-linked-resource-id="77136847" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MemphisTNFOMeasuringBuilding2020082100146 ctu michgdc.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MemphisTNFOMeasuringBuilding2020082100146 ctu michgdc.xlsx</a></p><p><a href="attachments/61079731/77136848.txt" data-linked-resource-id="77136848" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="UATQLMSFOMeasuringBuilding2020090300002 OMM-正面.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">UATQLMSFOMeasuringBuilding2020090300002 OMM-正面.txt</a></p><p><a href="attachments/61079731/77136849.xlsx" data-linked-resource-id="77136849" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="ctu manual.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">ctu manual.xlsx</a></p><p><a href="attachments/61079731/77136850.xlsx" data-linked-resource-id="77136850" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="ctu t20.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">ctu t20.xlsx</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">SGP</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/86311014.xlsx" data-linked-resource-id="86311014" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file mapping-v2 Dec.8.20.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file mapping-v2 Dec.8.20.xlsx</a></p><p><a href="attachments/61079731/86311015.xlsx" data-linked-resource-id="86311015" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Manual File.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Manual File.xlsx</a></p><p><a href="attachments/61079731/86311016.txt" data-linked-resource-id="86311016" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="PMT5803A1A-29-09-2020-02.30 PM.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">PMT5803A1A-29-09-2020-02.30 PM.txt</a></p><p><a href="attachments/61079731/86311017.txt" data-linked-resource-id="86311017" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="SMT123456A0-15-10-2020-08.43.14 AM.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">SMT123456A0-15-10-2020-08.43.14 AM.txt</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">CTU FATP</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/86311018.xlsx" data-linked-resource-id="86311018" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Update QLMS Preparation For Deployment-CD-FATP.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Update QLMS Preparation For Deployment-CD-FATP.xlsx</a></p><p><a href="attachments/61079731/86311019.txt" data-linked-resource-id="86311019" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M111Plus-TP210-20201201-F0002(Micro.vu).txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M111Plus-TP210-20201201-F0002(Micro.vu).txt</a></p><p><a href="attachments/61079731/86311020.txt" data-linked-resource-id="86311020" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M111Plus-TP210-20201201-F0002(Nano).TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M111Plus-TP210-20201201-F0002(Nano).TXT</a></p><p><a href="attachments/61079731/86311021.txt" data-linked-resource-id="86311021" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M111Plus-TP250-20201201-F0002(OGP).TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M111Plus-TP250-20201201-F0002(OGP).TXT</a></p><p><a href="attachments/61079731/86311022.txt" data-linked-resource-id="86311022" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M115-FS200-20201201-F0002(Hexagon).TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M115-FS200-20201201-F0002(Hexagon).TXT</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Tianjin Plastic</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/103253115.xlsx" data-linked-resource-id="103253115" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file mapping 对应表 -20200930 天津 厂JET 2021.11。15.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file mapping 对应表 -20200930 天津 厂JET 2021.11。15.xlsx</a></p><p>GPP</p><p><a href="attachments/61079731/97359793.txt" data-linked-resource-id="97359793" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MicroVu-GPP.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MicroVu-GPP.txt</a></p><p><a href="attachments/61079731/97359795.txt" data-linked-resource-id="97359795" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Hexagon-GPP-OMM.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Hexagon-GPP-OMM.txt</a></p><p><a href="attachments/61079731/97359794.txt" data-linked-resource-id="97359794" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Hexagon-GPP CMM.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Hexagon-GPP CMM.txt</a></p><p>JET</p><p><a href="attachments/61079731/97359797.csv" data-linked-resource-id="97359797" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="MicroVu-JET.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">MicroVu-JET.csv</a></p><p><a href="attachments/61079731/97359798.xlsx" data-linked-resource-id="97359798" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="wenzel-JET.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">wenzel-JET.xlsx</a></p><p><a href="attachments/61079731/97359796.xlsx" data-linked-resource-id="97359796" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Insight2-JET.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Insight2-JET.xlsx</a></p><p><a href="attachments/61079731/86311031.xlsx" data-linked-resource-id="86311031" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="J20200930D0001基恩士手动.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">J20200930D0001基恩士手动.xlsx</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Wuxi FATP</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/86311322.xlsx" data-linked-resource-id="86311322" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="QLMS Preparation For Deployment-wuxi.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">QLMS Preparation For Deployment-wuxi.xlsx</a></p><p><a href="attachments/61079731/86311323.csv" data-linked-resource-id="86311323" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M052020092410001-Hexgon.CSV" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M052020092410001-Hexgon.CSV</a></p><p><a href="attachments/61079731/86311324.csv" data-linked-resource-id="86311324" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M052020092910001-OGP.CSV" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M052020092910001-OGP.CSV</a></p><p><a href="attachments/61079731/86311325.csv" data-linked-resource-id="86311325" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="M052020122500001-Microv Vu.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">M052020122500001-Microv Vu.csv</a></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Wuxi Plastic</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><a href="attachments/61079731/86311327.xlsx" data-linked-resource-id="86311327" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Log file 整理后对应表（Wuxi Plastic)-1022 (1).xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Log file 整理后对应表（Wuxi Plastic)-1022 (1).xlsx</a></p><p><a href="attachments/61079731/86311328.txt" data-linked-resource-id="86311328" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Wuxi Plastic CMM.TXT" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Wuxi Plastic CMM.TXT</a></p><p><a href="attachments/61079731/86311329.txt" data-linked-resource-id="86311329" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Wuxi Plastic OMM(MicroVu).txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Wuxi Plastic OMM(MicroVu).txt</a></p><p><a href="attachments/61079731/86311330.xls" data-linked-resource-id="86311330" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Wuxi Plastic-Hexagon.xls" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.ms-excel" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Wuxi Plastic-Hexagon.xls</a></p><p><a href="attachments/61079731/86311332.xlsx" data-linked-resource-id="86311332" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Wuxi Plastic OGP.xlsx" data-nice-type="Excel Spreadsheet" data-linked-resource-content-type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" data-linked-resource-container-id="61079731" data-linked-resource-container-version="20">Wuxi Plastic OGP.xlsx</a></p></div></td></tr></tbody></table>

Log file 对应表_20200803.xlsx
[SIP OGP.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[SIP Manual.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[SIP Hexagon.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MicroVu (2).txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
Wuxi Metal[MemphisTNFOMeasuringBuilding2020081700145_WXI Metal_Renishaw(Equator300)含工号-2020.7.28.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082500148_WXI Metal_Hexagon(Advance 7.7.10)-2020.7.28.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[UATQLMSFOMeasuringBuilding2020090300001_WXI Metal_MicroVu(Eexcel502,652,662)-2020.7.28.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Log file 对应表-WXI metal-更新2020.07.28_Option2-无法修改log或手动录入设备-范例格式仅数值-2020.7.28.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
Wuxi EPZ[Log file mapping template_ phase 1.1-WXI EPZ (3).xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082500148_KTS_20205221536191.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[UATQLMSFOMeasuringBuilding2020090300002_HXG_20207291530171.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082500147_Micro_Vu_20207291530502.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082500147_OGP_20207290752111.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
HUA[Log file mapping template_ phase 1.1 (HUA FATP) (0730).xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Logfile_HUA_GP00018-20200722.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)

CTU Metal[Log file 对应表_CTU Update 0805D (1).xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082100146 ctu hexagon.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[MemphisTNFOMeasuringBuilding2020082100146 ctu michgdc.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[UATQLMSFOMeasuringBuilding2020090300002 OMM_正面.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[ctu manual.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[ctu t20.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
SGP[Log file mapping-v2 Dec.8.20.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Manual File.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[PMT5803A1A_29-09-2020_02.30 PM.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[SMT123456A0_15-10-2020_08.43.14 AM.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
CTU FATP[Update QLMS Preparation For Deployment-CD-FATP.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M111Plus_TP210_20201201_F0002(Micro.vu).txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M111Plus_TP210_20201201_F0002(Nano).TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M111Plus_TP250_20201201_F0002(OGP).TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M115_FS200_20201201_F0002(Hexagon).TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
Tianjin Plastic[Log file mapping 对应表 -20200930 天津 厂JET 2021.11。15.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
GPP
[MicroVu_GPP.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Hexagon_GPP_OMM.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Hexagon_GPP CMM.txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
JET
[MicroVu_JET.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[wenzel_JET.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Insight2_JET.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[J20200930D0001基恩士手动.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
Wuxi FATP[QLMS Preparation For Deployment-wuxi.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M052020092410001-Hexgon.CSV](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M052020092910001-OGP.CSV](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[M052020122500001-Microv Vu.csv](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
Wuxi Plastic[Log file 整理后对应表（Wuxi Plastic)_1022 (1).xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Wuxi Plastic CMM.TXT](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Wuxi Plastic OMM(MicroVu).txt](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Wuxi Plastic_Hexagon.xls](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)
[Wuxi Plastic OGP.xlsx](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission/QLMS-Parser-Service.md)










#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/61079732.png)
[image2019-11-27_8-5-7.png](/.attachments/61079733.png)
[image2019-11-27_8-7-11.png](/.attachments/61079734.png)
[image2019-11-27_8-7-33.png](/.attachments/61079735.png)
[image2019-11-27_8-8-55.png](/.attachments/61079736.png)
[image2019-11-27_8-9-41.png](/.attachments/61079737.png)
[image2019-11-27_8-11-18.png](/.attachments/61079738.png)
[image2019-11-27_8-13-9.png](/.attachments/61079739.png)
[image2019-11-27_8-13-48.png](/.attachments/61079740.png)
[image2019-11-27_8-14-8.png](/.attachments/61079741.png)
[B41F20181218D0001_B41F_CNC5-1_OMM-四周_S26.txt](/.attachments/61079749.txt)
[311HC.txt](/.attachments/61079750.txt)
[image2019-12-21_13-20-29.png](/.attachments/62423182.png)
[image2019-12-21_13-21-4.png](/.attachments/62423183.png)
[image2019-12-21_13-21-59.png](/.attachments/62423184.png)
[image2019-12-21_13-29-5.png](/.attachments/62423185.png)
[image2019-12-21_13-29-58.png](/.attachments/62423186.png)
[image2019-12-21_13-46-53.png](/.attachments/62423187.png)
[Log file 对应表截图20191029.xlsx](/.attachments/67568381.xlsx)
[option 2 (update 1106).xlsx](/.attachments/67568382.xlsx)
[J20190916N0003_WXI Metal_Renishaw(Equator300).xlsx](/.attachments/67568383.xlsx)
[Log file 对应表-WXI metal update1202.xlsx](/.attachments/67568384.xlsx)
[Option2-无法修改log或手动录入设备-纯数字 Update 20191202.xlsx](/.attachments/67568385.xlsx)
[Log file 对应表 (Suzhou plastic).xlsx](/.attachments/67568386.xlsx)
[Option 2 - 1106(Suzhou plastic updated).xlsx](/.attachments/67568387.xlsx)
[JGPHUAABCMK-20200226.xlsx](/.attachments/67568389.xlsx)
[Log file 对应表_20200803.xlsx](/.attachments/77136825.xlsx)
[Log file 对应表_20200803.xlsx](/.attachments/77136830.xlsx)
[MicroVu (2).txt](/.attachments/77136826.txt)
[SIP Hexagon.csv](/.attachments/77136827.csv)
[SIP Manual.xlsx](/.attachments/77136828.xlsx)
[SIP OGP.TXT](/.attachments/77136829.txt)
[Log file 对应表_20200803.xlsx](/.attachments/77136823.xlsx)
[MemphisTNFOMeasuringBuilding2020081700145_WXI Metal_Renishaw(Equator300)含工号-2020.7.28.csv](/.attachments/77136834.csv)
[MemphisTNFOMeasuringBuilding2020082500148_WXI Metal_Hexagon(Advance 7.7.10)-2020.7.28.TXT](/.attachments/77136835.txt)
[UATQLMSFOMeasuringBuilding2020090300001_WXI Metal_MicroVu(Eexcel502,652,662)-2020.7.28.txt](/.attachments/77136836.txt)
[Log file 对应表-WXI metal-更新2020.07.28_Option2-无法修改log或手动录入设备-范例格式仅数值-2020.7.28.xlsx](/.attachments/77136837.xlsx)
[MemphisTNFOMeasuringBuilding2020082500148_KTS_20205221536191.xlsx](/.attachments/77136838.xlsx)
[UATQLMSFOMeasuringBuilding2020090300002_HXG_20207291530171.TXT](/.attachments/77136839.txt)
[Log file mapping template_ phase 1.1-WXI EPZ (3).xlsx](/.attachments/77136840.xlsx)
[MemphisTNFOMeasuringBuilding2020082500147_Micro_Vu_20207291530502.TXT](/.attachments/77136841.txt)
[MemphisTNFOMeasuringBuilding2020082500147_OGP_20207290752111.TXT](/.attachments/77136842.txt)
[Logfile_HUA_GP00018-20200722.xlsx](/.attachments/77136843.xlsx)
[Log file mapping template_ phase 1.1 (HUA FATP) (0730).xlsx](/.attachments/77136844.xlsx)
[Log file 对应表_CTU Update 0805D (1).xlsx](/.attachments/77136845.xlsx)
[MemphisTNFOMeasuringBuilding2020082100146 ctu hexagon.xlsx](/.attachments/77136846.xlsx)
[MemphisTNFOMeasuringBuilding2020082100146 ctu michgdc.xlsx](/.attachments/77136847.xlsx)
[UATQLMSFOMeasuringBuilding2020090300002 OMM_正面.txt](/.attachments/77136848.txt)
[ctu manual.xlsx](/.attachments/77136849.xlsx)
[ctu t20.xlsx](/.attachments/77136850.xlsx)
[Log file mapping-v2 Dec.8.20.xlsx](/.attachments/86311014.xlsx)
[Manual File.xlsx](/.attachments/86311015.xlsx)
[PMT5803A1A_29-09-2020_02.30 PM.txt](/.attachments/86311016.txt)
[SMT123456A0_15-10-2020_08.43.14 AM.txt](/.attachments/86311017.txt)
[Update QLMS Preparation For Deployment-CD-FATP.xlsx](/.attachments/86311018.xlsx)
[M111Plus_TP210_20201201_F0002(Micro.vu).txt](/.attachments/86311019.txt)
[M111Plus_TP210_20201201_F0002(Nano).TXT](/.attachments/86311020.txt)
[M111Plus_TP250_20201201_F0002(OGP).TXT](/.attachments/86311021.txt)
[M115_FS200_20201201_F0002(Hexagon).TXT](/.attachments/86311022.txt)
[Log file mapping 对应表 -20200930 天津 厂JET 2021.1.xlsx](/.attachments/86311023.xlsx)
[OMM(Micro VU)--1.txt](/.attachments/86311024.txt)
[OMM (Hexagon)--1.txt](/.attachments/86311025.txt)
[海克斯康CMM--1.TXT](/.attachments/86311026.txt)
[MICUV 1.csv](/.attachments/86311027.csv)
[wenzel 3.xlsx](/.attachments/86311028.xlsx)
[增准格式一.xlsx](/.attachments/86311029.xlsx)
[增准 格式二.xlsx](/.attachments/86311030.xlsx)
[J20200930D0001基恩士手动.xlsx](/.attachments/86311031.xlsx)
[QLMS Preparation For Deployment-wuxi.xlsx](/.attachments/86311322.xlsx)
[M052020092410001-Hexgon.CSV](/.attachments/86311323.csv)
[M052020092910001-OGP.CSV](/.attachments/86311324.csv)
[M052020122500001-Microv Vu.csv](/.attachments/86311325.csv)
[Log file 整理后对应表（Wuxi Plastic)_1022 (1).xlsx](/.attachments/86311327.xlsx)
[Wuxi Plastic CMM.TXT](/.attachments/86311328.txt)
[Wuxi Plastic OMM(MicroVu).txt](/.attachments/86311329.txt)
[Wuxi Plastic_Hexagon.xls](/.attachments/86311330.xls)
[Wuxi Plastic OGP.xlsx](/.attachments/86311332.xlsx)
[Log file mapping 对应表 -20200930.xlsx](/.attachments/97359792.xlsx)
[MicroVu_GPP.txt](/.attachments/97359793.txt)
[Hexagon_GPP CMM.txt](/.attachments/97359794.txt)
[Hexagon_GPP_OMM.txt](/.attachments/97359795.txt)
[Insight2_JET.xlsx](/.attachments/97359796.xlsx)
[MicroVu_JET.csv](/.attachments/97359797.csv)
[wenzel_JET.xlsx](/.attachments/97359798.xlsx)
[Log file mapping 对应表 -20200930 天津 厂JET 2021.11。15.xlsx](/.attachments/103253115.xlsx)
