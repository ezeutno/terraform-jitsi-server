# shellcheck disable=SC2034

# Security
#
# Set these to strong passwords to avoid intruders from impersonating a service account
# The service(s) won't start unless these are specified
# Running ./gen-passwords.sh will update .env with strong passwords
# You may skip the Jigasi and Jibri passwords if you are not using those
# DO NOT reuse passwords
#

# XMPP component password for Jicofo
JICOFO_COMPONENT_SECRET=

# XMPP password for Jicofo client connections
JICOFO_AUTH_PASSWORD=

# XMPP password for JVB client connections
JVB_AUTH_PASSWORD=

# XMPP password for Jigasi MUC client connections
JIGASI_XMPP_PASSWORD=

# XMPP recorder password for Jibri client connections
JIBRI_RECORDER_PASSWORD=

# XMPP password for Jibri client connections
JIBRI_XMPP_PASSWORD=


#
# Basic configuration options
#

# Directory where all configuration will be stored
CONFIG=~/.jitsi-meet-cfg

# Exposed HTTP port
HTTP_PORT=80

# Exposed HTTPS port
HTTPS_PORT=443

# System time zone
TZ=UTC

# Public URL for the web service (required)
PUBLIC_URL=https://${url}

# IP address of the Docker host
# See the "Running behind NAT or on a LAN environment" section in the Handbook:
# https://jitsi.github.io/handbook/docs/devops-guide/devops-guide-docker#running-behind-nat-or-on-a-lan-environment
#DOCKER_HOST_ADDRESS=192.168.1.1

# Control whether the lobby feature should be enabled or not
#ENABLE_LOBBY=1

# Show a prejoin page before entering a conference
#ENABLE_PREJOIN_PAGE=0

#
# Let's Encrypt configuration
#

# Enable Let's Encrypt certificate generation
ENABLE_LETSENCRYPT=1

# Domain for which to generate the certificate
LETSENCRYPT_DOMAIN=${url}

# E-Mail for receiving important account notifications (mandatory)
LETSENCRYPT_EMAIL=${email}

# Use the staging server (for avoiding rate limits while testing)
#LETSENCRYPT_USE_STAGING=1


#
# Etherpad integration (for document sharing)
#

# Set etherpad-lite URL in docker local network (uncomment to enable)
#ETHERPAD_URL_BASE=http://etherpad.meet.jitsi:9001

# Set etherpad-lite public URL (uncomment to enable)
#ETHERPAD_PUBLIC_URL=https://etherpad.my.domain

# Name your etherpad instance!
ETHERPAD_TITLE="Video Chat"

# The default text of a pad
ETHERPAD_DEFAULT_PAD_TEXT="Welcome to Web Chat!\n\n"

# Name of the skin for etherpad
ETHERPAD_SKIN_NAME="colibris"

# Skin variants for etherpad
ETHERPAD_SKIN_VARIANTS="super-light-toolbar super-light-editor light-background full-width-editor"


#
# Basic Jigasi configuration options (needed for SIP gateway support)
#

# SIP URI for incoming / outgoing calls
#JIGASI_SIP_URI=test@sip2sip.info

# Password for the specified SIP account as a clear text
#JIGASI_SIP_PASSWORD=passw0rd

# SIP server (use the SIP account domain if in doubt)
#JIGASI_SIP_SERVER=sip2sip.info

# SIP server port
#JIGASI_SIP_PORT=5060

# SIP server transport
#JIGASI_SIP_TRANSPORT=UDP

#
# Authentication configuration (see handbook for details)
#

# Enable authentication
#ENABLE_AUTH=1

# Enable guest access
#ENABLE_GUESTS=1

# Select authentication type: internal, jwt or ldap
#AUTH_TYPE=internal

# JWT authentication
#

# Application identifier
#JWT_APP_ID=my_jitsi_app_id

# Application secret known only to your token
#JWT_APP_SECRET=my_jitsi_app_secret

# (Optional) Set asap_accepted_issuers as a comma separated list
#JWT_ACCEPTED_ISSUERS=my_web_client,my_app_client

