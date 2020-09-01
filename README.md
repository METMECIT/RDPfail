# RDPlog

# -WIP-

Many malicious actors attempt to RDP into servers.

Emails a log file every eight hours (can adjust to lower increments if needed) that contains User authentication succeeded (1149), An account failed to log on (4625), A logon was attempted using explicit credentials (4648), and An account was successfully logged on (4624) alerts.

# 1149 
Information
Remote Desktop Services: 
User authentication succeeded:                                                                                                                                                      User: USERNAME
Domain: DOMAIN
Source Network Address: IP ADDRESS
8/31/2020 7:49:11 AM

# How to use

Add to every windows server, specifically domain controllers.

1. Add RDPlog.ps1 to C:\scripts (or adjust folder name in both files then save there).
2. Import RDPlog.xml to task scheduler in a random folder.

# IMPORTANT: You must enable the eventIDs to log in a GPO before this will work correctly.
