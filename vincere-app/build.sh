JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
SDK_DIR="/home/sonja/android-sdk"
PLATFORM="$SDK_DIR/platforms/android-34/android.jar"
BUILD_TOOLS="$SDK_DIR/build-tools/34.0.0"


rm -rf bin
mkdir -p bin/com/vincere/app

echo "--- 1. Kompilieren ---"
$JAVA_HOME/bin/javac -classpath "$PLATFORM" -d bin src/main/java/com/vincere/app/*.java

echo "--- 2. Dexen (Android Bytecode) ---"

"$BUILD_TOOLS/d8" --classpath "$PLATFORM" --output bin bin/com/vincere/app/*.class

echo "--- Build abgeschlossen! ---"
echo "Die fertige classes.dex liegt in /bin"