%% Dataset feature extraction
% Uses the modeled feature extractor and creates a new database of
% processed images to be fed into the classifier.

% To do still: classify using some feature extractor parameters and time to
% see how long it takes to process and produce spectrograms for all of the
% files. Might be worth doing on an external hard drive… Update Masha and
% Subhajit, potentially present tomorrow(6 July) and prepare classifier to
% interpret data.

% Also is important to pull the correct files based on the .txt lists—both
% testing and validation. Update the lists to show .png rather than .wav
% files.

% Look into getting datastore through lab such that files can be accessed
% remotely.

%% Define dataset source
dataSets = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/";
speechCommands = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/Speech Command Datasets/speech_commands_v0.02/";
hardDrive = "/Volumes/NolansDrive/Processed Data";

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
weight = 0.01;

%% Define and create directories
clear f_i a_i;

% Defines all folders in dataset
folders = {'backward'; 'bed'; 'bird'; 'cat'; 'dog'; 'down'; 'eight';
    'five'; 'follow'; 'forward'; 'four'; 'go'; 'happy'; 'house'; 'learn';
    'left'; 'marvin'; 'nine'; 'no'; 'off'; 'on'; 'one'; 'right'; 'seven';
    'sheila'; 'six'; 'stop'; 'three'; 'tree'; 'two'; 'up'; 'visual'; 'wow';
    'yes'; 'zeros'};

fexFolder = horzcat('N', num2str(n_filters), '_Min', num2str(f_c_min), '_Max', num2str(f_c_max), '_Q', num2str(q));
newDir = ['/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/' fexFolder];
disp(newDir)
mkdir(newDir);

%% Create directories and feed images to feature extractor
for k = 1: length(folders)*weight
    mkdir([newDir  '/' folders{k}])
    %mkdir([newDir  '/' folders{k} '/' '_ProcessedOutput'])

    filePattern = fullfile(speechCommands, "/", folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    n_rows = 31; n_cols = 100; n_channels = 1; % dimension of feature
    x_train = zeros(n_rows,n_cols,n_channels,2); % initialize post-feature extraction training set
    for i = 1: 3
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);

        % Preprocess the file
        x_preproc = fn_preprocess_audio_clip(audioread(fullFileName));
        x_i = x_preproc;

        % Run input signal in feature extractor
        x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);

        x_train(:,:,:,i) = x_o;

        %label
    end
end

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
