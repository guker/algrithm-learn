%% read data

f = fopen('iris.data','r');
data = textscan(f,'%f %f %f %f %s','Delimiter',',');
fclose(f);

X = cell2mat(data(1:4));
Y = zeros(length(data{5}),3);
Y(:,1) = strcmp(data{5},'Iris-setosa');
Y(:,2) = strcmp(data{5},'Iris-versicolor');
Y(:,3) = strcmp(data{5},'Iris-virginica');


%% split data
m = length(Y);
rnd_idx = randperm(m);
train_number = 100;
trainX = X(rnd_idx(1:train_number),:);
trainY = Y(rnd_idx(1:train_number),:);
testX  = X(rnd_idx(train_number+1:m),:);
testY = Y(rnd_idx(train_number+1:m),:);


%% train ANN
%   4 - 4 - 3
hidden_layer_number = 4;
Theta1 = zeros(5, hidden_layer_number);
Theta2 = zeros(hidden_layer_number+1,3);

init_theta = [Theta1(:); Theta2(:)];

options = optimset('Display','iter','MaxIter',300);
[theta, minJ] = fminunc(@(t)(annCostFun(trainX,trainY,t)),init_theta,options);
Theta1 = reshape(theta(1:5*hidden_layer_number),5,hidden_layer_number);
Theta2 = reshape(theta(5*hidden_layer_number+1:length(theta)),hidden_layer_number+1,3);

pred = annPredict(testX,Theta1,Theta2);
ty = zeros(length(pred),1);
ty(testY(:,1)==1) = 1;
ty(testY(:,2)==1) = 2;
ty(testY(:,3)==1) = 3;
mean(ty==pred)