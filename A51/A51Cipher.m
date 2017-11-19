% LTNghia
% This is the implementation of A5/1 Key generation algorithm.

function A51Cipher(X,Y,Z)
for n = 1:10
    if n == 1 % calculate 1st keystream bit
        s = bitxor(bitxor(X(19),Y(22)),Z(23));
        fprintf('Keystream bit generated at first: s = %d\n',s) 
    else
        
        % Determine m = maj(x8,y10,z10)
        maj = [X(9) Y(11) Z(11)];
        m = mode(maj);
        
        % Decide whether or not X,Y or Z will step
        if X(9) == m % if x8 = m -> X steps
            t1 = bitxor(bitxor(X(14),X(17)),bitxor(X(18),X(19)));
            for j = 19:-1:2
                X(j) = X(j-1); % shift
            end            
            X(1) = t1; % re-assign value of x0 
        end
        if Y(11) == m % if y10 = m -> Y steps
            t2 = bitxor(Y(21),Y(22));
            for j = 22:-1:2         
                Y(j) = Y(j-1); % shift
            end
            Y(1) = t2; % re-assign value of y0
        end
        if Z(11) == m % if z10 = m -> Z steps
            t3 = bitxor(bitxor(Z(8),Z(21)),bitxor(Z(22),Z(23)));
            for j = 23:-1:2
                Z(j)=Z(j-1); % shift
            end            
            Z(1) = t3; % re-assign value of z0
        end
        
        % Keystream bit generated at n
        s = bitxor(bitxor(X(19),Y(22)),Z(23));
        fprintf('Keystream bit generated at n = %d: s = %d\n',n,s)
    end
end
end