function is_infeasible = infeasibility_oracle(A, b, y)
% USAGE
% is_infeasible = infeasibility_oracle(A, b, y)
%
% DESCRIPTION
% This function attempts to certify that the point y does not belong to the convex hull
% G of the image F
%
% INPUT
% * A -- tensor of rank 3
%   Dimensions: n x n x m
%     The element A(i, j, k) denotes i'th row and j'th column of the n x n matrix A_k
%     (k from 1 to m)
%
% * b -- tensor of rank 2
%   Dimensions: n x m
%     The element b(i, k) denotes i'th element of the vector b_k (k from 1 to m)
%
% * y -- column vector
%   Dimensions: m x 1
%     The point to test for feasibility/infeasibility i.e. belonging to the image F
%     of the map specified by A and b
%
% OUTPUT
% The procedure returns is_infeasible = 1 if y not in G = conv F implying y not in F.
% This means that the point y is infeasible.
%
% If is_infeasible = 0, then the feasibility of the point y with respect to the map
% given by A, b is uncertain
%
% EXAMPLE
%% Unset all variables in the workspace
%clear all;
%
%% should be executed from the root project folder which contains the file README.md
%ls README.md
%% ans = README.md
%
%% Load the map from file
%load('examples/maps/article_example05_R4_R4.mat');
%
%% Set the point to check
%y = [0 1000 0 0]';
%
%% Run the procedure
%infeasibility_oracle(A, b, y)
%% ans = 1
%
% COPYRIGHT
% CAQM: Convexity Analysis of Quadratic Maps
% Copyright (c) 2015-2017 Anatoly Dymarsky, Elena Gryazina, Sergei Volodin, Boris Polyak
%

%% Implementation
    n = size(A, 1);
    m = size(A, 3);
    
    cvx_clear;
    cvx_quiet true;
    
    is_infeasible = 0;
    
    cvx_begin
        % c vector
        variable c(m)
        
        H_c = get_H_c(A, b, c, y);
        
        % objective
        minimize(c' * c)
        
        H_c - eye(n + 1) == hermitian_semidefinite(n + 1);
    cvx_end
    
    % no result (infeasible)
    if cvx_optval ~= Inf
        is_infeasible = 1;
    end
end

