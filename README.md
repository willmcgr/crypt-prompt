# crypt-prompt

An initcpio hook to display a warning before the encrypt hook comes up.  

Files
---

PKGBUILD: instructs and builds a package and installs it.  
aurpkgbuild: standalone pkgbuild.  
crypt-prompt.txt: the text that will be printed during boot.  
makefile: used for installing w/o making a package.  

Installation
---

clone the repo, then:
```
sudo make install
```
or if on archlinux, then:
```
makepkg -sci
```

Uninstallation
---

if installed with make:
```
sudo make uninstall
```
if installed with makepkg:
```
sudo pacman -R crypt-prompt
```

Enable
---

Add the **crypt-prompt** to hooks in the **/etc/mkinitcpio.conf** before the **encrypt** hook.
```
HOOKS="... crypt-prompt encrypt ..."
```
then rebuild the initramfs image:
```
sudo mkinitcpio -p linux
```

Configuration
---

Edits can be made to **/etc/crypt-prompt** to change the warning that gets displayed.

LEGAL
---

Provided as is. Use as you wish, attribute if you want I don't care.  
Also, I'm not responsable for anything you do with this. IE if you do something stupid you're just stupid.

