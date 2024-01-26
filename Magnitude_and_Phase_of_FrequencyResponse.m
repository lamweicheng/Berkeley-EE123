% Define the angular frequency range (0 to 2*pi)
omega = linspace(0, 2*pi, 1000);

% Calculate the frequency response
H = (1/6) * (1 - exp(-1j*6*omega)) ./ (1 - exp(-1j*omega));

% Calculate magnitude and phase
magnitude = abs(H);
phase = angle(H);

% Plot the magnitude response
figure;
subplot(2, 1, 1);
plot(omega, magnitude);
title('Magnitude Response');
xlabel('Angular Frequency (\omega)');
ylabel('|H(e^{j\omega})|');

% Plot the phase response
subplot(2, 1, 2);
plot(omega, phase);
title('Phase Response');
xlabel('Angular Frequency (\omega)');
ylabel('\angle H(e^{j\omega})');

% Adjust the plot layout
sgtitle('Frequency Response of Moving Average Filter');

% Display the zero-crossings
zero_crossings = find(diff(sign(magnitude)) ~= 0);
disp('Zero-crossings at angular frequencies:');
disp(omega(zero_crossings));
