#############################################################################
##  v      #                   The Coq Proof Assistant                     ##
## <O___,, #                INRIA - CNRS - LIX - LRI - PPS                 ##
##   \VV/  #                                                               ##
##    //   #  Makefile automagically generated by coq_makefile Vtrunk      ##
#############################################################################

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

#
# This Makefile was generated by the command line :
# coq_makefile -f Make -o Makefile 
#

.DEFAULT_GOAL := all

# 
# This Makefile may take arguments passed as environment variables:
# COQBIN to specify the directory where Coq binaries resides;
# ZDEBUG/COQDEBUG to specify debug flags for ocamlc&ocamlopt/coqc;
# DSTROOT to specify a prefix to install path.

# Here is a hack to make $(eval $(shell works:
define donewline


endef
includecmdwithout@ = $(eval $(subst @,$(donewline),$(shell { $(1) | tr '\n' '@'; })))
$(call includecmdwithout@,$(COQBIN)coqtop -config)

##########################
#                        #
# Libraries definitions. #
#                        #
##########################

OCAMLLIBS?=-I versions/native\
  -I zchaff\
  -I verit\
  -I trace\
  -I smtlib2\
  -I lia\
  -I lfsc\
  -I euf\
  -I cnf\
  -I array\
  -I classes\
  -I bva
COQLIBS?=-I versions/native\
  -I zchaff\
  -I verit\
  -I trace\
  -I smtlib2\
  -I lia\
  -I lfsc\
  -I euf\
  -I cnf\
  -I array\
  -I classes\
  -I bva -R . SMTCoq
COQDOCLIBS?=-R . SMTCoq

##########################
#                        #
# Variables definitions. #
#                        #
##########################

CAMLYACC=$(CAMLBIN)ocamlyacc
CAMLLEX=$(CAMLBIN)ocamllex
VCMXS=versions/native/NSMTCoq_versions_native_Structures.cmxs NSMTCoq_State.cmxs NSMTCoq_Misc.cmxs NSMTCoq_SMT_terms.cmxs cnf/NSMTCoq_cnf_Cnf.cmxs euf/NSMTCoq_euf_Euf.cmxs lia/NSMTCoq_lia_Lia.cmxs spl/NSMTCoq_spl_Syntactic.cmxs spl/NSMTCoq_spl_Assumptions.cmxs spl/NSMTCoq_spl_Arithmetic.cmxs spl/NSMTCoq_spl_Operators.cmxs NSMTCoq_Trace.cmxs NSMTCoq_SMTCoq.cmxs NSMTCoq_State.cmi NSMTCoq_Misc.cmi NSMTCoq_SMT_terms.cmi cnf/NSMTCoq_cnf_Cnf.cmi euf/NSMTCoq_euf_Euf.cmi lia/NSMTCoq_lia_Lia.cmi spl/NSMTCoq_spl_Syntactic.cmi spl/NSMTCoq_spl_Assumptions.cmi spl/NSMTCoq_spl_Arithmetic.cmi spl/NSMTCoq_spl_Operators.cmi NSMTCoq_Trace.cmi NSMTCoq_Trace.cmi NSMTCoq_SMTCoq.cmi
CMXS=smtcoq_plugin.cmxs
CMXA=smtcoq.cmxa

OPT?=
COQDEP?=$(COQBIN)coqdep -c
COQFLAGS?=-q $(OPT) $(COQLIBS) $(OTHERFLAGS) $(COQ_XML)
COQCHKFLAGS?=-silent -o
COQDOCFLAGS?=-interpolate -utf8
COQC?=$(COQBIN)coqc
GALLINA?=$(COQBIN)gallina
COQDOC?=$(COQBIN)coqdoc
COQCHK?=$(COQBIN)coqchk

