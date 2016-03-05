--- cppformat/posix.h.orig	2016-03-04 15:44:12.000000000 +0100
+++ cppformat/posix.h	2016-03-05 17:59:59.902065986 +0100
@@ -339,7 +339,7 @@
 // Returns the memory page size.
 long getpagesize();
 
-#if defined(LC_NUMERIC_MASK) || defined(_MSC_VER)
+#if (defined(LC_NUMERIC_MASK) && defined(strtod_l)) || defined(_MSC_VER)
 # define FMT_LOCALE
 #endif
 
