
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = src
topdir = /Users/mattgraham/.rvm/rubies/ruby-1.8.7-p358/lib/ruby/1.8/i686-darwin10.8.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/Users/mattgraham/.rvm/rubies/ruby-1.8.7-p358
exec_prefix = $(prefix)
datarootdir = $(prefix)/share
sbindir = $(exec_prefix)/sbin
vendorlibdir = $(vendordir)/$(ruby_version)
infodir = $(datarootdir)/info
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
datadir = $(datarootdir)
libdir = $(exec_prefix)/lib
sysconfdir = $(prefix)/etc
rubylibdir = $(libdir)/ruby/$(ruby_version)
psdir = $(docdir)
libexecdir = $(exec_prefix)/libexec
localstatedir = $(prefix)/var
docdir = $(datarootdir)/doc/$(PACKAGE)
archdir = $(rubylibdir)/$(arch)
includedir = $(prefix)/include
dvidir = $(docdir)
pdfdir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
bindir = $(exec_prefix)/bin
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendordir = $(libdir)/ruby/vendor_ruby
localedir = $(datarootdir)/locale
htmldir = $(docdir)
mandir = $(datarootdir)/man
sharedstatedir = $(prefix)/com
sitearchdir = $(sitelibdir)/$(sitearch)

CC = /usr/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -g -O2  -fno-common -pipe -fno-common $(cflags) -Wall 
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) 
ldflags  = -L.  -framework Carbon -framework ApplicationServices
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin10.8.0
sitearch = i686-darwin10.8.0
ruby_version = 1.8
ruby = /Users/mattgraham/.rvm/rubies/ruby-1.8.7-p358/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -ldl -lobjc  
SRCS = rbae.c SendThreadSafe.c
OBJS = rbae.o SendThreadSafe.o
TARGET = ae
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/mattgraham/Dropbox/play/vendor/gems/ruby/1.8/gems/rb-appscript-0.6.1/lib$(target_prefix)
RUBYARCHDIR = /Users/mattgraham/Dropbox/play/vendor/gems/ruby/1.8/gems/rb-appscript-0.6.1/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)/_aem
install-rb-default: $(RUBYLIBDIR)/_aem/aemreference.rb
$(RUBYLIBDIR)/_aem/aemreference.rb: src/lib/_aem/aemreference.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/aemreference.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/codecs.rb
$(RUBYLIBDIR)/_aem/codecs.rb: src/lib/_aem/codecs.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/codecs.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/connect.rb
$(RUBYLIBDIR)/_aem/connect.rb: src/lib/_aem/connect.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/connect.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/encodingsupport.rb
$(RUBYLIBDIR)/_aem/encodingsupport.rb: src/lib/_aem/encodingsupport.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/encodingsupport.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/findapp.rb
$(RUBYLIBDIR)/_aem/findapp.rb: src/lib/_aem/findapp.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/findapp.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/mactypes.rb
$(RUBYLIBDIR)/_aem/mactypes.rb: src/lib/_aem/mactypes.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/mactypes.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/send.rb
$(RUBYLIBDIR)/_aem/send.rb: src/lib/_aem/send.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/send.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_aem/typewrappers.rb
$(RUBYLIBDIR)/_aem/typewrappers.rb: src/lib/_aem/typewrappers.rb $(RUBYLIBDIR)/_aem
	$(INSTALL_DATA) src/lib/_aem/typewrappers.rb $(@D)
pre-install-rb-default: $(RUBYLIBDIR)/_appscript
install-rb-default: $(RUBYLIBDIR)/_appscript/defaultterminology.rb
$(RUBYLIBDIR)/_appscript/defaultterminology.rb: src/lib/_appscript/defaultterminology.rb $(RUBYLIBDIR)/_appscript
	$(INSTALL_DATA) src/lib/_appscript/defaultterminology.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_appscript/referencerenderer.rb
$(RUBYLIBDIR)/_appscript/referencerenderer.rb: src/lib/_appscript/referencerenderer.rb $(RUBYLIBDIR)/_appscript
	$(INSTALL_DATA) src/lib/_appscript/referencerenderer.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_appscript/reservedkeywords.rb
$(RUBYLIBDIR)/_appscript/reservedkeywords.rb: src/lib/_appscript/reservedkeywords.rb $(RUBYLIBDIR)/_appscript
	$(INSTALL_DATA) src/lib/_appscript/reservedkeywords.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_appscript/safeobject.rb
$(RUBYLIBDIR)/_appscript/safeobject.rb: src/lib/_appscript/safeobject.rb $(RUBYLIBDIR)/_appscript
	$(INSTALL_DATA) src/lib/_appscript/safeobject.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/_appscript/terminology.rb
$(RUBYLIBDIR)/_appscript/terminology.rb: src/lib/_appscript/terminology.rb $(RUBYLIBDIR)/_appscript
	$(INSTALL_DATA) src/lib/_appscript/terminology.rb $(@D)
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/aem.rb
$(RUBYLIBDIR)/aem.rb: src/lib/aem.rb $(RUBYLIBDIR)
	$(INSTALL_DATA) src/lib/aem.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/appscript.rb
$(RUBYLIBDIR)/appscript.rb: src/lib/appscript.rb $(RUBYLIBDIR)
	$(INSTALL_DATA) src/lib/appscript.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/kae.rb
$(RUBYLIBDIR)/kae.rb: src/lib/kae.rb $(RUBYLIBDIR)
	$(INSTALL_DATA) src/lib/kae.rb $(@D)
install-rb-default: $(RUBYLIBDIR)/osax.rb
$(RUBYLIBDIR)/osax.rb: src/lib/osax.rb $(RUBYLIBDIR)
	$(INSTALL_DATA) src/lib/osax.rb $(@D)
$(RUBYARCHDIR):
	$(MAKEDIRS) $@
$(RUBYLIBDIR)/_aem:
	$(MAKEDIRS) $@
$(RUBYLIBDIR)/_appscript:
	$(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
