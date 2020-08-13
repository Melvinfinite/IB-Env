FROM gitpod/workspace-postgres

RUN sudo apt update \
 && sudo apt upgrade -y \
 && sudo apt install -y protobuf-compiler