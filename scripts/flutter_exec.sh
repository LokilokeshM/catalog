SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPT_DIR/..

FLUTTER="flutter"
if which fvm >/dev/null; then
    FLUTTER="fvm flutter"
fi

$FLUTTER clean
$FLUTTER pub get
cd ./packages/cm_common
$FLUTTER clean
$FLUTTER pub get
$FLUTTER pub global run intl_utils:generate
cd ../cm_network
$FLUTTER clean
$FLUTTER pub get
cd ../cm_network_implementation
$FLUTTER clean
$FLUTTER pub get
$FLUTTER pub run build_runner build --delete-conflicting-outputs
cd ../../features/cm_core_ui
$FLUTTER clean
$FLUTTER pub get
