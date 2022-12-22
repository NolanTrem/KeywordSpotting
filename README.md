# Optimization of Keyword Spotting Systems
Conducted by Maria Gordiyenko and Nolan Tremelling under Professor Peter Kinget at Columbia University.

The aim of this research is to explore the on-chip and neural network parameters used in keyword spotting systems
such as Amazon Alexa, Siri, and Google Home. System design greatly impacts the functionality and reliability of the
produced results.

# Using the CISL server on Mac

### Directory and commands
| Description  | Path                                        |
|--------------|---------------------------------------------|
| Dataset path | `/space1/maria+nolan/speech_commands_v0.02` |

### Logging into server
To access the server, run the following command in the terminal:

`$ ssh [username]@nalanda.cisl.columbia.edu`

followed by your account password. From there, navigate to the working directory for the project.
For this project, the following command can be run:

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

### Uploading files to server using Secure Copy Protocol

To upload files from your local directory to the server, the following SCP command can be run:

`scp -r [/localDir] [username]@nalanda.cisl.columbia.edu:[/destination]`

This will upload all files in the directory to the server. To upload an individual file, use the following
command:

`scp [/localDir] [username]@nalanda.cisl.columbia.edu:[/destination]`

The difference being the use of `-r` indicating a recursive upload.

### Running Matlab on the server

To run Matlab scripts, it is helpful to create an alias that allows for quick reference to the location of Matlab.
A request has been made to make an alias. To launch Matlab in its current directory, run the following:

`/tools/tools2/mathworks/matlab_r2021a/bin/matlab`

This will launch Matlab in the terminal, where you can then run individual files using the following command:

`run myFile.m`

Note that it is necessary to ensure that all necessary files are uploaded to the same working directory. If this is not
the case, Matlab will not be able to run the script.

### Leaving scripts to run

It seems that you can leave a script to run to completion using the following:

`nohup /tools/tools2/mathworks/matlab_r2021a/bin/matlab -r 'try; DatasetFeatureExtraction;catch;save code_err; end; quit' > output.log &`

# Initial testing

# Further Testing

## Parameter Covariation
After initial testing, it is evident that there are marginal diminishing returns after the following factors:

- 16 filters
- Quality factor of 3
- Maximum frequency of 2000 Hz

Based on this information, we propose further testing using slight variation around these parameters
to further test and find analog component optimization. The following variations have been chosen, where
two parameters are varied such that a three-dimensional mapping can be created and analyzed.

The following parameters were chosen to be covariated with the specified ranges

**Test 1:**
- [14, 18] filters, with a step of 1.
- Quality factor of 3, with a step of 1.
- Maximum frequency [1800, 2200], with a step of 2.


**Test 2:**
- [14, 18] filters, with a step of 1.
- Quality factor of [2, 4], with a step of 1.
- Maximum frequency 2000, with a step of 2.

These values will then be individually plotted to find an optimized dataset. The results of both tests will
then be summed and plotted, allowing for optimization in four dimensions.