#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "python generate.py dockerfiles"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.11-bullseye

# setup locale
RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
        locales \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* \
    && sed -i 's/^# *\(en_CA.UTF-8\)/\1/' /etc/locale.gen \
    && locale-gen

ENV LANG=en_CA.UTF-8

# install basic packages
RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
        apt-utils \
        bash-completion \
        build-essential \
        man-db \
        zip \
        unzip \
        procps \
        time \
        lsof \
        sudo \
        htop \
        less \
        vim \
        curl \
        git \
        jq \
        # debugging: strace; ss, ip; netstat, arp, route
        strace \
        iproute2 \
        net-tools \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

# add a regular user
RUN useradd -l -u 1000 -G sudo -md /home/user -s /bin/bash -p user user \
    # passwordless sudo for users in the 'sudo' group
    && sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
ENV HOME=/home/user
WORKDIR $HOME

ENV \
    # expose canonical image version
    OCEAN_DEV_IMAGE_VERSION="7.1.0-python3.11-bullseye" \
    \
    # we need PATH for user python packages during build as well
    PATH="$HOME/.local/bin:$PATH" \
    \
    # supress pip version warnings (presumably pip will always be close to latest in our image)
    PIP_DISABLE_PIP_VERSION_CHECK=1

# specify default python interpreter in the embedded devcontainer metadata
LABEL devcontainer.metadata="[{\"customizations\": {\"vscode\": {\"extensions\": [\"ms-python.python\"], \"settings\": {\"python.defaultInterpreterPath\": \"/usr/local/bin/python\"}}}}]"

# use sudo so that user does not get sudo usage info on (the first) login
USER user
RUN sudo echo "Running 'sudo' for user: success"

# custom Bash prompt
RUN { echo && echo "PS1='\[\e]0;ocean-dev\w\a\]\[\033[01;32m\]ocean-dev\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \\\$ '" ; } >> .bashrc

# few aliases
RUN { echo && echo "alias ll='ls -l'" && echo "alias la='ls -la'"; } >> .bashrc

# add help tip on start
COPY data/auth-tip.sh /home/user/
RUN { echo && echo "~/auth-tip.sh"; } >> .bashrc

# install Ocean independently of other packages because pip is unable to
# merge requirements gracefully (e.g. `requests` and `requests[socks]`)
RUN pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir \
        dwave-ocean-sdk[all]==7.1.0 \
        dwave-scikit-learn-plugin \
    # create site for user data home, as returned by homebase (xdg spec)
    && mkdir -p /home/user/.local/share \
    && chown user:user -R /home/user/.local \
    && rm -rf /tmp/*

# install Ocean contrib packages (under EULA)
RUN dwave install --all --yes \
    && rm -rf /tmp/*

# make sure ~/.cache is user-writeable, as the cloud-client uses it for disk cache
RUN mkdir -p /home/user/.cache \
    && chown user:user -R /home/user/.cache

# install useful auxiliary Ocean packages (for tests, docs, examples)
RUN pip install --no-cache-dir \
        matplotlib jsonschema ipython tqdm \
        pandas scipy scikit-learn imbalanced-learn tabulate \
        mock coverage \
        sphinx sphinx-rtd-theme \
        seaborn ipympl \
        jupyter \
    && rm -rf /tmp/*

CMD ["bash"]
