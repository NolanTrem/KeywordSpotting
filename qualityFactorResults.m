%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

q01 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q0.1_Network.mat');
q1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q1_Network.mat');
q2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q2_Network.mat');
q3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q3_Network.mat');
q4 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q4_Network.mat');
q5 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q5_Network.mat');
q10 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q10_Network.mat');
q100 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks/N32_Min100_Max4000_Q100_Network.mat');

x1 = [0.1, 1, 2, 3, 4, 5, 10, 100];
accuracyMeasures1 = [q01.accuracy; q1.accuracy; q2.accuracy; q3.accuracy;
    q4.accuracy; q5.accuracy; q10.accuracy; q100.accuracy];

%% Test 2
q01test2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks2/N32_Min100_Max4000_Q0.1_Network.mat');
q1test2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks2/N32_Min100_Max4000_Q1_Network.mat');
q2test2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks2/N32_Min100_Max4000_Q2_Network.mat');
q3test2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/TrainedNetworks2/N32_Min100_Max4000_Q3_Network.mat');

x2 = [0.1, 1, 2, 3];
accuracyMeasures2 = [q01.accuracy; q1.accuracy; q2.accuracy; q3.accuracy];

%% Plot

plot(x1, accuracyMeasures1, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Quality Factor");
title("Classification accuracy with variated quality factor")
xlim([0 12])

hold on
plot(x2, accuracyMeasures2, "LineWidth", 1.5)
hold off

%boxplot(accuracyMeasures, "Orientation", "horizontal")