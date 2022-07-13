# SETphish(social enginer tool for phishing)
<p align="center">
SETphish es una herramienta de phishing, el cual te crea una página falsa identica a la página que elegiste, luego te genera un link para posteriormente enviarselo a tu víctima. Disponible solo para TERMUX y distribuciones de UNIX.
</p>
___

## INSTALACIÓN EN TERMUX
~~~
apt update && apt upgrade -y
termux-setup-storage
apt install git php curl openssh wget -y
git clone https://github.com/wilian-lgn/SETphish
cd SETphish
bash SETphish.sh
~~~

## INSTALACIÓN EN DEBIAN
~~~
sudo apt-get install git php curl wget -y
git clone https://github.com/wilian-lgn/SETphish
cd SETphish
bash SETphish.sh
~~~
