%% samanSadeghyan
% this is first network

hiddenLayerSizes = [100,50];

%% Set up Division of Data for Training, Validation, Testing

net_4 = feedforwardnet(hiddenLayerSizes,'traincgf');



  net_4.divideFcn = 'divideblock';
  [trainInd,valInd,testInd] = divideblock(7000,0.7,0.15,0.15);



%% Train the Network
[net_4,tr] = train(net_4,my_inputs,target);

%% Test the Network
my_outputs = net_4(test_in);
my_performance = perform(net_4,my_outputs,test_tar);
errors = gsubtract(my_outputs,test_tar);

 
%% View the Network
% view(net_4)

%% Plots
% Uncomment these lines to enable various plots.

% plotconfusion(test_tar,my_outputs)
% plottrainstate(tr)
% figure, plotfit(target,my_outputs)
% plotregression(target,my_outputs,'Regression')
% figure, ploterrhist(errors)