
%%
data = load('data/BCICIV_calib_ds1d.mat');
sample_rate = data.nfo.fs;
eeg_signal = data.cnt';

events_onsets = data.mrk.pos;
events_code =  data.mrk.y;

% Window size recommanded 0.5 - 2.5 second which mean 2 second
window_size = 2 * sample_rate;
trials = zeros(59, window_size, 200);

for sample = 1:length(events_onsets)
    window_start =  events_onsets(sample);
    trials(:, :, sample) = eeg_signal(:, window_start:(window_start + window_size - 1));
end

size(trials)

% 1 class of left; -1 class of right; 
onsets_left = trials(:, :, find(events_code == 1));
onsets_right = trials(:, :, find(events_code == -1));

size(onsets_left)
size(onsets_right)


figure(1);
subplot(2,2,1); plot(trials(4, :, 1));
subplot(2,2,2); plot(trials(6, :, 1));

subplot(2,2,3); plot(trials(4, :, 1));
subplot(2,2,2); plot(trials(6, :, 1));