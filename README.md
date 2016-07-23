# Poodle Test

#### Checks whether SSLv3 CBC ciphers are allowed (POODLE)

Run with -sV to use Nmap's service scan to detect SSL/TLS on non-standard ports. Otherwise, ssl-poodle will only run on ports that are commonly used for SSL.

POODLE is CVE-2014-3566. All implementations of SSLv3 that accept CBC ciphersuites are vulnerable. For speed of detection, this script will stop after the first CBC ciphersuite is discovered. If you want to enumerate all CBC ciphersuites, you can use Nmap's own ssl-enum-ciphers to do a full audit of your TLS ciphersuites. `SOURCE` https://nmap.org/nsedoc/scripts/ssl-poodle.html

* Save the .sh
* Modify the argument's mode with `chmod a+x`

Usage of this would be:

* $ ./poodle.sh `www.google.com`

<b>Full disclosure: You’ll need `nmap` installed to make this work correctly.</b>

Output file will save to the current directory. See `output.txt` for simulated postive results.
