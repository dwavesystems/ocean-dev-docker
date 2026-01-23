#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "python generate.py dockerfiles"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.12-windowsservercore

ENV \
    # expose canonical image version
    OCEAN_DEV_IMAGE_VERSION="9.3.0-python3.12-windowsservercore" \
    \
    # supress pip version warnings (presumably pip will always be close to latest in our image)
    PIP_DISABLE_PIP_VERSION_CHECK=1

# upgrade pip
RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel

RUN \
    # Install Microsoft Visual C++ Build Tools (required for source install of some ocean packages) \
    Invoke-WebRequest -Uri https://aka.ms/vs/17/release/vs_BuildTools.exe -OutFile vs_BuildTools.exe; \
    Start-Process vs_BuildTools.exe -Wait -NoNewWindow -PassThru \
        # arguments: https://learn.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio \
        # (note the importance of --quiet, --wait and --norestart in automated non-gui flows!) \
        -ArgumentList @( \
            '--quiet', '--wait', '--norestart', '--nocache', \
            # components: https://learn.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools \
            '--add', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64', \
            '--add', 'Microsoft.VisualStudio.Component.VC.Redist.14.Latest', \
            '--add', 'Microsoft.VisualStudio.Component.Windows11SDK.26100' \
        )

# install Ocean independently of other packages because pip is unable to
# merge requirements gracefully (e.g. `requests` and `requests[socks]`)
RUN pip install --no-cache-dir \
        dwave-ocean-sdk==9.3.0 \
        dwave-scikit-learn-plugin
    # TODO: create site for user data home, as returned by homebase (xdg spec)
    # TODO: delete temporary files, if any

# install Ocean contrib packages (under EULA)
RUN dwave install --all --yes

# TODO: make sure ~/.cache is user-writeable, as the cloud-client uses it for disk cache

RUN \
    # Remove build tools (keep runtime libraries) \
    Start-Process vs_BuildTools.exe -Wait -NoNewWindow -PassThru \
        -ArgumentList @( \
            '--quiet', '--wait', '--norestart', '--nocache', \
            '--remove', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64', \
            '--remove', 'Microsoft.VisualStudio.Component.Windows11SDK.26100' \
        ); \
    \
    Remove-Item vs_BuildTools.exe -Force

# install useful auxiliary Ocean packages (for tests, docs, examples)
RUN pip install --no-cache-dir \
        matplotlib jsonschema ipython tqdm \
        pandas scipy scikit-learn imbalanced-learn tabulate \
        mock coverage \
        sphinx sphinx-rtd-theme \
        seaborn ipympl \
        jupyter

CMD ["bash"]
