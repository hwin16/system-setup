MYUSER=DM
mkdir -p /opt/lsst/dm-prompt/bin
mkdir -p /opt/lsst/dm-prompt/python/logs
mkdir -p /opt/lsst/dm-prompt/config

cp /home/$MYUSER/src/git/ctrl_iip/python/lsst/iip/* /opt/lsst/dm-prompt/python
cp /home/$MYUSER/src/git/ctrl_iip/etc/config/L1SystemCfg.yaml /opt/lsst/dm-prompt/config
