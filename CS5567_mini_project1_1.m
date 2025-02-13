% Load cancer dataset
%
% Type help cancer_dataset for more info.
[X, d] = cancer_dataset;
% Split data into training and testing sets
n = length(X(1,:)); % number of examples in the dataset
train_idx = datasample(1:n, floor(n/2), 'Replace', false); 
% randomly select floor(n/2) examples for training without replacement
test_idx = setdiff(1:n, train_idx); % use the remaining examples for testing
X_train = X(:,train_idx); % input features for training examples
d_train = d(2,train_idx)'; % target variable for training examples
X_test = X(:,test_idx); % input features for testing examples
d_test = d(2,test_idx)'; % target variable for testing examples
% Training/MSE linear model creation
%
% "'" is transposing the variable
% and "\" is performing matrix left division.
w = X_train'\d_train; % compute weights that minimize mean squared error
% Activation/testing
y_train = X_train'*w; % compute model outputs for training examples
y_test = X_test'*w; % compute model outputs for testing examples
% Compute 2D ROC curve for train data
[X2D_train,Y2D_train,T2D_train,AUC2D_train] = perfcurve(d_train,y_train,1); % compute FPR, TPR, threshold, and AUC for the 2D ROC curve
% Compute 2D ROC curve for test data
[X2D_test,Y2D_test,T2D_test,AUC2D_test] = perfcurve(d_test,y_test,1);
% compute FPR, TPR, threshold, and AUC for the 2D ROC curve
% Display results
disp(['Training AUC: ' num2str(AUC2D_train)]);
disp(['Testing AUC: ' num2str(AUC2D_test)]);
% Create a figure with two subplots
fig = figure;
subplot(1,2,1)
% Plot Training 2D ROC curve
plot(X2D_train,Y2D_train)
xlabel('False positive rate')
ylabel('True positive rate')
title(['Training Data 2D ROC, AUC = ' num2str(AUC2D_train)])
subplot(1,2,2)
% Plot 2D ROC curve
plot(X2D_test,Y2D_test)
xlabel('False positive rate')
ylabel('True positive rate')
title(['Testing Data 2D ROC, AUC = ' num2str(AUC2D_test)])
