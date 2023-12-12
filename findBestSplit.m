function [best_feature, best_val, best_ig] = findBestSplit(X, Y)

%  ------------ Instructions --------------------------------------------------
% 
% Search for the best split within a randomly selected subset of features 
% You can modify your findBestSplit function created for PA3 

%initialization 
best_ig = -inf; %best information gain; 
best_feature = 0; %best feature to split on
best_val = 0; % best value to split on

% ====================== YOUR CODE HERE ========================================
% Loop over each feature in the subset of features
[a,b] =size(X);
s = sqrt(b);
S = ceil(s);
rand_feature = randsample(b,S);
B = zeros(a,S);

for l=1:length(rand_feature)
    B(:,l) = X(:, (rand_feature(l)));
end
for i = 1:size(B,2)
    feature = B(:,i);
    
    values = unique(feature);
    splits = 0.5*(values(1:end-1) + values(2:end));
    
    if numel(values) < 2
        continue
    end
    
    binary_matrix = double(repmat(feature, [1 numel(splits)]) < repmat(splits', [numel(feature) 1 ]));
    
    H = ent(Y);
    
    H_conditional = zeros(1, size(binary_matrix,2));
    for k = 1:size(binary_matrix,2)
        H_conditional(k) = cond_ent(Y, binary_matrix(:,k));
    end
    
    IG = H - H_conditional;
    
[val, ind] = max(IG);
    if val > best_ig
    best_ig = val;
    best_feature = rand_feature(i);
    best_val = splits(ind);
    end
end





% ==============================================================================
end
