$NetBSD$

* Support NetBSD
* Support Solaris (we can't rely on pthread_setname_np so ignore it).

Original patch from ryoon, imported from www/firefox

--- mozilla-release/ipc/chromium/src/base/platform_thread_posix.cc.orig	2018-11-16 08:40:07.000000000 +0000
+++ mozilla-release/ipc/chromium/src/base/platform_thread_posix.cc
@@ -12,7 +12,9 @@
 #if defined(OS_MACOSX)
 #include <mach/mach.h>
 #elif defined(OS_NETBSD)
+_Pragma("GCC visibility push(default)")
 #include <lwp.h>
+_Pragma("GCC visibility pop")
 #elif defined(OS_LINUX)
 #include <sys/syscall.h>
 #include <sys/prctl.h>
