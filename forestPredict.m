function [finalPrediction, confidence] = forestPredict(t, x)
% this function will return the majority prediction made by trees in t 
% and the confidence level of the prediction
% 
% t               - a structure array. each structure is a tree with five entries
% finalPrediction - return the final prediction for x made by t.
% confidence      - report the confidence of prediction 


% ------------------------- YOUR CODE HERE -------------------------------------
num_trees = size(t);
for i = 1:num_trees
    t_predict(i) = treePredict(t(i),x);
end
[finalPrediction, confidence] = majorityVote(t_predict);



% ------------------------- YOUR CODE HERE -------------------------------------  
end
