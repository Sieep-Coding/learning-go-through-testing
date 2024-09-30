HELLODIR = helloworld/
INTEGERDIR = integers/

all:
	cd $(HELLODIR) && go test
	cd $(INTEGERDIR) && go test
helloTest:
	cd $(HELLODIR) && go test
helloRun:
	cd $(HELLODIR) && go run .
intTest:
	cd $(INTEGERDIR) && go test
intRun:
	cd $(INTEGERDIR) && go run .
fmtAll:
	cd $(HELLODIR) && go fmt .
	cd $(INTEGERDIR) && go fmt .