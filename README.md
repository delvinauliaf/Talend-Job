# delman.io

# Textfile as Input
Data input is in textfile extension. I made two in folder Textfiles

![image](https://user-images.githubusercontent.com/90134591/134431586-e241d6ac-0020-495f-9668-76d3a395f8c8.png)


# Talend Job
This is the final job in Talend
![image](https://user-images.githubusercontent.com/90134591/134435686-fe42957b-e463-4da5-81a3-9e38576d8533.png)

![tFileList_1](https://user-images.githubusercontent.com/90134591/134432379-d34800f6-3975-43bc-a157-4ab01bd5b144.png)
tFileList_1 is the first step, to check if the file exist or not.

Filemask : "USER_" + TalendDate.getDate("yyyyMMdd")+".txt"

Here I used getdate as parameter, so it will go to the next proccess if filename is today's date

![tLogCatcher_1](https://user-images.githubusercontent.com/90134591/134433420-c68dda83-c062-4a39-8d6b-84422eddcd61.png)
![tMap_1](https://user-images.githubusercontent.com/90134591/134433447-51494662-1613-4de9-b532-f801902068dc.png)
![tDBInput_1](https://user-images.githubusercontent.com/90134591/134433391-3ec276a1-ad52-4b04-9960-0ff5910f5330.png) 
If the filename is not today's date it will write log and insert it to table Logs in SQL


![tFileInputDelimited_1](https://user-images.githubusercontent.com/90134591/134433158-770564a0-ac88-4a26-8bc3-de3b5f88d367.png)
tFileInputDelimited_1 used to read the texfile

![tSchemaComplianceCheck_1](https://user-images.githubusercontent.com/90134591/134433789-43e8786b-6e8b-4606-b65e-d8042c2a033d.png)
tSchemaComplianceCheck_1 is to check if the schema is fitting. For example, I used it to determine the max length of column handphone which is 13.

![tLogRow_1](https://user-images.githubusercontent.com/90134591/134434219-78401794-951a-464c-878a-e9aa949e733e.png)
![tMap_1](https://user-images.githubusercontent.com/90134591/134433447-51494662-1613-4de9-b532-f801902068dc.png)
![tDBInput_1](https://user-images.githubusercontent.com/90134591/134433391-3ec276a1-ad52-4b04-9960-0ff5910f5330.png) 
Rejected row with unfitting condition will be excuded and then inserted the log message to SQL.

![tMap_1](https://user-images.githubusercontent.com/90134591/134434699-05128a5a-3752-4db4-a83d-53954e762af5.png)
Used it to convert column handphone to numeric and date_of_birth to date with format yyyy-MM-dd. The log for unfitting condition will be inserted to SQL.

![tUniqRow_1](https://user-images.githubusercontent.com/90134591/134435079-371d2469-18e3-4e00-8d9f-aee2ede8b58f.png)
tUniqRow_1 used to find the duplicate value. The key to determine that are field name and handphone. If in the process the job found data with duplicate value, it will be exluded.

![tLogRow_1](https://user-images.githubusercontent.com/90134591/134434219-78401794-951a-464c-878a-e9aa949e733e.png)
![tMap_1](https://user-images.githubusercontent.com/90134591/134433447-51494662-1613-4de9-b532-f801902068dc.png)
![tDBInput_1](https://user-images.githubusercontent.com/90134591/134433391-3ec276a1-ad52-4b04-9960-0ff5910f5330.png) 
The log for unfitting condition will be inserted to SQL.


Next, the data joined with master_kabupaten. If place_of_birth existed in master_kabupaten, then the final data is created and inserted to tbl_Users, and the log of unfitiing data will be inserted to table Logs.


# Final Result
tbl_users
![image](https://user-images.githubusercontent.com/90134591/134436716-24f49d20-c992-4452-a91d-22ff91b1d53d.png)

Logs
![image](https://user-images.githubusercontent.com/90134591/134436771-f81b42a9-39a7-41b4-bc68-4dfdd09814f7.png)

