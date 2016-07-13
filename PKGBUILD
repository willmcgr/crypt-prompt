##  Maintainer: will mcgrath

pkgname=crypt-prompt
pkgver=7.ca514d2
pkgrel=1
pkgdesc='a simple initcpio hook, prints /etc/crypt-prompt at boot.'
arch=('any')
url=""
license=('NONE')
depends=('mkinitcpio')
source=(
	'crypt-prompt.txt'
	'crypt-prompt.hook'
	'crypt-prompt.install'
)
md5sums=(
	'c0205117a788dd7f80210df43039cf4c'
	'f99bce62ddd2d809740e46af491c3fd9'
	'0b447f9280f0cf2cdb2ebf1484af238d'
)

pkgver() {
    printf "%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}


package() {
	install -Dm664 "${srcdir}/crypt-prompt.txt" "${pkgdir}/etc/crypt-prompt"
	install -Dm644 "${srcdir}/crypt-prompt.hook" "${pkgdir}/usr/lib/initcpio/hooks/crypt-prompt"
	install -Dm644 "${srcdir}/crypt-prompt.install" "${pkgdir}/usr/lib/initcpio/install/crypt-prompt"
}


