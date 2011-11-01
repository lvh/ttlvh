# target: build - Builds page.
build:
	mkdir build
	echo "<html><body>Hi!</body></html>" > build/index.html
# target: clean - removes src files and build directory
clean:
	rm -rf src/* build/
# target: help - Display targets.
help:
	egrep "^# target:" [Mm]akefile

.PHONY: clean help