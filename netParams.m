function [net] = netParams(trainPct, testPct, valPct, nodes)
%UNTITLED2 Summary of this function goes here
%   if the user has not specified a certain number a nodes, sets to 10
    if (nargin<4)
        nodes = 10;
    end
    
    %Calling a new NN with 10 nodes
    net = fitnet(nodes);
    %setting training data percentage to 20%
    net.divideParam.trainRatio = trainPct;
    %Validation percentage is 10%
    net.divideParam.valRatio = valPct;
    %Test percentage is also 70%
    net.divideParam.testRatio = testPct;
end

