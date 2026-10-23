
clc;
clear;
close all;

% 8(iii) Analysis of Region of Convergence (ROC)
% X(s) = 1/((s+2)(s+4))

figure('Color','w');

% Pole locations
p = [-2 -4];

plot(real(p), imag(p), 'rx', ...
    'MarkerSize', 12, 'LineWidth', 2);

hold on;

% Mark pole locations
xline(-2, '--b', 'Pole at -2');
xline(-4, '--g', 'Pole at -4');

% Graph settings
grid on;
xlim([-6 1]);
ylim([-2 2]);

xlabel('Real(s)');
ylabel('Imag(s)');

title('Poles and Candidate Regions of Convergence');

legend('Poles', 'Location', 'best');

hold off;

% Display ROC information
fprintf('Poles are at s = -2 and s = -4.\n');
fprintf('For a right-sided signal, ROC: Re(s) > -2.\n');
fprintf('For a left-sided signal, ROC: Re(s) < -4.\n');
fprintf('For a two-sided signal, ROC: -4 < Re(s) < -2.\n');
