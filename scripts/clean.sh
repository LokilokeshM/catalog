SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPT_DIR/..

FLUTTER="flutter"
if which fvm >/dev/null; then
    FLUTTER="fvm flutter"
fi

$FLUTTER clean
cd ./packages/cm_common
$FLUTTER clean
cd ../cm_network
$FLUTTER clean
cd ../cm_network_implementation
$FLUTTER clean
cd ../../features/cm_core_ui
$FLUTTER clean
cd ../

echo ""
echo "Finished at $(date)"
echo ""
