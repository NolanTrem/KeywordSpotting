%% user-specified parameters

% specify what you want the keywords to be
keywords = categorical(["yes","no","up","down","left","right","on","off","stop","go"]);

% for the pre-feature extractions datasets:
% - training set has ~1850 examples per word
% - the validation set has ~250 examples per word
% - the training set is ~7x larger than the validation set
% to reduce size of the post-feature extraction datasets and thereby speed up training, set factor_reduce_dataset to a number in (0,1); otherwise, set to 1 to use all examples
factor_reduce_dataset = 1;

% specify path to pre-feature extraction datasets
path_to_pre_feature_extraction_datasets = 'C:\Users\Subhajit\Documents\MATLAB\tutorial_speech_command_recognition_using_deep_learning\datasets';



%% define training set
% - run "countEachLabel(ds_train)" to see how many training examples there are for each class

% the original training set, which consists of 30 keywords
ds_train_superset = audioDatastore([path_to_pre_feature_extraction_datasets,'/train'],'IncludeSubfolders',true,'LabelSource','foldernames'); 

% re-label all non-keyword words as unknown
is_keyword = ismember(ds_train_superset.Labels,keywords); % indicate those words in training set that are keywords (logical array)
is_unknown = ~is_keyword; % indicate those words in training set that are not keywords (logical array)
ds_train_superset.Labels(is_unknown) = categorical("unknown"); % re-label as unknown those words that are not keywords

% to avoid class imbalance, reduced number of training examples for the
% unknown class to be 3.5x that for any one of the keyword classes,
% otherwise that ratio would be much larger, ~17.5x, as there would be 20
% words belonging to the unknown class but only 10 belonging to the keyword classes
tbl = countEachLabel(ds_train_superset); % record the number of training examples belong to each and every class
num_unknown_before_reduction = tbl.Count(ismember(tbl.Label,categorical("unknown"))); % number of training examples belonging to unknown class
num_keyword = mean(tbl.Count(~ismember(tbl.Label,categorical("unknown")))); % number of training examples belonging to any one of the keyword classes
num_unknown_after_reduction = round(num_keyword*3.5); % desired number of training examples belonging to the unknown class
mask = rand(size(ds_train_superset.Labels)) < num_unknown_after_reduction/num_unknown_before_reduction; % create mask to be used to reduce the number of training examples belonging to the unknown class
is_unknown = mask & is_unknown;  % apply mask
ds_train = subset(ds_train_superset,is_keyword|is_unknown); % re-define train set such that number of training examples belonging to unknown class is reduced

% clear intermediate variables
clear mask is_keyword is_unknown ds_train_superset tbl num_keyword num_unknown_before_reduction num_unknown_after_reduction;



%% define validation set
% - run "countEachLabel(ds_valid)" to see how many validation examples there are for each class

% the original validation set, which consists of 30 keywords
ds_valid_superset = audioDatastore([path_to_pre_feature_extraction_datasets,'/validation'],'IncludeSubfolders',true,'LabelSource','foldernames'); 

% re-label all non-keyword words as unknown
is_keyword = ismember(ds_valid_superset.Labels,keywords); % indicate those words in training set that are keywords (logical array)
is_unknown = ~is_keyword; % indicate those words in training set that are not keywords (logical array)
ds_valid_superset.Labels(is_unknown) = categorical("unknown"); % re-label as unknown those words that are not keywords

% to avoid class imbalance, reduced number of training examples for the
% unknown class to be 3.5x that for any one of the keyword classes,
% otherwise that ratio would be much larger, ~17.5x, as there would be 20
% words belonging to the unknown class but only 10 belonging to the keyword classes
tbl = countEachLabel(ds_valid_superset); % record the number of training examples belong to each and every class
num_unknown_before_reduction = tbl.Count(ismember(tbl.Label,categorical("unknown"))); % number of training examples belonging to unknown class
num_keyword = mean(tbl.Count(~ismember(tbl.Label,categorical("unknown")))); % number of training examples belonging to any one of the keyword classes
num_unknown_after_reduction = round(num_keyword*3.5); % desired number of training examples belonging to the unknown class
mask = rand(size(ds_valid_superset.Labels)) < num_unknown_after_reduction/num_unknown_before_reduction; % create mask to be used to reduce the number of training examples belonging to the unknown class
is_unknown = mask & is_unknown;  % apply mask
ds_valid = subset(ds_valid_superset,is_keyword|is_unknown); % re-define train set such that number of training examples belonging to unknown class is reduced

% clear intermediate variables
clear mask is_keyword is_unknown ds_valid_superset tbl num_keyword num_unknown_before_reduction num_unknown_after_reduction;



%% reduce sizes of the datasets to speed up training and see results faster

if factor_reduce_dataset < 1
    ds_train = splitEachLabel(ds_train,factor_reduce_dataset);
    ds_valid = splitEachLabel(ds_valid,factor_reduce_dataset);
end



%% discard anomalous files that consist of all 0s--IN PROGRESS
% file_is_bad = zeros(size(ds_train.Files));
% for i=1:length(ds_train.Files)
%     x = audioread(string(ds_train.Files(i)));
%     file_is_bad(i) = mean(abs(x))==0;
% end



%% save the pre-feature extraction dataset
datetime = datestr(datetime(now,'ConvertFrom','datenum'));
datetime = strrep(datetime,'-','_');
datetime = strrep(datetime,' ','_');
datetime = strrep(datetime,':','_');

save(['dataset_prefex_',...
    num2str(round(1/factor_reduce_dataset)),'x_reduced_',...
    num2str(length(keywords)),'_words_',...
    datetime,...
    '.mat'],'ds_train','ds_valid');


