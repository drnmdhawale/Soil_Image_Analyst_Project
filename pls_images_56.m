clear all
clc
[y z] = getRGBMatrix('C:\Documents and Settings\Nandkishor Dhawale\Desktop\SOM RGB data\Original Images\image2');

%% load data from excel files
lab_data1 = xlsread('image2_results.xlsx','red');
parameters = xlsread('training_ydata.xlsx','Sheet1');
% parameters1= [parameters(2:6,:); parameters(10:13,:); parameters(17,:)];
% parameters2= [parameters(1,:); parameters(7:9,:); parameters(14:16,:)];
series= lab_data1(1,:);
avg_data=lab_data1(2:end,:);
avg_data=100*cumsum(avg_data, 2);
avg_data=100*avg_data./max(max(avg_data));
% avg_data=[avg_data(2:6,:); avg_data(10:13,:); avg_data(17,:)];
% avg_data=[avg_data(1,:); avg_data(7:9,:); avg_data(14:16,:)];

figure(2)
plot(avg_data, series)
grid on
%legend 27.3 40.8 41.5 31.5 26.6 47.3 47.6
%legend 1.79 1.77 1.98 2.24 4.17 1.57 0.41 1.06 1.05 2.85
title ('Various soil images with high organic matter content')
xlabel ('Percentile cumulative frequencies')
ylabel ('Gray <--- Intensities ----> White')


%% define parameters variables for Laboratory Measurments
% C=parameters1(:,2); 
OM=parameters;

%% PLS  (Partial Least Squared Regression)
tic
avg_data=avg_data(:,185:225);
figure(3)
plot(avg_data')
Elmt=OM; %assign the parameter of interest
n=10; % to change the principle components
for z=2:1:n,

% call the plsregression function to find the regression parameters
[xl,yl,xs,ys,beta,pctvar,mse] = plsregress(avg_data,Elmt,z,'CV',10);
% figure(1); plot(0:z,mse(2,:),'-o');
% grid on
% title('Principal components')
% xlabel('Components')
% ylabel('MSE')

% Fit and plot data based on the parameters found in the PLS function above
ElmtFitted = [ones(size(avg_data,1),1) avg_data]*beta;
% figure(2); plot(Elmt,ElmtFitted,'o');
% title('Data Fitting')
% xlabel('Laboratory Measurments')
% ylabel('Spectral Measurments')
% grid on

R_sqr(z,:)=power(corr(Elmt, ElmtFitted),2);

end

figure(4); 
subplot(2,2,1);plot(1:z,cumsum(100*pctvar(2,:)),'-bo');
title('Percent variance as funtion of PLS components')
xlabel('Number of PLS components');
ylabel('Percent Variance Explained in y');
grid on

subplot(2,2,2);plot(1:z,sqrt(mse(2,1:z)),'-*');
title('RMSE as function of PLS components')
xlabel('Number of PLS components')
ylabel('RMSE')
grid on

subplot(2,2,3);plot(R_sqr,'-*');
title('R-SQR as function of PLS components')
xlabel('Number of PLS components')
ylabel('R-SQR')
grid on

residuals = Elmt-ElmtFitted;
subplot(2,2,4);stem(residuals);
title('Residuals')
xlabel('Observation');
ylabel('Residual');
grid on

toc


