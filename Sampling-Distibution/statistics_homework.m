
population = xlsread('R2.xlsx','Sheet1', 'A17:KO17');

for i = 1:30
sample_means = zeros(50000,1); % zero array to store the sample means
for j = 1:50000
sample = randsample(population,i,true);% construct a random sample the size of i, replacement is true

sample_mean = mean(sample); % Calculate the mean of the sample
sample_means(j) = sample_mean; % Store the sample mean
end
figure;
hist_mean=  mean(sample_means);
hist_var=  var(sample_means);
disp(['Sample size: ' num2str(i) ' Mean: ' num2str(hist_mean)]);
disp("Sample size: "+ num2str(i)+" Variance: "+num2str(hist_var));
histogram(sample_means); % Plot a histogram of the sample means
xlabel('Sample Mean');
ylabel('Frequency');
title(['Sample Size = ' num2str(i)]);
end

%population mean and variance
popultion_mean=mean(population);
popultion_var=var(population);
disp("Population Mean: "+num2str(popultion_mean));
disp("Population Variance: "+num2str(popultion_var));
