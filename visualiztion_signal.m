
%%
data = load('data/BCICIV_calib_ds1d.mat');
sample_rate = data.nfo.fs
eeg_signal = data.cnt';

events_onsets = data.mrk.pos;
events_code =  data.mrk.y;

start_sample = events_onsets(1);
F3 = eeg_signal(4, (start_sample):(start_sample + 125));
Cz = eeg_signal(6, (start_sample):(start_sample + 125));
F4 = eeg_signal(8, (start_sample):(start_sample + 125));

figure(1);
subplot(3,1, 1); plot(F3); title('F3 | 4 Channel');
subplot(3,1, 2); plot(Cz); title('Cz | 6 Channel');
subplot(3,1, 3); plot(F4); title('F4 | 8 Channel');

figure(2);
plot(F3); title('Left Movement');hold on;
plot(F4, '-r'); hold off;
legend('F3', 'F4')

figure(3);
start_sample = events_onsets(4);
F3 = eeg_signal(4, (start_sample):(start_sample + 125));
Cz = eeg_signal(6, (start_sample):(start_sample + 125));
F4 = eeg_signal(8, (start_sample):(start_sample + 125));


plot(F3); title('Right Movement');hold on;
plot(F4, '-r'); hold off;
legend('F3', 'F4')