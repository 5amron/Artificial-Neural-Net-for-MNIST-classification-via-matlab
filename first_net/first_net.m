%% samanSadeghyan
% this is first network

hiddenLayerSizes = 400;

%% Set up Division of Data for Training, Validation, Testing

net_1 = feedforwardnet(hiddenLayerSizes,'traincgf');

%  net_1.divideParam.trainRatio = 70/100;
%  net_1.divideParam.valRatio = 3/100;
%  net_1.divideParam.testRatio = 0/100;
%[trainInd,valInd,testInd] = divideint(10000,0.7,0.1,0.2);

% trainInd = 1:7000;
% valInd = 7001:7003;
% testInd = 7004:10000;
% [trainP,valP,testP] = divideind(my_inputs,trainInd,valInd,testInd);
% [trainT,valT,testT] = divideind(target,trainInd,valInd,testInd);


% net_1.divideFcn = 'dividetrain' ;
% [trainInd,valInd,testInd] = dividetrain(7000);

  net_1.divideFcn = 'divideblock';
  [trainInd,valInd,testInd] = divideblock(7000,0.7,0.15,0.15);






%% Train the Network
[net_1,tr] = train(net_1,my_inputs,target);

%% Test the Network
my_outputs = net_1(test_in);
my_performance = perform(net_1,my_outputs,test_tar);
errors = gsubtract(my_outputs,test_tar);

 
%% View the Network
% view(net_1)

%% Plots
% Uncomment these lines to enable various plots.

% plotconfusion(test_tar,my_outputs)
% plottrainstate(tr)
% figure, plotfit(target,my_outputs)
% plotregression(target,my_outputs,'Regression')
% figure, ploterrhist(errors)