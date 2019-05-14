#!/bin/bash

mkdir -p build cpp_out java_out python_out
touch build/protoc_middleman
 ../common/protobuf-3.2.0/bin/protoc --cpp_out=cpp_out --java_out=java_out --python_out=python_out addressbook.proto

