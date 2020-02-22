$NetBSD: patch-toolkit_mozapps_installer_packager.mk,v 1.3 2020/02/12 16:36:50 ryoon Exp $

* Symbolic link to lib/firefox/firefox causes 'Couldn't load XPCOM.' error.

Taken from www/firefox

--- mozilla-release/toolkit/mozapps/installer/packager.mk.orig	2020-02-19 14:20:43.000000000 +0000
+++ mozilla-release/toolkit/mozapps/installer/packager.mk
@@ -142,7 +142,7 @@ endif
 	  (cd $(DESTDIR)$(installdir) && tar -xf -)
 	$(NSINSTALL) -D $(DESTDIR)$(bindir)
 	$(RM) -f $(DESTDIR)$(bindir)/$(MOZ_APP_NAME)
-	ln -s $(installdir)/$(MOZ_APP_NAME) $(DESTDIR)$(bindir)
+	#ln -s $(installdir)/$(MOZ_APP_NAME) $(DESTDIR)$(bindir)
 
 upload:
 	$(PYTHON3) -u $(MOZILLA_DIR)/build/upload.py --base-path $(DIST) \
