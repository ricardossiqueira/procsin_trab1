awgn = 10; m = 5;

[y_orig, Fs_orig] = audioread("32kHz_5s_audio_awgn@"+awgn+"db.wav");
y_orig = y_orig(:,1);

[y, Fs] = audioread("32kHz_5s_audio_awgn@"+awgn+"db_filtered_M@"+m+".wav");
y = y(:,1);
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;

plot(t, [y_orig, y]);
legend('Signal with AWGN', 'Filtered Signal')
title("32kHz filtered audio with AWGN @ "+awgn+"dB and M = " + m);
xlabel('Time');
ylabel('Audio Signal');
