function x_o = fn_fex(file, t_start, t_stop, x_i, n_filters,f_c_min,f_c_max, q, a_pb)

createFilterbankAndPlot = sc_create_filterbank_and_plot_response(file, n_filters,f_c_min,f_c_max,q,a_pb);

% feed input signal through filterbank
filterBank = strcat('/space1/maria+nolan/FilterBanks/', file, 'FilterBank.mat');
load(filterBank);
t_step = (t_stop - t_start)/16000;
t = t_start:t_step:t_stop-t_step;


x_f = zeros(length(createFilterbankAndPlot(:,:,:,1)),length(t)); % initialize matrix to store filterbank outputs, with filters indexed along rows and time indexed along columns
for i=1:size(x_f,1)
    x_f(i,:) = lsim(createFilterbankAndPlot(:,:,i,1),x_i,t);
end
clear i;




% feed input signal into envelope detector (bank) to produce output features
x_o = cell(size(x_f,1)); % initialize feature matrix, with each column being a time-sample of a feature vector
for i=1:size(x_o,1)
    x_o{i} = fn_envdet(t,x_f(i,:));
end
clear i;
x_o = cell2mat(x_o);
x_o = flipud(x_o); % flip up-down so that higher-frequency features are in upper rows and lower-frequency features are in the lower rows