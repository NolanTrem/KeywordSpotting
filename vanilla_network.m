

%% define architecture of neural network

% determine weights of classes and number of classes
%class_weights = 1./countcats(y_train)'; class_weights = class_weights/mean(class_weights);
%n_classes = length(categories(y_train));
class_weights=155952;

% determine dimension of input features
%[n_rows,n_cols,~,~] = size(x_train);


% set hyperparameters
n_filters = 45;
stride = 1;

% define architecture
layers = [
    imageInputLayer([228 228],'Name','input')

    convolution2dLayer(3,n_filters,'Padding',[1 1],'Name','convInp')
    batchNormalizationLayer('Name','BNInp')
    reluLayer('Name','reluInp')

    convolution2dLayer(3,n_filters,'Padding',[1 1],'DilationFactor',[1 1],'Name',['res1','conv0'])
    reluLayer('Name',['res1','relu1'])
    batchNormalizationLayer('Name',['res1','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[1 1],'DilationFactor',[1 1],'Name',['res1','conv1'])
    reluLayer('Name',['res1','relu2'])
    batchNormalizationLayer('Name',['res1','BN2'])
    additionLayer(2,'Name','add1')

    convolution2dLayer(3,n_filters,'Padding',[1 1],'DilationFactor',[1 1],'Name',['res2','conv2'])
    reluLayer('Name',['res2','relu1'])
    batchNormalizationLayer('Name',['res2','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[2 2],'DilationFactor',[2 2],'Name',['res2','conv3'])
    reluLayer('Name',['res2','relu2'])
    batchNormalizationLayer('Name',['res2','BN2'])
    additionLayer(2,'Name','add2')

    convolution2dLayer(3,n_filters,'Padding',[2 2],'DilationFactor',[2 2],'Name',['res3','conv4'])
    reluLayer('Name',['res3','relu1'])
    batchNormalizationLayer('Name',['res3','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[2 2],'DilationFactor',[2 2],'Name',['res3','conv5'])
    reluLayer('Name',['res3','relu2'])
    batchNormalizationLayer('Name',['res3','BN2'])
    additionLayer(2,'Name','add3')
    
    convolution2dLayer(3,n_filters,'Padding',[4 4],'DilationFactor',[4 4],'Name',['res4','conv6'])
    reluLayer('Name',['res4','relu1'])
    batchNormalizationLayer('Name',['res4','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[4 4],'DilationFactor',[4 4],'Name',['res4','conv7'])
    reluLayer('Name',['res4','relu2'])
    batchNormalizationLayer('Name',['res4','BN2'])
    additionLayer(2,'Name','add4')

    convolution2dLayer(3,n_filters,'Padding',[4 4],'DilationFactor',[4 4],'Name',['res5','conv8'])
    reluLayer('Name',['res5','relu1'])
    batchNormalizationLayer('Name',['res5','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[8 8],'DilationFactor',[8 8],'Name',['res5','conv9'])
    reluLayer('Name',['res5','relu2'])
    batchNormalizationLayer('Name',['res5','BN2'])
    additionLayer(2,'Name','add5')

    convolution2dLayer(3,n_filters,'Padding',[8 8],'DilationFactor',[8 8],'Name',['res6','conv10'])
    reluLayer('Name',['res6','relu1'])
    batchNormalizationLayer('Name',['res6','BN1'])
    convolution2dLayer(3,n_filters,'Padding',[8 8],'DilationFactor',[8 8],'Name',['res6','conv11'])
    reluLayer('Name',['res6','relu2'])
    batchNormalizationLayer('Name',['res6','BN2'])
    additionLayer(2,'Name','add6')

    % extra non-res conv layer
    convolution2dLayer(3,n_filters,'Padding',[16 16],'DilationFactor',[16 16],'Name','conv12')
    batchNormalizationLayer('Name','BNLast') 
    reluLayer('Name','reluLast')
    
    globalAveragePooling2dLayer('Name','globalAvgPool')
    fullyConnectedLayer(4,'Name','fcFinal')
    softmaxLayer('Name','softmax')
    classificationLayer
    ];

deepNetworkDesigner(layers)% transfers the network into the deep network designer

lgraph = layerGraph(layers);
lgraph = connectLayers(lgraph,'reluInp','add1/in2');
lgraph = connectLayers(lgraph,'add1','add2/in2');
lgraph = connectLayers(lgraph,'add2','add3/in2');
lgraph = connectLayers(lgraph,'add3','add4/in2');
lgraph = connectLayers(lgraph,'add4','add5/in2');
lgraph = connectLayers(lgraph,'add5','add6/in2');



%% set training options

miniBatchSize = 64;
validationFrequency = floor(numel(y_train)/miniBatchSize);
options = trainingOptions('sgdm', ...
    'Momentum',0.9,...
    'InitialLearnRate',0.05, ...
    'MaxEpochs',20, ...
    'MiniBatchSize',miniBatchSize, ...
    'L2Regularization',1e-3, ...
    'Shuffle','every-epoch', ...
    'Plots','training-progress', ...
    'Verbose',false, ...
    'ValidationData',{x_valid,y_valid}, ...
    'ValidationFrequency',validationFrequency, ...
    'LearnRateSchedule','piecewise', ...
    'LearnRateDropFactor',0.5, ...
    'LearnRateDropPeriod',5,...
    'ExecutionEnvironment','parallel');

