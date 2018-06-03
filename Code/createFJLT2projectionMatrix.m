function P = createFJLT2projectionMatrix(k, d, beta)
% The projection matrix for FJLT method 2 is created here.

x = d/beta;
B_k    = createSubCodeMatrix(k,beta);
H_beta = createWalshHadamard(beta,0);
D_beta = createRandomDiagonal(beta);

BD_kd = B_k*D_beta;
HD_dd = H_beta*D_beta;

BDHD  = BD_kd*HD_dd;
P = repmat(BDHD,1,x);
% H = 2^(-d/2)*hadamard(d);
% i = randperm(d,k);
% A = sqrt(d/k)*H(i,:);
% P = normc(A);

end

