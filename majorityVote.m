function [finalVote, confidence] = majorityVote(input)
%
%This function performs majority voting for an input, i.e. counts the elements
% of a row vector and outputs the value with the most occurrences. 
% 
% input       - a row vector
% finalVote   - the value with the most occurrences in the input vector
% confidence  - report the confidence of prediction 
%            (= number of occurrences of the finalVote/number of elements in input)

%------------------- YOUR CODE HERE --------------------------------------------
a = unique(input);
b = size(a);
c = zeros(b);
for i = 1 : length(a)
c(i) = sum(input == a(i));
end
[r, col] = max (c);
finalVote = a(col);
confidence = (max(c))/length(input);








  
%-------------------------------------------------------------------------------
end