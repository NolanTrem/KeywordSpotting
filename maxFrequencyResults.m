%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

MF800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max800_Q3_TrainedNetwork1.mat');
MF800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max800_Q3_TrainedNetwork2.mat');
MF800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max800_Q3_TrainedNetwork3.mat');

MF1200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1200_Q3_TrainedNetwork1.mat');
MF1200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1200_Q3_TrainedNetwork2.mat');
MF1200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1200_Q3_TrainedNetwork3.mat');

MF1600T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1600_Q3_TrainedNetwork1.mat');
MF1600T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1600_Q3_TrainedNetwork2.mat');
MF1600T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max1600_Q3_TrainedNetwork3.mat');

MF2000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2000_Q3_TrainedNetwork1.mat');
MF2000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2000_Q3_TrainedNetwork2.mat');
MF2000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2000_Q3_TrainedNetwork3.mat');

MF2400T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2400_Q3_TrainedNetwork1.mat');
MF2400T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2400_Q3_TrainedNetwork2.mat');
MF2400T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2400_Q3_TrainedNetwork3.mat');

MF2800T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2800_Q3_TrainedNetwork1.mat');
MF2800T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2800_Q3_TrainedNetwork2.mat');
MF2800T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max2800_Q3_TrainedNetwork3.mat');

MF3200T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3200_Q3_TrainedNetwork1.mat');
MF3200T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3200_Q3_TrainedNetwork2.mat');
MF3200T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3200_Q3_TrainedNetwork3.mat');

MF3600T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3600_Q3_TrainedNetwork1.mat');
MF3600T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3600_Q3_TrainedNetwork2.mat');
MF3600T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max3600_Q3_TrainedNetwork3.mat');

MF4000T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork1.mat');
MF4000T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork2.mat');
MF4000T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork3.mat');

MF800 = [MF800T1.accuracy MF800T2.accuracy MF800T3.accuracy]';
MF1200 = [MF1200T1.accuracy MF1200T2.accuracy MF1200T3.accuracy]';
MF1600 = [MF1600T1.accuracy MF1600T2.accuracy MF1600T3.accuracy]';
MF2000 = [MF2000T1.accuracy MF2000T2.accuracy MF2000T3.accuracy]';
MF2400 = [MF2400T1.accuracy MF2400T2.accuracy MF2400T3.accuracy]';
MF2800 = [MF2800T1.accuracy MF2800T2.accuracy MF2800T3.accuracy]';
MF3200 = [MF3200T1.accuracy MF3200T2.accuracy MF3200T3.accuracy]';
MF3600 = [MF3600T1.accuracy MF3600T2.accuracy MF3600T3.accuracy]';
MF4000 = [MF4000T1.accuracy MF4000T2.accuracy MF4000T3.accuracy]';

group = [    ones(size(MF800));
         2 * ones(size(MF1200));
         3 * ones(size(MF1600));
         4 * ones(size(MF2000));
         5 * ones(size(MF2400));
         6 * ones(size(MF2800));
         7 * ones(size(MF3200));
         8 * ones(size(MF3600));
         9 * ones(size(MF4000))];

figure
boxplot([MF800, MF1200, MF1600, MF2000, MF2400, MF2800, MF3200, MF3600, MF4000],group)
set(gca,'XTickLabel',{'800', '1200', '1600', '2000', '2400', '2800', '3200', '3600', '4000'})
%% Plot


% 
% plot(x1, accuracyMeasures1, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Maximum Center Frequency");
title("Classification accuracy with variated maximum center frequency")
% xlim([0 34])

% hold on
% plot(x2, accuracyMeasures2, "LineWidth", 1.5)
% hold off

%boxplot(accuracyMeasures, "Orientation", "horizontal")