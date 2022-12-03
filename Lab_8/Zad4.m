function [] = Zad4(m, n, x_vec)
y = x_vec;
sz = size(x_vec);
    for k = 1:sz(2)
        if( m <= x_vec(k) && x_vec(k) <= n)
            y(k) = 1;
        else
            y(k) = 0;
        end
    end
    figure
    subplot(1,1,1)
    stem(x_vec, y, 'bo')
end