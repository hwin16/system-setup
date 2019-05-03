IMG=AT_O_20190315_000003
HEADER=AT_O_20190423_000007.header

/opt/sal/ts_sal/test/ATCamera/cpp/src/sacpp_ATCamera_startIntegration_send seq1 1 $IMG 0 0 0 0
sleep 2
/opt/sal/ts_sal/test/ATCamera/cpp/src/sacpp_ATCamera_endReadout_send seq1 1 $IMG 0 0 0 0
sleep 2
/opt/sal/ts_sal/test/EFD/cpp/src/sacpp_EFD_largeFileObjectAvailable_send 0 0 ATHeaderService 0 http://localhost:8000/$HEADER 0 $IMG 0
