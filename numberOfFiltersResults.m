%% Define trained networks
% This script interprets the trained networks and their results with 
% the number of filters as the varied parameter.

n2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N2_Min100_Max4000_Q3_TrainedNetwork1.mat');
n4 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N4_Min100_Max4000_Q3_TrainedNetwork1.mat');
n6 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N6_Min100_Max4000_Q3_TrainedNetwork1.mat');
n8 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N8_Min100_Max4000_Q3_TrainedNetwork1.mat');
n10 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N10_Min100_Max4000_Q3_TrainedNetwork1.mat');
n12 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N12_Min100_Max4000_Q3_TrainedNetwork1.mat');
n14 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N14_Min100_Max4000_Q3_TrainedNetwork1.mat');
n16 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N16_Min100_Max4000_Q3_TrainedNetwork1.mat');
n18 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N18_Min100_Max4000_Q3_TrainedNetwork1.mat');
n20 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N20_Min100_Max4000_Q3_TrainedNetwork1.mat');
n22 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N22_Min100_Max4000_Q3_TrainedNetwork1.mat');
n24 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N24_Min100_Max4000_Q3_TrainedNetwork1.mat');
n26 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N26_Min100_Max4000_Q3_TrainedNetwork1.mat');
n28 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N28_Min100_Max4000_Q3_TrainedNetwork1.mat');
n30 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N30_Min100_Max4000_Q3_TrainedNetwork1.mat');
n32 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/ReducedFeatureExtractionDatasets/ReducedTrainedNetworks/N32_Min100_Max4000_Q3_TrainedNetwork1.mat');

x1 = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32];
accuracyMeasures1 = [n2.accuracy; n4.accuracy; n6.accuracy; n8.accuracy;
    n10.accuracy; n12.accuracy; n14.accuracy; n16.accuracy; n18.accuracy;
    n20.accuracy; n22.accuracy; n24.accuracy; n26.accuracy; n28.accuracy;
    n30.accuracy; n32.accuracy];


%% Plot

plot(x1, accuracyMeasures1, "LineWidth", 1.5)
ylabel("Accuracy");
xlabel("Number of Filters");
title("Classification accuracy with variated number of filters")
xlim([0 34])

% hold on
% plot(x2, accuracyMeasures2, "LineWidth", 1.5)
% hold off

%boxplot(accuracyMeasures, "Orientation", "horizontal")