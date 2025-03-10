unzip -n akuh.zip &&
unzip -n root.zip &&
tar --skip-old-files -xvf root.tar.xz &&
rm -rf akuh.zip root.zip root.tar.xz &&
./dist/proot -S . /bin/bash
