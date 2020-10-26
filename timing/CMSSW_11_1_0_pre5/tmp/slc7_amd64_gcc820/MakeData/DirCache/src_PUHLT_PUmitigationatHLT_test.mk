ALL_COMMONRULES += src_PUHLT_PUmitigationatHLT_test
src_PUHLT_PUmitigationatHLT_test_parent := PUHLT/PUmitigationatHLT
src_PUHLT_PUmitigationatHLT_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PUHLT_PUmitigationatHLT_test,src/PUHLT/PUmitigationatHLT/test,TEST))
