installsnub:
	go mod tidy
	go install cmd/snub/*.go

publish: installsnub
	snub publish