%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters and quality factor as the covariated
% parameters.

%% Variated filters with quality factor of 2
% NF14Q2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q2_TrainedNetwork1.mat');
% NF14Q2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q2_TrainedNetwork2.mat');
% NF14Q2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q2_TrainedNetwork3.mat');
% NF15Q2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q2_TrainedNetwork1.mat');
% NF15Q2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q2_TrainedNetwork2.mat');
% NF15Q2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q2_TrainedNetwork3.mat');
% NF16Q2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q2_TrainedNetwork1.mat');
% NF16Q2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q2_TrainedNetwork2.mat');
% NF16Q2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q2_TrainedNetwork3.mat');
% NF17Q2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q2_TrainedNetwork1.mat');
% NF17Q2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q2_TrainedNetwork2.mat');
% NF17Q2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q2_TrainedNetwork3.mat');
% NF18Q2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q2_TrainedNetwork1.mat');
% NF18Q2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q2_TrainedNetwork2.mat');
% NF18Q2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q2_TrainedNetwork3.mat');

NF14Q2 = [NF14Q2T1.accuracy NF14Q2T2.accuracy NF14Q2T3.accuracy]';
NF15Q2 = [NF15Q2T1.accuracy NF15Q2T2.accuracy NF15Q2T3.accuracy]';
NF16Q2 = [NF16Q2T1.accuracy NF16Q2T2.accuracy NF16Q2T3.accuracy]';
NF17Q2 = [NF17Q2T1.accuracy NF17Q2T2.accuracy NF17Q2T3.accuracy]';
NF18Q2 = [NF18Q2T1.accuracy NF18Q2T2.accuracy NF18Q2T3.accuracy]';

%% Variated filters with quality factor of 3
% NF14Q3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork1.mat');
% NF14Q3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork2.mat');
% NF14Q3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q3_TrainedNetwork3.mat');
% NF15Q3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork1.mat');
% NF15Q3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork2.mat');
% NF15Q3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q3_TrainedNetwork3.mat');
% NF16Q3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork1.mat');
% NF16Q3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork2.mat');
% NF16Q3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q3_TrainedNetwork3.mat');
% NF17Q3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork1.mat');
% NF17Q3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork2.mat');
% NF17Q3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q3_TrainedNetwork3.mat');
% NF18Q3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork1.mat');
% NF18Q3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork2.mat');
% NF18Q3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q3_TrainedNetwork3.mat');

NF14Q3 = [NF14Q3T1.accuracy NF14Q3T2.accuracy NF14Q3T3.accuracy]';
NF15Q3 = [NF15Q3T1.accuracy NF15Q3T2.accuracy NF15Q3T3.accuracy]';
NF16Q3 = [NF16Q3T1.accuracy NF16Q3T2.accuracy NF16Q3T3.accuracy]';
NF17Q3 = [NF17Q3T1.accuracy NF17Q3T2.accuracy NF17Q3T3.accuracy]';
NF18Q3 = [NF18Q3T1.accuracy NF18Q3T2.accuracy NF18Q3T3.accuracy]';

%% Variated filters with quality factor of 4
% NF14Q4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q4_TrainedNetwork1.mat');
% NF14Q4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q4_TrainedNetwork2.mat');
% NF14Q4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max2000_Q4_TrainedNetwork3.mat');
% NF15Q4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q4_TrainedNetwork1.mat');
% NF15Q4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q4_TrainedNetwork2.mat');
% NF15Q4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N15_Min100_Max2000_Q4_TrainedNetwork3.mat');
% NF16Q4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q4_TrainedNetwork1.mat');
% NF16Q4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q4_TrainedNetwork2.mat');
% NF16Q4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max2000_Q4_TrainedNetwork3.mat');
% NF17Q4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q4_TrainedNetwork1.mat');
% NF17Q4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q4_TrainedNetwork2.mat');
% NF17Q4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N17_Min100_Max2000_Q4_TrainedNetwork3.mat');
% NF18Q4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q4_TrainedNetwork1.mat');
% NF18Q4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q4_TrainedNetwork2.mat');
% NF18Q4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max2000_Q4_TrainedNetwork3.mat');

NF14Q4 = [NF14Q4T1.accuracy NF14Q4T2.accuracy NF14Q3T4.accuracy]';
NF15Q4 = [NF15Q4T1.accuracy NF15Q4T2.accuracy NF15Q3T4.accuracy]';
NF16Q4 = [NF16Q4T1.accuracy NF16Q4T2.accuracy NF16Q3T4.accuracy]';
NF17Q4 = [NF17Q4T1.accuracy NF17Q4T2.accuracy NF17Q3T4.accuracy]';
NF18Q4 = [NF18Q4T1.accuracy NF18Q4T2.accuracy NF18Q3T4.accuracy]';

% rng('default')
filters = [14 15 16 17 18 14 15 16 17 18 14 15 16 17 18];
quality = [2 2 2 2 2 3 3 3 3 3 4 4 4 4 4];
accuracies = [100*mean(NF14Q2) 100*mean(NF15Q2) 100*mean(NF16Q2) 100*mean(NF17Q2) 100*mean(NF18Q2) 100*mean(NF14Q3) 100*mean(NF15Q3) 100*mean(NF16Q3) 100*mean(NF17Q3) 100*mean(NF18Q3) 100*mean(NF14Q4) 100*mean(NF15Q4) 100*mean(NF16Q4) 100*mean(NF17Q4) 100*mean(NF18Q4)];
% 
% 
% [xq,yq] = meshgrid(13:0.2:18, 17500:10:2200);
% vq = griddata(filters,frequency,accuracies,xq,yq);
% 
% mesh(xq,yq,vq)
% hold on
% plot3(filters, frequency, accuracies, 'o');

[xq,yq] = meshgrid(0:0.5:5);

z3 = griddata(filters, quality, accuracies, xq, yq, 'natural');
figure
plot3(filters,quality,accuracies,'o')
hold on
mesh(xq,yq,z3)
title('Classification accuracy with covariated number of filters and quality factor')
legend('Sample Points','Interpolated Surface','Location','NorthWest')
colorbar