clc;
clear;
close all;

% Hebbien Learning Rule
% AND problem.
xTrain = [
   1 1 1;
   1 1 -1;
   1 -1 -1;
   1 -1 -1;
];
yTrain = [
  1
  -1
  -1
  -1
];

w = zeros(size(xTrain, 2), 1);

dataSize = size(xTrain, 1);

fprintf('Data information\n');
fprintf('dataSize =%d\n', dataSize);

% Learning Rule.
for idx = 1:dataSize
    deltaW = xTrain(idx,:)' * yTrain(idx);
    w = w + deltaW;
end

% Show result.
for idx = 1:size(xTrain, 1)
    val = xTrain(idx, :) * w;
    
    % Threshold Function
    if(val >= 0)
        output = 1;
    else
        output = -1;
    end
    fprintf('input x1:%d, x2:%d, y=%d\n', xTrain(idx, 2), xTrain(idx, 3), output);
end
