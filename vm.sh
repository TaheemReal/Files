apt install curl sudo git wget -y &&
apt install qemu-system-x86-64 &&
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com/ buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok -y &&
qemu-img create -f qcow2 win.img 300G
qemu-system-x86_64 -cpu EPYC -smp sockets=1,cores=6,threads=1 -m 12G -device virtio-balloon-pci -drive file=win.img,if=virtio -cdrom win.iso -vga virtio -device virtio-gpu-pci -device intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -accel tcg,thread=multi -vnc :0 -drive file=virtio.iso,media=cdrom -usb -device usb-tablet -daemonize &&
ngrok authtoken 2jbbOGMukoFLluOQCHwMt5UbCxY_51bhi9wCuxcNwxzhTmrgb &&
ngrok tcp 5900
