%% user-specified parameters
tic

%----------------------------------------------------------------------
% REMEMBER TO SELECT THE APPROPRIATE afc* FUNCTION IN SECTIONS 3 AND 4 AT x_fex = ...
%----------------------------------------------------------------------

% set names of input (audio dataset) and output files (spectrogram training & validation sets)
filename_input = 'datasets/audio_input/dataset_audio_input.mat';
filename_output = 'datasets/model_output/dataset_model_6bits.mat';

% specify resolution of afc
n_bits = 6;



%% feature-extract the pre-feature extraction training set

% first, load pre-feature extractiond dataset
load(filename_input);

% define parameters of feature to be extracted
n_rows = 31; n_cols = 100; n_channels = 1; % dimension of feature
fs = 16e3; % sampling frequency of audio clips in pre-feature extraction dataset

% suppress warnings that will be caused by the "afc" function
warning('off','Control:analysis:LsimUndersampled');

x_train = zeros(n_rows,n_cols,n_channels,length(ds_train.Labels)); % initialize post-feature extraction training set
for i=1:size(x_train,4)
    x = read(ds_train); % read in one audio clip
    x_preproc = audio_clip_preprocess(x); % first preprocess it
    x_fex = afc([0:1:length(x_preproc)-1].'*1/fs , x_preproc , n_bits); % then feature-extract it
    x_train(:,:,:,i) = x_fex;
end
clear i;



%% feature-extract the pre-feature extraction validation set

x_valid = zeros(n_rows,n_cols,n_channels,length(ds_valid.Labels)); % initialize post-feature extraction validation set
for i=1:size(x_valid,4)
    x = read(ds_valid); % read in one audio clip
    x_preproc = audio_clip_preprocess(x); % first preprocess it
    x_fex = afc([0:1:length(x_preproc)-1].'*1/fs , x_preproc , n_bits); % then feature-extract it
    x_valid(:,:,:,i) = x_fex;
end
clear i;



%% isolate the labels
y_train = removecats(ds_train.Labels);
y_valid = removecats(ds_valid.Labels);



%% save the post-feature extraction dataset
save(filename_output,'x_train','x_valid','y_train','y_valid');



toc