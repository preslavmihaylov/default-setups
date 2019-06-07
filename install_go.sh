#!/bin/bash

GO_VERSION=1.12.5
GO_FOLDER=go${GO_VERSION}.linux-amd64
GO_ARC=${GO_FOLDER}.tar.gz
GO_LOC=/usr/local

wget https://dl.google.com/go/${GO_ARC}
sudo tar xvzf ${GO_ARC} -C ${GO_LOC}
sudo mv ${GO_LOC}/go ${GO_LOC}/${GO_FOLDER}
sudo ln -s ${GO_LOC}/${GO_FOLDER} ${GO_LOC}/go
