Get-WinEvent -LogName Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational -FilterXPath '*[System[EventID = 1149 or EventID = 4624 or EventID = 4648 or EventID = 4625]]' -MaxEvents 1000 | format-table -wrap > "C:\scripts\query.txt"

Get-WinEvent -LogName Security -FilterXPath '*[System[EventID = 4624 or EventID = 4648 or EventID = 4625 or EventID = 46755 or EventID = 46725 or EventID = 4664 or EventID = 1102]]' -MaxEvents 1000 | format-table -wrap > "C:\scripts\query1.txt"

$BlankFiles = Get-ChildItem C:\scripts\query.txt | where { $_.Length -cle 0kb}

$date = Get-Date
$fndate = $date.ToString("MMddyyyy")

If ([System.IO.File]::Exists($BlankFiles) -eq "True") {
Break
}
Else {
$To      = "name@domain.com" 
$From    = "RDPlog@domain.com" 
$Subject = "RDP Logs $env:COMPUTERNAME" 
$Body    = "This report is ran every eight hours and contains all the event log alerts related to RDP." 
# Create mail message 
$Message = New-Object System.Net.Mail.MailMessage $From, $To, $Subject, $Body 
$AttchmentText = get-content C:\scripts\query.txt
$AttchmentText1 = get-content C:\scripts\query1.txt
# Now create Attachement content type
$ct = new-object System.Net.Mime.Contenttype
$ct.name = 'query.txt'
$ct.name1 = 'query1.txt'
# Now create an attachment of that type
$attachment = [System.Net.Mail.Attachment]::CreateAttachmentFromString($attchmenttext,$ct)
$attachment1 = [System.Net.Mail.Attachment]::CreateAttachmentFromString($attchmenttext1,$ct)
# Next add Attachment to the message
$message.Attachments.Add($attachment)
$message.Attachments.Add($attachment1)
# and now create smtp server
$smtpServer = "domain-com.mail.protection.outlook.com"
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
$smtp.Send($message)
}
Remove-Item -Path C:\scripts\query.txt
Remove-Item -Path C:\scripts\query1.txt
