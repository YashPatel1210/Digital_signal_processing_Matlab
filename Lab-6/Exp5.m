N  = input('Length of window: ');
n = 0:N-1;
w0 = window(@rectwin,N);
w1 = window(@blackman,N);
w2 = window(@bartlett,N);
w3 = window(@hann,N);
w4 = window(@hamming,N);
plot(n,w0, n,w1, n,w2, n,w3, n,w4);
xlabel('n');
ylabel('W(n)');
title('Window in time domain');
legend('Rectangular Window', 'Blackman', 'Bartlett', 'Hanning', 'Hamming');
w = -pi:pi/255:pi;
H1 = freqz(w0,1,w);
H2 = freqz(w1,1,w);
H3 = freqz(w2,1,w);
H4 = freqz(w3,1,w);
H5 = freqz(w4,1,w);
figure(2);
plot(w,abs(H1), w,abs(H2), w,abs(H3), w,abs(H4), w,abs(H5));
xlabel('w');
ylabel('Magnitude');
title('Window in frequency domain(Magnitude Response)');
legend('Rectangular Window', 'Blackman', 'Bartlett', 'Hanning', 'Hamming');
figure(3);
plot(w,angle(H1), w,angle(H2), w,angle(H3), w,angle(H4), w,angle(H5));
xlabel('w');
ylabel('Phase');
title('Window in frequency domain(Phase Response)');
legend('Rectangular Window', 'Blackman', 'Bartlett', 'Hanning', 'Hamming');