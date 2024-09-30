HELLODIR = helloworld/
INTEGERDIR = integers/

.PHONY: all helloTest helloRun intTest intRun fmtAll

all: helloTest intTest

helloTest:
	cd $(HELLODIR) && go test

helloRun:
	cd $(HELLODIR) && go run .

intTest:
	cd $(INTEGERDIR) && go test -v

intRun:
	cd $(INTEGERDIR) && go run .

fmtAll:
	cd $(HELLODIR) && go fmt .
	cd $(INTEGERDIR) && go fmt .
docs:
	cd $(HELLODIR) && go doc
	cd $(INTEGERDIR) && go doc