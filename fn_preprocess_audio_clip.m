function x_preproc = fn_preprocess_audio_clip(x)

% zero-pad to be 16,000 samples long <-- assumes x is no longer than 16000 samples
n_samples = length(x);
n_zeros_to_pad = 16000-n_samples;
n_zeros_to_pad_left = round(n_zeros_to_pad/2);
n_zeros_to_pad_right = n_zeros_to_pad - n_zeros_to_pad_left;
x_pad = [zeros(n_zeros_to_pad_left,1) ; x ; zeros(n_zeros_to_pad_right,1)];

% normalize to zero-mean and unit-rms
x_pad_norm = x_pad - mean(x_pad); % first, normalize to zero-mean
x_pad_norm = x_pad_norm/rms(x_pad_norm); % then, normalize to unit-rms

% return output
x_preproc = x_pad_norm;


