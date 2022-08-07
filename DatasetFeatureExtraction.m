%% Dataset feature extraction
% So far this script produces the desired .mat output for the feature
% extractor with labels. In the future, update to suppress warnings for
% 'undersampled' audio files.

% An additional updated version of this implementation of the feature
% extractor should step through the feature extractor parameters to create
% a massive dataset of processed audio.

%% Define dataset source
% In the final implementation these parameters will be given a range such
% that they will be stepped through rather than hardcoded.
tic
t_start = 0;
t_stop = 1;
%x_i = the signal doesn't need to be hardcoded here
n_filters = 32;
f_c_min = 100;
f_c_max = 4000;
q = 3;
a_pb = 1;
% dimension of feature extractor
n_rows = n_filters;
n_cols = 100;
n_channels = 1;

%% Define and create directories
clear f_i a_i;

% Defines all folders in dataset
folders = {'backward'; 'bed'; 'bird'; 'cat'; 'dog'; 'down'; 'eight';
    'five'; 'follow'; 'forward'; 'four'; 'go'; 'happy'; 'house'; 'learn';
    'left'; 'marvin'; 'nine'; 'no'; 'off'; 'on'; 'one'; 'right'; 'seven';
    'sheila'; 'six'; 'stop'; 'three'; 'tree'; 'two'; 'up'; 'visual'; 'wow';
    'yes'; 'zero'};

fexFile = horzcat('N', num2str(n_filters), '_Min', num2str(f_c_min), '_Max', num2str(f_c_max), '_Q', num2str(q));
outputFile = strcat('/space1/maria+nolan/FeatureExtractionDatasets/', fexFile, ".mat");

%% Dataset size parameters
% Size of the speech_commands dataset
totalDatasetSize = 105829;

% Decimal representation of the percentage of dataset used
datasetWeight = 0.10;
folderWeight = 1/length(folders);
trainingWeight = 0.80;
testingWeight = 0.10;
validationWeight = 0.10;

reducedDatasetSize = ceil(totalDatasetSize*datasetWeight);
trainingSize = floor(reducedDatasetSize*trainingWeight);
testingSize = floor(reducedDatasetSize*testingWeight);
validationSize = floor(reducedDatasetSize*validationWeight);

trainingSize = floor(trainingSize*folderWeight);
testingSize = floor(testingSize*folderWeight);
validationSize = floor(validationSize*folderWeight);

totalTrainingSize = length(folders)*trainingSize;
totalTestingSize = length(folders)*testingSize;
totalValidationSize = length(folders)*validationSize;

% Redefine reducedDatasetSize
reducedDatasetSize = totalTrainingSize + totalTestingSize + totalValidationSize;

warning('off','Control:analysis:LsimUndersampled'); % Turns off undersampling warning

%% Path parameters
speechCommands = "/space1/maria+nolan/speech_commands_v0.02/";
paramFile = horzcat("N", n_filters, "_Min", f_c_min, "_Max", f_c_max, "_Q", q);

%% Create training set data
trainingOutput = zeros(n_rows,n_cols,n_channels,totalTrainingSize); % Initialize post-feature extraction training set
trainingOutputCounter = 1;

for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);
    
    for i = 1: trainingSize
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        % Preprocess the file
        x_i = fn_preprocess_audio_clip(audioread(fullFileName));
        % Run input signal in feature extractor
        x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
        trainingOutput(:,:,:,trainingOutputCounter) = x_o;
        trainingOutputCounter = trainingOutputCounter + 1;
    end
end

%% Create training set labels

trainingLabels = {};

for k = 1 : length(folders)
    for i = 1 : trainingSize
        trainingLabels = [trainingLabels, folders{k}];
    end
end

%% Create testing set data
testingOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
testingOutputCounter = 1;

for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    for i = 1 : testingSize
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        % Preprocess the file
        x_i = fn_preprocess_audio_clip(audioread(fullFileName));
        % Run input signal in feature extractor
        x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
        testingOutput(:,:,:,testingOutputCounter) = x_o;
        testingOutputCounter = testingOutputCounter + 1;
    end
end

%% Create testing set labels

testingLabels = {};

for k = 1 : length(folders)
    for i = 1 : testingSize
        testingLabels = [testingLabels, folders{k}];
    end
end

%% Create validation set data
validationOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
validationOutputCounter = 1;

for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    for i = 1: validationSize
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        % Preprocess the file
        x_i = fn_preprocess_audio_clip(audioread(fullFileName));
        % Run input signal in feature extractor
        x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
        validationOutput(:,:,:,validationOutputCounter) = x_o;
        validationOutputCounter = validationOutputCounter + 1;
    end
end


%% Create validation set labels

validationLabels = {};

for k = 1 : length(folders)
    for i = 1 : validationSize
        validationLabels = [validationLabels, folders{k}];
    end
end

%% Save file
save(outputFile, 'trainingOutput', 'trainingLabels', 'testingOutput', 'testingLabels', 'validationOutput', 'validationLabels');

toc