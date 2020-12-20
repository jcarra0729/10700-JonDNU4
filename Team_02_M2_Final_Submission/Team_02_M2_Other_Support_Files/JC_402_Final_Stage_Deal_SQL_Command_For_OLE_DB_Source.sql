SELECT DISTINCT 
                         b.DLR_Code, a.DLR_Name, b.DLR_Street AS DLR_Address, b.DLR_City, a.DLR_County, b.DLR_State, a.DLR_Country, b.DLR_Zip, c.DLR_Type AS DLR_Authorized_Makes, a.DLR_Type AS DLR_Independent_Or_Corporate, 
                         a.DLR_Email AS DLR_Email_Address, a.DLR_Since AS DLR_Initiation_Date, c.DLR_Phone AS DLR_Phone_Number, a.WEB_ID AS DLR_Official_Website_ID, a.WEB_URL AS DLR_Official_WebsiteURL, 
                         a.WEB_Admin AS DLR_Official_WebsiteAdministrator_Email, a.WEB_Start_Date AS DLR_Official_Website_Start_Date
FROM            Stage_Deal AS a INNER JOIN
                         Stage_Deal_Prod AS b ON a.DLR_Code = b.DLR_Code INNER JOIN
                         Stage_Deal_SO AS c ON b.DLR_Code = c.DLR_Code