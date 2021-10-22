#!/usr/bin/perl
 
$first = 1;
 
print "{\n";
print "\t\"data\":[\n\n";
 
#for (`ps axo comm | sort | uniq -c`) {
for (`ps axo comm | sort | uniq -c`) {
  #($procnb,$procname) = m/^\s*([0-9]+) (\S+)$/;
  ($procname) = m/^\s*[0-9]+ (\S+)$/;
  #print "$procnb : $procname\n";

  print "\t,\n" if not $first;
  $first = 0;

  print "\t{\n";
  print "\t\t\"{#PROCNAME}\":\"$procname\"\n";
  print "\t}\n";
  }
 
print "\n\t]\n";
print "}\n";
