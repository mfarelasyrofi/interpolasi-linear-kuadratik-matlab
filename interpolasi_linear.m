% Data yang diberikan
t = [0, 20, 40];
h = [100, 200, 150];

% Interpolasi Linear
x = 25; % Nilai t yang ingin diinterpolasi
if t(1) < x && x < t(3)
    y = interp1(t, h, x, 'linear'); % Melakukan interpolasi linear
    disp(['Estimasi ketinggian pada t = ', num2str(x), ' detik (interpolasi linear) adalah h = ', num2str(y), ' meter']);
    
    % Plot titik-titik data
    plot(t, h, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
    hold on;
    
    % Plot interpolasi linear
    x_interp = linspace(min(t), max(t), 100);
    y_interp = interp1(t, h, x_interp, 'linear');
    plot(x_interp, y_interp, 'b', 'LineWidth', 2);
    
    % Titik yang diinterpolasi
    plot(x, y, 'gx', 'MarkerSize', 10, 'LineWidth', 2);
    
    xlabel('Waktu (detik)');
    ylabel('Ketinggian (meter)');
    title('Interpolasi Linear');
    legend('Data', 'Interpolasi Linear', 'Estimasi pada t = 25 detik');
    grid on;
    hold off;
else
    disp('Input t berada di luar rentang yang tepat');
end
