% A new script whose output is a pair of plots: one for the 
% preprocessed audio clip input to the feature extractor function
% and another that is the spectrogram output of the feature extractor
% function.
% get the pathway
% put all the file names into an array usein x - dir(allFiles)
% for k = 1:length(x)
% use *. to go through all of the files in the folder with a for loop
% use 
%% define time and generate input signal
x = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Analog Machine Learning/speech_commands_v0.02/myTest";



clear f_i a_i;

%generate and save images for all the files
filePattern = fullfile(x,"*.wav");
theFiles = dir(filePattern);

for k=1:length(theFiles)
    
    currentFile = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, currentFile);% get the name of the file to process
    % preprocess the file
    x_preproc = fn_preprocess_audio_clip(audioread(fullFileName));
    x_i = x_preproc;
    %% feed input signal into feature extractor
    x_o = fn_fex(0, 1, x_i, 32, 100, 4000, 3, 1);
   
    % plot input to and output of feature extractor
    figure;
    
    % input
    subplot(2,1,1);
    input = plot(x_preproc);
    title('input signal');
    xlabel('time [ms]');
    ylabel('amplitude [#]');
    %saveas(input,'curerntFile.jpg');
  %exportgraphics(gca, strcat('input_', curerntFile, '.jpg'));
    
    % output
    subplot(2,1,2);
    output = imagesc(x_o);
    title('output spectrogram');
    xlabel('sample index (10ms per sample) [#]');
    ylabel('feature index (in reverse order) [#]');
    %saveas(output,'curerntFile.jpg');
    %exportgraphics(gca, strcat('output_', curerntFile, '.jpg'));
    %get the name of the file and save output as jpg
    [filepath,name,ext] = fileparts(currentFile);
    saveas(gca,name,'jpg');
end