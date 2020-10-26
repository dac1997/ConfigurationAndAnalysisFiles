ALL_SUBSYSTEMS+=HLTrigger
subdirs_src_HLTrigger = src_HLTrigger_Configuration
ALL_PACKAGES += HLTrigger/Configuration
subdirs_src_HLTrigger_Configuration := src_HLTrigger_Configuration_common src_HLTrigger_Configuration_doc src_HLTrigger_Configuration_python src_HLTrigger_Configuration_scripts src_HLTrigger_Configuration_test
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
src_HLTrigger_Configuration_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/HLTrigger/Configuration/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_HLTrigger_Configuration_scripts,src/HLTrigger/Configuration/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_HLTrigger_Configuration_test
src_HLTrigger_Configuration_test_parent := HLTrigger/Configuration
src_HLTrigger_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_Configuration_test,src/HLTrigger/Configuration/test,TEST))
ALL_SUBSYSTEMS+=TimingScripts
subdirs_src_TimingScripts = src_TimingScripts_Classes src_TimingScripts_L1_Studies src_TimingScripts_MachineStudies src_TimingScripts_MenuValidation src_TimingScripts_OnlineMonitoring src_TimingScripts_Scripts src_TimingScripts_test
ALL_PACKAGES += TimingScripts/Classes
subdirs_src_TimingScripts_Classes := 
ALL_PACKAGES += TimingScripts/L1_Studies
subdirs_src_TimingScripts_L1_Studies := 
ALL_PACKAGES += TimingScripts/MachineStudies
subdirs_src_TimingScripts_MachineStudies := 
ALL_PACKAGES += TimingScripts/MenuValidation
subdirs_src_TimingScripts_MenuValidation := 
ALL_PACKAGES += TimingScripts/OnlineMonitoring
subdirs_src_TimingScripts_OnlineMonitoring := 
ALL_PACKAGES += TimingScripts/Scripts
subdirs_src_TimingScripts_Scripts := 
ALL_PACKAGES += TimingScripts/test
subdirs_src_TimingScripts_test := 
ALL_SUBSYSTEMS+=forDiego
subdirs_src_forDiego = 
ALL_SUBSYSTEMS+=JMEAnalysis
subdirs_src_JMEAnalysis = src_JMEAnalysis_JetToolbox
ALL_PACKAGES += JMEAnalysis/JetToolbox
subdirs_src_JMEAnalysis_JetToolbox := src_JMEAnalysis_JetToolbox_plugins src_JMEAnalysis_JetToolbox_python src_JMEAnalysis_JetToolbox_test
ifeq ($(strip $(PyJMEAnalysisJetToolbox)),)
PyJMEAnalysisJetToolbox := self/src/JMEAnalysis/JetToolbox/python
src_JMEAnalysis_JetToolbox_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JMEAnalysis/JetToolbox/python)
PyJMEAnalysisJetToolbox_files := $(patsubst src/JMEAnalysis/JetToolbox/python/%,%,$(wildcard $(foreach dir,src/JMEAnalysis/JetToolbox/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJMEAnalysisJetToolbox_LOC_USE := self  
PyJMEAnalysisJetToolbox_PACKAGE := self/src/JMEAnalysis/JetToolbox/python
ALL_PRODS += PyJMEAnalysisJetToolbox
PyJMEAnalysisJetToolbox_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJMEAnalysisJetToolbox,src/JMEAnalysis/JetToolbox/python,src_JMEAnalysis_JetToolbox_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJMEAnalysisJetToolbox,src/JMEAnalysis/JetToolbox/python))
endif
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_python
src_JMEAnalysis_JetToolbox_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_python,src/JMEAnalysis/JetToolbox/python,PYTHON))
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_test
src_JMEAnalysis_JetToolbox_test_parent := JMEAnalysis/JetToolbox
src_JMEAnalysis_JetToolbox_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_test,src/JMEAnalysis/JetToolbox/test,TEST))
ALL_SUBSYSTEMS+=PUHLT
subdirs_src_PUHLT = src_PUHLT_PUmitigationatHLT
ALL_PACKAGES += PUHLT/PUmitigationatHLT
subdirs_src_PUHLT_PUmitigationatHLT := src_PUHLT_PUmitigationatHLT_interface src_PUHLT_PUmitigationatHLT_plugins src_PUHLT_PUmitigationatHLT_python src_PUHLT_PUmitigationatHLT_test
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
ALL_COMMONRULES += src_PUHLT_PUmitigationatHLT_test
src_PUHLT_PUmitigationatHLT_test_parent := PUHLT/PUmitigationatHLT
src_PUHLT_PUmitigationatHLT_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PUHLT_PUmitigationatHLT_test,src/PUHLT/PUmitigationatHLT/test,TEST))
ALL_SUBSYSTEMS+=again
subdirs_src_again = src_again_thread1 src_again_thread2
ALL_PACKAGES += again/thread1
subdirs_src_again_thread1 := 
ALL_PACKAGES += again/thread2
subdirs_src_again_thread2 := 
