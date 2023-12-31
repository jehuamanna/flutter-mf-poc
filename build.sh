cd g1s1
flutter pub get
flutter build web --pwa-strategy=none
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd g2s1
flutter pub get
flutter build web --pwa-strategy=none
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd g3s1
flutter pub get
flutter build web --pwa-strategy=none
# cp ../post_build.dart .
# dart post_build.dart
cd ..

cd base_app
flutter pub get
flutter build web --pwa-strategy=none
# cp ../post_build.dart .
# dart post_build.dart
cd ..


if [ -d serve-files ]; then
  rm -rf serve-files
fi
mkdir serve-files
cd serve-files
cp -r ../base_app/build/web base_app
cp -r ../g1s1/build/web grouponeservieone
cp -r ../g2s1/build/web grouptwoserviceone
cp -r ../g3s1/build/web groupthreeserviceone
cp -r ../mf/index.html base_app

mv grouponeservieone grouptwoserviceone groupthreeserviceone base_app
cd ..