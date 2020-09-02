# RDPlog

# -WIP-

Many malicious actors attempt to RDP into servers and if successful, often leave a trail.

Emails a log file every eight hours (can adjust to lower increments if needed) that contains User authentication succeeded (1149), An account failed to log on (4625), A logon was attempted using explicit credentials (4648), and An account was successfully logged on (4624) alerts.

# 1102

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-1102

# 1149 

http://intelligentsystemsmonitoring.com/knowledgebase/windows-operating-system/event-id-remote-desktop-session-host-listener-availability-16234/

# 4624

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4624

# 4625

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4625

# 4648

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4648

# 4664

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4964

# 4672

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4672

# 4675

https://docs.microsoft.com/en-us/windows/security/threat-protection/auditing/event-4675

# How to use

Add to every windows server, specifically domain controllers.

1. Add RDPlog.ps1 to C:\scripts (or adjust folder name in both files then save there).
2. Import RDPlog.xml to task scheduler in a random folder.

# IMPORTANT: You must enable the eventIDs to log in a GPO before this will work correctly.
