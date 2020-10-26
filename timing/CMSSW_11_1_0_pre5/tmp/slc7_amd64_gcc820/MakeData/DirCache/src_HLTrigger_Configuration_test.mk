ALL_COMMONRULES += src_HLTrigger_Configuration_test
src_HLTrigger_Configuration_test_parent := HLTrigger/Configuration
src_HLTrigger_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_Configuration_test,src/HLTrigger/Configuration/test,TEST))
