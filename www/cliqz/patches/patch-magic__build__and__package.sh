$NetBSD$

Disable packaging for now, it segfaults during the run.

Also we do not use the packging feature.

--- magic_build_and_package.sh.orig	2020-04-17 16:59:39.968892092 +0000
+++ magic_build_and_package.sh
@@ -71,8 +71,8 @@ if $CQZ_BUILD_TESTS; then
   ./mach build package-tests
 fi
 
-echo '***** Packaging *****'
-./mach package
+#echo '***** Packaging *****'
+#./mach package
 
 if $CQZ_BUILD_SYMBOLS; then
   echo '***** Prepare build symbols *****'
