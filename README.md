# RDPlog

Many malicious actors attempt to RDP into servers.

Emails a log file every eight hours (can adjust to lower increments if needed) that contains User authentication succeeded (1149), An account failed to log on (4625), A logon was attempted using explicit credentials (4648), and An account was successfully logged on (4624) alerts.

How to use

Add to every windows servers, specifically domain controllers.

1. Add RDPlog.ps1 to C:\scripts (or adjust folder name in both files then save there).
2. Import RDPlog.xml to task scheduler in a random folder.
