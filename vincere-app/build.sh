SDK_DIR="/home/sonja/android-sdk"
PLATFORM="$SDK_DIR/platforms/android-34/android.jar"
BUILD_TOOLS="$SDK_DIR/build-tools/34.0.0"
AAPT="$BUILD_TOOLS/aapt2"
D8="$BUILD_TOOLS/d8"

rm -rf gen bin
mkdir -p gen bin/classes

$AAPT compile -o gen src/main/res/layout/activity_main.xml
$AAPT link -I "$PLATFORM" -o bin/app.apk --manifest src/main/AndroidManifest.xml gen/*.flat

/usr/lib/jvm/java-21-openjdk/bin/javac -classpath "$PLATFORM" -d bin/classes src/main/java/com/vincere/app/*.java

$D8 --classpath "$PLATFORM" --output bin/classes bin/classes/com/vincere/app/*.class

zip -u bin/app.apk classes.dex

echo "APK erstellt: bin/app.apk"