cd g1s1
flutter pub get
flutter build web
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd g2s1
flutter build web
flutter pub get
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd g3s1
flutter build web
flutter pub get
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd base_app
flutter build web
flutter pub get
# cp ../post_build.dart .
# dart post_build.dart
cd ..


if [ -d serve-files ]; then
  rm -rf serve-files
fi
mkdir serve-files
cd serve-files
cp -r ../base_app/build/web base_app
cp -r ../g1s1/build/web g1s1
cp -r ../g2s1/build/web g2s1
cp -r ../g3s1/build/web g3s1
# cp -r ../mf/index.html .
cd ..