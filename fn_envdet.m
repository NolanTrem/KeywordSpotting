%% compute envelope: using 20ms windows with 10ms overlap
function x_o = fn_envdet(t,x_i)

% compute absolute value
x_i_abs = abs(x_i);

% compute moving average
t_window = 20e-3; n_frame = round(t_window/mean(diff(t)));
x_i_abs_avg = movmean(x_i_abs,[n_frame-1,0]);

% downsample
t_overlap = 10e-3; n_overlap = round(t_overlap/mean(diff(t)));
x_i_abs_avg_downsampled = x_i_abs_avg(1:n_overlap:end);

% set output
x_o = x_i_abs_avg_downsampled;