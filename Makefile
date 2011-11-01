# target: build - builds github page
build:
	mkdir build
	lessc --silent src/style/style.less > build/style.css
	pandoc --html5 --smart --template=src/template.html --to=html src/README* --output=build/index.html
# target: clean - reverts working directory to latest commit
clean:
	git clean -fdx
# target: help - display targets
help:
	egrep "^# target:" [Mm]akefile

.PHONY: clean help
