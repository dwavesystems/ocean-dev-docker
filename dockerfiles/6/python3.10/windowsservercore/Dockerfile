#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "python generate.py dockerfiles"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.10-windowsservercore

ENV \
    # expose canonical image version
    OCEAN_DEV_IMAGE_VERSION="6.8.0-python3.10-windowsservercore" \
    \
    # supress pip version warnings (presumably pip will always be close to latest in our image)
    PIP_DISABLE_PIP_VERSION_CHECK=1

# upgrade pip
RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel

# install Ocean independently of other packages because pip is unable to
# merge requirements gracefully (e.g. `requests` and `requests[socks]`)
RUN pip install --no-cache-dir \
        dwave-ocean-sdk[all]==6.8.0 \
        dwave-scikit-learn-plugin
    # TODO: create site for user data home, as returned by homebase (xdg spec)
    # TODO: delete temporary files, if any

# install Ocean contrib packages (under EULA)
RUN dwave install --all --yes

# TODO: make sure ~/.cache is user-writeable, as the cloud-client uses it for disk cache

# install useful auxiliary Ocean packages (for tests, docs, examples)
RUN pip install --no-cache-dir \
        matplotlib jsonschema ipython tqdm \
        pandas scipy scikit-learn imbalanced-learn tabulate \
        mock coverage \
        sphinx sphinx-rtd-theme \
        seaborn ipympl \
        jupyter

CMD ["bash"]
