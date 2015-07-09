# Mail-Basics
This Repository will cover the basics of Sieve (An Email Filtering Language), Mutt (An Email Client) and eventually some basics about mail servers (Postfix e Dovecot).

# Operating System
All insntallations/configurations/tests ocurred in debian based linux systems with default installation.

	Ubuntu 14.04 x64 3.11.0-26-generic GNU/Linux (Tasty)
	Debian 7 x64 3.2.0-4-amd64 GNU/Linux (Wheezy)

# Software Installed 

	Postfix (mail_version = 2.9.6) | run the command to find out your version -> postconf -d | grep mail_version 
	Dovecot (2.1.7) | run the command to find out your version -> dovecot --version
	Sieve Dovecot Plugin (GNU Mailutils) 2.99.97 | run the command to find out your version -> sieve -V
	Mutt 1.5.21 (2010-09-15) | run the command to find out your version -> mutt -v

The Postfix Home Page (http://www.postfix.org/)
To go deep into Sieve language I recommend read more about in the RFC 5228 (RFC 3028 became obsolete) (https://tools.ietf.org/html/rfc5228).
Dovecot and Sieve Plugin read the official documentation here (http://wiki2.dovecot.org/Pigeonhole/Sieve).
The Mutt E-Mail Client official website (http://www.mutt.org/)
