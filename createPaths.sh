initialPyConfig= HLT_PUatHLT_1120pre5.py

cp $initialPyConfig hlt_tmp2.py

#Jet550                                                                                                                                                                                                            
python path_maker.py -i hlt_tmp2.py -p HLT_PFJet550_v11 -c "hltPrePFJet550.offset=cms.uint32( 0 )"  "hltSinglePFJet550.MinPt=cms.double( 450.0 )" -r "Pt450" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_PFJet550_v11 -c "hltPrePFJet550.offset=cms.uint32( 0 )"  "hltSinglePFJet550.MinPt=cms.double( 650.0 )" -r "Pt650" -o hlt_tmp2.py

#PUPPI Jet 550                                                                                                                                                                                                     
python path_maker.py -i hlt_tmp2.py -p HLT_PFPUPPIJet550_v11 -c "hltPrePFPUPPIJet550.offset=cms.uint32( 0 )"  "hltSinglePFPUPPIJet550.MinPt=cms.double( 450.0 )" -r "Pt450" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_PFPUPPIJet550_v11 -c "hltPrePFPUPPIJet550.offset=cms.uint32( 0 )"  "hltSinglePFPUPPIJet550.MinPt=cms.double( 650.0 )" -r "Pt650" -o hlt_tmp2.py

#AK8 Jet550                                                                                                                                                                                                        
python path_maker.py -i hlt_tmp2.py -p HLT_AK8PFJet550_v11 -c "hltPreAK8PFJet550.offset=cms.uint32( 0 )"  "hltSinglePFJet550AK8.MinPt=cms.double( 450.0 )" -r "Pt450" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_AK8PFJet550_v11 -c "hltPreAK8PFJet550.offset=cms.uint32( 0 )"  "hltSinglePFJet550AK8.MinPt=cms.double( 650.0 )" -r "Pt650" -o hlt_tmp2.py

#AK8 PUPPI Jet 550                                                                                                                                                                                                 
python path_maker.py -i hlt_tmp2.py -p HLT_AK8PFPUPPIJet550_v11 -c "hltPreAK8PFPUPPIJet550.offset=cms.uint32( 0 )"  "hltSinglePFPUPPIJet550AK8.MinPt=cms.double( 450.0 )" -r "Pt450" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_AK8PFPUPPIJet550_v11 -c "hltPreAK8PFPUPPIJet550.offset=cms.uint32( 0 )"  "hltSinglePFPUPPIJet550AK8.MinPt=cms.double( 650.0 )" -r "Pt650" -o hlt_tmp2.py

#HT 1050                                                                                                                                                                                                           
python path_maker.py -i hlt_tmp2.py -p HLT_PFHT1050_v18 -c "hltPrePFHT1050.offset=cms.uint32( 0 )"  "hltPFHT1050Jet30.minHt=cms.vdouble( 950.0 )" -r "HT950" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_PFHT1050_v18 -c "hltPrePFHT1050.offset=cms.uint32( 0 )"  "hltPFHT1050Jet30.minHt=cms.vdouble( 1250.0 )" -r "HT1250" -o hlt_tmp2.py

#PUPPI HT 1050                                                                                                                                                                                                     
python path_maker.py -i hlt_tmp2.py -p HLT_PFPUPPIHT1050_v18 -c "hltPrePFPUPPIHT1050.offset=cms.uint32( 0 )"  "hltPFPUPPIHT1050Jet30.minHt=cms.vdouble( 950.0 )" -r "HT950" -o hlt_tmp1.py
python path_maker.py -i hlt_tmp1.py -p HLT_PFPUPPIHT1050_v18 -c "hltPrePFPUPPIHT1050.offset=cms.uint32( 0 )"  "hltPFPUPPIHT1050Jet30.minHt=cms.vdouble( 1250.0 )" -r "HT1250" -o hlt_tmp2.py

cp hlt_tmp2.py ${initialPyConfig/.py/_moreThresholds.py}

