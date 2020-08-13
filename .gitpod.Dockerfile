FROM gitpod/workspace-postgres

USER gitpod

RUN sudo apt update \
 && sudo apt install -y golang \
 && sudo apt install -y protobuf-compiler \
 && sudo go get -u github.com/golang/dep/cmd/dep
