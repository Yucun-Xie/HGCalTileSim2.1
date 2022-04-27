


export G4NEUTRONHPDATA="/Users/G4/share/Geant4-11.0.1/data/G4NDL4.6"
export G4LEDATA="/Users/G4/share/Geant4-11.0.1/data/G4EMLOW8.0"
export G4LEVELGAMMADATA="/Users/G4/share/Geant4-11.0.1/data/PhotonEvaporation5.7"
export G4RADIOACTIVEDATA="/Users/G4/share/Geant4-11.0.1/data/RadioactiveDecay5.6"
export G4PARTICLEXSDATA="/Users/G4/share/Geant4-11.0.1/data/G4PARTICLEXS4.0"
export G4PIIDATA="/Users/G4/share/Geant4-11.0.1/data/G4PII1.3"
export G4REALSURFACEDATA="/Users/G4/share/Geant4-11.0.1/data/RealSurface2.2"
export G4SAIDXSDATA="/Users/G4/share/Geant4-11.0.1/data/G4SAIDDATA2.0"
export G4ABLADATA="/Users/G4/share/Geant4-11.0.1/data/G4ABLA3.1"
export G4INCLDATA="/Users/G4/share/Geant4-11.0.1/data/G4INCL1.0"
export G4ENSDFSTATEDATA="/Users/G4/share/Geant4-11.0.1/data/G4ENSDFSTATE2.3"
DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:$PWD/lib

# cmake -DCMAKE_C_COMPILER=$(which gcc) -DCMAKE_CXX_COMPILER=$(which g++) -DGeant4_DIR=/Users/G4/lib/Geant4-11.0.1 .
#scp yxie@cmslpc-sl7.fnal.gov:/uscms_data/d3/yxie/CMSSW_11_3_0_pre4/src/HGCalTileSim/condor/test* .


# -Qt5Core_DIR=/opt/homebrew/Cellar/glew/2.2.0_1/lib/cmake
# cmake -DCMAKE_C_COMPILER=$(which gcc) -DCMAKE_PREFIX_PATH=/Users/yucun_xie/Documents/geant4.10.07.p03/build/source/externals/ptl/installation -DCMAKE_CXX_COMPILER=$(which g++) -DGeant4_DIR=/Users/yucun_xie/Documents/geant4.10.07.p03/build/ .

# source condor-LYSquareTrigger_CMSSW.sh -x 0.0 -z 0.0 -X 50.0 -Y 20.0 -l 200.0 -w 15.0 -f 5.2 -s 2.4 -a 50.0 --tiledecay 3.945 --tilerise 0.5 -b 5000.0 -y 500.0 -m 0.985 -d 7.193 -e 1.0 -P 1 -H 1 -c 1 -r 0.75 -N 2 -o test.root
