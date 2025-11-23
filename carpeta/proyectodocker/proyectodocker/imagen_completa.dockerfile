FROM almalinux:8

RUN dnf update -y && \
    dnf install -y \
        rpm-build \
        createrepo \
        dnf-utils \
        ruby \
        ruby-devel \
        nodejs \
        npm \
        python3 \
        python3-pip \
        python3-virtualenv && \
    dnf clean all

RUN npm install -g yarn

WORKDIR /workspace
CMD ["/bin/bash"]