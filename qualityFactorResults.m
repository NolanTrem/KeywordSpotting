%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

QF01T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q0.1_TrainedNetwork1.mat');
QF01T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q0.1_TrainedNetwork2.mat');
QF01T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q0.1_TrainedNetwork3.mat');

QF1T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q1_TrainedNetwork1.mat');
QF1T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q1_TrainedNetwork2.mat');
QF1T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q1_TrainedNetwork3.mat');

QF2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q2_TrainedNetwork1.mat');
QF2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q2_TrainedNetwork2.mat');
QF2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q2_TrainedNetwork3.mat');

QF3T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork1.mat');
QF3T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork2.mat');
QF3T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork3.mat');

QF4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q4_TrainedNetwork1.mat');
QF4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q4_TrainedNetwork2.mat');
QF4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q4_TrainedNetwork3.mat');

QF5T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q5_TrainedNetwork1.mat');
QF5T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q5_TrainedNetwork2.mat');
QF5T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q5_TrainedNetwork3.mat');

QF10T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q10_TrainedNetwork1.mat');
QF10T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q10_TrainedNetwork2.mat');
QF10T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q10_TrainedNetwork3.mat');

QF100T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q100_TrainedNetwork1.mat');
QF100T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q100_TrainedNetwork2.mat');
QF100T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q100_TrainedNetwork3.mat');

QF01 = [QF01T1.accuracy QF01T2.accuracy QF01T3.accuracy]';
QF1 = [QF1T1.accuracy QF1T2.accuracy QF1T3.accuracy]';
QF2 = [QF2T1.accuracy QF2T2.accuracy QF2T3.accuracy]';
QF3 = [QF3T1.accuracy QF3T2.accuracy QF3T3.accuracy]';
QF4 = [QF4T1.accuracy QF4T2.accuracy QF4T3.accuracy]';
QF5 = [QF5T1.accuracy QF5T2.accuracy QF5T3.accuracy]';
QF10 = [QF10T1.accuracy QF10T2.accuracy QF10T3.accuracy]';
QF100 = [QF100T1.accuracy QF100T2.accuracy QF100T3.accuracy]';

group = [    ones(size(QF01));
         2 * ones(size(QF1));
         3 * ones(size(QF2));
         4 * ones(size(QF3));
         5 * ones(size(QF4));
         6 * ones(size(QF5));
         7 * ones(size(QF10));
         8 * ones(size(QF100));];

figure
boxplot([QF01, QF1, QF2, QF3, QF4, QF5, QF10, QF100],group)
set(gca,'XTickLabel',{'0.01', '1', '2', '3', '4', '5', '10', '100'})
%% Plot


% 
% plot(x1, accuracyMeasures1, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Quality Factor");
title("Classification accuracy with variated quality factor")
% xlim([0 34])

% hold on
% plot(x2, accuracyMeasures2, "LineWidth", 1.5)
% hold off

%boxplot(accuracyMeasures, "Orientation", "horizontal")