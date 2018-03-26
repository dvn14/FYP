function D = createRandomDiagonal(d)
% D (dxd) is a random diagonal matrix whose elements are 
% +/- 1 with probability 0.5

diagonalElements = randsample([-1,1],d,true,[0.5 0.5]);
D = diag(diagonalElements);

end