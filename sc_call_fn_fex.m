%% define time and generate input signal
t_start = 0; t_stop = 1; t_step = 10e-6;
t = t_start:t_step:t_stop-t_step;
f_i = 4e3; a_i = [zeros(1,length(t)/2) , ones(1,length(t)/2)];  % sinusoid with linear envelope
x_i = a_i.*sin(2*pi*f_i*t);
clear f_i a_i;


%% feed input signal into feature extractor
x_o = fn_fex(t,x_i);


%% plot input to and output of feature extractor
figure;

% input
subplot(2,1,1);
plot(t/1e-3,x_i);
title('input signal');
xlabel('time [ms]');
ylabel('amplitude [#]');

% output
subplot(2,1,2);
imagesc(x_o);
title('output spectrogram');
xlabel('sample index (10ms per sample) [#]');
ylabel('feature index (in reverse order) [#]');




