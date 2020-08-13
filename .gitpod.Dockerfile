FROM gitpod/workspace-postgres

USER gitpod

RUN sudo apt update \
 && sudo apt install -y protobuf-compiler \
 && go get -u github.com/golang/protobuf/protoc-gen-go
