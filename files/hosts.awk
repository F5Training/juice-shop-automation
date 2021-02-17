BEGIN {
  FS=","
  print "[NAP]"
}
{
  if (NR!=1) {print "NAP"NR-1" ansible_host="$3" ansible_user="$1" ansible_password="$2}
}
