%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

f800 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max800_Q3_Network.mat');
f1200 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max1200_Q3_Network.mat');
f1600 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max1600_Q3_Network.mat');
f2000 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max2000_Q3_Network.mat');
f2400 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max2400_Q3_Network.mat');
f2800 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max2800_Q3_Network.mat');
f3200 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max3200_Q3_Network.mat');
f3600 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max3600_Q3_Network.mat');
f4000 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network.mat');


%% Store accuracy
x = [800, 1200, 1600, 2000, 2400, 2800, 3200, 3600, 4000];
accuracyMeasures = [f800.accuracy; f1200.accuracy; f1600.accuracy;
    f2000.accuracy; f2400.accuracy; f2800.accuracy; f3200.accuracy;
    f3600.accuracy; f4000.accuracy];

plot(x, accuracyMeasures, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Maximum center frequency");
title("Classification accuracy with variated maximum frequency")
xlim([600 4200])

%boxplot(accuracyMeasures, "Orientation", "horizontal")