% please develop this script, which should read in an audio clip from the
% google dataset i shared with both of you, preprocess the audio clip by
% calling "fn_preprocess_audio_clip", and finally plot the preprocessed
% audio clip

x = "/Users/nolantremelling/matlab/Analog Machine Learning Research/Practice Spectrogram/speech_commands_v0.02/sheila/0ea0e2f4_nohash_0.wav";


x_preproc = fn_preprocess_audio_clip(audioread(x));
plot(x_preproc);
title("Preprocessed Audio Clip");
xlabel("Time");
ylabel("Amplitude");