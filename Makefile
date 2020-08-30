.PHONY: build

build:
	rm -rf build &> /dev/null
	xcodebuild -project InjectionIII.xcodeproj -scheme InjectionIII ONLY_ACTIVE_ARCH=NO CONFIGURATION_BUILD_DIR=build

archive:
	@make build
	cd build; zip -rq InjectionIII.zip InjectionIII.app

link:
	rm -rf /Applications/InjectionIII.app &> /dev/null
	cp -r build/InjectionIII.app /Applications/.