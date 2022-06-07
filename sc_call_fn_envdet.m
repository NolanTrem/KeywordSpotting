%% define time and generate input signal
t_sStart = 0; t_stop = 0.1; t_step = 10e-6;
t = t_start:t_step:t_stop-t_step;
x_i = [zeros(1,length(t)/2) , ones(1,length(t)/2)];  % step function


%% feed input signal into envelope detector
x_o = fn_envdet(t,x_i);


%% plot input to and output of envelope detector
figure;
plot(t/1e-3,x_i); hold on;
stem(t(1:1000:end)/1e-3,x_o); hold off;
legend({'input','output'},'location','northwest');
title('input/output of envelope detector');
xlabel('time [ms]');
ylabel('amplitude [#]'); ylim([-0.5,1.5]);




