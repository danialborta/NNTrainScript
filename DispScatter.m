function [] = DispScatter(xOValues, yOValues, xTValues, yTValues, gTitle, xAxisLabel, yAxisLabel)
%DispScatter is a generic function that creates a scatter plot with the given T-Targets and O-Output Values
    figure
    scatter(xOValues,yOValues, 'b', 'filled');
    hold on;
        scatter(xTValues, yTValues, 'r', 'filled');
    hold off
    hold on;
        coef_fit = polyfit(xOValues,yOValues,1);
        %a = coef_fit(1);
        %b = coef_fit(2);
        %polyfit_str = ('y = ' num2str(a) ' *x + ' num2str(b));
        y_fit = polyval(coef_fit,xOValues);
        y = @(x) x+0;
        fplot(y, [-1 1], '-g');
        plot(xOValues, y_fit, '-k');
    hold  off;
    title(gTitle);
    xlabel(xAxisLabel);
    ylabel(yAxisLabel);
    legend('Test', 'Training', 'Desired Fit', 'Line of Best Fit', 'Location', 'northwest');
    saveas(gcf, [fullfile('C:\Users\dania\Documents\MATLAB\Figures', gTitle), '.pdf']);
end

