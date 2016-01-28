function smoothed = sm_filter(x, width)
    smoothed = [];
    k = (width - 1) / 2;
    for i = 1:k
        smoothed = [smoothed, mean(x(i-(i-1):i+k))];
    end
    for i = (k + 1):(size(x, 2) - k)
        smoothed = [smoothed,mean(x(i-k:i+k))];
    end
    for i = (size(x, 2) - k):(size(x, 2)-1)
        smoothed = [smoothed, mean(x(i-k:i))];
    end
end

