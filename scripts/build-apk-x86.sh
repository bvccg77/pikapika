# 仅构建x86的APK

cd "$( cd "$( dirname "$0"  )" && pwd  )/.."

cd go/mobile
gomobile bind -target=android/386 -o lib/Mobile.aar ./
cd ../..
flutter build apk --target-platform android-x86
