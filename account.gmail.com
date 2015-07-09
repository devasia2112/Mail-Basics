# SET IMAP
set imap_user = "username@gmail.com"
set imap_pass = "QWERTtrewq12345"
set from = "username@gmail.com"
set realname = "Your Name"

# SET REMOTE GMAIL FOLDERS
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed = "+[Google Mail]/Drafts"
set trash = "+[Google Mail]/Trash"
#set any_label = "+[Google Mail]/any_label" # return error
# activate TLS if available on the server
set ssl_starttls=yes

# SET LOCAL FOLDERS FOR CACHED HEADERS AND CERTIFICATES
set header_cache =~/.mutt/cache/headers
set message_cachedir =~/.mutt/cache/bodies
set certificate_file =~/.mutt/certificates

# SMTP SETTINGS
set smtp_url = "smtp://username@smtp.gmail.com:587/"
set smtp_pass = "QWERTtrewq12345" # use the same passowrd as for IMAP

# SECURING
set move = no  #Stop asking to &quot;move read messages to mbox&quot;!
set imap_keepalive = 900
bind index G imap-fetch-mail
set editor='nano'

# CHECK GMAIL LABELS
mailboxes +GMail/INBOX +GMail/LABEL1 +GMail/LABEL2 +GMail/LABEL3

# SET GPG CONFIGS
set pgp_use_gpg_agent = yes
set pgp_sign_as = EFEFEFEF
set pgp_timeout = 3600
set crypt_autosign = yes
set crypt_replyencrypt = yes

# Color Scheme Supported
# If color scheme do not work properly, run it before in the shell -> export TERM=xterm-256colors, the apply the desired theme and start mutt.
# If problems persist, then run it in shell -> export TERM=xterm color to back to previous settings and try find another solution in the internet.
# some scheme
# .mutt-black
# .mutt-bluegray
# .mutt-colors-solarized-dark-256
# .mutt-colors-solarized-light-256
# .mutt-vombatidae
# .mutt-whitepurple
# .mutt-yellowgreen
source ~/.mutt/theme/.mutt-black
