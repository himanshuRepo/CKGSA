% CKGSA code v1.1.
% Coded by Himanshu Mittal, 2016.
% (original GSA code by Esmat Rashedi, 2010 has been edited)
% "H. Mittal,R. Pal,A. Kulhari,and M. Saraswat,
% “Chaotic Kbest gravitational search algorithm (CKGSA)”,
% In Contemporary Computing (IC3), 2016 Ninth International Conference on,
% pp. 1-6,  IEEE."

% Chaotic Kbest Gravitational Search Algorithm.

function [Fbest,Lbest,BestChart,MeanChart]=CKGSA(F_index,N,max_it,ElitistCheck,min_flag,Rpower,Variant)

%V:   Velocity.
%a:   Acceleration.
%M:   Mass.  Ma=Mp=Mi=M;
%dim: Dimension of the test function.
%N:   Number of agents.
%X:   Position of agents. dim-by-N matrix.
%R:   Distance between agents in search space.
%[low-up]: Allowable range for search space.
%Rnorm:  Norm
%Rpower: Power of R
 
 Rnorm=2; 
 
%get allowable range and dimension of the test function.
[low,up,dim]=test_functions_range(F_index); 

%random initialization for agents.
X=initialization(dim,N,up,low); 

%create the best so far chart and average fitnesses chart.
BestChart=[];MeanChart=[];

V=zeros(N,dim);

for iteration=1:max_it
%     iteration
    
    %Checking allowable range. 
    X=space_bound(X,up,low); 

    %Evaluation of agents. 
    fitness=evaluateF(X,F_index); 
    
    if min_flag==1
    [best best_X]=min(fitness); %minimization.
    else
    [best best_X]=max(fitness); %maximization.
    end        
    
    if iteration==1
       Fbest=best;Lbest=X(best_X,:);
    end
    if min_flag==1
      if best<Fbest  %minimization.
       Fbest=best;Lbest=X(best_X,:);
      end
    else 
      if best>Fbest  %maximization
       Fbest=best;Lbest=X(best_X,:);
      end
    end
      
BestChart=[BestChart Fbest];
MeanChart=[MeanChart mean(fitness)];

%Calculation of M.
[M]=massCalculation(fitness,min_flag); 

%Calculation of Gravitational constant.
G=Gconstant(iteration,max_it); 

%Calculation of accelaration in gravitational field.
a=ckGfield(M,X,G,Rnorm,Rpower,ElitistCheck,iteration,max_it,Variant);

%Agent movement.
[X,V]=move(X,a,V);

end %iteration

