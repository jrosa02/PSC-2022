function [] = Zad6(t_vec)
y = sin(2*pi*t_vec + pi/2);
    figure
    subplot(1,1,1)
    stem(t_vec, y, 'bo')
end