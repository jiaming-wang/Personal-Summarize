%Mutual Information 
%互信息计算函数
function T = T1(frame)
frame = double(frame);
n = sum(sum(frame));
n_y = sum(frame);
n_x = sum(frame,2);
H_x = log2(n);
H_y = log2(n);
H_xy = log2(n);
for i=1:size(n_x)
    H_x = H_x - 1/n*log2(n_x(i));
end
for i=1:size(n_y)
    H_y = H_y - 1/n*log2(n_y(i));
end
[a,b] = size(frame);
for i=1:a
    for j=1:b
        H_xy = H_xy - 1/n*log2(frame(i,j));
    end
end
T = H_x + H_y - H_xy