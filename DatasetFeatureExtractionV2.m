%% Dataset feature extraction
% So far this script produces the desired .mat output for the feature
% extractor. The labels are not finished, and then implementation with
% trainTestValidate.m needs to occur. <- this file is what distributes the
% dataset and contains sizing information.

%% Define dataset source
dataSets = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/";
speechCommands = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/speech_commands_v0.02/";
hardDrive = "/Volumes/NolansDrive/Processed Data";
outputFile = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/outputmodel.mat";

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

%% Create directories and feed images to feature extractor
for k = 1: length(folders)
    filePattern = fullfile(speechCommands, folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    % dimension of feature extractor
    n_rows = n_filters;
    n_cols = 100;
    n_channels = 1;


    trainingOutput = zeros(n_rows,n_cols,n_channels,2); % Initialize post-feature extraction training set
    for i = 1: 3
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

%% Create labels
% need to further develop this part of the script… should make a matrix
% that will follow the pattern
% ( 1, folder(1))
% ( 1, folder(2))
% ( 1, folder(3))
% …
% ( 105, folder(3))
% 
% Just have not had time to finish this

trainingLabels = zeros(105, 2); % Hardcoded to 3*35 labels
folderCount = 1;

for i = 1: 105
    trainingLabels(i, i) = i;
end

%% Save file
save(outputFile, 'trainingOutput');

%% Make copies for validation list
validation = readlines('/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/speech_commands_v0.02/testing_list.txt');
cd(newDir)
mkdir 'validationList'

for k = 1:length(validation)
    valFile = strcat(newDir, '/', validation(k));
    valDestination = strcat('/Volumes/NolansDrive/Processed Data/3210040003/validationList');
    valName = strcat(validation(k));
    newStr = extractAfter(valName,"/");
    copyfile(valFile, valDestination);

    cd('/Volumes/NolansDrive/Processed Data/3210040003/validationList')
    movefile('*.jpg', valName);
end
