DEP_COMMANDS := \
	vendor/github.com/golang/protobuf/protoc-gen-go \
  vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
  vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger


#  Commands
#-----------------------------------------------
.PHONY: dep
dep: Gopkg.toml Gopkg.lock
	@dep ensure -v
	@GOBIN="$$PWD/bin"; \
	pkgs="$(DEP_COMMANDS)"; \
	for pkg in $$pkgs; do \
		cd $$pkg; \
		go install .; \
		cd -; \
	done

.PHONY: gen
gen:
	@PATH=$$PWD/bin:$$PATH go generate ./...
