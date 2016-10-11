mkdir -p ./usr/bin
mkdir -p ./usr/share/man/man1/
cp ../screen-generator ./usr/bin
cp ../screen-generator.1 ./usr/share/man/man1/
mkdir DEBIAN
echo "Package: screen-generator
Version: 0.3-1
Section: base
Priority: optional
Architecture: any
Maintainer: Jean Yvan Tissot  <jean.yvan.tissot@gmail.com>
Description: 
 screen-generator generates screen configuration files and launches screen by simply
 providing a chain of commands" >DEBIAN/control
cd ..screen-generator_0.3-1


echo "package (version) distribution; urgency=urgency

* Add automatic command substitutions
  - ls -> watch ls
  - cat -> less
-- maintainer name <jean.yvan.tissot@gmail.com>  $(date -R)" > DEBIAN/changelog















chmod -R 0755 .
dpkg-deb --build ../screen-generator_0.3-1
