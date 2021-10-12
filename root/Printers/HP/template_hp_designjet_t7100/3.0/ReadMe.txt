Derived from HP Designjet Z5200 by Vladim Greb


OIDs are Set to our Printer-Configuration, so you may have to change some

HP Printer T7100

do a snmpwalk on the PrinterIP
#snmpwalk -v 1 -c public <Printer_IP>

Important OIDs are:
cartridges: 1.3.6.1.2.1.43.11.1.1.6.1.1 to .12   (on our printer, every color has two IDs (Part1 and 2) so Yellow is:
1.3.6.1.2.1.43.11.1.1.6.1.1 and 1.3.6.1.2.1.43.11.1.1.6.1.2
Yellow: 1.3.6.1.2.1.43.11.1.1.6.1.1 = STRING: "VIRTUAL HP 761 ( CM992A ) PART 1 of 2 (REAL CARTRIDGE 1)"
CM992A = yellow cartridge, get color through cartridge ID, it's the safest



Max level: 1.3.6.1.2.1.43.11.1.1.8.1.1 to .12  here as well we have two OIDs per Color 
so choose e.g. 1.3.6.1.2.1.43.11.1.1.8.1.1 for yellow and set a custome multiplier (=2) 


Current level:  1.3.6.1.2.1.43.11.1.1.9.1.1 to .12  last ID similar to cartridge IDs


snmpwalk gives out "iso." in the beginning, change it to "1."


the color names in OID 1.3.6.1.2.1.43.12.1.1.4.1.1 to .6 are (in our case) missleading (wrong order) so i got the colors manually through cartridge ID
 