COQSRCLIBS?=-I $(COQLIB)kernel -I $(COQLIB)lib \
  -I $(COQLIB)library -I $(COQLIB)parsing \
  -I $(COQLIB)pretyping -I $(COQLIB)interp \
  -I $(COQLIB)proofs -I $(COQLIB)tactics \
  -I $(COQLIB)toplevel \
  -I $(COQLIB)plugins/btauto \
  -I $(COQLIB)plugins/cc \
  -I $(COQLIB)plugins/decl_mode \
  -I $(COQLIB)plugins/extraction \
  -I $(COQLIB)plugins/field \
  -I $(COQLIB)plugins/firstorder \
  -I $(COQLIB)plugins/fourier \
  -I $(COQLIB)plugins/funind \
  -I $(COQLIB)plugins/micromega \
  -I $(COQLIB)plugins/nsatz \
  -I $(COQLIB)plugins/omega \
  -I $(COQLIB)plugins/quote \
  -I $(COQLIB)plugins/ring \
  -I $(COQLIB)plugins/romega \
  -I $(COQLIB)plugins/rtauto \
  -I $(COQLIB)plugins/setoid_ring \
  -I $(COQLIB)plugins/syntax \
  -I $(COQLIB)plugins/xml
ZFLAGS=$(OCAMLLIBS) $(COQSRCLIBS) -I $(CAMLP4LIB)

CAMLC?=$(OCAMLC) -c -rectypes
CAMLOPTC?=$(OCAMLOPT) -c -rectypes
CAMLLINK?=$(OCAMLC) -rectypes
CAMLOPTLINK?=$(OCAMLOPT) -rectypes
GRAMMARS?=grammar.cma
CAMLP4EXTEND?=pa_extend.cmo pa_macro.cmo q_MLast.cmo
CAMLP4OPTIONS?=-loc loc
PP?=-pp "$(CAMLP4BIN)$(CAMLP4)o -I $(CAMLLIB) -I . $(COQSRCLIBS) $(CAMLP4EXTEND) $(GRAMMARS) $(CAMLP4OPTIONS) -impl"

##################
#                #
# Install Paths. #
#                #
##################

ifdef USERINSTALL
XDG_DATA_HOME?=$(HOME)/.local/share
COQLIBINSTALL=$(XDG_DATA_HOME)/coq
COQDOCINSTALL=$(XDG_DATA_HOME)/doc/coq
else
COQLIBINSTALL=${COQLIB}user-contrib
COQDOCINSTALL=${DOCDIR}user-contrib
endif

######################
#                    #
# Files dispatching. #
#                    #
######################

VFILES:=Trace.v\
  State.v\
  SMT_terms.v\
  Tactics.v\
  PropToBool.v\
  BoolToProp.v\
  ReflectFacts.v\
  SMTCoq.v\
  Misc.v\
  spl/Operators.v\
  spl/Arithmetic.v\
  spl/Syntactic.v\
  spl/Assumptions.v\
  lia/Lia.v\
  euf/Euf.v\
  cnf/Cnf.v\
  versions/native/Structures.v\
  array/Array_checker.v\
  array/FArray.v\
  classes/SMT_classes_instances.v\
  classes/SMT_classes.v\
  bva/Bva_checker.v\
  bva/BVList.v

-include $(addsuffix .d,$(VFILES))
.SECONDARY: $(addsuffix .d,$(VFILES))

vo_to_obj = $(addsuffix .o,$(foreach vo,$(1),$(addprefix $(dir $(vo)),$(filter-out Warning: Error:,$(firstword $(shell $(COQBIN)coqtop -batch -quiet -print-mod-uid $(vo:.vo=)))))))
VOFILES:=$(foreach vo,$(VFILES:.v=.vo),$(dir $(vo))$(notdir $(vo)))
GLOBFILES:=$(VFILES:.v=.glob)
VIFILES:=$(VFILES:.v=.vi)
GFILES:=$(VFILES:.v=.g)
HTMLFILES:=$(VFILES:.v=.html)
GHTMLFILES:=$(VFILES:.v=.g.html)
OBJFILES:=$(call vo_to_obj,$(VOFILES))
ML4FILES:=smtcoq_plugin.ml4

-include $(addsuffix .d,$(ML4FILES))
.SECONDARY: $(addsuffix .d,$(ML4FILES))

