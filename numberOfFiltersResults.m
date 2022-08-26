%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

n2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N2_Min100_Max_Q3_Network.mat');
n4 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N4_Min100_Max_Q3_Network.mat');
n6 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N6_Min100_Max_Q3_Network.mat');
n8 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N8_Min100_Max_Q3_Network.mat');
n10 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N10_Min100_Max_Q3_Network.mat');
n12 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N12_Min100_Max_Q3_Network.mat');
n14 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N14_Min100_Max_Q3_Network.mat');
n16 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N16_Min100_Max_Q3_Network.mat');
n18 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N18_Min100_Max_Q3_Network.mat');
n20 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N20_Min100_Max_Q3_Network.mat');
n22 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N22_Min100_Max_Q3_Network.mat');

%% Store accuracy
x = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22];
accuracyMeasures = [n2.accuracy; n4.accuracy; n6.accuracy; n8.accuracy;
    n10.accuracy; n12.accuracy; n14.accuracy; n16.accuracy; n18.accuracy;
    n20.accuracy; n22.accuracy];

plot(x, accuracyMeasures, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Number of filters");
title("Classification accuracy with variated filters")
xlim([0 24])

%boxplot(accuracyMeasures, "Orientation", "horizontal")