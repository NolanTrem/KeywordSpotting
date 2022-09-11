%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

N2T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N2_Min100_Max4000_Q3_TrainedNetwork1.mat');
N2T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N2_Min100_Max4000_Q3_TrainedNetwork2.mat');
N2T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N2_Min100_Max4000_Q3_TrainedNetwork3.mat');

N4T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N4_Min100_Max4000_Q3_TrainedNetwork1.mat');
N4T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N4_Min100_Max4000_Q3_TrainedNetwork2.mat');
N4T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N4_Min100_Max4000_Q3_TrainedNetwork3.mat');

N6T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N6_Min100_Max4000_Q3_TrainedNetwork1.mat');
N6T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N6_Min100_Max4000_Q3_TrainedNetwork2.mat');
N6T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N6_Min100_Max4000_Q3_TrainedNetwork3.mat');

N8T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N8_Min100_Max4000_Q3_TrainedNetwork1.mat');
N8T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N8_Min100_Max4000_Q3_TrainedNetwork2.mat');
N8T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N8_Min100_Max4000_Q3_TrainedNetwork3.mat');

N10T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N10_Min100_Max4000_Q3_TrainedNetwork1.mat');
N10T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N10_Min100_Max4000_Q3_TrainedNetwork2.mat');
N10T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N10_Min100_Max4000_Q3_TrainedNetwork3.mat');

N12T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N12_Min100_Max4000_Q3_TrainedNetwork1.mat');
N12T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N12_Min100_Max4000_Q3_TrainedNetwork2.mat');
N12T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N12_Min100_Max4000_Q3_TrainedNetwork3.mat');

% N14T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N14T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N14T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N14_Min100_Max4000_Q3_TrainedNetwork3.mat');

% N16T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N16T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N16T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N16_Min100_Max4000_Q3_TrainedNetwork3.mat');
% 
% N18T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N18T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N18T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N18_Min100_Max4000_Q3_TrainedNetwork3.mat');
% 
% N20T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N20_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N20T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N20_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N20T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N20_Min100_Max4000_Q3_TrainedNetwork3.mat');
% 
% N22T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N22_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N22T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N22_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N22T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N22_Min100_Max4000_Q3_TrainedNetwork3.mat');
% 
% N24T1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N24_Min100_Max4000_Q3_TrainedNetwork1.mat');
% N24T2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N24_Min100_Max4000_Q3_TrainedNetwork2.mat');
% N24T3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/TrainedNetworks/N24_Min100_Max4000_Q3_TrainedNetwork3.mat');

N2 = [N2T1.accuracy N2T2.accuracy N2T3.accuracy]';
N4 = [N4T1.accuracy N4T2.accuracy N4T3.accuracy]';
N6 = [N6T1.accuracy N6T2.accuracy N6T3.accuracy]';
N8 = [N8T1.accuracy N8T2.accuracy N8T3.accuracy]';
N10 = [N10T1.accuracy N10T2.accuracy N10T3.accuracy]';
N12 = [N12T1.accuracy N12T2.accuracy N12T3.accuracy]';


group = [    ones(size(N2));
         2 * ones(size(N4));
         3 * ones(size(N6));
         4 * ones(size(N8))
         5 * ones(size(N10))
         6 * ones(size(N12))];
figure
boxplot([N2; N4; N6; N8; N10; N12],group)
set(gca,'XTickLabel',{'2', '4', '6', '8', '10', '12'})
%% Plot


% 
% plot(x1, accuracyMeasures1, "LineWidth", 1.5)
% ylabel("Accuracy");
% xlabel("Number of Filters");
% title("Classification accuracy with variated number of filters")
% xlim([0 34])

% hold on
% plot(x2, accuracyMeasures2, "LineWidth", 1.5)
% hold off

%boxplot(accuracyMeasures, "Orientation", "horizontal")