MLFILES:=lia/lia.ml\
  zchaff/zchaffParser.ml\
  zchaff/zchaff.ml\
  zchaff/satParser.ml\
  zchaff/cnfParser.ml\
  lfsc/lfsc.ml\
  lfsc/converter.ml\
  lfsc/tosmtcoq.ml\
  lfsc/builtin.ml\
  lfsc/ast.ml\
  lfsc/type.ml\
  lfsc/lfscLexer.ml\
  lfsc/lfscParser.ml\
  lfsc/hstring.ml\
  lfsc/shashcons.ml\
  verit/veritSyntax.ml\
  verit/verit.ml\
  verit/veritLexer.ml\
  verit/veritParser.ml\
  smtlib2/SExprLexer.ml\
  smtlib2/SExprParser.ml\
  smtlib2/smtlib2_solver.ml\
  smtlib2/SExpr.ml\
  smtlib2/smtlib2_util.ml\
  smtlib2/smtlib2_genConstr.ml\
  smtlib2/smtlib2_ast.ml\
  smtlib2/smtlib2_lex.ml\
  smtlib2/smtlib2_parse.ml\
  trace/smtTrace.ml\
  trace/smtMisc.ml\
  trace/smtForm.ml\
  trace/smtCommands.ml\
  trace/smtCnf.ml\
  trace/smtCertif.ml\
  trace/smtAtom.ml\
  trace/satAtom.ml\
  trace/coqTerms.ml\
  versions/native/structures.ml

-include $(addsuffix .d,$(MLFILES))
.SECONDARY: $(addsuffix .d,$(MLFILES))

MLIFILES:=lfsc/tosmtcoq.mli\
  lfsc/translator_sig.mli\
  lfsc/ast.mli\
  lfsc/hstring.mli\
  lfsc/shashcons.mli\
  verit/veritSyntax.mli\
  smtlib2/SExprParser.mli\
  smtlib2/smtlib2_solver.mli\
  smtlib2/SExpr.mli\
  trace/smtForm.mli\
  trace/smtAtom.mli

-include $(addsuffix .d,$(MLIFILES))
.SECONDARY: $(addsuffix .d,$(MLIFILES))

ALLCMOFILES:=$(ML4FILES:.ml4=.cmo) $(MLFILES:.ml=.cmo)
CMOFILES=$(filter-out $(addsuffix .cmo,$(foreach lib,$(MLLIBFILES:.mllib=_MLLIB_DEPENDENCIES) $(MLPACKFILES:.mlpack=_MLPACK_DEPENDENCIES),$($(lib)))),$(ALLCMOFILES))
CMXFILES=$(CMOFILES:.cmo=.cmx)
CMIFILES=$(sort $(ALLCMOFILES:.cmo=.cmi) $(MLIFILES:.mli=.cmi))
CMXSFILES=$(CMXFILES:.cmx=.cmxs)

#######################################
#                                     #
# Definition of the toplevel targets. #
#                                     #
#######################################

all: ml $(CMXFILES) $(CMXA) $(CMXS) $(VOFILES)

