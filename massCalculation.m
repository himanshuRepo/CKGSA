% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."

%This function calculates the mass of each agent.
function [M]=massCalculation(fit,min_flag);
%%%%here, make your own function of 'mass calculation'

Fmax=max(fit); Fmin=min(fit); Fmean=mean(fit); 
[i N]=size(fit);

if Fmax==Fmin
   M=ones(N,1);
else
    
   if min_flag==1 %for minimization
      best=Fmin;worst=Fmax;
   else %for maximization
      best=Fmax;worst=Fmin; 
   end
  
   M=(fit-worst)./(best-worst); 

end

M=M./sum(M); 