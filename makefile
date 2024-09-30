HELLODIR = helloworld/
INTEGERDIR = integers/
ITERATIONDIR = iteration/

.PHONY: all helloTest helloRun intTest intRun iterRun iterBench iterTest fmtAll docs 

all: helloTest intTest iterTest

helloTest:
	cd $(HELLODIR) && go test

helloRun:
	cd $(HELLODIR) && go run .

intTest:
	cd $(INTEGERDIR) && go test -v

iterTest:
	cd $(ITERATIONDIR) && go test

iterBench:
	cd $(ITERATIONDIR) && go test -bench=.

iterRun:
	cd $(ITERATIONDIR) && go run .

intRun:
	cd $(INTEGERDIR) && go run .

fmtAll:
	cd $(HELLODIR) && go fmt .
	cd $(INTEGERDIR) && go fmt .
docs:
	cd $(HELLODIR) && go doc
	cd $(INTEGERDIR) && go doc