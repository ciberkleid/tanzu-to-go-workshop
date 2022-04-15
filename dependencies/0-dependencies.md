# Download Dependencies

To begin, we will configure and download the software dependencies we need. Clone this Git repo onto your local system, and navigate to the root directory of the repo:

```
git clone https://github.com/Tanzu-Solutions-Engineering/tanzu-to-go-workshop
cd tanzu-to-go-workshop
```

All further installation instructions will be executed from this directory

### Customize config.yaml

There is a sample configuration file titled config-REDACTED.yaml in the root directory of this repo. Make a copy of it to edit and use for your install:

```
cp config-REDACTED.yaml config.yaml
```

Edit the file to provide the path and credentials for the docker registry you'll be using, as well as the OS and architecture for your local system. Have an instructor review the config.yaml file with you to avoid having to backtrack later.

[Config File Reference](config-reference.md)

### Fetch Dependencies

Execute the `download-dependencies` script in the base directory to get the correct dependencies for your system.

**Important.** The script contains a temporary read-only GitHub API token. If you get an error regarding `VENDIR_GITHUB_API_TOKEN`, generate a new token with repo access and replace the value in the script.

Mac/Linux:
```
./download-dependencies.sh
```

Windows:
```
.\download-dependencies.ps1
```

In addition to Kubernetes software deployments, this script will retrieve CLI binaries and add them to the `./bin` subdirectory on Mac/Linux or `$HOME\tce\bin` directory on Windows. The downloaded binaries are:
* **kn** (Knative client)
* **kp** (kpack client)
* **kubectl** (Kubernetes client)
* **tanzu** (Tanzu client)
* **yq** (YAML proccessor)

The scripts will automatically prepend the bin directories to your PATH.

The `set-env.sh` or `set-env.ps1` scripts can be used in other sessions or after system restart to point to the executables downloaded in the script. 

You can also add the path to the system if you want to add it permanently.

[Back to Homepage](../README.md)
