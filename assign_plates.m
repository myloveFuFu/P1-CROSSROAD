function result = assign_plates(x,ox,y,oy)
% initialise a key array
arr = ['A','B','C','D','E','F','G',...
    'H','I','J','K','L','M','N','O',...
    'P','Q','R','S','T','U','V','W',...
    'X','Y','Z','1','2','3','4','5',...
    '6','7','8','9'];
n = x + y + ox + oy;
result = {};
for i = 1:n
    t = randperm(24,n);
    m = rsc_grt_plates(arr,5,n);
    result = [result,sprintf("%s %s",arr(t(i)),m{i})];
end
end


function result = rsc_grt_plates(arr, l, n)
    % assume that n is much smaller than the length of arr
    result = {};
    if l == 1
        arr = arr(randperm(length(arr)));
        for t = 1:n
            result = [result, arr(t)];
        end
    else
        ear_result = rsc_grt_plates(arr, l - 1, n);
        arr = arr(randperm(length(arr)));
        for i = 1:n
            plate = strcat(ear_result{i}, arr(i));
            result = [result, plate];
        end
    end
end



function result = init_rsc_grt_plates(arr,l)
result = {};
if l == 1
    for j = 1:length(arr)
        result = [result,arr(j)];
    end
else
    ear_result = init_rsc_grt_plates(arr,l-1);
    for i = 1:length(ear_result)
        for j = 1:length(arr)
            plate = strcat(arr(j),ear_result(i));
            result = [result,plate];
        end
    end
end
end
% recursive algorithm that takes as input a set of elements and an integer l, 
% and returns all their permutations of length l.