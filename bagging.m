function bag = bagging(D, k)

% This function creates new datasets (D1, D2, ..., Dk) from the input dataset D 
% by randomly selecting m samples with replacement. All new datasets should have
% the same dimension as the input dataset D.
% 
% D - input dataset matrix 
% k - number of new dataset to create
% bag  - return a kx1 cell array. each cell contains a new dataset matrix (Di)

% --------------- YOUR CODE HERE -----------------------------------------------
% you may find funtion randsample useful.  
% To use randsample in Octave, you will need to load the statistics package by
% including a line "pkg load statistics"
n = size(D,1);
bag = cell(k,1);
for i = 1:k
    a = randsample(n,n,true);
    bag{i} = D(a,:);
end



%-------------------------------------------------------------------------
end