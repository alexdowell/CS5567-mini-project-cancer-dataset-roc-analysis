% Load cancer dataset
%
% Type help cancer_dataset for more info.
[X, d] = cancer_dataset;
% Training/MSE linear model creation all 9 features included
%
% "'" is transposing the variable
% and "\" is performing matrix left division.
% currently all 9 features are used in this code
w = X'\d(2,:)';
% Activation/testing
y = X'*w;
% Compute 2D ROC curve
%
% X2D,Y2D,T2D,AUC2D are the output arguments that store the values of the
% FPR, the TPR, the threshold for the 2D ROC curve, and the AUC respectively.
[X2D,Y2D,T2D,AUC2D] = perfcurve(d(2,:),y',1);
% Plot 2D ROC curve
figure(1)
plot(X2D,Y2D)
xlabel('False positive rate')
ylabel('True positive rate')
title(['2D ROC, AUC = ' num2str(AUC2D), ' All Features'])
number_of_features = length(X(:,9));
%comparing the auc when only one feature is used for all 9 features
figure(2)
for i = 1:number_of_features
 % % generating an upper and lower bound if a random subset was desired
 % disp("the features include for this subet are: ")
 % lower_bound = round(8*rand(1))
 % disp("though")
 % upper_bound = round(9*rand(1))
 % Training/MSE linear model creation for each feature 1 through 9
 %
 % "'" is transposing the variable
 % and "\" is performing matrix left division.
 % currently all 9 features are used in this code
 w = X(i,:)'\d(2,:)';
 % Activation/testing
 y = X(i,:)'*w;
 % Compute 2D ROC curve
 %
 % X2D,Y2D,T2D,AUC2D are the output arguments that store the values of the
 % FPR, the TPR, the threshold for the 2D ROC curve, and the AUC respectively.
 [X2D,Y2D,T2D,AUC2D] = perfcurve(d(2,:),y',1);
 % Plot 2D ROC curve
 %figure(i+1)
 % Set up subplot
 subplot(3, 3, i);
 plot(X2D,Y2D)
 xlabel('False positive rate')
 ylabel('True positive rate')
 title(['2D ROC, AUC = ' num2str(AUC2D), ' Feature Index = ', num2str(i)])
end