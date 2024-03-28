## SSL Certificate generation for WikiJS server.

### Generate Private Key.
```
openssl genrsa -out wikijs.mydomain.com.key 4096
```

### Generate CSR.
```
openssl req -new -key wikijs.mydomain.com.key -out wikijs.mydomain.com.csr
```

### Now use this CSR file to buy the SSL certificates from CA Or create self-signed.
```
openssl x509 -in  wikijs.mydomain.com.csr -out  wikijs.mydomain.com.crt -req -signkey  wikijs.mydomain.com.key -days 365
```

### Once done copy these certificates to certs directory ( `configs/certs` ) before running container.
