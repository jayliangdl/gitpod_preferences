FROM gitpod/workspace-full

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 8.0.265-open && \
    sdk default java 8.0.265-open && \
    export JAVA_HOME=/home/gitpod/.sdkman/candidates/java/8.0.265-open && \
    export PATH=$JAVA_HOME/bin:$PATH"

