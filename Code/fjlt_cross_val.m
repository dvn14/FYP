function [op_CP,average_error] = fjlt_cross_val(Type,k,beta,X,species,indices)
    if Type == 1
        [~, ~, ~, ~, Phi, ~] = fjlt1_inequality(150,k,32,0.45,X);
    elseif Type == 2
        [Phi,~,~,~] = fjlt2_prep(150,k,32,beta,X,0.45);
    end
    
    pX = norm_matrix(X,Phi,k,150);
    
    error = zeros(1,10)+1;
    for i = 1:10
        cp = create_cp(species,indices,pX);
        if cp.ErrorRate < min(error)
            op_CP = cp;
        end
        error(i) = cp.ErrorRate;
    end
    average_error = mean(error);
end