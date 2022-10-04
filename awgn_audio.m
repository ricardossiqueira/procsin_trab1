original_file_name = "32kHz_5s_audio.mp3";
target_file_name = "32kHz_5s_audio_awgn@10db.wav";

original_f = 32000; target_f = original_f;

[y, Fs] = audioread(original_file_name);

SNR = 10;
y = y(:,1);
y = awgn(y,SNR, 'measured');

audiowrite(target_file_name, y, target_f)

sound(y, Fs);