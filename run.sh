unzip -o akuh.zip &&
unzip -o root.zip &&
tar -xvf root.tar.xz &&
rm -rf akuh.zip root.zip root.tar.xz &&
./dist/proot -S . /bin/bash
