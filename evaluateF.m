% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."
%
%This function Evaluates the agents. 
function   fitness=evaluateF(X,F_index);

[N,dim]=size(X);
for i=1:N 
    %L is the location of agent number 'i'
    L=X(i,:); 
    %calculation of objective function for agent number 'i'
    fitness(i)=test_functions(L,F_index,dim);
end