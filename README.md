# HGCal Tile

GEANT4-based simulation of MATHUSLA extruded scintillator (based one the master branch)

## Installing

The program can be can be installed in two methods. One is a standalone package
meant to be used for event display and debugging. The other is to be compiled
under CMSSW for for batch running and plotting.

For standalone installation (on hepcms.umd.edu or any Linux machine). The
`source` command is only needed if you do not already have Geant4/ROOT installed
on your system.

```bash
git clone https://github.com/Yucun-Xie/HGCalTileSim2.1.git
cd     HGCalTileSim2.1
source initial.sh 
cmake -DCMAKE_C_COMPILER=$(which gcc) -DCMAKE_CXX_COMPILER=$(which g++) .
cmake --build .
```

















  This application simulates the propagation of optical photons inside a
Wave Length Shifting (WLS) fiber.


1- Geometry Definition

  The default geometry is as follow:

- A perfect, bare (or clad), PMMA fiber: 0.5mm radius, 2m length at
  center (0,0,0) of the World.
- A circular MPPC with 0.5mm radius at the +z end of the fiber
- World and coupling materials are G4_AIR
- Photons will always refracted out to coupling material before
  reaching MPPC
- There are many flexible parameters that the user could specify.
  They are under the /WLS directory of help.


2- Material Choices

  There are several materials that the user can use for the fiber core,
  world and coupling.
  
They are:

- Vacuum (G4_Galactic)
- Air (G4_AIR)
- PMMA, refractive index n = 1.60
- Pethylene, n = 1.49
- FPethylene, n = 1.42
- Polystyrene, n = 1.60
- Silicone, n = 1.46


3- Photon Source

  This program uses the General Particle Source (G4GeneralParticleSource) 
  provided by Geant4 for generating particles. The energy of a primary
  optical photon must be within the range 2.00 eV to 3.47 eV.


4- Hit

  A hit is registered when an optical photon is absorbed on the MPPC
  surface.  Information stored in a hit includes the local coordinate of the
  location the optical photon is absorbed on the MPPC, the global coordinate
  where the optical photon left the fiber, the transit time of the optical
  photon, and the energy of the optical photon.


5- Stepping Action

  The stepping action keeps track of the number of bounces an optical photon has
  gone through.  In order to prevent infinite loop and extremely skewed
  rays taking up computing time, there is a limit of the number of
  bounces that an optical photon can go through before it is artificially killed.
  The default limit is 100,000.  The user can set his/her own limit using
  the /stepping/setBounceLimit command.  A value of 0 will turn off the
  limit.  All optical photons artificially killed will have murderee flag turned
  on in their UserTrackInformation.


6- Visualization

  To visualize particle trajectories, simply use vis.mac macro in
  interactive mode or in your own macro.


7- main()

 - execute wls in 'batch' mode from macro files
 - you can enter an optional integer seed for batch mode 
         % wls electron.mac (optional: enter an integer seed here)
                 
 - wls in 'interactive mode' with visualization
         % wls
         ....
         Idle> /control/execute
         Idle> /run/beamOn 1
         ....
         Idle> exit

8- Macros provided

 - electron.mac: Sets up the geometry and configures the particle source.
                 Primary particle is a 10 MeV electron.
 - vis.mac: macro for visualization; called automatically when no macro is
            given on command line.
