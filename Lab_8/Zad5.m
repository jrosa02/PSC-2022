function [] = Zad5(t_vec)
y = sin(2*pi*t_vec);
    figure
    subplot(1,1,1)
    stem(t_vec, y, 'bo')
end