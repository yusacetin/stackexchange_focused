build_root := ./build
build_chrome_unpacked := $(build_root)/chrome_unpacked
build_chrome_zipped := $(build_root)/chrome_zipped
build_firefox := $(build_root)/firefox
zipfile_chrome := $(build_chrome_zipped)/stackexchange_focused_chrome.zip
zipfile_firefox := $(build_firefox)/stackexchange_focused_firefox.zip

.PHONY: all
all: chrome firefox

.PHONY: rootdir
rootdir:
	@if [ ! -d $(build_root) ]; then mkdir $(build_root); fi;

.PHONY: chrome
chrome: rootdir
	@if [ ! -d $(build_chrome_unpacked) ]; then mkdir $(build_chrome_unpacked); fi;
	@cp manifest_chrome.json $(build_chrome_unpacked)/manifest.json;
	@cp content_style.css $(build_chrome_unpacked);
	@cp icon.png $(build_chrome_unpacked);
	@if [ ! -d $(build_chrome_zipped) ]; then mkdir $(build_chrome_zipped); fi;
	@zip -q -j $(zipfile_chrome) \
	$(build_chrome_unpacked)/manifest.json \
	$(build_chrome_unpacked)/icon.png \
	$(build_chrome_unpacked)/content_style.css;

.PHONY: firefox
firefox: rootdir
	@if [ ! -d $(build_firefox) ]; then mkdir $(build_firefox); fi;
	@cp manifest_firefox.json $(build_firefox)/manifest.json;
	@cp content_style.css $(build_firefox);
	@cp icon.png $(build_firefox);
	@zip -q -j $(zipfile_firefox) \
	$(build_firefox)/manifest.json \
	$(build_firefox)/icon.png \
	$(build_firefox)/content_style.css;
	@rm $(build_firefox)/manifest.json;
	@rm $(build_firefox)/icon.png;
	@rm $(build_firefox)/content_style.css;

.PHONY: clean
clean:
	@if [ -d $(build_root) ]; then rm -rf $(build_root); fi;
