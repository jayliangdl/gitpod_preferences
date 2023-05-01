#!/bin/bash

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

# Install Java 8
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 8.0.302-zulu
echo "Y" | sdk default java 8.0.302-zulu
mkdir aaabb

# Set Java 8 as the default JDK version
echo "export JAVA_HOME=$HOME/.sdkman/candidates/java/current" >> ~/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc