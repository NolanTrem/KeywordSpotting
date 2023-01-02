%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters and maximum center frequency as the covariated
% parameters.

%% Variated filters at 1800Hz
NF14MF1800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF14MF1800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1800_Q3_TrainedNetwork2.mat');
NF14MF1800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1800_Q3_TrainedNetwork3.mat');
NF15MF1800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF15MF1800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1800_Q3_TrainedNetwork2.mat');
NF15MF1800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF16MF1800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF16MF1800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1800_Q3_TrainedNetwork2.mat');
NF16MF1800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1800_Q3_TrainedNetwork3.mat');
NF17MF1800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF17MF1800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1800_Q3_TrainedNetwork2.mat');
NF17MF1800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1800_Q3_TrainedNetwork3.mat');
NF18MF1800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1800_Q3_TrainedNetwork1.mat');
NF18MF1800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1800_Q3_TrainedNetwork2.mat');
NF18MF1800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1800_Q3_TrainedNetwork3.mat');

NF14MF1800 = [NF14MF1800T1.accuracy NF14MF1800T2.accuracy NF14MF1800T3.accuracy]';
NF15MF1800 = [NF15MF1800T1.accuracy NF15MF1800T2.accuracy NF15MF1800T3.accuracy]';
NF16MF1800 = [NF16MF1800T1.accuracy NF16MF1800T2.accuracy NF16MF1800T3.accuracy]';
NF17MF1800 = [NF17MF1800T1.accuracy NF17MF1800T2.accuracy NF17MF1800T3.accuracy]';
NF18MF1800 = [NF18MF1800T1.accuracy NF18MF1800T2.accuracy NF18MF1800T3.accuracy]';

%% Variated filters at 1900Hz
NF14MF1900T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF14MF1900T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1900_Q3_TrainedNetwork2.mat');
NF14MF1900T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max1900_Q3_TrainedNetwork3.mat');
NF15MF1900T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF15MF1900T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1900_Q3_TrainedNetwork2.mat');
NF15MF1900T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF16MF1900T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF16MF1900T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1900_Q3_TrainedNetwork2.mat');
NF16MF1900T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max1900_Q3_TrainedNetwork3.mat');
NF17MF1900T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF17MF1900T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1900_Q3_TrainedNetwork2.mat');
NF17MF1900T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max1900_Q3_TrainedNetwork3.mat');
NF18MF1900T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1900_Q3_TrainedNetwork1.mat');
NF18MF1900T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1900_Q3_TrainedNetwork2.mat');
NF18MF1900T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max1900_Q3_TrainedNetwork3.mat');

NF14MF1900 = [NF14MF1900T1.accuracy NF14MF1900T2.accuracy NF14MF1900T3.accuracy]';
NF15MF1900 = [NF15MF1900T1.accuracy NF15MF1900T2.accuracy NF15MF1900T3.accuracy]';
NF16MF1900 = [NF16MF1900T1.accuracy NF16MF1900T2.accuracy NF16MF1900T3.accuracy]';
NF17MF1900 = [NF17MF1900T1.accuracy NF17MF1900T2.accuracy NF17MF1900T3.accuracy]';
NF18MF1900 = [NF18MF1900T1.accuracy NF18MF1900T2.accuracy NF18MF1900T3.accuracy]';

%% Variated filters at 2000Hz
NF14MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF14MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork2.mat');
NF14MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork3.mat');
NF15MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF15MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork2.mat');
NF15MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF16MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF16MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork2.mat');
NF16MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork3.mat');
NF17MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF17MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork2.mat');
NF17MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork3.mat');
NF18MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork1.mat');
NF18MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork2.mat');
NF18MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork3.mat');

NF14MF2000 = [NF14MF2000T1.accuracy NF14MF2000T2.accuracy NF14MF2000T3.accuracy]';
NF15MF2000 = [NF15MF2000T1.accuracy NF15MF2000T2.accuracy NF15MF2000T3.accuracy]';
NF16MF2000 = [NF16MF2000T1.accuracy NF16MF2000T2.accuracy NF16MF2000T3.accuracy]';
NF17MF2000 = [NF17MF2000T1.accuracy NF17MF2000T2.accuracy NF17MF2000T3.accuracy]';
NF18MF2000 = [NF18MF2000T1.accuracy NF18MF2000T2.accuracy NF18MF2000T3.accuracy]';

