
export RPT_SDK=/srv/nfs/lsst-daq/rpt-sdk/current

export EXPORT_ROOT=/srv/nfs/lsst-daq/daq-sdk/current

echo "Running setup.sh - preparing environment for DAQ development"
echo "   RPT  SDK: ${RPT_SDK}"
echo "EXPORT ROOT: ${EXPORT_ROOT}"

export RTEMS_SDK=${RPT_SDK}/arm-rtems-rceCA9
export LINUX_SDK=${RPT_SDK}/i86-linux-64

source ${RTEMS_SDK}/tools/envs-sdk.sh
source ${LINUX_SDK}/tools/envs-sdk.sh

export PATH=${EXPORT_ROOT}/x86/bin:${PATH}:/opt/lsst/bin
