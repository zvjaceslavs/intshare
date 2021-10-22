Ever wanted to ~MONITOR~ you ORG's Mailboxes in Zabbix? NOW YOU CAN!!!

The "Exchange 2016 - Mailbox" is mostly used to monitor and alert when a mailbox is over quota or  need other statics asap (When you don't have credentials to the Exchange ECP)

It will monitor and trigger the following.

* Mailbox Size
* Inbox Size
* Sent Items Size
* Junk Mail Size
* Drafts Size
* Deleted Items Size
* Show Mailbox Quota and Calculate Percentage for Triggers
* Show On-Line Archive Quota and Calculate Percentage for Triggers
* Mailbox Triggers defined in stages (25%, 50%, 75%, 85%, 95%, 100%) Independently
* On-Line Archive Triggers defined in stages (25%, 50%, 75%, 85%, 95%, 100%) Independently
* Mailbox Triggers - Erratic Growth By 2% Gain
* On-Line Archive Triggers - Erratic Growth By 2% Gain
* Calculations based on bytes, not Mega/Giga


This works with Exchange 2016 CU12 or Higher (Or will it?)

Zabbix Version Minimum is 4.4, Built on 4.4

(Template Version 1.1)

Current: Template Version 1.1
Notes: Had issue with using .change arguments for triggers, changed it to .last - tested and confirmed working

(PS Script Version 1.1)
Notes: Added calculation fix for arguments "mailboxpercentage" & "archivepercentage" to use 2 decimal place values for triggers to correctly update.

OK, this template uses the following:

1: Zabbix Agent Active
2: LLD (Low-Lever Discovery)
3: Triggers
4: Graphs
5: Powershell Script (REQUIRED)
6: ALERTS (Easily Configurable for EVERYONE ~YEAH!~) - But not deployed via Template "I'll get some work out of you all" Ha.. ha.. */sigh/*
7: My Insanity

Okay...

This template will "Discover" all mailboxes within ~TWENTY-FOUR (24) Hours~ then check every day for changes. 

This script will pull based on each criteria and will be a resource hog for about 10mins on your server ~Depending on you resource levels~ (Hahhahahaa)

So, here is the details

Dump these 3 lines of code into the zabbix agent config at the bottom of "zabbix_agentd.conf". File is located located under C:\Program Files\Zabbix Agent ~NORMAL~ unless you made a different path.... */sigh/*

3 lines of Code Below....
UserParameter=exchange.host[*],powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Program Files\Zabbix Agent\scripts\Mailboxes.ps1" -ActionType "$1" -Key "$2" -Value "$3"

UnsafeUserParameters=1

Timeout=30

Now for the fun part.....

Make a file in your zabbix agent folder called "scripts" ~I can't stress how darn important it is to follow my directions!~

Upload the "Mailboxes.ps1" file into the newly created (Or Old Existing) file called "scripts"

Next *Restart* the Zabbix Agent Service *MANUALLY* or be lazy and run ~Windows + R~ the type (net stop "Zabbix Agent") then type (net start "Zabbix Agent) - If the Zabbix Agent failed to start, you have a problem in your config - Don't blame me for that!

Also, don't use the "(" in the net start/stop "Zabbix Agent" - That's just crazy....

Now the ~FUN~ part!

Download the "Microsoft Exchange Server 2016 - Mailboxes.xml" Template and "Import it into zabbix"

THen watch the ~MAGIC~ happen!