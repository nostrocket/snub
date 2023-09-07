install:
	go mod tidy
	go install cmd/snub/*.go

publish: install
	snub publish