# (Optional) Set asap_accepted_audiences as a comma separated list
#JWT_ACCEPTED_AUDIENCES=my_server1,my_server2


# LDAP authentication (for more information see the Cyrus SASL saslauthd.conf man page)
#

# LDAP url for connection
#LDAP_URL=ldaps://ldap.domain.com/

# LDAP base DN. Can be empty
#LDAP_BASE=DC=example,DC=domain,DC=com

# LDAP user DN. Do not specify this parameter for the anonymous bind
#LDAP_BINDDN=CN=binduser,OU=users,DC=example,DC=domain,DC=com

# LDAP user password. Do not specify this parameter for the anonymous bind
#LDAP_BINDPW=LdapUserPassw0rd

# LDAP filter. Tokens example:
# %1-9 - if the input key is user@mail.domain.com, then %1 is com, %2 is domain and %3 is mail
# %s - %s is replaced by the complete service string
# %r - %r is replaced by the complete realm string
#LDAP_FILTER=(sAMAccountName=%u)

# LDAP authentication method
#LDAP_AUTH_METHOD=bind

# LDAP version
#LDAP_VERSION=3

# LDAP TLS using
#LDAP_USE_TLS=1

# List of SSL/TLS ciphers to allow
#LDAP_TLS_CIPHERS=SECURE256:SECURE128:!AES-128-CBC:!ARCFOUR-128:!CAMELLIA-128-CBC:!3DES-CBC:!CAMELLIA-128-CBC

# Require and verify server certificate
#LDAP_TLS_CHECK_PEER=1

# Path to CA cert file. Used when server certificate verify is enabled
#LDAP_TLS_CACERT_FILE=/etc/ssl/certs/ca-certificates.crt

# Path to CA certs directory. Used when server certificate verify is enabled
#LDAP_TLS_CACERT_DIR=/etc/ssl/certs

# Wether to use starttls, implies LDAPv3 and requires ldap:// instead of ldaps://
# LDAP_START_TLS=1


#
# Advanced configuration options (you generally don't need to change these)
#

# Internal XMPP domain
XMPP_DOMAIN=meet.jitsi

# Internal XMPP server
XMPP_SERVER=xmpp.meet.jitsi

# Internal XMPP server URL
XMPP_BOSH_URL_BASE=http://xmpp.meet.jitsi:5280

# Internal XMPP domain for authenticated services
XMPP_AUTH_DOMAIN=auth.meet.jitsi

# XMPP domain for the MUC
XMPP_MUC_DOMAIN=muc.meet.jitsi

# XMPP domain for the internal MUC used for jibri, jigasi and jvb pools
XMPP_INTERNAL_MUC_DOMAIN=internal-muc.meet.jitsi

# XMPP domain for unauthenticated users
XMPP_GUEST_DOMAIN=guest.meet.jitsi

# Custom Prosody modules for XMPP_DOMAIN (comma separated)
XMPP_MODULES=

# Custom Prosody modules for MUC component (comma separated)
XMPP_MUC_MODULES=

# Custom Prosody modules for internal MUC component (comma separated)
XMPP_INTERNAL_MUC_MODULES=

# MUC for the JVB pool
JVB_BREWERY_MUC=jvbbrewery

# XMPP user for JVB client connections
JVB_AUTH_USER=jvb

# STUN servers used to discover the server's public IP
JVB_STUN_SERVERS=meet-jit-si-turnrelay.jitsi.net:443

# Media port for the Jitsi Videobridge
JVB_PORT=10000

# TCP Fallback for Jitsi Videobridge for when UDP isn't available
JVB_TCP_HARVESTER_DISABLED=true
JVB_TCP_PORT=4443
JVB_TCP_MAPPED_PORT=4443

# A comma separated list of APIs to enable when the JVB is started [default: none]
# See https://github.com/jitsi/jitsi-videobridge/blob/master/doc/rest.md for more information
#JVB_ENABLE_APIS=rest,colibri

