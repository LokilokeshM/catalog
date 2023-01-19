SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPT_DIR/..

FLUTTER="flutter"
if which fvm >/dev/null; then
    FLUTTER="fvm flutter"
fi

cd ./packages/cm_common
$FLUTTER pub upgrade
cd ../cm_network
$FLUTTER pub upgrade
cd ../cm_network_implementation
$FLUTTER pub upgrade
$FLUTTER pub run build_runner build --delete-conflicting-outputs
cd ../../features/cm_core_ui
$FLUTTER pub upgrade
cd ../
