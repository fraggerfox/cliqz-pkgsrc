# $NetBSD$

.if !defined(CLIQZ_HACKS_MK)
CLIQZ_HACKS_MK=	defined

.include "../../mk/bsd.fast.prefs.mk"
.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
CXXFLAGS+=	-Wno-return-type-c-linkage
.endif

.endif	# CLIQZ_HACKS_MK
