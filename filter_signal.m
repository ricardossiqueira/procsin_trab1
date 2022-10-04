original_file_name = "32kHz_5s_music_awgn@10db.wav";
target_file_name = "32kHz_5s_music_awgn@10db_filtered_M@2.wav";

[y, Fs] = audioread(original_file_name);

M = 2;
y = 1/M*movmean(y, M);

audiowrite(target_file_name, y, 32000)

sound(y, Fs);