# 仅构建x86_64的APK

cd "$( cd "$( dirname "$0"  )" && pwd  )/.."

cd go/mobile
gomobile bind -target=android/amd64 -o lib/Mobile.aar ./
cd ../..
flutter build apk --target-platform android-x64
