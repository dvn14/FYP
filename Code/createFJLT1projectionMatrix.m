function P = createFJLT1projectionMatrix(k,d,n,e)
%UNTITLED3 Summary of this function goes here
%e=0.01;n=15;d=16;k=3;
S = createSparseMatrix(e,n,d,2,k);
H = createWalshHadamard(d,1);
D = createRandomDiagonal(d);

HD = H*D;
P = S*HD;

end