mlihtml: $(MLIFILES:.mli=.cmi)
	 mkdir $@ || rm -rf $@/*
	$(OCAMLDOC) -html -rectypes -d $@ -m A $(ZDEBUG) $(ZFLAGS) $(^:.cmi=.mli)

all-mli.tex: $(MLIFILES:.mli=.cmi)
	$(OCAMLDOC) -latex -rectypes -o $@ -m A $(ZDEBUG) $(ZFLAGS) $(^:.cmi=.mli)

spec: $(VIFILES)

gallina: $(GFILES)

html: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc $(COQDOCFLAGS) -html $(COQDOCLIBS) -d html $(VFILES)

gallinahtml: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc $(COQDOCFLAGS) -html -g $(COQDOCLIBS) -d html $(VFILES)

all.ps: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -ps $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all-gal.ps: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -ps -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all.pdf: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -pdf $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all-gal.pdf: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -pdf -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

validate: $(VOFILES)
	$(COQCHK) $(COQCHKFLAGS) $(COQLIBS) $(notdir $(^:.vo=))

beautify: $(VFILES:=.beautified)
	for file in $^; do mv $${file%.beautified} $${file%beautified}old && mv $${file} $${file%.beautified}; done
	@echo 'Do not do "make clean" until you are sure that everything went well!'
	@echo 'If there were a problem, execute "for file in $$(find . -name \*.v.old -print); do mv $${file} $${file%.old}; done" in your shell/'

.PHONY: all opt byte archclean clean install userinstall depend html validate

###################
#                 #
# Custom targets. #
#                 #
###################

$(CMXS): $(CMXA)
	$(CAMLOPTLINK) $(ZFLAGS) -o $@ -linkall -shared $^

$(CMXA): versions/native/structures.cmx trace/smtMisc.cmx trace/coqTerms.cmx trace/smtForm.cmx trace/smtCertif.cmx trace/smtTrace.cmx trace/smtCnf.cmx trace/satAtom.cmx trace/smtAtom.cmx zchaff/satParser.cmx zchaff/zchaffParser.cmx zchaff/cnfParser.cmx zchaff/zchaff.cmx smtlib2/smtlib2_util.cmx smtlib2/smtlib2_ast.cmx smtlib2/smtlib2_parse.cmx smtlib2/smtlib2_lex.cmx smtlib2/SExpr.cmx smtlib2/SExprParser.cmx smtlib2/SExprLexer.cmx smtlib2/smtlib2_solver.cmx lia/lia.cmx verit/veritSyntax.cmx verit/veritParser.cmx verit/veritLexer.cmx lfsc/shashcons.cmx lfsc/hstring.cmx lfsc/type.cmx lfsc/ast.cmx lfsc/builtin.cmx lfsc/tosmtcoq.cmx lfsc/converter.cmx lfsc/lfscParser.cmx lfsc/lfscLexer.cmx smtlib2/smtlib2_genConstr.cmx trace/smtCommands.cmx verit/verit.cmx lfsc/lfsc.cmx smtcoq_plugin.cmx
	$(CAMLOPTLINK) $(ZFLAGS) -a -o $@ $^

ml: verit/veritParser.ml verit/veritLexer.ml smtlib2/smtlib2_parse.ml smtlib2/smtlib2_lex.ml smtlib2/SExprParser.ml smtlib2/SExprLexer.ml lfsc/lfscParser.ml lfsc/lfscLexer.ml


%.ml %.mli: %.mly
	$(CAMLYACC) $<

%.ml: %.mll
	$(CAMLLEX) $<

lfsctest: 
	cd ../unit-tests; make lfsc

vtest: 
	cd ../unit-tests; make verit

ztest: 
	cd ../unit-tests; make zchaff

test: 
	cd ../unit-tests; make

####################
#                  #
# Special targets. #
#                  #
####################

byte:
	$(MAKE) all "OPT:=-byte"

opt:
	$(MAKE) all "OPT:=-opt"

userinstall:
	+$(MAKE) USERINSTALL=true install

install-natdynlink:
	for i in $(CMXS); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done
	for i in $(CMXA); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done
	for i in $(VCMXS); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done

install:$(if ifeq '$(HASNATDYNLINK)' 'true',install-natdynlink)
	for i in $(VOFILES) $(OBJFILES) $(OBJFILES:.o=.cm*); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done
	for i in $(CMXFILES); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done
	for i in $(CMIFILES); do \
	 install -d `dirname $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i`; \
	 install -m 0644 $$i $(DSTROOT)$(COQLIBINSTALL)/SMTCoq/$$i; \
	done

install-doc:
	install -d $(DSTROOT)$(COQDOCINSTALL)/SMTCoq/html
	for i in html/*; do \
	 install -m 0644 $$i $(DSTROOT)$(COQDOCINSTALL)/SMTCoq/$$i;\
	done
	install -d $(DSTROOT)$(COQDOCINSTALL)/SMTCoq/mlihtml
	for i in mlihtml/*; do \
	 install -m 0644 $$i $(DSTROOT)$(COQDOCINSTALL)/SMTCoq/$$i;\
	done

clean:
	rm -f $(ALLCMOFILES) $(CMIFILES) $(CMAFILES)
	rm -f $(ALLCMOFILES:.cmo=.cmx) $(CMXAFILES) $(CMXSFILES) $(ALLCMOFILES:.cmo=.o) $(CMXAFILES:.cmxa=.a)
	rm -f $(addsuffix .d,$(MLFILES) $(MLIFILES) $(ML4FILES) $(MLLIBFILES) $(MLPACKFILES))
	rm -f $(OBJFILES) $(OBJFILES:.o=.native)
	rm -f $(OBJFILES:.o=.cmi) $(OBJFILES:.o=.cmo)
	rm -f $(OBJFILES:.o=.cmx) $(OBJFILES:.o=.cmxs)
	rm -f $(VOFILES) $(VIFILES) $(GFILES) $(VFILES:.v=.v.d) $(VFILES:=.beautified) $(VFILES:=.old)
	rm -f all.ps all-gal.ps all.pdf all-gal.pdf all.glob $(VFILES:.v=.glob) $(VFILES:.v=.tex) $(VFILES:.v=.g.tex) all-mli.tex
	- rm -rf html mlihtml
	- rm -rf $(CMXS)
	- rm -rf $(CMXA)
	- rm -rf ml
	- rm -rf lfsctest
	- rm -rf vtest
	- rm -rf ztest
	- rm -rf test
	- rm -f NSMTCoq* cnf/NSMTCoq* euf/NSMTCoq* lia/NSMTCoq* spl/NSMTCoq* ../unit-tests/NSMTCoq* ../unit-tests/*.vo ../unit-tests/*.zlog ../unit-tests/*.vtlog verit/veritParser.mli verit/veritParser.ml verit/veritLexer.ml smtlib2/smtlib2_parse.mli smtlib2/smtlib2_parse.ml smtlib2/smtlib2_lex.ml lfsc/lfscLexer.ml lfsc/lfscParser.ml lfsc/lfscParser.mli trace/smtcoq.a

archclean:
	rm -f *.cmx *.o

printenv:
	@$(COQBIN)coqtop -config
	@echo CAMLC =	$(CAMLC)
	@echo CAMLOPTC =	$(CAMLOPTC)
	@echo PP =	$(PP)
	@echo COQFLAGS =	$(COQFLAGS)
	@echo COQLIBINSTALL =	$(COQLIBINSTALL)
	@echo COQDOCINSTALL =	$(COQDOCINSTALL)


###################
#                 #
# Implicit rules. #
#                 #
###################

%.cmi: %.mli
	$(CAMLC) $(ZDEBUG) $(ZFLAGS) $<

%.mli.d: %.mli
	$(OCAMLDEP) -slash $(OCAMLLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.cmo: %.ml4
	$(CAMLC) $(ZDEBUG) $(ZFLAGS) $(PP) -impl $<

%.cmx: %.ml4
	$(CAMLOPTC) $(ZDEBUG) $(ZFLAGS) $(PP) -impl $<

%.ml4.d: %.ml4
	$(OCAMLDEP) -slash $(OCAMLLIBS) $(PP) -impl "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.cmo: %.ml
	$(CAMLC) $(ZDEBUG) $(ZFLAGS) $<

%.cmx: %.ml
	$(CAMLOPTC) $(ZDEBUG) $(ZFLAGS) $<

%.ml.d: %.ml
	$(OCAMLDEP) -slash $(OCAMLLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.cmxs: %.cmx
	$(CAMLOPTLINK) $(ZDEBUG) $(ZFLAGS) -shared -o $@ $<

%.vo %.glob: %.v
	$(COQC) $(COQDEBUG) $(COQFLAGS) $*

%.vi: %.v
	$(COQC) -i $(COQDEBUG) $(COQFLAGS) $*

%.g: %.v
	$(GALLINA) $<

%.tex: %.v
	$(COQDOC) $(COQDOCFLAGS) -latex $< -o $@

%.html: %.v %.glob
	$(COQDOC) $(COQDOCFLAGS) -html $< -o $@

%.g.tex: %.v
	$(COQDOC) $(COQDOCFLAGS) -latex -g $< -o $@

%.g.html: %.v %.glob
	$(COQDOC)$(COQDOCFLAGS)  -html -g $< -o $@

%.v.d: %.v
	$(COQDEP) -slash $(COQLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.v.beautified:
	$(COQC) $(COQDEBUG) $(COQFLAGS) -beautify $*

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

