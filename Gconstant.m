% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."
%
% This function calculates Gravitational constant.
function G=Gconstant(iteration,max_it)
%%%here, make your own function of 'G'

  alfa=20;G0=100;
  G=G0*exp(-alfa*iteration/max_it); 
