original_file_name = "32kHz_5s_music.mp3";
target_file_name = "4kHz_5s_music.wav";

original_f = 32000; target_f = 4000;

[y_audio, Fs_audio] = audioread(original_file_name);

y_resample = resample(y_audio, target_f, original_f);

%sound(y_audio, Fs_audio);

audiowrite(target_file_name, y_resample, target_f)

[y_audio_8k, Fs_audio_8k] = audioread(target_file_name);
sound(y_audio_8k, Fs_audio_8k);