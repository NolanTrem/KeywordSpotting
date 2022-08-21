%% Preload the files to verify
test1 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network1.mat', 'accuracy');
test2 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network2.mat', 'accuracy');
test3 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network3.mat', 'accuracy');
test4 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network4.mat', 'accuracy');
test5 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network5.mat', 'accuracy');
test6 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network6.mat', 'accuracy');
test7 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network7.mat', 'accuracy');
test8 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network8.mat', 'accuracy');
test9 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network9.mat', 'accuracy');
test10 = load('/Users/nolantremelling/matlab/AnalogMachineLearningResearch/AnalogMachineLearning/N32_Min100_Max4000_Q3_Network10.mat', 'accuracy');

%% Store accuracy
accuracyMeasures = [test1.accuracy; test2.accuracy;
    test3.accuracy; test4.accuracy; test5.accuracy; test6.accuracy;
    test7.accuracy; test8.accuracy; test9.accuracy; test10.accuracy];

boxplot(accuracyMeasures, "Orientation", "horizontal")