%% Variated filters at 2100Hz
NF14MF2100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF14MF2100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF14MF2100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF15MF2100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF15MF2100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF15MF2100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF16MF2100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF16MF2100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF16MF2100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF17MF2100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF17MF2100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF17MF2100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF18MF2100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF18MF2100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF18MF2100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork3.mat');

NF14MF2100 = [NF14MF2100T1.accuracy NF14MF2100T2.accuracy NF14MF2100T3.accuracy]';
NF15MF2100 = [NF15MF2100T1.accuracy NF15MF2100T2.accuracy NF15MF2100T3.accuracy]';
NF16MF2100 = [NF16MF2100T1.accuracy NF16MF2100T2.accuracy NF16MF2100T3.accuracy]';
NF17MF2100 = [NF17MF2100T1.accuracy NF17MF2100T2.accuracy NF17MF2100T3.accuracy]';
NF18MF2100 = [NF18MF2100T1.accuracy NF18MF2100T2.accuracy NF18MF2100T3.accuracy]';

%% Variated filters at 2200Hz
NF14MF2200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF14MF2200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF14MF2200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF15MF2200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF15MF2200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF15MF2200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF16MF2200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF16MF2200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF16MF2200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF17MF2200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF17MF2200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF17MF2200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2100_Q3_TrainedNetwork3.mat');
NF18MF2200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork1.mat');
NF18MF2200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork2.mat');
NF18MF2200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2100_Q3_TrainedNetwork3.mat');

NF14MF2200 = [NF14MF2200T1.accuracy NF14MF2200T2.accuracy NF14MF2200T3.accuracy]';
NF15MF2200 = [NF15MF2200T1.accuracy NF15MF2200T2.accuracy NF15MF2200T3.accuracy]';
NF16MF2200 = [NF16MF2200T1.accuracy NF16MF2200T2.accuracy NF16MF2200T3.accuracy]';
NF17MF2200 = [NF17MF2200T1.accuracy NF17MF2200T2.accuracy NF17MF2200T3.accuracy]';
NF18MF2200 = [NF18MF2200T1.accuracy NF18MF2200T2.accuracy NF18MF2200T3.accuracy]';

% rng('default')
filters = [14 15 16 17 18 14 15 16 17 18 14 15 16 17 18 14 15 16 17 18 14 15 16 17 18];
frequency = [1800 1800 1800 1800 1800 1900 1900 1900 1900 1900 2000 2000 2000 2000 2000 2100 2100 2100 2100 2100 2200 2200 2200 2200 2200];
accuracies = [100*mean(NF14MF1800) 100*mean(NF15MF1800) 100*mean(NF16MF1800) 100*mean(NF17MF1800) 100*mean(NF18MF1800) 100*mean(NF14MF1900) 100*mean(NF15MF1900) 100*mean(NF16MF1900) 100*mean(NF17MF1900) 84 100*mean(NF14MF2000) 100*mean(NF15MF2000) 100*mean(NF16MF2000) 100*mean(NF17MF2000) 100*mean(NF18MF2000) 100*mean(NF14MF2100) 100*mean(NF15MF2100) 100*mean(NF16MF2100) 100*mean(NF17MF2100) 100*mean(NF18MF2100) 100*mean(NF14MF2200) 100*mean(NF15MF2200) 100*mean(NF16MF2200) 100*mean(NF17MF2200) 100*mean(NF18MF2200)];
% 
% 
% [xq,yq] = meshgrid(13:0.2:18, 17500:10:2200);
% vq = griddata(filters,frequency,accuracies,xq,yq);
% 
% mesh(xq,yq,vq)
% hold on
% plot3(filters, frequency, accuracies, 'o');

[xq,yq] = meshgrid(-3:0.5:2200);

z3 = griddata(filters, frequency, accuracies, xq, yq, 'natural');
figure
plot3(filters,frequency,accuracies,'o')
hold on
mesh(xq,yq,z3)
title('Classification accuracy with covariated number of filters and maximum center frequency')
legend('Sample Points','Interpolated Surface','Location','NorthWest')
colorbar