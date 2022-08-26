%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

n2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N2_Min100_Max_Q3_Network.mat');
n4 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N4_Min100_Max_Q3_Network.mat');
n6 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N6_Min100_Max_Q3_Network.mat');

%% Store accuracy
x = [2, 4, 6];
accuracyMeasures = [n2.accuracy; n4.accuracy; n6.accuracy];

plot(x, accuracyMeasures)
xlim([0 10])

%boxplot(accuracyMeasures, "Orientation", "horizontal")