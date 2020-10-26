ifeq ($(strip $(PyPUHLTPUmitigationatHLT)),)
PyPUHLTPUmitigationatHLT := self/src/PUHLT/PUmitigationatHLT/python
src_PUHLT_PUmitigationatHLT_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PUHLT/PUmitigationatHLT/python)
PyPUHLTPUmitigationatHLT_files := $(patsubst src/PUHLT/PUmitigationatHLT/python/%,%,$(wildcard $(foreach dir,src/PUHLT/PUmitigationatHLT/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPUHLTPUmitigationatHLT_LOC_USE := self  
PyPUHLTPUmitigationatHLT_PACKAGE := self/src/PUHLT/PUmitigationatHLT/python
ALL_PRODS += PyPUHLTPUmitigationatHLT
PyPUHLTPUmitigationatHLT_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPUHLTPUmitigationatHLT,src/PUHLT/PUmitigationatHLT/python,src_PUHLT_PUmitigationatHLT_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPUHLTPUmitigationatHLT,src/PUHLT/PUmitigationatHLT/python))
endif
ALL_COMMONRULES += src_PUHLT_PUmitigationatHLT_python
src_PUHLT_PUmitigationatHLT_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PUHLT_PUmitigationatHLT_python,src/PUHLT/PUmitigationatHLT/python,PYTHON))
