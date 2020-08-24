# Author: Julian Xhokaxhiu <info@julianxhokaxhiu.com>
pkgname=retroarch-standalone-service
pkgver=2
pkgrel=13
pkgdesc="Systemd service and user to run Retroarch in stand-alone mode"
url=""
arch=('x86_64' 'i686' 'arm' 'armv6h' 'armv7h' 'aarch64')
license=('MIT')
depends=('retroarch' 'retroarch-assets-xmb' 'xorg-server' 'xorg-xinit' 'xorg-xset' 'unclutter')
install='retroarch-standalone.install'
source=(
  'retroarch-standalone.service'
  'retroarch-standalone.sysuser'
  'retroarch-standalone.cfg'
  'retroarch-standalone.xinitrc'
)
sha256sums=(
  '5efc1dcc2d220a33f0d53d6abe4538227f434ff2a00f5165bb209cf6e0bae4a3'
  '48d9f35b943209764990050a06dea9bd356aa275adccb3e0a835e738e6beb0c6'
  '16355b39c55aa173b6ab1c5f2115f667fe01bdca7c3d7ae5f3a301666e64fb48'
  '0b0171e9b21496d03585ec2bf89298c36e4c86179bc0315f49bdb081b648a523'
)

package() {
  # Copy autorun script
  install -Dm644 ${srcdir}/retroarch-standalone.xinitrc "$pkgdir/home/retroarch/.xinitrc"

  # Copy additional configuration file to /etc
  install -Dm644 ${srcdir}/retroarch-standalone.cfg "$pkgdir/etc/retroarch-standalone.cfg"

  #Install service file
  install -Dm644 ${srcdir}/retroarch-standalone.service "$pkgdir/usr/lib/systemd/system/retroarch-standalone.service"

  #Install sysuser config
  install -Dm644 ${srcdir}/retroarch-standalone.sysuser "$pkgdir/usr/lib/sysusers.d/retroarch-standalone.conf"
}
