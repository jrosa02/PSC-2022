function [] = Zad7(t_vec)
y = gaussmf(t_vec,[1, 5]);
    figure
    subplot(1,1,1)
    stem(t_vec, y, 'bo')
end