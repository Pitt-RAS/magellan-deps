#!/usr/bin/env bash

pushd $(dirname ${BASH_SOURCE}) > /dev/null

REALSENSE_NODE_VERSION=2.0.3

# realsense2_camera
rm -rf src/realsense2_camera
wget https://github.com/intel-ros/realsense/archive/${REALSENSE_NODE_VERSION}.tar.gz
tar -xf ${REALSENSE_NODE_VERSION}.tar.gz
mv realsense-${REALSENSE_NODE_VERSION}/realsense2_camera src
rm -rf realsense-${REALSENSE_NODE_VERSION} ${REALSENSE_NODE_VERSION}.tar.gz

# Submodules
git submodule update --init --recursive

popd > /dev/null
