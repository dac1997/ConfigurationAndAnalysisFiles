ifeq ($(strip $(JMEAnalysisJetToolboxAuto)),)
JMEAnalysisJetToolboxAuto := self/src/JMEAnalysis/JetToolbox/plugins
PLUGINS:=yes
JMEAnalysisJetToolboxAuto_files := $(patsubst src/JMEAnalysis/JetToolbox/plugins/%,%,$(wildcard $(foreach dir,src/JMEAnalysis/JetToolbox/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JMEAnalysisJetToolboxAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/JMEAnalysis/JetToolbox/plugins/BuildFile
JMEAnalysisJetToolboxAuto_LOC_USE := self  FWCore/Framework FWCore/ParameterSet root boost DataFormats/Candidate DataFormats/JetReco DataFormats/PatCandidates DataFormats/StdDictionaries DataFormats/WrappedStdDictionaries SimDataFormats/GeneratorProducts FWCore/ServiceRegistry CommonTools/Utils CommonTools/UtilAlgos CondFormats/JetMETObjects
JMEAnalysisJetToolboxAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JMEAnalysisJetToolboxAuto,JMEAnalysisJetToolboxAuto,$(SCRAMSTORENAME_LIB),src/JMEAnalysis/JetToolbox/plugins))
JMEAnalysisJetToolboxAuto_PACKAGE := self/src/JMEAnalysis/JetToolbox/plugins
ALL_PRODS += JMEAnalysisJetToolboxAuto
JMEAnalysis/JetToolbox_forbigobj+=JMEAnalysisJetToolboxAuto
JMEAnalysisJetToolboxAuto_INIT_FUNC        += $$(eval $$(call Library,JMEAnalysisJetToolboxAuto,src/JMEAnalysis/JetToolbox/plugins,src_JMEAnalysis_JetToolbox_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
JMEAnalysisJetToolboxAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,JMEAnalysisJetToolboxAuto,src/JMEAnalysis/JetToolbox/plugins))
endif
ALL_COMMONRULES += src_JMEAnalysis_JetToolbox_plugins
src_JMEAnalysis_JetToolbox_plugins_parent := JMEAnalysis/JetToolbox
src_JMEAnalysis_JetToolbox_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JMEAnalysis_JetToolbox_plugins,src/JMEAnalysis/JetToolbox/plugins,PLUGINS))
ifeq ($(strip $(PUHLTPUmitigationatHLTAuto)),)
PUHLTPUmitigationatHLTAuto := self/src/PUHLT/PUmitigationatHLT/plugins
PLUGINS:=yes
PUHLTPUmitigationatHLTAuto_files := $(patsubst src/PUHLT/PUmitigationatHLT/plugins/%,%,$(wildcard $(foreach dir,src/PUHLT/PUmitigationatHLT/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PUHLTPUmitigationatHLTAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/PUHLT/PUmitigationatHLT/plugins/BuildFile
PUHLTPUmitigationatHLTAuto_LOC_USE := self  FWCore/PluginManager FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry DataFormats/Common DataFormats/DetId DataFormats/EcalDetId Geometry/EcalAlgo DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/HcalIsolatedTrack DataFormats/Math DataFormats/JetReco DataFormats/BeamSpot DataFormats/METReco DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/FEDRawData EventFilter/HcalRawToDigi Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records HLTrigger/HLTcore RecoEcal/EgammaCoreTools CondFormats/HLTObjects root DataFormats/CSCRecHit DataFormats/MuonDetId Geometry/CSCGeometry PhysicsTools/UtilAlgos Geometry/EcalMapping DataFormats/L1Trigger CondFormats/L1TObjects RecoEcal/EgammaClusterAlgos DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalCaloTrigger clhep CalibCalorimetry/EcalLaserCorrection CalibCalorimetry/EcalTPGTools CondFormats/EcalObjects DataFormats/EcalDigi CondFormats/DataRecord Geometry/TrackerGeometryBuilder DataFormats/HLTReco DataFormats/EgammaCandidates TrackingTools/TransientTrack TrackingTools/TrackAssociator CommonTools/Statistics SimDataFormats/Track RecoEgamma/EgammaTools RecoMuon/TrackingTools RecoJets/JetProducers JetMETCorrections/Algorithms JetMETCorrections/Objects RecoVertex/AdaptiveVertexFit RecoLocalCalo/EcalRecAlgos DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco TrackingTools/IPTools EgammaAnalysis/ElectronTools DataFormats/PatCandidates DataFormats/MuonReco DataFormats/VertexReco
PUHLTPUmitigationatHLTAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PUHLTPUmitigationatHLTAuto,PUHLTPUmitigationatHLTAuto,$(SCRAMSTORENAME_LIB),src/PUHLT/PUmitigationatHLT/plugins))
PUHLTPUmitigationatHLTAuto_PACKAGE := self/src/PUHLT/PUmitigationatHLT/plugins
ALL_PRODS += PUHLTPUmitigationatHLTAuto
PUHLT/PUmitigationatHLT_forbigobj+=PUHLTPUmitigationatHLTAuto
PUHLTPUmitigationatHLTAuto_INIT_FUNC        += $$(eval $$(call Library,PUHLTPUmitigationatHLTAuto,src/PUHLT/PUmitigationatHLT/plugins,src_PUHLT_PUmitigationatHLT_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PUHLTPUmitigationatHLTAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PUHLTPUmitigationatHLTAuto,src/PUHLT/PUmitigationatHLT/plugins))
endif
ALL_COMMONRULES += src_PUHLT_PUmitigationatHLT_plugins
src_PUHLT_PUmitigationatHLT_plugins_parent := PUHLT/PUmitigationatHLT
src_PUHLT_PUmitigationatHLT_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PUHLT_PUmitigationatHLT_plugins,src/PUHLT/PUmitigationatHLT/plugins,PLUGINS))
