
%%
n = 0:319;
x = cos(pi/4*n)+randn(size(n));
figure(1);
plot(x)
pxx = pwelch(x);
pwelch(x)