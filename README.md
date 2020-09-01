# RDPfail

Many malicious actors attempt to RDP into servers.

Emails a log file every eight hours (can adjust to lower increments if needed) that contains User authentication succeeded (1149) and An account was successfully logged on (4624) alerts.

How to use

Add to every windows device.

add Mail-4625.ps1 to C:\scripts (or adjust folder name in both files then save there)
Import RDPFail.xml to task scheduler in a random folder.
