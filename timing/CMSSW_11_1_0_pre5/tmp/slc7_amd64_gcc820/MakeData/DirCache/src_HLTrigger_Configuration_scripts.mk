src_HLTrigger_Configuration_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/HLTrigger/Configuration/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_HLTrigger_Configuration_scripts,src/HLTrigger/Configuration/scripts,$(SCRAMSTORENAME_BIN),*))
