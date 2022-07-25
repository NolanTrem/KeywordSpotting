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
t_start = 0;
t_stop = 1;
%x_i = the signal doesn't need to be hardcoded here
n_filters = 32;
f_c_min = 100;
f_c_max = 4000;
q = 3;
a_pb = 1;
weight = 0.005;

dataSets = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/";
speechCommands = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/speech_commands_v0.02/";
hardDrive = "/Volumes/NolansDrive/Processed Data";
paramFile = horzcat("N", n_filters, "_Min", f_c_min, "_Max", f_c_max, "_Q", q);


%% Define and create directories
clear f_i a_i;

% Defines all folders in dataset
folders = {'backward'; 'bed'; 'bird'; 'cat'; 'dog'; 'down'; 'eight';
    'five'; 'follow'; 'forward'; 'four'; 'go'; 'happy'; 'house'; 'learn';
    'left'; 'marvin'; 'nine'; 'no'; 'off'; 'on'; 'one'; 'right'; 'seven';
    'sheila'; 'six'; 'stop'; 'three'; 'tree'; 'two'; 'up'; 'visual'; 'wow';
    'yes'; 'zero'};

fexFolder = horzcat('N', num2str(n_filters), '_Min', num2str(f_c_min), '_Max', num2str(f_c_max), '_Q', num2str(q));
newDir = ['/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/' fexFolder];
disp(newDir)
mkdir(newDir);
outputFile = strcat('/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/', fexFolder, "/outputmodel.mat");


%% Create training set data
for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    % dimension of feature extractor
    n_rows = n_filters;
    n_cols = 100;
    n_channels = 1;


    trainingOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
    for i = 1: 80
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        for j=1:size(trainingOutput,4)
            % Preprocess the file
            x_i = fn_preprocess_audio_clip(audioread(fullFileName));
            % Run input signal in feature extractor
            x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
            trainingOutput(:,:,:,j) = x_o;
        end
    end
end

%% Create training set labels

trainingLabels = {};

for i = 1 : length(folders)
    for j = 1 : 80
        trainingLabels = [trainingLabels, folders{i}];
    end
end

%% Create testing set data
for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    % dimension of feature extractor
    n_rows = n_filters;
    n_cols = 100;
    n_channels = 1;


    testingOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
    for i = 81 : 90
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        for j=1:size(testingOutput,4)
            % Preprocess the file
            x_i = fn_preprocess_audio_clip(audioread(fullFileName));
            % Run input signal in feature extractor
            x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
            testingOutput(:,:,:,j) = x_o;
        end
    end
end

%% Create testing set labels

testingLabels = {};

for i = 1 : length(folders)
    for j = 1 : 10
        testingLabels = [testingLabels, folders{i}];
    end
end

%% Create validation set data
for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    % dimension of feature extractor
    n_rows = n_filters;
    n_cols = 100;
    n_channels = 1;


    validationOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
    for i = 91: 100
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);
        for j=1:size(validationOutput,4)
            % Preprocess the file
            x_i = fn_preprocess_audio_clip(audioread(fullFileName));
            % Run input signal in feature extractor
            x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);
            validationOutput(:,:,:,j) = x_o;
        end
    end
end

%% Create validation set labels

validationLabels = {};

for i = 1 : length(folders)
    for j = 1 : 10
        validationLabels = [validationLabels, folders{i}];
    end
end

%% Save file
save(outputFile, 'trainingOutput', 'trainingLabels', 'testingOutput', 'testingLabels', 'validationOutput', 'validationLabels');
