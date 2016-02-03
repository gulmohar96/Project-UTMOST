clear all;
clc;
close all;

%fileID = load('SNR.10.trace337.txt');

%% _______BASIC FANBEAM PLOTS________ %%
% SNR = fileID(:,1);
% width = fileID(:,4);
% dm = fileID(:,6);
% time = fileID(:,3); 
% fanbeam = fileID(:,13)
% %subplot(1,2,1)
% plot(fanbeam, time, '.')
% xlabel('Fanbeam')
% ylabel('Time')
% hold on;
% 
% %%Close liner
% fanbeam2 = fanbeam -200 
% plot(fanbeam2,time, '.')
% hold on;

%% ____FANBEAM EQUATION PLOTS_____%%
% fb_prime = fanbeam + (time*(150/3600)) + ((time.^2)*(65/3600^2))
% plot(fb_prime, time, '.')
% xlabel('Fanbeam prime')
% ylabel('Time')


%% _____PLOT REFINER NOW DONE IN AWKS____ %%
% tot_lines = length(SNR)
% ref_time = [];
% ref_fanbeam = [];
% ref_SNR = [];
% 
% for i = 1:tot_lines
%     
%     if SNR(i) not 
%         
%         ref_time = [ref_time, time(i)];
%         ref_fanbeam = [ref_fanbeam, fanbeam(i)];
%         ref_SNR = [ref_SNR, SNR]
%     end
% end
% 
% ref_time 
% ref_fanbeam 
% ref_SNR
% subplot(1,2,2)
% plot(ref_time,ref_fanbeam, '*')
% title('refined plot')

%% JUNK FILE PLOT %%
% jtime = fileID(:,1);
% jfb = fileID(:,2);
% plot(jfb, jtime, '.')
% xlabel('corrected fanbeam position')
% ylabel('Time')

%% TRACE 337 PLOT %%
fileID = load('SNR.10.trace337.txt');
time = fileID(:,1);
fb = fileID(:,2);

subplot(1,2,1)
plot(fb, time, '.')
xlabel('corrected fanbeam position')
ylabel('Time')

subplot(1,2,2)
% t2 = fileID(:,1)
% fb2 = fileID(:,15)
% plot(fb2, t2, '.')
% hold on;

newfile = load('trace337_final.txt');
t3 = newfile(:,1);
fb3 = newfile(:,15);
plot(fb3,t3, '.')

xlabel('Original unstraightened fanbeam position')
ylabel('Time')



