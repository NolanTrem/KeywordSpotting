# Using the CISL Server on Mac

### Directory and Commands
| Description  | Path                                        |
|--------------|---------------------------------------------|
| Dataset path | `/space1/maria+nolan/speech_commands_v0.02` |

### Logging into server
To access the server, run the following command in the terminal:

`$ ssh [username]@nalanda.cisl.columbia.edu`

followed by your account password. From there, navigate to the working directory for the project.
For this project, the following command can be ran:

`$ cd space1/maria+nolan`

This will open the working directory where the Speech Commands dataset is stored. The
path to the dataset is

### Uploading large files using Git LFS

Some files in this project will exceed the 25 mb upload limit set by GitHub. To
avoid limitations in which files can be stored in the repository, it is necessary to
install Git Large File Storage.

This can be done through Homebrew, which should be installed using the following commands:

`$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

More information on Homebrew can be found here https://brew.sh/. Once Homebrew is installed,
install Git LFS by running the following command:

`$ git lfs install`

Then denote which files need to be managed. For this project, it is likely .mat files, however this
can be updated and changed as necessary.

`$ git lfs track "*.mat"`
`$ git add .gitattributes`

Committing and pushing to the repository is as normal, but larger files will now be uploaded.