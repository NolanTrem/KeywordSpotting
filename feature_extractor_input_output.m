% A new script whose output is a pair of plots: one for the 
% preprocessed audio clip input to the feature extractor function
% and another that is the spectrogram output of the feature extractor
% function.

%% define time and generate input signal
x = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Practice Spectrogram/speech_commands_v0.02/sheila/0d393936_nohash_1.wav";
x_preproc = fn_preprocess_audio_clip(audioread(x));
t_start = 0; t_stop = 1; t_step = 6.25e-5;
t = t_start:t_step:t_stop-t_step;
%f_i = 4e3; a_i = [zeros(1,length(t)/2) , ones(1,length(t)/2)];  % sinusoid with linear envelope
x_i = x_preproc;
clear f_i a_i;

%createFilterbankAndPlot = sc_create_filterbank_and_plot_response(1, 100, 4000, 3, 1);


%% feed input signal into feature extractor
x_o = fn_fex(t,x_i,16, 100, 4000, 3, 1);


%% plot input to and output of feature extractor
figure;

% input
subplot(2,1,1);
plot(x_preproc);
title('input signal');
xlabel('time [ms]');
ylabel('amplitude [#]');

% output
subplot(2,1,2);
imagesc(x_o);
title('output spectrogram');
xlabel('sample index (10ms per sample) [#]');
ylabel('feature index (in reverse order) [#]');