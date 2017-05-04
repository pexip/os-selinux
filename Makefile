all:

# prepend an underscore to the target name, to [hopefully] cause policy
# loading to occur as early as possible
install:
	install -m644 -D etc.selinux.config $(DESTDIR)/usr/share/selinux/config.example
	install -m755 -D update-selinux-config $(DESTDIR)/usr/sbin/update-selinux-config
	install -m644 -D mounted-tmp.upstart $(DESTDIR)/etc/init/selinux-mounted-tmp.conf
	install -m644 -D mounted-dev.upstart $(DESTDIR)/etc/init/selinux-mounted-dev.conf
	install -m644 -D mounted-varlock.upstart $(DESTDIR)/etc/init/selinux-mounted-varlock.conf
	install -m644 -D mounted-varrun.upstart $(DESTDIR)/etc/init/selinux-mounted-varrun.conf

clean:

distclean:

.PHONY: all install clean distclean
