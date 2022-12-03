function [] = Zad3(n, x_vec)
sz = size(x_vec);
y = zeros(sz(2));
    for k = 1:sz(2)
        if(x_vec(k) == n || x_vec(k) == 0)
            y(k) = 1;
        else
            y(k) = 0;
        end
    end
    figure
    subplot(1,1,1)
    stem(x_vec, y, 'bo')
end