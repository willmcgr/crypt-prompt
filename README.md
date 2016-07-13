# crypt-prompt

Files
---

PKGBUILD: instructs and builds a package and installs it.  
aurpkgbuild: standalone pkgbuild.  
crypt-prompt.txt: the text that will be printed during boot.  
makefile: used for installing w/o making a package.  


Installation
---

clone the repo.

```
sudo make install
```
if in archlinux with makepkg (TBA)
```
makepkg -sci
```


Uninstallation
---

```
sudo make uninstall
```

if in archlinux and installed with makepkg
```
sudo pacman -R crypt-prompt
```

Enable
---

To enable (archlinux)  
&nbsp;&nbsp;&nbsp;&nbsp;Add **crypt-prompt** to hooks in the **/etc/mkinitcpio.conf** before the **encrypt** hook, then rebuild the initramfs.
```
HOOKS="... crypt-prompt encrypt ..."
```
```
sudo mkinitcpio -p linux
```


Configuration
---

Edits can be made to /etc/crypt-prompt after installation.


LEGAL
---

Provided as is. Use as you wish, attribute if you want I don't care.  
Also, I'm not responsable for anything you do with this. IE if you do something stupid you're just stupid.

