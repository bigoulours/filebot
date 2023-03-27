#! /usr/bin/bash

export JAVA_HOME=/usr/lib/jvm/jdk-10.0.2
export ANT_HOME=/opt/apache-ant-1.9.16

ant resolve
ant fatjar
ant portable