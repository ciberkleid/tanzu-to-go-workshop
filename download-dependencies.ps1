$ENV:VENDIR_GITHUB_API_TOKEN = "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"

# Download installation files
ytt -f setup/vendir.yml --data-values-file config.yaml | vendir sync --chdir setup -f-

# Make binaries executable and put them in the PATH
if ( -not (Test-Path -Path $HOME\tce))
{
    mkdir $HOME\tce
    mkdir $HOME\tce\bin
}

# Copy files to the bin directory under $HOME\tce
copy setup\vendir\binaries\kn\kn*.exe $HOME\tce\bin\kn.exe
copy setup\vendir\binaries\kp\kp*.exe $HOME\tce\bin\kp.exe
copy setup\vendir\binaries\yq\yq*.exe $HOME\tce\bin\yq.exe
copy setup\vendir\binaries\kubectl\kubectl.exe $HOME\tce\bin\

# Add location for tools to path
$ENV:PATH = "$HOME\tce\bin;$ENV:PATH;"
