ifeq ($(strip $(PyHLTriggerConfiguration)),)
PyHLTriggerConfiguration := self/src/HLTrigger/Configuration/python
src_HLTrigger_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HLTrigger/Configuration/python)
PyHLTriggerConfiguration_files := $(patsubst src/HLTrigger/Configuration/python/%,%,$(wildcard $(foreach dir,src/HLTrigger/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHLTriggerConfiguration_LOC_USE := self  
PyHLTriggerConfiguration_PACKAGE := self/src/HLTrigger/Configuration/python
ALL_PRODS += PyHLTriggerConfiguration
PyHLTriggerConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHLTriggerConfiguration,src/HLTrigger/Configuration/python,src_HLTrigger_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyHLTriggerConfiguration,src/HLTrigger/Configuration/python))
endif
ALL_COMMONRULES += src_HLTrigger_Configuration_python
src_HLTrigger_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_Configuration_python,src/HLTrigger/Configuration/python,PYTHON))
