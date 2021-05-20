E = load('18ldjm.txt');
A = zeros(4);
[row_num, col_num] = size(E);
for i = 1: size(E, 1)
    if a ~= 6 && b ~= 6
        A(E(i,1), E(i,2)) = 1;
    else
        pass;
    end
end

D = diag(A*ones(n, 1));
L = D - A;

[Emat,lraw] = eig(L,'vector');
fvec = Emat(:, 2);
    
%Determine sign of each entry
for idx= 1 : n
    if fvec(idx,1) >= 0
        fvec(idx,1) = 1;
    else 
        fvec(idx,1) = -1;
    end
end
set12 = fvec;

s1 = [];
s2 =[];

%Sort values into seperate sets
for idx = 1:n
    if set12(idx) == 1
        s1(length(s1)+1) = idx;
    else
        s2(length(s2)+1) = idx;
    end
end
disp('Set 1 vertices are:');
disp(s1);
disp('Set 2 vertices are:');
disp(s2);
