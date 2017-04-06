function [] = DispHistogram(values, numBins, gTitle, xAxisLabel, yAxisLabel)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    figure
    histogram(values, numBins);
    title(gTitle);
    xlabel(xAxisLabel);
    ylabel(yAxisLabel);

end

