# Created by: Viacheslav Mikerov <SlavaMikerov@gmail.com>
# $FreeBSD$

PORTNAME=	libcppformat
PORTVERSION=	2.1.0
CATEGORIES=	devel

MAINTAINER=	SlavaMikerov@gmail.com
COMMENT=	C++ Format is an open-source formatting library for C++

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	cppformat
GH_PROJECT=	cppformat
GH_TAGNAME=	 2.1.0

USES=		cmake:outsource compiler:c++11-lib
CMAKE_SOURCE_PATH=	${WRKSRC}
CMAKE_ARGS=	-DCMAKE_INSTALL_PREFIX=${PREFIX} -DFMT_DOC=OFF
OPTIONS_DEFINE=	TEST
TEST_CMAKE_OFF=	-DFMT_TEST=OFF

.include <bsd.port.mk>
