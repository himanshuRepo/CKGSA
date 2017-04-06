% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."

%This function updates the velocity and position of agents.
function [X,V]=move(X,a,V)

%movement.
[N,dim]=size(X);
V=rand(N,dim).*V+a; 
X=X+V; 