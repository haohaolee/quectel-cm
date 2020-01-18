include $(TOPDIR)/rules.mk

PKG_NAME:=quectel-CM
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/i2som/Quectel-CM.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=74f6c7e0ad587067d3b2efb4c4ee53d2191eaf0a
PKG_MIRROR_HASH:=d876b73f6f5f36e3cd1f26c8f1a7b3beda4f5d13ba8faf3f411c802295260426

include $(INCLUDE_DIR)/package.mk

define Package/quectel-CM
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=WWAN
  TITLE:=qmi of quectel
  DEPENDS:=+libpthread +libdl +libc
endef

define Package/quectel-CM/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-CM $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,quectel-CM))

