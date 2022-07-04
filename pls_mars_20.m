clear all
clc
%% load data from excel files
lab_data1 = xlsread('histogram series.xlsx', 'Sheet3');
avg_data=lab_data1(2:end,3:end);
parameters=lab_data1(2:end,1:2);
series= lab_data1(1,3:end);

% %% Apply median filter
% [r,c] =size(point_data);
% for i=2:c,
%     y(:,i) = medfilt1(point_data(:,i),3);
% end
% y(:,1)=point_data(:,1);
% % y=point_data;
% 
% %% Remove spectral tails
% filt_data=y(3:end-3,:);
% 
% %% Calculate error
% wavelengths=filt_data(:,1); j=1;
% for i=2:3:c,
%     avg_data(:,j)=nanmean(filt_data(:,i:i+2),2);
%     var_data(:,j)=nanvar(filt_data(:,i:i+2)');
%     j=j+1;
% end

%% define parameters variables for Laboratory Measurments
OM=parameters(:,1); C=parameters(:,2); 

%% PLS  (Partial Least Squared Regression)
tic
Elmt=C; %assign the parameter of interest
n=3; % to change the principle components
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

figure(3); 
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

figure(2)
plot(series, avg_data)
grid on
