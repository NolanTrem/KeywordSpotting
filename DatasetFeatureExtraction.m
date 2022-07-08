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

%% Define and create directories
clear f_i a_i;

% Defines all folders in dataset
% folders = {'backward'; 'bed'; 'bird'; 'cat'; 'dog'; 'down'; 'eight';
%     'five'; 'follow'; 'forward'; 'four'; 'go'; 'happy'; 'house'; 'learn';
%     'left'; 'marvin'; 'nine'; 'no'; 'off'; 'on'; 'one'; 'right'; 'seven';
%     'sheila'; 'six'; 'stop'; 'three'; 'two'; 'up'; 'visual'; 'wow'; 'yes';
%     'zeros'};

folders = {'zero'};

newDir = ['/Volumes/NolansDrive/Processed Data/' num2str(n_filters) num2str(f_c_min) num2str(f_c_max) num2str(q)];
disp(newDir)
%mkdir(newDir);

%% Create directories and feed images to feature extractor
for k = 1: length(folders)
    mkdir([newDir  '/' folders{k}])
    %mkdir([newDir  '/' folders{k} '/' '_ProcessedOutput'])

    filePattern = fullfile(speechCommands, "/", folders{k}, "/*.wav");
    theFiles = dir(filePattern);

    for i = 1: length(theFiles)
        currentFile = theFiles(i).name;
        % Get name of current file
        fullFileName = fullfile(theFiles(i).folder, currentFile);

        % Preprocess the file
        x_preproc = fn_preprocess_audio_clip(audioread(fullFileName));
        x_i = x_preproc;

        % Run input signal in feature extractor
        x_o = fn_fex(t_start, t_stop, x_i, n_filters, f_c_min, f_c_max, q, a_pb);

        output = imagesc(x_o);
        title('Output Spectrogram');
        xlabel('sample index (10ms per sample) [#]');
        ylabel('feature index (in reverse order) [#]');

        %save the file
        [filepath,name,ext] = fileparts(currentFile);
        folder = ([newDir  '/' folders{k}]);
        saveas(gca,fullfile(folder,name),'jpg');

    end
end

%% Make copies of 
