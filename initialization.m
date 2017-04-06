% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."
%
%This function initializes the position of the agents in the search space, randomly.
function [X]=initialization(dim,N,up,down)

if size(up,2)==1
    X=rand(N,dim).*(up-down)+down;
end
if size(up,2)>1
    for i=1:dim
    high=up(i);low=down(i);
    X(:,i)=rand(N,1).*(high-low)+low;
    end
end