# XMPP user for Jicofo client connections.
# NOTE: this option doesn't currently work due to a bug
JICOFO_AUTH_USER=focus

# Base URL of Jicofo's reservation REST API
#JICOFO_RESERVATION_REST_BASE_URL=http://reservation.example.com

# Enable Jicofo's health check REST API (http://<jicofo_base_url>:8888/about/health)
#JICOFO_ENABLE_HEALTH_CHECKS=true

# XMPP user for Jigasi MUC client connections
JIGASI_XMPP_USER=jigasi

# MUC name for the Jigasi pool
JIGASI_BREWERY_MUC=jigasibrewery

# Minimum port for media used by Jigasi
JIGASI_PORT_MIN=20000

# Maximum port for media used by Jigasi
JIGASI_PORT_MAX=20050

# Enable SDES srtp
#JIGASI_ENABLE_SDES_SRTP=1

# Keepalive method
#JIGASI_SIP_KEEP_ALIVE_METHOD=OPTIONS

# Health-check extension
#JIGASI_HEALTH_CHECK_SIP_URI=keepalive

# Health-check interval
#JIGASI_HEALTH_CHECK_INTERVAL=300000
#
# Enable Jigasi transcription
#ENABLE_TRANSCRIPTIONS=1

# Jigasi will record audio when transcriber is on [default: false]
#JIGASI_TRANSCRIBER_RECORD_AUDIO=true

# Jigasi will send transcribed text to the chat when transcriber is on [default: false]
#JIGASI_TRANSCRIBER_SEND_TXT=true

# Jigasi will post an url to the chat with transcription file [default: false]
#JIGASI_TRANSCRIBER_ADVERTISE_URL=true

# Credentials for connect to Cloud Google API from Jigasi
# Please read https://cloud.google.com/text-to-speech/docs/quickstart-protocol
# section "Before you begin" paragraph 1 to 5
# Copy the values from the json to the related env vars
#GC_PROJECT_ID=
#GC_PRIVATE_KEY_ID=
#GC_PRIVATE_KEY=
#GC_CLIENT_EMAIL=
#GC_CLIENT_ID=
#GC_CLIENT_CERT_URL=

# Enable recording
#ENABLE_RECORDING=1

# XMPP domain for the jibri recorder
XMPP_RECORDER_DOMAIN=recorder.meet.jitsi

# XMPP recorder user for Jibri client connections
JIBRI_RECORDER_USER=recorder

# Directory for recordings inside Jibri container
JIBRI_RECORDING_DIR=/config/recordings

# The finalizing script. Will run after recording is complete
JIBRI_FINALIZE_RECORDING_SCRIPT_PATH=/config/finalize.sh

# XMPP user for Jibri client connections
JIBRI_XMPP_USER=jibri

# MUC name for the Jibri pool
JIBRI_BREWERY_MUC=jibribrewery

# MUC connection timeout
JIBRI_PENDING_TIMEOUT=90

# When jibri gets a request to start a service for a room, the room
# jid will look like: roomName@optional.prefixes.subdomain.xmpp_domain
# We'll build the url for the call by transforming that into:
# https://xmpp_domain/subdomain/roomName
# So if there are any prefixes in the jid (like jitsi meet, which
# has its participants join a muc at conference.xmpp_domain) then
# list that prefix here so it can be stripped out to generate
# the call url correctly
JIBRI_STRIP_DOMAIN_JID=muc

# Directory for logs inside Jibri container
JIBRI_LOGS_DIR=/config/logs

# Disable HTTPS: handle TLS connections outside of this setup
#DISABLE_HTTPS=1

# Redirect HTTP traffic to HTTPS
# Necessary for Let's Encrypt, relies on standard HTTPS port (443)
ENABLE_HTTP_REDIRECT=1

# Container restart policy
# Defaults to unless-stopped
RESTART_POLICY=unless-stopped

# Authenticate using external service or just focus external auth window if there is one already.
# TOKEN_AUTH_URL=https://auth.meet.example.com/{room}