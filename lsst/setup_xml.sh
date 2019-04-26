cd $LSST_SDK_INSTALL/ts_sal/test
echo "[x] Redirected to ts_sal/test"

cp $LSST_SDK_INSTALL/ts_xml/sal_interfaces/SAL* .
echo "[x] Copied Generics" 

declare -a csc=( "ATArchiver"
		 "MTArchiver"
		 "CatchupArchiver"
		 "PromptProcessing"
		 "ATCamera"
		 "MTCamera"
		 "EFD")

for i in ${csc[@]}
do
    cp $LSST_SDK_INSTALL/ts_xml/sal_interfaces/$i/* .
    salgenerator $i validate
    salgenerator $i html
    salgenerator $i sal cpp 
    salgenerator $i python
    salgenerator $i lib
done
