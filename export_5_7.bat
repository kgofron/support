REM For Windows export
REM This script relies on GnuWin32 being installed fro wget & gzip and bsd tar.  
REM     The Path to GnuWin32 binaries should be on Path.  Note a combination
REM     of gzip and bsdtar are used in place of tar due to a problem with 
REM     fork()
REM This script relies on command line version of svn to be on the PATH.  
REM     Later versions of TortoiseSVN provide a command line version of SVN
REM     but this may not be installed by default
set SVN=https://subversion.xray.aps.anl.gov/synApps
mkdir synApps_5_7
cd synApps_5_7
svn export %SVN%/support/tags/synApps_5_7 support
cd support
REM modules
svn export %SVN%/areaDetector/tags/R1-9-1 areaDetector-1-9-1
svn export %SVN%/autosave/tags/R5-1 autosave-5-1
svn export %SVN%/busy/tags/R1-6 busy-1-6
svn export %SVN%/calc/tags/R3-2 calc-3-2
svn export %SVN%/camac/tags/R2-7 camac-2-7
svn export %SVN%/dac128V/tags/R2-7 dac128V-2-7
svn export %SVN%/delaygen/tags/R1-1-0 delaygen-1-1-0
svn export %SVN%/dxp/tags/R3-2 dxp-3-2
svn export %SVN%/ip/tags/R2-14 ip-2-14
svn export %SVN%/ip330/tags/R2-7 ip330-2-7
svn export %SVN%/ipUnidig/tags/R2-9 ipUnidig-2-9
svn export %SVN%/love/tags/R3-2-5 love-3-2-5
svn export %SVN%/mca/tags/R7-4 mca-7-4
svn export %SVN%/measComp/tags/R1-0 measComp-1-0
svn export %SVN%/modbus/tags/R2-4 modbus-2-4
svn export %SVN%/motor/tags/R6-8 motor-6-8
svn export %SVN%/optics/tags/R2-9-1 optics-2-9-1
svn export %SVN%/quadEM/tags/R4-0 quadEM-4-0
svn export %SVN%/softGlue/tags/R2-3 softGlue-2-3
svn export %SVN%/sscan/tags/R2-9 sscan-2-9
svn export %SVN%/std/tags/R3-2 std-3-2
svn export %SVN%/stream/tags/R2-6 stream-2-6
svn export %SVN%/vac/tags/R1-4-1 vac-1-4-1
svn export %SVN%/vme/tags/R2-8-1 vme-2-8-1
svn export %SVN%/xxx/tags/R5-7-1 xxx-5-7-1
REM other directories
svn export %SVN%/configure/tags/synApps_5_7 configure
svn export %SVN%/utils/tags/synApps_5_7 utils
svn export %SVN%/documentation/tags/synApps_5_7 documentation


REM get allenBradley-2-2 from ?
svn export https://svn.aps.anl.gov/epics/asyn/tags/R4-21 asyn-4-21
svn export https://svn.aps.anl.gov/epics/ipac/tags/V2-12 ipac-2-12

REM get seq-2-1-2 from http://www-csr.bessy.de/control/SoftDist/sequencer
set SEQ_URL=http://www-csr.bessy.de/control/SoftDist/sequencer/releases/seq-2.1.2.tar.gz
wget http://www-csr.bessy.de/control/SoftDist/sequencer/releases/seq-2.1.2.tar.gz
gzip -d seq-2.1.2.tar.gz
bsdtar -xf seq-2.1.2.tar
move seq-2.1.2 seq-2-1-2
del seq-2.1.2.tar

REM get devIocStats-3-1-7 from http://www.slac.stanford.edu/grp/cd/soft/epics/site/devIocStats/
svn export https://svn.code.sf.net/p/epics/svn/applications/tags/iocStats/3-1-7 devIocStats-3-1-7
cd ../..
