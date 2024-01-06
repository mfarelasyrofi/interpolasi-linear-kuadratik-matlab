% Data yang diberikan
t = [0, 20, 40];
h = [100, 200, 150];

% Interpolasi Kuadratik
x = 25; % Nilai t yang ingin diinterpolasi
if t(1) < x && x < t(3)
    A = [t(1)^2 t(1) 1; t(2)^2 t(2) 1; t(3)^2 t(3) 1];
    B = h.';
    coefficients = A \ B; % Mencari koefisien interpolasi kuadratik
    
    y = coefficients(1) * x^2 + coefficients(2) * x + coefficients(3); % Menghitung estimasi h pada t = 25 detik
    disp(['Estimasi ketinggian pada t = ', num2str(x), ' detik (interpolasi kuadratik) adalah h = ', num2str(y), ' meter']);
    
    % Plot titik-titik data
    plot(t, h, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
    hold on;
    
    % Plot interpolasi kuadratik
    x_interp = linspace(min(t), max(t), 100);
    y_interp = coefficients(1) * x_interp.^2 + coefficients(2) * x_interp + coefficients(3);
    plot(x_interp, y_interp, 'b', 'LineWidth', 2);
    
    % Titik yang diinterpolasi
    plot(x, y, 'gx', 'MarkerSize', 10, 'LineWidth', 2);
    
    xlabel('Waktu (detik)');
    ylabel('Ketinggian (meter)');
    title('Interpolasi Kuadratik');
    legend('Data', 'Interpolasi Kuadratik', 'Estimasi pada t = 25 detik');
    grid on;
    hold off;
else
    disp('Input t berada di luar rentang yang tepat');
end
