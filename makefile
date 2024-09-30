HELLODIR = helloworld/
INTEGERDIR = integers/
ITERATIONDIR = iteration/
ARRAYDIR = arrays/

.PHONY: all helloTest helloRun arrayRun arrayTest intTest intRun iterRun iterBench iterTest fmtAll docs 

all: helloTest intTest iterTest arrayTest

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

arrayTest:
	cd $(ARRAYDIR) && go test

arrayRun:
	cd $(ARRAYDIR) && go run .

fmtAll:
	cd $(HELLODIR) && go fmt .
	cd $(INTEGERDIR) && go fmt .
	cd $(ARRAYDIR) && go fmt .
	cd $(ITERATIONDIR) && go fmt .
docs:
	cd $(HELLODIR) && go doc
	cd $(INTEGERDIR) && go doc
	cd $(ARRAYDIR) && go doc
	cd $(ITERATIONDIR) && go doc