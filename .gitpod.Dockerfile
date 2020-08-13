FROM gitpod/workspace-postgres

USER gitpod

RUN sudo apt update \
  && sudo apt install -y golang \
  && sudo go get -u github.com/golang/protobuf/protoc-gen-go \
  && sudo go get github.com/infobloxopen/protoc-gen-gorm \
  && sudo apt update \
  && sudo apt install -y apt-utils \
  && sudo apt install -y protobuf-compiler \
  && sudo apt install -y go-dep \
  && dep ensure
