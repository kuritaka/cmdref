#!/bin/bash
exit

#-------------------------------------------------------
# Key
#-------------------------------------------------------
#Ref : https://cmdref.net/protocol/openssl/generate.html

# Generate a CSR and Private Key
openssl req -new -newkey rsa:2048 -nodes -out example.com.csr -keyout example.com.key -sha256 -subj "/C=JP/ST=Tokyo/L=Shibuya-ku/O=Example, Inc./OU=IT/CN=example.com"

# Change the password of Private Key
openssl rsa -in privkey.pems -out privkey.nopass.pem



#Verify your CSR
$ openssl req -text -in csr.pem |grep Subject:
   Subject: C=HK, ST=Hong Kong, L=Hong Kong, O=EXAMPLE LIMITED, OU=IT, CN=www.example.com


$ openssl req -text -in csr.pem  |head
Certificate Request:
    Data:
        Version: 0 (0x0)
        Subject: C=HK, ST=Hong Kong, L=Hong Kong, O=EXAMPLE LIMITED, OU=IT, CN=www.example.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
            RSA Public Key: (2048 bit)
                Modulus (2048 bit):
                    00:ab:7f:cb:72:02:31:a6:d8:cb:30:c0:22:aa:aa:
                    9f:63:d7:95:5f:de:eb:41:b8:58:17:91:44:aa:aa:
(abbr)


# Verify your Private Key
$ openssl rsa -text -noout -in key.pem  |head
Private-Key: (2048 bit)
modulus:
    00:ab:7f:cb:72:02:31:a6:d8:cb:30:c0:22:aa:aa:
    9f:63:d7:95:5f:de:eb:41:b8:58:17:91:44:aa:aa:
(abbr)


# Verify your Certificate
$ openssl x509 -text -noout -in xxxxx.crt
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            11:21:4a:82:fe:34:76:9b:c0:78:c0:30:f3:a4:e5:aa:aa:aa
    Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=JP, O=GlobalSign nv-sa, CN=GlobalSign Domain Validation CA - G2
        Validity
            Not Before: Jan 22 12:37:05 2015 GMT
            Not After : Dec 29 14:59:59 2015 GMT
        Subject: OU=Domain Control Validated, CN=*.example.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:ab:7f:cb:72:02:31:a6:d8:cb:30:c0:22:aa:aa:
                    9f:63:d7:95:5f:de:eb:41:b8:58:17:91:44:aa:aa:
(abbr)


#-------------------------------------------------------
# How to check SSL/TLS from the outside (with openssl)
#-------------------------------------------------------
# Ref : https://cmdref.net/protocol/openssl/check_tls


$ echo | openssl s_client -connect redhat.com:443 -brief
CONNECTION ESTABLISHED
Protocol version: TLSv1.2
Ciphersuite: ECDHE-RSA-AES128-GCM-SHA256
Peer certificate: C = US, ST = North Carolina, L = Raleigh, O = "Red Hat, Inc.", OU = Information Technology, CN = *.redhat.com
Hash used: SHA256
Signature type: RSA
Verification: OK
Supported Elliptic Curve Point Formats: uncompressed
Server Temp Key: ECDH, P-256, 256 bits
DONE



$ echo | openssl s_client -connect redhat.com:443 2>/dev/null | openssl x509 -noout -dates
notBefore=Jul  9 00:00:00 2019 GMT
notAfter=Aug  2 12:00:00 2021 GMT
