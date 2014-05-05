xcodebuild -alltargets clean

xcodebuild -target HelloWorld -project HelloWorld.xcodeproj -target HelloWorld -configuration Release CONFIGURATION_BUILD_DIR=`pwd`/build

mv deals2click.mobileprovision build

cd build

sudo xcrun -sdk iphoneos PackageApplication -v "HelloWorld.app" -o "`pwd`/HelloWorld.ipa" --sign "iPhone Developer: Hameed Khan Jaguirullah Khan" --embed "deals2click.mobileprovision"