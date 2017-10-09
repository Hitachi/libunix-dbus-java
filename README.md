# libunix-dbus-java
:bus: Fork of Unix Sockets Library. See: http://www.matthew.ath.cx/projects/java/

## Requirements

```
dnf install zlib-devel automake autoconf
```

## Instructions to build

```
$ libtoolize;aclocal;autoconf;automake --add-missing;
$ ./configure --with-jvm=<PATH OF YOUR JAVA_HOME> && make && make install
```

## Reporting security vulnerabilities

If you've found a security vulnerability, please look at the [instructions on how to properly report it](http://www.keycloak.org/security.html)
