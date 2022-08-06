%% specify file names of: trained network, training options, x and y values of validation set

% validation set
filename_validation_set = 'datasets/model_output/dataset_model_6bits.mat';

% trained network
filename_net_trained = 'trained_networks/net_model_6bits.mat';



%% load

load(filename_net_trained);
load(filename_validation_set,'x_valid','y_valid');



%% evaluate trained network

% calculate prediction accuracy on validation set
y_valid_predictions = classify(net_trained,x_valid);
acc = 100*mean(y_valid_predictions == y_valid);



%% plot confusion matrix

figure;
cm = confusionchart(y_valid,y_valid_predictions,...
    'Normalization','row-normalized',...
    'DiagonalColor','black','OffDiagonalColor','black');
title({['Accuracy = ',sprintf('%1.1f',acc),'%',' averaged over 2 chips'] , 'using a single software classifier', 'without chip-wise training'});
cm.FontSize = 25;


