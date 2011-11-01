# target: build - builds github page
build:
	mkdir build
	echo "<html><body>Hi!</body></html>" > build/index.html
# target: clean - reverts working directory to latest commit
clean:
	git clean -fdx
# target: help - display targets
help:
	egrep "^# target:" [Mm]akefile

.PHONY: clean help